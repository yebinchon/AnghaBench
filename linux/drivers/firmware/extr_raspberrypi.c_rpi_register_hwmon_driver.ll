; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_raspberrypi.c_rpi_register_hwmon_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_raspberrypi.c_rpi_register_hwmon_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rpi_firmware = type { i32 }

@RPI_FIRMWARE_GET_THROTTLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"raspberrypi-hwmon\00", align 1
@rpi_hwmon = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.rpi_firmware*)* @rpi_register_hwmon_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpi_register_hwmon_driver(%struct.device* %0, %struct.rpi_firmware* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rpi_firmware*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rpi_firmware* %1, %struct.rpi_firmware** %4, align 8
  %7 = load %struct.rpi_firmware*, %struct.rpi_firmware** %4, align 8
  %8 = load i32, i32* @RPI_FIRMWARE_GET_THROTTLED, align 4
  %9 = call i32 @rpi_firmware_property(%struct.rpi_firmware* %7, i32 %8, i32* %5, i32 4)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %16

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = call i32 @platform_device_register_data(%struct.device* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 -1, i32* null, i32 0)
  store i32 %15, i32* @rpi_hwmon, align 4
  br label %16

16:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @rpi_firmware_property(%struct.rpi_firmware*, i32, i32*, i32) #1

declare dso_local i32 @platform_device_register_data(%struct.device*, i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
