setDict(0,"字库.txt") --字库需要放到资源文件中
useDict(0)
资源采集表={底格币=0,经验=1,技能=1,守卫=1,射手=1,战士=1,特种=1,医师=1}

function 状态检测(额外次数)
	local x= -1 local y= -1 local ret=0 local 状态="" local i=额外次数
	--[[
	颜色说明
	白色"FBFDFD-101010|CBCBCB-101010|B3B3B3-101010|DFDFDF-101010"
	黑色"3E3D3D-101010|303030-101010|191919-101010|313131-101010|070707-101010"
	橙底白细字"E6F1FF-101010|FBFDFD-101010|D1E6FF-101010"
	黄"9BFFFF-101010"
	--]]
	while true do
		ret,x,y = findStr(81,58,125,72,"PROF","FBFDFD-101010|CBCBCB-101010|B3B3B3-101010|DFDFDF-101010",0.80)
		--ret,x,y=findPic(81,58,124,73,"PROF.png","101010",0,0.9)
		if x ~= -1 then 状态="主页面" break end
		
		ret,x,y = findStr(116,110,188,175,"主","FBFDFD-101010|CBCBCB-101010|B3B3B3-101010|DFDFDF-101010|313131",0.80)
		--ret,x,y=findPic(118,113,161,156,"主.png","101010",0,0.9)
		if x ~= -1 then 状态="快捷栏打开" break end
		
		ret,x,y = findStr(133,650,157,674,"略","FBFDFD-101010|CBCBCB-101010|B3B3B3-101010|DFDFDF-101010|313131",0.80)
		--ret,x,y=findPic(129,647,164,677,"探索页面_略.png","101010",0,0.8)
		if x ~= -1 then 状态="探索页面" break end
		
		ret,x,y = findStr(159,122,182,147,"部","3E3D3D-101010|303030-101010|191919-101010|313131-101010|070707-101010",0.80)
		--ret,x,y=findPic(158,122,183,147,"碎片搜素_部.png","101010",0,0.9)
		if x ~= -1 then 状态="碎片搜索" break end
		
		ret,x,y = findStr(210,212,243,243,"验","FBFDFD-101010|CBCBCB-101010|B3B3B3-101010|DFDFDF-101010",0.80)
		--ret,x,y=findPic(213,213,241,242,"资源采集_验.png","101010",0,0.9)
		if x ~= -1 then 状态="资源采集" break end
		
		ret,x,y = findStr(131,118,161,148,"法","FBFDFD-101010|CBCBCB-101010|B3B3B3-101010|DFDFDF-101010",0.80)
		--ret,x,y=findPic(131,118,161,148,"算法采集_法.png","101010",0,0.9)
		if x ~= -1 then 状态="算法采集" break end
		
		ret,x,y=findPic(595,347,623,378,"算法溢出_限.png","101010",0,0.9)
		if x ~= -1 then 状态="算法溢出" break end
		
		ret,x,y = findStr(850,633,880+45,662,"编","3E3D3D-101010|303030-101010|191919-101010|313131-101010|070707-101010",0.80)
		--ret,x,y=findPic(854,636,875+45,658,"队伍编辑_编.png","101010",0,0.9)
		if x ~= -1 then 状态="队伍编辑" break end
		
		ret,x,y = findStr(113,22,142,50,"菜","FBFDFD-101010|CBCBCB-101010|B3B3B3-101010|DFDFDF-101010",0.80)
		--ret,x,y=findPic(113,22,141,50,"作战前_菜.png","101010",0,0.9)
		if x ~= -1 then 状态="作战前" break end
		
		ret,x,y = findStr(161,22,186,49,"暂停","FBFDFD-101010|CBCBCB-101010|B3B3B3-101010|DFDFDF-101010",0.80)
		--ret,x,y=findPic(165,24,186,47,"作战中_双竖线.png","101010",0,0.9)
		if x ~= -1 then 状态="作战中" break end
		
		ret,x,y = findStr(161,22,186,49,"播放","FBFDFD-101010|CBCBCB-101010|B3B3B3-101010|DFDFDF-101010",0.80)
		--ret,x,y=findPic(164,24,186,47,"作战暂停_三角.png","101010",0,0.9)
		if x ~= -1 then 状态="作战暂停" break end
		
		ret,x,y = findStr(335,347,369,385,"run","FBFDFD-101010|CBCBCB-101010|B3B3B3-101010|DFDFDF-101010",0.80)
		--ret,x,y=findPic(337,346,460,382,"作战暂停_run.png","101010",0,0.6)
		if x ~= -1 then 状态="作战暂停选项" break end
		
		ret,x,y = findStr(1075,365,1107,401,"容","FBFDFD-101010|CBCBCB-101010|B3B3B3-101010|DFDFDF-101010",0.80)
		--ret,x,y=findPic(1081,370,1105,393,"作战失败_容.png","101010",0,0.9)
		if x ~= -1 then 状态="作战失败" break end
		
		ret,x,y = findStr(466,469,511,513,"前","FBFDFD-101010|CBCBCB-101010|B3B3B3-101010|DFDFDF-101010",0.80)
		if x ~= -1 then 状态="漏洞排查作战失败" break end
		
		ret,x,y = findStr(191,126,272,205,"结","FBFDFD-101010|CBCBCB-101010|B3B3B3-101010|DFDFDF-101010",0.80)
		--ret,x,y=findPic(412,165,435,188,"作战结束_伤.png","101010",0,0.9)
		if x ~= -1 then 状态="作战结束" break end
		
		--ret,x,y=findPic(1024,131,1042,150,"X.png","101010",0,0.9)
		ret,x,y = findStr(910,374,965,423,"+","FBFDFD-101010|CBCBCB-101010|B3B3B3-101010|DFDFDF-101010",0.80)
		--ret,x,y=findPic(917,379,958,417,"十.png","101010",0,0.9)
		if x ~= -1 then 状态="自动战斗次数选择" break end
		
		ret,x,y=findPic(1035,184,1057,206,"签到_常.png","101010",0,0.9)
		if x ~= -1 then 状态="签到" break end
		
		ret,x,y = findStr(27,634,87,691,"漏","FBFDFD-101010|CBCBCB-101010|B3B3B3-101010|DFDFDF-101010",0.80)
		--ret,x,y=findPic(178,656,214,679,"漏洞排查_日.png","101010",0,0.9)
		if x ~= -1 then 状态="漏洞排查" break end
		
		ret,x,y = findStr(39,632,78,675,"湮","FBFDFD-101010|CBCBCB-101010|B3B3B3-101010|DFDFDF-101010",0.80)
		--ret,x,y=findPic(41,636,74,670,"湮灭裂空_湮.png","101010",0,0.9)
		if x ~= -1 then 状态="湮灭裂空" break end
		
		ret,x,y = findStr(245,304,287,348,"漏","3E3D3D-101010|303030-101010|070707-101010|191919-101010|313131-101010",0.80)
		--ret,x,y=findPic(249,310,281,343,"漏洞排查每日确认_漏.png","101010",0,0.9)
		if x ~= -1 then 状态="漏洞排查每日确认" break end
		
		ret,x,y = findStr(467,29,494,55,"注","FBFDFD-101010|CBCBCB-101010|B3B3B3-101010|DFDFDF-101010",0.80)
		--ret,x,y=findPic(470,32,491,52,"人形资料_注.png","101010",0,0.9)
		if x ~= -1 then 状态="人形资料" break end
		
		ret,x,y = findStr(936,27,982,77,"星勾","FBFDFD-101010|CBCBCB-101010|B3B3B3-101010|DFDFDF-101010",0.80)
		--ret,x,y=findPic(939,32,977,69,"关注角色_星.png","101010",0,0.9)
		if x ~= -1 then 状态="关注角色" break end
		
		ret,x,y = findStr(55,149,92,184,"理","FBFDFD-101010|CBCBCB-101010|B3B3B3-101010|DFDFDF-101010",0.80)
		--ret,x,y=findPic(58,153,86,180,"商店_理.png","101010",0,0.9)
		if x ~= -1 then 状态="商店" break end
		
		ret,x,y=findStr(471,341,510,383,"溢","4C4C4C-101010",0.80)
		if x ~= -1 then 状态="心智碎片溢出" break end
		
		--ret,x,y = findStr(941,505,991,532,"确","FBFDFD-101010|CBCBCB-101010|B3B3B3-101010|DFDFDF-101010",0.80)
		ret,x,y = findStr(292,498,352,538,"取","FBFDFD-101010|CBCBCB-101010|B3B3B3-101010|DFDFDF-101010",0.80)
		--ret,x,y=findPic(254,506,277,530,"取消确认_X.png","101010",0,0.9)
		if x ~= -1 then 状态="取消确认" break end
		
		ret,x,y = findStr(595,493,690,540,"确","FBFDFD-101010|CBCBCB-101010|B3B3B3-101010|DFDFDF-101010",0.80)
		--ret,x,y=findPic(614,505,640,532,"确认_确.png","101010",0,0.9)
		if x ~= -1 then 状态="确认" break end
		
		ret,x,y = findStr(637,580,663,608,"游","3E3D3D-101010|303030-101010|070707-101010|191919-101010|313131-101010",0.80)
		--ret,x,y=findPic(589,575,694,616,"开始游戏_游.png","101010",0,0.7)
		if x ~= -1 then 状态="开始游戏" break end
		
		ret,x,y = findStr(987,109,1169,598,"点击领取","FEFEFF-101010",0.10)
		if x ~= -1 then 状态="活动签到" break end
		
		ret,x,y = findStr(81,58,125,72,"PROF","4D4D4D-101010",0.80)
		--ret,x,y=findPic(83,58,122,73,"活动提醒_PROF.png","101010",0,0.7)
		if x ~= -1 then 状态="活动提醒" break end
		
		ret,x,y = findStr(232,31,280,71,"家","3E3D3D-101010|303030-101010|070707-101010|191919-101010|313131-101010",0.90)
		--ret,x,y=findPic(234,32,277,71,"家.png","101010",0,0.9)
		if x ~= -1 then 状态="快捷栏收起" break end
		
		
		
		状态="其他"
		break
	end
	
	while i ~= 0 do
		i=i-1
		sleep(200)
		if 状态 ~= 状态检测(0) then
			状态="不稳定"
			break
		end
	end
	if 额外次数 ~= 0 then
		print("当前页面:",状态)
	end
	return 状态
