; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_rk3399_dmc.c_rk3399_dmcfreq_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_rk3399_dmc.c_rk3399_dmcfreq_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.rk3399_dmcfreq = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rk3399_dmcfreq_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk3399_dmcfreq_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.rk3399_dmcfreq*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 0
  %6 = call %struct.rk3399_dmcfreq* @dev_get_drvdata(i32* %5)
  store %struct.rk3399_dmcfreq* %6, %struct.rk3399_dmcfreq** %3, align 8
  %7 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %3, align 8
  %8 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %3, align 8
  %11 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @devm_devfreq_unregister_opp_notifier(i32 %9, i32 %12)
  %14 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %3, align 8
  %15 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_pm_opp_of_remove_table(i32 %16)
  ret i32 0
}

declare dso_local %struct.rk3399_dmcfreq* @dev_get_drvdata(i32*) #1

declare dso_local i32 @devm_devfreq_unregister_opp_notifier(i32, i32) #1

declare dso_local i32 @dev_pm_opp_of_remove_table(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
