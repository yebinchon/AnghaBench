; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/cros_ec_sensors/extr_cros_ec_lid_angle.c_cros_ec_lid_angle_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/cros_ec_sensors/extr_cros_ec_lid_angle.c_cros_ec_lid_angle_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.iio_dev = type { i32, i32, i32* }
%struct.cros_ec_lid_angle_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@cros_ec_lid_angle_info = common dso_local global i32 0, align 4
@cros_ec_lid_angle_channels = common dso_local global i32 0, align 4
@cros_ec_sensors_read_lid_angle = common dso_local global i32 0, align 4
@cros_ec_sensors_capture = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cros_ec_lid_angle_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_lid_angle_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.cros_ec_lid_angle_state*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %10, i32 4)
  store %struct.iio_dev* %11, %struct.iio_dev** %5, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %13 = icmp ne %struct.iio_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %53

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %20 = call i32 @cros_ec_sensors_core_init(%struct.platform_device* %18, %struct.iio_dev* %19, i32 0)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %2, align 4
  br label %53

25:                                               ; preds = %17
  %26 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %27 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %26, i32 0, i32 2
  store i32* @cros_ec_lid_angle_info, i32** %27, align 8
  %28 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %29 = call %struct.cros_ec_lid_angle_state* @iio_priv(%struct.iio_dev* %28)
  store %struct.cros_ec_lid_angle_state* %29, %struct.cros_ec_lid_angle_state** %6, align 8
  %30 = load i32, i32* @cros_ec_lid_angle_channels, align 4
  %31 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %32 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @cros_ec_lid_angle_channels, align 4
  %34 = call i32 @ARRAY_SIZE(i32 %33)
  %35 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %36 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @cros_ec_sensors_read_lid_angle, align 4
  %38 = load %struct.cros_ec_lid_angle_state*, %struct.cros_ec_lid_angle_state** %6, align 8
  %39 = getelementptr inbounds %struct.cros_ec_lid_angle_state, %struct.cros_ec_lid_angle_state* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %43 = load i32, i32* @cros_ec_sensors_capture, align 4
  %44 = call i32 @devm_iio_triggered_buffer_setup(%struct.device* %41, %struct.iio_dev* %42, i32* null, i32 %43, i32* null)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %25
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %2, align 4
  br label %53

49:                                               ; preds = %25
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %52 = call i32 @devm_iio_device_register(%struct.device* %50, %struct.iio_dev* %51)
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %49, %47, %23, %14
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local i32 @cros_ec_sensors_core_init(%struct.platform_device*, %struct.iio_dev*, i32) #1

declare dso_local %struct.cros_ec_lid_angle_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_iio_triggered_buffer_setup(%struct.device*, %struct.iio_dev*, i32*, i32, i32*) #1

declare dso_local i32 @devm_iio_device_register(%struct.device*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