end

function 故障尝试处理()
	local x= -1 local y= -1 local ret=0 local 状态=""
	
	--状态检测
	状态=状态检测(2)
	
	--对应操作
	if 状态 == "主页面" then
		--
	elseif 状态 == "快捷栏打开" then
		tap(340,50)
		sleep(1000)
	elseif 状态 == "快捷栏收起" then
		--
	elseif 状态 == "自动战斗次数选择" then
		--
	elseif 状态 == "心智碎片溢出" then
		tap(900,520)
	elseif 状态 == "其他" then
		tap(340,50)
		sleep(1000)
	end
	--
end

function 字符串转整数(str)
	local num = math.modf(str+0)
	return num
end

function 星期获取2(y,m,d)
	if m == 1 or m == 2 then
		m = m + 12
		y = y - 1
	end
	local m1,_ = math.modf(3 * (m + 1) / 5)
	local m2,_ = math.modf(y / 4)
	local m3,_ = math.modf(y / 100)
	local m4,_ = math.modf(y / 400)
	
	local iWeek = (d + 2 * m + m1 + y + m2 - m3  + m4 ) % 7
	local weekTab = {
	["0"] = 1,
	["1"] = 2,
	["2"] = 3,
	["3"] = 4,
	["4"] = 5,
	["5"] = 6,
	["6"] = 7,
	}
	return weekTab[tostring(iWeek)]
end

function 星期获取()
	local tim=getNetWorkTime()
	local y=math.modf(string.sub(tim,1,4)+0)
	local m=math.modf(string.sub(tim,6,7)+0)
	local d=math.modf(string.sub(tim,9,10)+0)
	local hour1=string.sub(tim,12,12) local hour2=string.sub(tim,13,13)
	local weekday=星期获取2(y,m,d)
	print(y,m,d,weekday,hour1,hour2)
	if hour1+0 == 0 and hour2+0 < 5 then
		weekday=weekday-1
		weekday=weekday%7
	end
	print("今天是星期",weekday)
	return weekday
end

function 找图(x1,y1,x2,y2,图片)
	local x=-1 local y=-1 local ret=-1 local cnt=9
	while (x==-1 or y==-1) and cnt>0 do
		ret,x,y=findPic(x1,y1,x2,y2,图片,"101010",0,0.9)
		cnt=cnt-1
		sleep(100)
		if cnt % 3 == 1 then
			print("cnt=",cnt)
			故障尝试处理()
		end
	end
	if cnt==0 then
		print("未找到",图片)
		return -1,-1
	end
	print("找到",图片,x,y)
	return x,y
end

function 找色(time,寻找目标,x1,y1,x2,y2,初始色,后续色)
	local x=-1 local y=-1
	while (x==-1 or y==-1)and time > 0 do
		x,y=findMultiColor(x1,y1,x2,y2,初始色,后续色,0,0.9)
		sleep(100)
		time = time-1
		if time % 10 == 0 then
			print("time=",time)
			故障尝试处理()
		end
	end
	if time == 0 then
		print("未找到",寻找目标,x1,y1,x2,y2)
		return -1,-1
	end
	print("找到",寻找目标,x,y)
	return x,y
end

function 找字(次数,x1,y1,x2,y2,字,色,准度)
	local x= -1 local y= -1 local ret= -1
	while (x== -1 or y== -1) and 次数>0 do
		ret,x,y=findStr(x1,y1,x2,y2,字,色,准度)
		次数=次数-1
		sleep(100)
		if 次数 % 3 == 2 then
			print("cnt=",次数)
			故障尝试处理()
		end
	end
	if x==-1 then
		print("未找到",字)
		return -1,-1
	end
	print("找到",字,x,y)
	return x,y
end

