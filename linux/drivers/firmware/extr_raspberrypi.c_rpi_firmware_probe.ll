; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_raspberrypi.c_rpi_firmware_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_raspberrypi.c_rpi_firmware_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.rpi_firmware = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@response_callback = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to get mbox channel: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rpi_firmware_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpi_firmware_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rpi_firmware*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.rpi_firmware* @devm_kzalloc(%struct.device* %9, i32 24, i32 %10)
  store %struct.rpi_firmware* %11, %struct.rpi_firmware** %5, align 8
  %12 = load %struct.rpi_firmware*, %struct.rpi_firmware** %5, align 8
  %13 = icmp ne %struct.rpi_firmware* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %68

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load %struct.rpi_firmware*, %struct.rpi_firmware** %5, align 8
  %20 = getelementptr inbounds %struct.rpi_firmware, %struct.rpi_firmware* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store %struct.device* %18, %struct.device** %21, align 8
  %22 = load i32, i32* @response_callback, align 4
  %23 = load %struct.rpi_firmware*, %struct.rpi_firmware** %5, align 8
  %24 = getelementptr inbounds %struct.rpi_firmware, %struct.rpi_firmware* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load %struct.rpi_firmware*, %struct.rpi_firmware** %5, align 8
  %27 = getelementptr inbounds %struct.rpi_firmware, %struct.rpi_firmware* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.rpi_firmware*, %struct.rpi_firmware** %5, align 8
  %30 = getelementptr inbounds %struct.rpi_firmware, %struct.rpi_firmware* %29, i32 0, i32 2
  %31 = call i32 @mbox_request_channel(%struct.TYPE_2__* %30, i32 0)
  %32 = load %struct.rpi_firmware*, %struct.rpi_firmware** %5, align 8
  %33 = getelementptr inbounds %struct.rpi_firmware, %struct.rpi_firmware* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.rpi_firmware*, %struct.rpi_firmware** %5, align 8
  %35 = getelementptr inbounds %struct.rpi_firmware, %struct.rpi_firmware* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @IS_ERR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %17
  %40 = load %struct.rpi_firmware*, %struct.rpi_firmware** %5, align 8
  %41 = getelementptr inbounds %struct.rpi_firmware, %struct.rpi_firmware* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @PTR_ERR(i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @EPROBE_DEFER, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp ne i32 %44, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %48, %39
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %68

54:                                               ; preds = %17
  %55 = load %struct.rpi_firmware*, %struct.rpi_firmware** %5, align 8
  %56 = getelementptr inbounds %struct.rpi_firmware, %struct.rpi_firmware* %55, i32 0, i32 0
  %57 = call i32 @init_completion(i32* %56)
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = load %struct.rpi_firmware*, %struct.rpi_firmware** %5, align 8
  %60 = call i32 @platform_set_drvdata(%struct.platform_device* %58, %struct.rpi_firmware* %59)
  %61 = load %struct.rpi_firmware*, %struct.rpi_firmware** %5, align 8
  %62 = call i32 @rpi_firmware_print_firmware_revision(%struct.rpi_firmware* %61)
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = load %struct.rpi_firmware*, %struct.rpi_firmware** %5, align 8
  %65 = call i32 @rpi_register_hwmon_driver(%struct.device* %63, %struct.rpi_firmware* %64)
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = call i32 @rpi_register_clk_driver(%struct.device* %66)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %54, %52, %14
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.rpi_firmware* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mbox_request_channel(%struct.TYPE_2__*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rpi_firmware*) #1

declare dso_local i32 @rpi_firmware_print_firmware_revision(%struct.rpi_firmware*) #1

declare dso_local i32 @rpi_register_hwmon_driver(%struct.device*, %struct.rpi_firmware*) #1

declare dso_local i32 @rpi_register_clk_driver(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
