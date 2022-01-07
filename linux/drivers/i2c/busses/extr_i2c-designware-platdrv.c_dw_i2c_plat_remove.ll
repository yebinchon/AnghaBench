; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-platdrv.c_dw_i2c_plat_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-platdrv.c_dw_i2c_plat_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dw_i2c_dev = type { i32, i32 (%struct.dw_i2c_dev*)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dw_i2c_plat_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_i2c_plat_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.dw_i2c_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.dw_i2c_dev* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.dw_i2c_dev* %5, %struct.dw_i2c_dev** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call i32 @pm_runtime_get_sync(i32* %7)
  %9 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %10 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %9, i32 0, i32 2
  %11 = call i32 @i2c_del_adapter(i32* %10)
  %12 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %13 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %12, i32 0, i32 1
  %14 = load i32 (%struct.dw_i2c_dev*)*, i32 (%struct.dw_i2c_dev*)** %13, align 8
  %15 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %16 = call i32 %14(%struct.dw_i2c_dev* %15)
  %17 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 @pm_runtime_dont_use_autosuspend(i32* %18)
  %20 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 @pm_runtime_put_sync(i32* %21)
  %23 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %24 = call i32 @dw_i2c_plat_pm_cleanup(%struct.dw_i2c_dev* %23)
  %25 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %26 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @reset_control_assert(i32 %27)
  ret i32 0
}

declare dso_local %struct.dw_i2c_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @pm_runtime_dont_use_autosuspend(i32*) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

declare dso_local i32 @dw_i2c_plat_pm_cleanup(%struct.dw_i2c_dev*) #1

declare dso_local i32 @reset_control_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