function tap_状态确认(x,y,状态)
	local cnt=5 local 当前状态=""
	tap(x,y)
	while 状态~=当前状态 and cnt~=0 do
		当前状态=状态检测(2)
		if 当前状态 == "不稳定" then
			cnt=cnt+1
		else
			cnt=cnt-1
		end
		print("状态确认计数器",cnt)
	end
	
	if 状态==当前状态 then
		print("确认进入",状态)
		return 1
	end
	print("进入",状态,"失败")
	return -1
end

function 关卡内(关卡类型)-- 2->手动作战
	local x= -1 local y= -1 local ret=0 local 状态="" local 原状态=""
	while true do
		原状态=状态
		状态=状态检测(2)
		if 状态=="作战中" then
			
		elseif 状态=="作战前" then
			ret,x,y = findStr(987,639,1022,673,"始","E6F1FF-101010|FBFDFD-101010|D1E6FF-101010",0.80)
			--ret,x,y=findPic(991,641,1017,668,"作战前_始.png","101010",0,0.9)
			if x == -1 then return -1 end
			tap(x,y)
		elseif 状态=="作战暂停" then
			ret,x,y = findStr(161,22,186,49,"播放","FBFDFD-101010|CBCBCB-101010|B3B3B3-101010|DFDFDF-101010",0.80)
			--ret,x,y=findPic(164,24,186,47,"作战暂停_三角.png","101010",0,0.9)
			if x == -1 then return -1 end
			tap(x,y)
		elseif 状态=="作战暂停选项" then
			ret,x,y = findStr(335,347,369,385,"run","FBFDFD-101010|CBCBCB-101010|B3B3B3-101010|DFDFDF-101010",0.80)
			--ret,x,y=findPic(337,346,460,382,"作战暂停_run.png","101010",0,0.6)
			if tap_状态确认(x+60,y,"作战中") == -1 then return -1 end
		elseif 状态=="取消确认" then
			ret,x,y = findStr(292,498,352,538,"取","FBFDFD-101010|CBCBCB-101010|B3B3B3-101010|DFDFDF-101010",0.80)
			--ret,x,y=findPic(254,506,277,530,"取消确认_X.png","101010",0,0.9)
			if tap_状态确认(x,y,"作战中") == -1 or (状态检测()~="作战结束" and 状态检测()~="作战中") then return -1 end
		elseif 状态=="作战结束" then
			if 关卡类型==2 then
				ret,x,y = findStr(1055,608,1183,670,"返","3E3D3D-101010|303030-101010|191919-101010|313131-101010|070707-101010|1A1A19",0.80)
				tap(x,y)
				break
			end
		elseif 状态=="不稳定" then
			if 原状态=="作战中" then
				tap(340,50)
			end
		elseif 状态=="作战失败" then
			tap(1110,635)
			return -1
		elseif 状态=="确认" then
			return 1
		elseif 状态=="算法溢出" then
			ret,x,y = findStr(286,495,346,542,"取","FBFDFD-101010|CBCBCB-101010|B3B3B3-101010|DFDFDF-101010",0.80)
			tap(x,y)
		elseif 状态=="其他" then
			
		end
		
	end
	
end

function 作战(作战次数)
	local x= -1 local y= -1 local ret= -1
	x,y = 找色(30,"自动战斗色块",831,613,843,652,"010101","2|-3|EAEAEA|5|-9|EAEAEA|-1|-3|3A3A3A|0|1|2A2A2A")
	if x== -1 then return-1 end
	if tap_状态确认(x,y,"自动战斗次数选择") == -1 then return -1 end
	
	if 作战次数 ~= 0 then
		x,y = 找色(30,"作战次数增加色块",934,393,942,401,"FFFFFF","-7|-5|323232|6|-5|323232|-6|6|323232|6|6|323232")
		if x== -1 then return-1 end
		local i=作战次数
		while i ~= 1 do
			tap(x,y)
			sleep(200)
			i=i-1
		end
	else
		作战次数 = 2
	end
	x,y=找字(2,581,495,1032,540,"准","E6F1FF-101010|FBFDFD-101010|D1E6FF-101010",0.70)
	--[[
	x,y = 找色(30,"准备作战色块_居中",594,507,602,515,"0B78FF","4|0|E9F3FF|5|0|7EB8FF|5|3|B0D3FF|2|4|318DFF")
	if x== -1 then
	x,y = 找色(30,"准备作战色块_靠右",789,520,808,530,"0B78FF","4|0|E9F3FF|5|0|7EB8FF|5|3|B0D3FF|2|4|318DFF")
	end--]]
	if x== -1 then return-1 end
	if tap_状态确认(x,y,"队伍编辑") == -1 then
		if 状态检测(2)=="算法溢出" then
			ret,x,y = findStr(286,495,346,542,"取","FBFDFD-101010|CBCBCB-101010|B3B3B3-101010|DFDFDF-101010",0.80)
			tap(x,y)
			return -1
		elseif 状态检测(2)=="心智碎片溢出" then
			if tap_状态确认(900,520,"队伍编辑") == -1 then return-1 end
		end
	end
	
	
	x,y = 找色(30,"自动作战2色块",1018,646,1026,654,"086CC7","-2|-1|F7FBFD|0|1|3E89D1|-2|-1|F7FBFD|2|-1|FBFDFD")
	if x== -1 then return-1 end
	tap(x,y)
	
	关卡内(1)
	
	ret,x,y = findStr(595,493,690,540,"确","FBFDFD-101010|CBCBCB-101010|B3B3B3-101010|DFDFDF-101010",0.80)
	--x,y = 找色(作战次数*300,"确认色块",625,505,633,513,"BEDBFF","1|0|FEFEFF|3|-1|137DFF|1|2|95C4FF|3|1|F5F9FF")
	if x== -1 then return -1 end
	tap(x,y)
	sleep(300)
	
end

function 手动作战(作战次数)
	while 作战次数~=0 do
		作战次数=作战次数-1
		x,y = 找字(4,984,600,1030,646,"准","FBFDFD-101010|CBCBCB-101010|B3B3B3-101010|DFDFDF-101010",0.80)
		if x== -1 or tap_状态确认(x,y,"队伍编辑")== -1 then break end
		
		x,y = 找字(4,1006,626,1054,669,"战","FBFDFD-101010|CBCBCB-101010|B3B3B3-101010|DFDFDF-101010",0.80)
		if x== -1 or tap_状态确认(x,y,"作战前")== -1 then break end
		
		关卡内(2)
		
		
		sleep(300)
	end
end

function 返回主页面()
	local x=-1 local y=-1 local 状态=状态检测(10)
	while 状态~="主页面" do
		ret,x,y = findStr(232,31,280,71,"家","3E3D3D-101010|303030-101010|070707-101010|191919-101010|313131-101010",0.80)
		if x ~= -1 then
			print("找到家")
			tap(x,y)
		else
			print("未找到家")
		end
		if 状态=="不稳定" then
			
		elseif 状态=="确认" then
			ret,x,y=findPic(614,505,640,532,"确认_确.png","101010",0,0.9)
			if x ~= -1 then tap(x,y) end
		elseif 状态=="其他" then
			tap(340,50)
		end
		状态=状态检测(10)
	end
	swipe(485,375,850,375,50)
	sleep(500)
	return 1
