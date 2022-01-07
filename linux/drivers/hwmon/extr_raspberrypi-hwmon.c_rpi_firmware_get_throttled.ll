; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_raspberrypi-hwmon.c_rpi_firmware_get_throttled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_raspberrypi-hwmon.c_rpi_firmware_get_throttled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpi_hwmon_data = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@RPI_FIRMWARE_GET_THROTTLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to get throttled (%d)\0A\00", align 1
@UNDERVOLTAGE_STICKY_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Undervoltage detected!\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Voltage normalised\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"in0_lcrit_alarm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpi_hwmon_data*)* @rpi_firmware_get_throttled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpi_firmware_get_throttled(%struct.rpi_hwmon_data* %0) #0 {
  %2 = alloca %struct.rpi_hwmon_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rpi_hwmon_data* %0, %struct.rpi_hwmon_data** %2, align 8
  store i32 65535, i32* %5, align 4
  %7 = load %struct.rpi_hwmon_data*, %struct.rpi_hwmon_data** %2, align 8
  %8 = getelementptr inbounds %struct.rpi_hwmon_data, %struct.rpi_hwmon_data* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @RPI_FIRMWARE_GET_THROTTLED, align 4
  %11 = call i32 @rpi_firmware_property(i32 %9, i32 %10, i32* %5, i32 4)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.rpi_hwmon_data*, %struct.rpi_hwmon_data** %2, align 8
  %16 = getelementptr inbounds %struct.rpi_hwmon_data, %struct.rpi_hwmon_data* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @dev_err_once(%struct.TYPE_4__* %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %55

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @UNDERVOLTAGE_STICKY_BIT, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %3, align 4
  %24 = load %struct.rpi_hwmon_data*, %struct.rpi_hwmon_data** %2, align 8
  %25 = getelementptr inbounds %struct.rpi_hwmon_data, %struct.rpi_hwmon_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @UNDERVOLTAGE_STICKY_BIT, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.rpi_hwmon_data*, %struct.rpi_hwmon_data** %2, align 8
  %31 = getelementptr inbounds %struct.rpi_hwmon_data, %struct.rpi_hwmon_data* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %20
  br label %55

36:                                               ; preds = %20
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.rpi_hwmon_data*, %struct.rpi_hwmon_data** %2, align 8
  %41 = getelementptr inbounds %struct.rpi_hwmon_data, %struct.rpi_hwmon_data* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = call i32 @dev_crit(%struct.TYPE_4__* %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %49

44:                                               ; preds = %36
  %45 = load %struct.rpi_hwmon_data*, %struct.rpi_hwmon_data** %2, align 8
  %46 = getelementptr inbounds %struct.rpi_hwmon_data, %struct.rpi_hwmon_data* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = call i32 @dev_info(%struct.TYPE_4__* %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %44, %39
  %50 = load %struct.rpi_hwmon_data*, %struct.rpi_hwmon_data** %2, align 8
  %51 = getelementptr inbounds %struct.rpi_hwmon_data, %struct.rpi_hwmon_data* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = call i32 @sysfs_notify(i32* %53, i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %55

55:                                               ; preds = %49, %35, %14
  ret void
}

declare dso_local i32 @rpi_firmware_property(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err_once(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @dev_crit(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @dev_info(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @sysfs_notify(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
