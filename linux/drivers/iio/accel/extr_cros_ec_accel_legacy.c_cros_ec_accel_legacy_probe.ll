; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_cros_ec_accel_legacy.c_cros_ec_accel_legacy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_cros_ec_accel_legacy.c_cros_ec_accel_legacy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.cros_ec_dev = type { i32 }
%struct.iio_dev = type { i32, i32, i32* }
%struct.cros_ec_sensors_core_state = type { i64, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [21 x i8] c"No EC device found.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cros_ec_accel_legacy_info = common dso_local global i32 0, align 4
@cros_ec_sensors_read_lpc = common dso_local global i32 0, align 4
@cros_ec_accel_legacy_read_cmd = common dso_local global i32 0, align 4
@cros_ec_accel_legacy_channels = common dso_local global i32 0, align 4
@MOTIONSENSE_LOC_LID = common dso_local global i64 0, align 8
@CROS_EC_SENSOR_X = common dso_local global i64 0, align 8
@CROS_EC_SENSOR_Z = common dso_local global i64 0, align 8
@cros_ec_sensors_capture = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cros_ec_accel_legacy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_accel_legacy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.cros_ec_dev*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.cros_ec_sensors_core_state*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.cros_ec_dev* @dev_get_drvdata(i32 %13)
  store %struct.cros_ec_dev* %14, %struct.cros_ec_dev** %5, align 8
  %15 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %5, align 8
  %16 = icmp ne %struct.cros_ec_dev* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %5, align 8
  %19 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i32 @dev_warn(%struct.device* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %101

28:                                               ; preds = %17
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %30, i32 32)
  store %struct.iio_dev* %31, %struct.iio_dev** %6, align 8
  %32 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %33 = icmp ne %struct.iio_dev* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %101

37:                                               ; preds = %28
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %40 = call i32 @cros_ec_sensors_core_init(%struct.platform_device* %38, %struct.iio_dev* %39, i32 1)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %2, align 4
  br label %101

45:                                               ; preds = %37
  %46 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %47 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %46, i32 0, i32 2
  store i32* @cros_ec_accel_legacy_info, i32** %47, align 8
  %48 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %49 = call %struct.cros_ec_sensors_core_state* @iio_priv(%struct.iio_dev* %48)
  store %struct.cros_ec_sensors_core_state* %49, %struct.cros_ec_sensors_core_state** %7, align 8
  %50 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %7, align 8
  %51 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %50, i32 0, i32 3
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %45
  %57 = load i32, i32* @cros_ec_sensors_read_lpc, align 4
  %58 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %7, align 8
  %59 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  br label %64

60:                                               ; preds = %45
  %61 = load i32, i32* @cros_ec_accel_legacy_read_cmd, align 4
  %62 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %7, align 8
  %63 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %60, %56
  %65 = load i32, i32* @cros_ec_accel_legacy_channels, align 4
  %66 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %67 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @cros_ec_accel_legacy_channels, align 4
  %69 = call i32 @ARRAY_SIZE(i32 %68)
  %70 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %71 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %7, align 8
  %73 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @MOTIONSENSE_LOC_LID, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %64
  %78 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %7, align 8
  %79 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* @CROS_EC_SENSOR_X, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32 -1, i32* %82, align 4
  %83 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %7, align 8
  %84 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* @CROS_EC_SENSOR_Z, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32 -1, i32* %87, align 4
  br label %88

88:                                               ; preds = %77, %64
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %91 = load i32, i32* @cros_ec_sensors_capture, align 4
  %92 = call i32 @devm_iio_triggered_buffer_setup(%struct.device* %89, %struct.iio_dev* %90, i32* null, i32 %91, i32* null)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %2, align 4
  br label %101

97:                                               ; preds = %88
  %98 = load %struct.device*, %struct.device** %4, align 8
  %99 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %100 = call i32 @devm_iio_device_register(%struct.device* %98, %struct.iio_dev* %99)
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %97, %95, %43, %34, %22
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.cros_ec_dev* @dev_get_drvdata(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local i32 @cros_ec_sensors_core_init(%struct.platform_device*, %struct.iio_dev*, i32) #1

declare dso_local %struct.cros_ec_sensors_core_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_iio_triggered_buffer_setup(%struct.device*, %struct.iio_dev*, i32*, i32, i32*) #1

declare dso_local i32 @devm_iio_device_register(%struct.device*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