end

function 页面回退()
	local x= -1 local y= -1 local ret=0
	local 状态=状态检测(2)
	if 状态=="主页面" then
		
	elseif findPic(102,41,126,65,"左上返回_返.png","101010",0,0.7)~= -1 then
		tap(x,y)
		print("点击 左上返回键 回退")
	elseif 状态=="快捷栏打开" then
		tap(340,50)
	elseif 状态=="探索页面" then
		--左上返回
		tap()
	elseif 状态=="碎片搜索" then
		--左上返回
	elseif 状态=="资源采集" then
		--左上返回
	elseif 状态=="算法采集" then
		--左上返回
	elseif 状态=="算法溢出" then
		
	elseif 状态=="队伍编辑" then
		--左上返回
	elseif 状态=="作战前" then
		--左上返回
	elseif 状态=="作战中" then
		tap(80,35)
		print("点击 左上四正方 回退")
	elseif 状态=="作战暂停" then
		tap(80,35)
		print("点击 左上四正方 回退")
	elseif 状态=="作战暂停选项" then
		ret,x,y=findPic(337,346,460,382,"作战暂停_run.png","101010",0,0.6)
		tap(x,y)
		print("点击 作战暂停_run 回退")
	elseif 状态=="作战失败" then
		tap(1105,635)
		print("点击 右下返回 回退")
	elseif 状态=="作战结束" then
		
	elseif 状态=="自动战斗次数选择" then
		tap(1033,140)
	elseif 状态=="签到" then
		
	elseif 状态=="活动提醒" then
		
	elseif 状态=="漏洞排查" then
		--左上返回
	elseif 状态=="湮灭裂空" then
		--左上返回
	elseif 状态=="漏洞排查每日确认" then
		
	elseif 状态=="人形资料" then
		--左上返回
	elseif 状态=="关注角色" then
		--左上返回
	elseif 状态=="商店" then
		--左上返回
	elseif 状态=="取消确认" then
		tap(270,515)
	elseif 状态=="确认" then
		
	elseif 状态=="开始游戏" then
		
	elseif 状态=="快捷栏收起" then
		--左上返回
	elseif 状态=="其他" then
		
	end
end

function 进入游戏()
	local x=-1 local y=-1 local ret=-1
	local 状态=状态检测(2)
	runApp("com.sunborn.neuralcloud.cn")
	while 状态~="主页面" do
		if 状态=="开始游戏" then
			x,y=找字(4,637,580,663,608,"游","3E3D3D-101010|303030-101010|070707-101010|191919-101010|313131-101010",0.80)
			if x~= -1 then
				tap(x,y)
			end
		elseif 状态=="活动签到" then
			ret,x,y = findStr(987,109,1169,598,"点击领取","FEFEFF-101010",0.10)
			if x ~= -1 then tap(x,y) end
		elseif findStr(232,31,280,71,"家","3E3D3D-101010|303030-101010|070707-101010|191919-101010|313131-101010",0.80)~=-1 then
			print("找到家") tap(250,50)
		elseif findStr(500,85,533,119,"系","3A3A3A|3E3D3D-101010|303030-101010|070707-101010|191919-101010|313131-101010",0.80)~= -1 then
			print("系统公告")
			tap(1228,102)
		elseif 状态=="签到" then
			print("签到")
			tap(1228,102)
		elseif 状态=="活动提醒" then
			print("活动提醒")
			tap(1228,102)
			--tap(1189,133)
		elseif 状态=="不稳定" then
			print("不稳定")
		elseif 状态=="其他" then
			print("其他")
			tap(340,50)
		else
			--返回主页面()
		end
		状态=状态检测(2)
		if 状态=="主页面" then
			sleep(5000)
			状态=状态检测(2)
		end
	end
	print("进入游戏完成")
	return 1
end

function 碎片搜索(num)-- 主要搜索num号位人物,num=1或2
	local x=-1 local y=-1 local 无视碎片溢出=0
	print("开始碎片搜索")
	print("溢出选项:",用户设置["碎片搜索溢出选择"])
	返回主页面()
	
	--x,y=找图(953,200,982,224,"探索.png") if x == -1 then return -1 end
	x,y = 找字(4,873-350,166,939,229,"探","FFFFFF-101010",0.70) if x == -1 then return -1 end
	if tap_状态确认(x,y,"探索页面") == -1 then return -1 end
	
	swipe(100,100,5000,5000,1000)
	swipe(640,550,0,0,1000)
	sleep(1000)
	
	--[[x,y=找色(30,"碎片搜索色块",728,201,733,205,"443F35","9|-2|FFFFFF|-9|-4|D3D2D0|-9|1|454136|11|1|67604D")
	if x == -1 then return -1 end--]]
	if tap_状态确认(710,205,"碎片搜索") == -1 then return -1 end
	
	if num == 1 then
		x,y = 找色(30,"第一人物色块",166,226,173,233+20,"DDDDDD","1|11|1A92F7|-3|13|FFFFFF|5|13|FFFFFF|1|25|FFFFFF")
		无视碎片溢出=string.find(用户设置["碎片搜索溢出选择"],0)
	elseif num == 2 then
		x,y = 找色(30,"第二人物色块",166,226+103,173,233+20+103,"DCDCDC","0|12|108DF7|6|10|FFFFFF|-6|11|FFFFFF|0|111|77BEFA")
		无视碎片溢出=string.find(用户设置["碎片搜索溢出选择"],1)
	end
	if x == -1 then return -1 end
	tap(x,y)
	
	x,y=找字(4,471,341,510,383,"溢","4C4C4C-101010",0.80)
	if x ~= -1 then
		if 无视碎片溢出 ~=nil then
			print("心智碎片溢出 继续搜索")
			作战(0)
		else
			print("心智碎片溢出 拒绝搜索")
			tap(300,520)
		end
	else
		作战(0)
	end
	-----------------
	swipe(165,230,165,600,50)
	sleep(1000)
	if num == 2 then
		x,y = 找色(30,"第一人物色块",166,226,173,233+20,"DDDDDD","1|11|1A92F7|-3|13|FFFFFF|5|13|FFFFFF|1|25|FFFFFF")
		无视碎片溢出=string.find(用户设置["碎片搜索溢出选择"],1)
	elseif num == 1 then
		x,y = 找色(30,"第二人物色块",166,226+103,173,233+20+103,"DCDCDC","0|12|108DF7|6|10|FFFFFF|-6|11|FFFFFF|0|111|77BEFA")
		无视碎片溢出=string.find(用户设置["碎片搜索溢出选择"],0)
	end
	if x == -1 then return -1 end
	tap(x,y)
	x,y=找字(4,471,341,510,383,"溢","4C4C4C-101010",0.80)
	if x ~= -1 then
		if 无视碎片溢出 ~=nil then
			print("心智碎片溢出 继续搜索")
			作战(0)
		else
			print("心智碎片溢出 拒绝搜索")
			tap(300,520)
		end
	else
		作战(0)
	end
end

