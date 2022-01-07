; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_xgene-hwmon.c_xgene_hwmon_tpc_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_xgene-hwmon.c_xgene_hwmon_tpc_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_hwmon_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.slimpro_resp_msg = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"temp1_critical_alarm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_hwmon_dev*, %struct.slimpro_resp_msg*)* @xgene_hwmon_tpc_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_hwmon_tpc_alarm(%struct.xgene_hwmon_dev* %0, %struct.slimpro_resp_msg* %1) #0 {
  %3 = alloca %struct.xgene_hwmon_dev*, align 8
  %4 = alloca %struct.slimpro_resp_msg*, align 8
  store %struct.xgene_hwmon_dev* %0, %struct.xgene_hwmon_dev** %3, align 8
  store %struct.slimpro_resp_msg* %1, %struct.slimpro_resp_msg** %4, align 8
  %5 = load %struct.slimpro_resp_msg*, %struct.slimpro_resp_msg** %4, align 8
  %6 = getelementptr inbounds %struct.slimpro_resp_msg, %struct.slimpro_resp_msg* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %3, align 8
  %13 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %3, align 8
  %15 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @sysfs_notify(i32* %17, i32* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @sysfs_notify(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
