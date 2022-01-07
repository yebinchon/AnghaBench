; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_raspberrypi-hwmon.c_rpi_hwmon_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_raspberrypi-hwmon.c_rpi_hwmon_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.rpi_hwmon_data = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"rpi_volt\00", align 1
@rpi_chip_info = common dso_local global i32 0, align 4
@get_values_poll = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rpi_hwmon_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpi_hwmon_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rpi_hwmon_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.rpi_hwmon_data* @devm_kzalloc(%struct.device* %8, i32 12, i32 %9)
  store %struct.rpi_hwmon_data* %10, %struct.rpi_hwmon_data** %5, align 8
  %11 = load %struct.rpi_hwmon_data*, %struct.rpi_hwmon_data** %5, align 8
  %12 = icmp ne %struct.rpi_hwmon_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %51

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_get_drvdata(i32 %19)
  %21 = load %struct.rpi_hwmon_data*, %struct.rpi_hwmon_data** %5, align 8
  %22 = getelementptr inbounds %struct.rpi_hwmon_data, %struct.rpi_hwmon_data* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load %struct.rpi_hwmon_data*, %struct.rpi_hwmon_data** %5, align 8
  %25 = call i32 @devm_hwmon_device_register_with_info(%struct.device* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.rpi_hwmon_data* %24, i32* @rpi_chip_info, i32* null)
  %26 = load %struct.rpi_hwmon_data*, %struct.rpi_hwmon_data** %5, align 8
  %27 = getelementptr inbounds %struct.rpi_hwmon_data, %struct.rpi_hwmon_data* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.rpi_hwmon_data*, %struct.rpi_hwmon_data** %5, align 8
  %29 = getelementptr inbounds %struct.rpi_hwmon_data, %struct.rpi_hwmon_data* %28, i32 0, i32 1
  %30 = load i32, i32* @get_values_poll, align 4
  %31 = call i32 @INIT_DELAYED_WORK(i32* %29, i32 %30)
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = load %struct.rpi_hwmon_data*, %struct.rpi_hwmon_data** %5, align 8
  %34 = call i32 @platform_set_drvdata(%struct.platform_device* %32, %struct.rpi_hwmon_data* %33)
  %35 = load %struct.rpi_hwmon_data*, %struct.rpi_hwmon_data** %5, align 8
  %36 = getelementptr inbounds %struct.rpi_hwmon_data, %struct.rpi_hwmon_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @PTR_ERR_OR_ZERO(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %16
  %41 = load %struct.rpi_hwmon_data*, %struct.rpi_hwmon_data** %5, align 8
  %42 = getelementptr inbounds %struct.rpi_hwmon_data, %struct.rpi_hwmon_data* %41, i32 0, i32 1
  %43 = load i32, i32* @HZ, align 4
  %44 = mul nsw i32 2, %43
  %45 = call i32 @schedule_delayed_work(i32* %42, i32 %44)
  br label %46

46:                                               ; preds = %40, %16
  %47 = load %struct.rpi_hwmon_data*, %struct.rpi_hwmon_data** %5, align 8
  %48 = getelementptr inbounds %struct.rpi_hwmon_data, %struct.rpi_hwmon_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @PTR_ERR_OR_ZERO(i32 %49)
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %46, %13
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.rpi_hwmon_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_get_drvdata(i32) #1

declare dso_local i32 @devm_hwmon_device_register_with_info(%struct.device*, i8*, %struct.rpi_hwmon_data*, i32*, i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rpi_hwmon_data*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