function 每日up()
	local x=-1 local y=-1 local weekday = 星期获取()
	local up表={底格币={1,0,0,1,0,0,1},
	经验={0,0,1,0,0,1,1},
	技能={0,1,0,0,1,0,1},
	守卫={1,0,0,0,0,0,0},
	射手={0,1,0,0,0,0,0},
	战士={0,0,1,0,0,0,0},
	特种={0,0,0,1,0,0,0},
	医师={0,0,0,0,1,0,0}}
	
	print("开始每日up")
	返回主页面()
	
	--x,y=找图(953,200,982,224,"探索.png")
	x,y = 找字(4,873-350,166,939,229,"探","FFFFFF-101010",0.70) if x == -1 then return -1 end
	if tap_状态确认(x,y,"探索页面") == -1 then return -1 end
	
	swipe(100,100,5000,5000,1000)
	swipe(640,550,0,0,1000)
	sleep(1000)
	
	--x,y = 找色(30,"资源采集色块",665,265,676,275,"625E52","4|-1|FFFFFF|9|0|595246|-29|12|0085FF|5|6|4B473C")
	--if x == -1 then return -1 end
	if tap_状态确认(760,290,"资源采集") == -1 then return -1 end
	if string.find(用户设置["基础货币"],0) ~= nil and up表["底格币"][weekday]==1 then
		print("开始判定底格币双倍次数")
		while true do
			--x,y = 找字(4,181,147,229,189,"倍","E6F1FF-101010|FBFDFD-101010|D1E6FF-101010",0.80)
			x,y = 找字(4,160,148,194,190,"双","0475FE-101010",0.50)
			if x== -1 then break end
			tap(x,y)
			if 作战(1)== -1 then return -1 end
		end
	end
	
	if string.find(用户设置["基础货币"],1) ~= nil and up表["经验"][weekday]==1 then
		print("开始判定经验双倍次数")
		while true do
			--x,y = 找图(170,335-90,196,359-90,"经验_双.png")
			x,y = 找字(4,160,239,194,281,"双","0475FE-101010",0.50)
			--x,y = 找字(4,181,147+90,229,189+90,"倍","E6F1FF-101010|FBFDFD-101010|D1E6FF-101010",0.80)
			if x== -1 then break end
			tap(x,y)
			if 作战(1)== -1 then return -1 end
		end
	end
	
	if string.find(用户设置["基础货币"],2) ~= nil and up表["技能"][weekday]==1 then
		print("开始判定技能双倍次数")
		while true do
			--x,y = 找图(170,335,196,359,"资源_双.png")
			x,y = 找字(4,160,330,194,372,"双","0475FE-101010",0.50)
			--x,y = 找字(4,181,147+90*2,229,189+90*2,"倍","E6F1FF-101010|FBFDFD-101010|D1E6FF-101010",0.80)
			if x== -1 then break end
			tap(x,y)
			if 作战(1)== -1 then return -1 end
		end
	end
	
	x,y=找色(30,"潜能特训双倍色块",214,428,225,437,"0475FE","1|4|FBFDFF|2|10|0576FE|4|4|E1EFFF|6|8|167FFE")
	if x== -1 then return-1 end
	tap(x,y) sleep(1000)
	--找色(2,"守卫双倍色块",176,341,189,353,"0475FE-101010","61|15|0475FE-101010",0,0.8)
	while true do
		while true do
			x= -1
			--and up表["守卫"][weekday]==1
			if string.find(用户设置["职业控件"],0) ~= nil and up表["守卫"][weekday]==1 then
				--x,y=找色(2,"守卫双倍色块",176,341,189,353,"0475FE-101010","61|15|0475FE-101010",0,0.8)
				x,y=找字(4,180,338,202,374,"双","0475FE-101010",0.50)
			end
			if string.find(用户设置["职业控件"],1) ~= nil and up表["射手"][weekday]==1 then
				--x,y=找色(2,"射手双倍色块",176,341+76,189,353+76,"0475FE-101010","61|15|0475FE-101010",0,0.8)
				x,y=找字(4,180,413,202,449,"双","0475FE-101010",0.50)
			end
			if string.find(用户设置["职业控件"],2) ~= nil and up表["战士"][weekday]==1 then
				--x,y=找色(2,"战士双倍色块",176,341+76*2,189,353+76*2,"0475FE-101010","61|15|0475FE-101010",0,0.8)
				x,y=找字(4,180,489,202,525,"双","0475FE-101010",0.50)
			end
			if string.find(用户设置["职业控件"],3) ~= nil and up表["特种"][weekday]==1 then
				--x,y=找色(2,"特种双倍色块",176,341+76*3,189,353+76*3,"0475FE-101010","61|15|0475FE-101010",0,0.8)
				x,y=找字(4,180,565,202,601,"双","0475FE-101010",0.50)
			end
			if string.find(用户设置["职业控件"],4) ~= nil and up表["医师"][weekday]==1 then
				--x,y=找色(2,"医师双倍色块",176,341+76*4,189,353+76*4,"0475FE-101010","61|15|0475FE-101010",0,0.8)
				x,y=找字(4,180,641,202,679,"双","0475FE-101010",0.50)
			end
			break
		end
		if x== -1 then break end
		tap(x,y) sleep(500)
		if 作战(1)== -1 then break end
	end
end

function 算法采集(num)
	local x=-1 local y=-1 local weekday = 星期获取()
	local 是否使用双倍=""
	local 当前算法关卡类型= -1
	local 当前算法小类= -1
	local 关卡是否匹配= true
	print("开始算法采集")
	返回主页面()
	
	--x,y=找图(953,200,982,224,"探索.png")
	x,y = 找字(4,873-350,166,939,229,"探","FFFFFF-101010",0.70) if x == -1 then return -1 end
	if tap_状态确认(x,y,"探索页面") == -1 then return -1 end
	
	swipe(100,100,5000,5000,1000)
	swipe(640,550,0,0,1000)
	sleep(1000)
	--[[x,y = 找色(30,"算法采集色块",638,364,647,374,"FB46C0","-4|-1|FFFFFF|-4|8|FFFFFF|-25|8|FF00AA|-9|10|A4006D")
	if x == -1 then return -1 end--]]
	if tap_状态确认(730,390,"算法采集") == -1 then return -1 end
	
	while true do--获取当前页面并判断是否与设定匹配
		while true do
			x,y = 找字(4,347,118,430,166,"高级","FFFFFF-101010",0.80)
			if x~= -1 then
				当前算法关卡类型=0
			break end
			
			x,y = 找字(4,510,119,595,167,"进阶","FFFFFF-101010",0.80)
			if x~= -1 then
				当前算法关卡类型=1
				if string.find(用户设置["算法采集进阶双倍日"],weekday-1) ~= nil then
					是否使用双倍="是"
				end
			break end
			
			x,y = 找字(4,502,121,585,164,"靶向","FFFFFF-101010",0.80)
			if x~= -1 then
				当前算法关卡类型=2
				if 用户设置["算法环境双倍开关"]~="" then
					是否使用双倍="是"
				end
				x,y = 找字(4,428,118,519,168,"闪避","FFFFFF-101010",0.80)
				if x~= -1 then 当前算法小类= 0 end
				x,y = 找字(4,428,118,519,168,"暴击","FFFFFF-101010",0.80)
				if x~= -1 then 当前算法小类= 1 end
				x,y = 找字(4,428,118,519,168,"控制","FFFFFF-101010",0.80)
				if x~= -1 then 当前算法小类= 2 end
			break end
			
			x,y = 找字(4,515,121,592,166,"单格","FFFFFF-101010",0.80)
			if x~= -1 then
				当前算法关卡类型=3
				if 用户设置["算法单格双倍开关"]~="" then
					是否使用双倍="是"
				end
			break end
		break end
		print("当前算法关卡:",当前算法关卡类型,当前算法小类)
		if 用户设置["算法大类选择"]~=tostring(当前算法关卡类型) then 关卡是否匹配=false end
		if 用户设置["算法大类选择"]=="2" and 用户设置["算法环境选择"]~=tostring(当前算法小类) then 关卡是否匹配=false end
		
	break end
	print("算法采集分割线1-----------------------------------------------------")
	while 关卡是否匹配==false do--当前页面与设定不匹配时重新选关
		--选择算法大类
		if 用户设置["算法大类选择"]~=tostring(当前算法关卡类型) then
			if 用户设置["算法大类选择"]=="0" then
				x,y = 找字(4,216,103,289,688,"常规收起","ECECEC-101010|D6D6D6-101010",0.90)
			elseif 用户设置["算法大类选择"]=="1" then
				x,y = 找字(4,216,103,289,688,"进阶","ECECEC-101010|D6D6D6-101010",0.90)
			elseif 用户设置["算法大类选择"]=="2" then
				x,y = 找字(4,216,103,289,688,"环境收起","ECECEC-101010|D6D6D6-101010",0.90)
			elseif 用户设置["算法大类选择"]=="3" then
				x,y = 找字(4,216,103,289,688,"单格","ECECEC-101010|D6D6D6-101010",0.90)
			end
		end
		if x~= -1 then tap(x,y) sleep(500) end
		
		--选择算法小类
		if 用户设置["算法大类选择"]=="0" then
			tap(170,380) sleep(500)
		end
		
		if 用户设置["算法大类选择"]=="2" then
			if 用户设置["算法环境选择"]=="0" then
				x,y = 找字(4,194,345,236,604,"闪避","ECECEC-101010|D6D6D6-101010",0.50)
			elseif 用户设置["算法环境选择"]=="1" then
				x,y = 找字(4,194,345,236,604,"暴击","ECECEC-101010|D6D6D6-101010",0.50)
			elseif 用户设置["算法环境选择"]=="2" then
				x,y = 找字(4,194,345,236,604,"控制","ECECEC-101010|D6D6D6-101010",0.50)
			end
		end
		if x~= -1 then
			tap(x,y) sleep(500)
		end
		
		--重新获取当前关卡
		while true do
			while true do
				x,y = 找字(4,347,118,430,166,"高级","FFFFFF-101010",0.80)
				if x~= -1 then 当前算法关卡类型=0 break end
				
				x,y = 找字(4,510,119,595,167,"进阶","FFFFFF-101010",0.80)
				if x~= -1 then 当前算法关卡类型=1 break end
				
				x,y = 找字(4,502,121,585,164,"靶向","FFFFFF-101010",0.80)
				if x~= -1 then
					当前算法关卡类型=2
					x,y = 找字(4,428,118,519,168,"闪避","FFFFFF-101010",0.80)
					if x~= -1 then 当前算法小类= 0 end
					x,y = 找字(4,428,118,519,168,"暴击","FFFFFF-101010",0.80)
					if x~= -1 then 当前算法小类= 1 end
					x,y = 找字(4,428,118,519,168,"控制","FFFFFF-101010",0.80)
					if x~= -1 then 当前算法小类= 2 end
				break end
				
				x,y = 找字(4,515,121,592,166,"单格","FFFFFF-101010",0.80)
				if x~= -1 then 当前算法关卡类型=3 break end
			break end
			关卡是否匹配=true
			print("当前算法关卡:",当前算法关卡类型,当前算法小类)
			if 用户设置["算法大类选择"]~=tostring(当前算法关卡类型) then 关卡是否匹配=false end
			if 用户设置["算法大类选择"]=="2" and 用户设置["算法环境选择"]~=tostring(当前算法小类) then 关卡是否匹配=false end
			
		break end
		
		if 关卡是否匹配==false then print("算法选关失败 跳过此功能") return-1 end
		
	break end
	
	--作战
	if 是否使用双倍=="是" then
		--x,y=找图(1171,576,1189,594,"算法双倍开关_关.png")
		print("使用双倍")
		x,y = 找字(4,1135,571,1165,599,"算法双倍开关","D7D7D7-101010",0.80)
	elseif 是否使用双倍=="" then
		print("禁用双倍")
		x,y = 找字(4,1193,570,1224,599,"算法双倍开关","D7D7D7-101010",0.80)
	end
	if x~= -1 then tap(x+10,y+10) end
	sleep(1000)
	作战(num)
end

function 漏洞排查扫荡版()
	local 卡死计数器=0
	local 检测状态=""
	local 当前状态=""
	local 上一状态=""
	print("开始漏洞排查扫荡")
	返回主页面()
	while true do
		检测状态=状态检测(3)
		while true do
			
			if 检测状态=="主页面" then
				x,y = 找字(4,873-350,166,939,229,"探","FFFFFF-101010",0.70)
				if x == -1 then break end
				tap(x,y)
				当前状态="主页面"
			break end
			
			if 检测状态=="探索页面" then
				swipe(100,100,5000,5000,1000)
				swipe(640,550,0,0,1000)
				sleep(1000)
				tap(55,550)
				当前状态="探索页面"
			break end
			
			if 检测状态=="漏洞排查" then
				x,y = 找字(1,1063,356,1084,379,"快速作战","5C5754-101010",0.80)
				if x == -1 then break end
				tap(x,y)
				当前状态="漏洞排查选关"
			break end
			
			x,y = 找字(1,240,338,291,385,"漏","484848-101010",0.80)
			if x ~= -1 then
				tap(930,515)
				当前状态="漏洞排查每日确认"
			break end
			
			x,y = 找字(1,591,73,697,111,"快速作战","323232-101010",0.80)
			if x ~= -1 then
				x,y = 找字(1,594,596,685,627,"完成作战","1790FD-101010",0.80)
				if x ~= -1 then
					tap(x,y)
					当前状态="快速作战完成"
					return ture
				else
					当前状态="快速作战等待"
				end
			break end
			
			当前状态="未知"
		break end
		if 上一状态==当前状态 then
			卡死计数器=卡死计数器+1
		elseif 当前状态=="快速作战等待" then
			卡死计数器=-100
		else
			卡死计数器=0
		end
		if 卡死计数器==20 then print("漏洞排查功能 在"+当前状态+"卡死") return -1 end
		上一状态=当前状态
	end
end

function 漏洞排查(道中队,boss队)-- 默认打湮灭裂空
	local x= -1 local y= -1 local i=0 local cnt=0 local ret=0 local 状态=""
	
	print("开始漏洞排查")
	返回主页面()
	
	道中队,boss队=道中队-1,boss队-1
	
	--x,y=找图(953,200,982,224,"探索.png") if x == -1 then return -1 end
	x,y = 找字(4,873-350,166,939,229,"探","FFFFFF-101010",0.70) if x == -1 then return -1 end
	if tap_状态确认(x,y,"探索页面") == -1 then return -1 end
	
	swipe(100,100,5000,5000,1000)
	swipe(640,550,0,0,1000)
	sleep(1000)
	
	--x,y=找图(1,491,150,614,"探索_日.png") if x == -1 then return -1 end
	x,y=55,550
	if tap_状态确认(x,y,"漏洞排查") == -1 then return -1 end
	
	--x,y=找图(1132,252,1147,267,"漏洞排查_难.png") if x == -1 then return -1 end
	x=1100 y=300
	if tap_状态确认(x,y,"湮灭裂空") == -1 then return -1 end
	
	while 状态检测(2)=="湮灭裂空" do
		x= -1 i= 0
		while x== -1 and i<1280 do
			ret,x,y=findStr(i,280,i+425,320,"关","FBFDFD-101010|CBCBCB-101010|B3B3B3-101010|DFDFDF-101010",0.70)
			i=i+405
			if x~= -1 then
				print("尝试点击",x,y)
				tap(x,y)
				x= -1
				状态=状态检测(2)
				if 状态~="湮灭裂空" then break end
			end
		end
		
		if 状态~="湮灭裂空" then break end
		x,y = 找字(3,740,237,1280,276,"范","FBFDFD-101010|CBCBCB-101010|B3B3B3-101010|DFDFDF-101010",0.60)
		if x == -1
			then return -1
		else
			tap(x,y)
			状态=状态检测(2)
			if 状态=="湮灭裂空" then return -1 end
		end
	end
	
	--x,y=找图(249,310,281,343,"漏洞排查每日确认_漏.png")
	x,y = 找字(4,244,306,284,346,"漏","484848-101010",0.80)
	if x ~= -1 then
		if tap_状态确认(935,515,"作战前") == -1 then return -1 end
	elseif 状态检测(2)~="作战前" then
		return -1
	end
	
	--x,y=找图(771,641,797,668,"作战前_编.png") if x == -1 then return -1 end
	x,y = 找字(4,792,638,825,670,"队","DBDDDF-101010",0.80)
	if tap_状态确认(x,y,"队伍编辑") == -1 then return -1 end
	
	tap(612,48)
	sleep(1000)
	tap(496+(道中队%2)*184,122+(道中队-道中队%2)/2*87)
	sleep(1000)
	if tap_状态确认(1130,646,"作战前") == -1 then return -1 end
	
	while true do
		状态=状态检测(2)
		if 状态=="作战中" then
			
		elseif 状态=="作战前" then
			cnt=cnt+1
			x,y=找字(7,760,240,870,320,"王冠","9BFFFF-101010",0.80)
			--x,y = 找字(7,734,273,828,304,"白血条","FEFEFE-101010",0.80)
			--x,y = 找色(40,"白血条色块",660,250,750,310,"FEFEFE-101010","40|-1|FEFEFE-101010",0,0.8)
			if x ~= -1 or cnt==7 then
				print("boss战")
				--x,y=找图(771,641,797,668,"作战前_编.png") if x == -1 then return -1 end
				x,y = 找字(4,792,638,825,670,"队","DBDDDF-101010",0.80)
				if tap_状态确认(x,y,"队伍编辑") == -1 then return -1 end
				tap(612,48)
				sleep(1000)
				tap(496+(boss队%2)*184,122+(boss队-boss队%2)/2*87)
				sleep(1000)
				if tap_状态确认(1130,646,"作战前") == -1 then return -1 end
				
				if tap_状态确认(1012,58,"其他") == -1 then return -1 end
				for i=1,4 do
					tap(63,228)
					sleep(200)
				end
				swipe(655,510,655,310,1000)
				swipe(655,310,655,310,200)
				tap(250,463)
				sleep(200)
				swipe(655,560,655,0,50)
				sleep(1000)
				swipe(655,560,655,0,50)
				sleep(1000)
				swipe(655,310,655,310,200)
				tap(250,463-200)
				sleep(200)
				tap(250+485,463)
				sleep(200)
				if tap_状态确认(1039,612,"作战前") == -1 then return -1 end
			end
			
			ret,x,y=findPic(991,641,1017,668,"作战前_始.png","101010",0,0.9)
			if x ~= -1 and tap_状态确认(x,y,"作战中") == -1 then return -1 end
		elseif 状态=="作战暂停" then
			ret,x,y=findPic(164,24,186,47,"作战暂停_三角.png","101010",0,0.9)
			if x ~= -1 and tap_状态确认(x,y,"作战中") == -1 then return -1 end
		elseif 状态=="作战暂停选项" then
			if tap_状态确认(x+60,y,"作战中") == -1 then return -1 end
		elseif 状态=="漏洞排查作战失败" then
			ret,x,y = findStr(736,467,775,511,"重","FBFDFD-101010|CBCBCB-101010|B3B3B3-101010|DFDFDF-101010",0.80)
			tap_状态确认(x,y,"作战前")
			ret,x,y = findStr(113,22,142,50,"菜","FBFDFD-101010|CBCBCB-101010|B3B3B3-101010|DFDFDF-101010",0.80)
			tap_状态确认(x,y,"作战暂停选项")
			ret,x,y = findStr(335,347,369,385,"run","FBFDFD-101010|CBCBCB-101010|B3B3B3-101010|DFDFDF-101010",0.80)
			tap_状态确认(x,y,"湮灭裂空")
			ret,x,y = findStr(232,31,280,71,"家","3E3D3D-101010|303030-101010|070707-101010|191919-101010|313131-101010",0.80)
			tap_状态确认(x,y,"主页面")
			return -1
		elseif 状态=="作战结束" then
			--x,y=找图(1049,614,1074,640,"作战结束_关.png")
			x,y = 找字(4,1049,614,1074,640,"关","147FE0-101010",0.80)
			if x == -1 then
				tap(1107,643)
				break
			elseif tap_状态确认(x,y,"作战前") == -1 then
				return -1
			end
			
		elseif 状态=="其他" then
			tap(340,50)
		end
		
	end
	print("战斗结束")
end

function 升级()
	local x= -1 local y= -1
	print("开始升级")
	返回主页面()
	--x,y=找图(1235,168,1255,195,"主页面_小人.png") if x == -1 then return -1 end
	x,y=找字(4,1205-350,192,1223,228,"SOUL","E7E7E7-101010|CBCBCB-101010",0.80)
	if tap_状态确认(x+30,y,"人形资料") == -1 then return -1 end
	
	if tap_状态确认(180,235,"关注角色") == -1 then return -1 end
	
	--x,y=找图(1081,471,1096,485,"关注角色_XP.png") if x == -1 then return -1 end
	x,y=找字(4,1079,470,1101,492,"XP","FFFFFF-101010",0.80)
	print("level up")
	tap(x,y)
end

function 收菜()
	local x= -1 local y= -1
	print("开始收菜")
	返回主页面()
	--商店免费购买
	while true do
		--x,y=找图(1159,492,1179,514,"主页面_箭头.png")
		x,y = 找字(4,1047-350,499,1080,532,"补","FFFFFF-101010",0.80)
		if x == -1 then break end
		if tap_状态确认(x,y,"商店") == -1 then break end
		
		--x,y=找图(19,314,47,345,"商店_方块.png")
		x,y = 找字(4,85,313,111,347,"补","929191-101010",0.80)
		if x == -1 then break end
		tap(x,y)
		
		while true do
			x,y = 找字(10,299,433,326,460,"免","040404-101010",0.80)
			if x== -1 then break end
			tap(x,y)
			x,y = 找字(10,939,650,971,682,"免","147CFB-101010",0.80)
			if x == -1 then
				tap(460,40)
			else
				tap(x,y)
			end
		end
		
		break
	end
	
	--使用底格币购买经验及算法碎片  +  领信用点
	while true do
		--x,y=找图(18,625,47,657,"商店_三棱.png") if x == -1 then break end
		x,y = 找字(4,82,624,108,659,"供","929191-101010",0.80) if x == -1 then break end
		tap(x,y)
		sleep(1000)
		swipe(100,700,100,10,50)
		sleep(2000)
		
		while string.find(用户设置["收菜选项"],0) ~= nil do
			local yy=15 local 增量查找=4
			for j=1,0,-1 do
				for i=3,0,-1 do
					print("检测第",j+1,"行,第",i+1,"列")
					print("查找范围",205+i*265,320-yy+254*j,205+(i+1)*265-15,320+yy+254*j+50)
					x,y = 找字(3+增量查找,205+i*265,320-yy+254*j,205+(i+1)*265-15,320+yy+254*j+50,"作战经验|算法碎片","D5D5D5-101010|E7E7E7-101010|BEBEBE-101010|FFFFFF-101010",0.50)
					if x~= -1 then
						增量查找=4
						print("查找范围",205+i*265,400-yy+254*j,205+(i+1)*265-15,400+yy+254*j+50)
						x,y= 找字(3,205+i*265,400-yy+254*j,205+(i+1)*265-15,400+yy+254*j+50,"底格币","DCDCDC-101010",0.50)
						if x~= -1 then
							tap(x,y)
							x,y = 找字(10,740,625,777,661,"底格币","DCDCDC-101010",0.50)
							if x~= -1 then
								tap(x,y)
							else
								tap(350,150)
							end
						end
					else
						增量查找=0
					end
				end
			end
		break end
		--x,y=找图(60,436,81,457,"商店_助.png")
		x,y = 找字(4,57,411,83,721,"助","454544-101010",0.80)
		if x == -1 then break end
		tap(x,y)
		
		--x,y=找图(1038,84,1057,103,"商店_收.png")
		x,y = 找字(10,1035,81,1114,105,"收取积分","1087EC-101010",0.80)
		if x ~= -1 then tap(x,y) end
		
		x,y = 找字(10,283,404,378,441,"单抽-声望积分价格","2B2B2B-101010",0.80)
		if x == -1 then break end
		tap(x,y)
		
		x,y = 找字(7,943,415,1031,451,"单抽-声望积分价格","2B2B2B-101010",0.80)
		if x == -1 then break end
		tap(980,640)
		
		
	break end
	返回主页面()
	--宿舍菜
	while true do
		--x,y=找图(875,597,923,612,"主页面_DORM.png")
		x,y = 找字(4,903-350,562,941,597,"舍","383838-101010",0.80)
		if x == -1 then break end
		tap(x,y)
		
		--x,y=找图(78,535,98,558,"宿舍_下箭头.png")
		x,y = 找字(10,76,534,99,560,"下箭头","000000-101010",0.80)
		if x == -1 then break end
		local 当前状态=""
		while 当前状态=="不稳定" do 当前状态=状态检测(3) end
		if 当前状态=="快捷栏打开" then
			tap(x,y)
			while 状态检测(2)~="快捷栏收起" do end
		end
		tap(x,y)
		break
	end
	--收菜
	--x,y=找图(234,32,277,71,"家.png")
	x,y = 找字(4,233,30,278,69,"家","1C1C1C-101010",0.80)
	if x == -1 then return end
	if tap_状态确认(340,50,"快捷栏打开") == -1 then return end
	tap(1089,390)
	sleep(500)
	tap(948,48)
end

function main_ui()
	action,用户设置 = showUI("云图计划rua.ui",600,600)
	local 测试功能=字符串转整数(用户设置["测试功能"])
	print("测试功能选择:",测试功能)
	if 测试功能==1 then
		print("测试功能")
		test()
		return
	end
	if 测试功能~=1 then 进入游戏() end
	if 用户设置["碎片搜索开关"]~="" and 测试功能==0 or 测试功能==2 then
		碎片搜索(字符串转整数(用户设置["碎片搜索主人物"])+1)
	end
	if 用户设置["每日资源本up开关"]~="" and 测试功能==0 or 测试功能==3 then
		每日up()
	end
	if 用户设置["漏洞排查开关"]~="" and 测试功能==0 or 测试功能==4 then
		--漏洞排查(字符串转整数(用户设置["道中队"]),字符串转整数(用户设置["boss队"]))
		漏洞排查扫荡版()
	end
	if 用户设置["升级开关"]~="" and 测试功能==0 or 测试功能==5 then
		升级()
	end
	if 用户设置["收菜开关"]~="" and 测试功能==0 or 测试功能==6 then
		收菜()
	end
	if 用户设置["算法采集开关"]~="" and 测试功能==0 or 测试功能==7 then
		if 字符串转整数(用户设置["算法采集次数"])==0 then
			算法采集(6)
		else
			算法采集(字符串转整数(用户设置["算法采集次数"]))
		end
	end
	if 用户设置["收菜开关"]~="" and 测试功能==0 or 测试功能==6 then
		返回主页面()
		local ret,x,y = findStr(308,451,339,480,"成","FBFDFD-101010",0.80)
		if x~= -1 then tap(x,y) end
	end
	if 用户设置["算法采集开关"]~="" and 字符串转整数(用户设置["算法采集次数"])==0 and 测试功能==0 or 测试功能==7 then
		算法采集(6)
	end
	返回主页面()
end

function test()
	while true do
		
	end
end
--runApp("com.sunborn.neuralcloud.cn")

--test()
main_ui()

--碎片搜索(1)
--每日up()
--漏洞排查(1,3)
--升级()
--收菜()
--算法采集(9)

--作战(1)
--返回主页面()
--关卡内(2)
--故障尝试处理()
--进入游戏()
--状态检测(2)
--页面回退()
--手动作战(1)
--print(findStr(113,22,142,50,"菜","FBFDFD-101010|CBCBCB-101010|B3B3B3-101010|DFDFDF-101010",0.80))

--swipe(100,100,5000,5000,1000) swipe(640,550,0,0,1000)











