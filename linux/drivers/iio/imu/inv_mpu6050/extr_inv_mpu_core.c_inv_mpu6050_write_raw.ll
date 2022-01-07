; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/inv_mpu6050/extr_inv_mpu_core.c_inv_mpu6050_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/inv_mpu6050/extr_inv_mpu_core.c_inv_mpu6050_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }
%struct.inv_mpu6050_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @inv_mpu6050_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inv_mpu6050_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.inv_mpu6050_state*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.inv_mpu6050_state* @iio_priv(%struct.iio_dev* %14)
  store %struct.inv_mpu6050_state* %15, %struct.inv_mpu6050_state** %12, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* %13, align 4
  store i32 %21, i32* %6, align 4
  br label %96

22:                                               ; preds = %5
  %23 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %12, align 8
  %24 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %12, align 8
  %27 = call i32 @inv_mpu6050_set_power_itg(%struct.inv_mpu6050_state* %26, i32 1)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %89

31:                                               ; preds = %22
  %32 = load i64, i64* %11, align 8
  switch i64 %32, label %81 [
    i64 128, label %33
    i64 129, label %49
  ]

33:                                               ; preds = %31
  %34 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %35 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %45 [
    i32 130, label %37
    i32 131, label %41
  ]

37:                                               ; preds = %33
  %38 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %12, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @inv_mpu6050_write_gyro_scale(%struct.inv_mpu6050_state* %38, i32 %39)
  store i32 %40, i32* %13, align 4
  br label %48

41:                                               ; preds = %33
  %42 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %12, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @inv_mpu6050_write_accel_scale(%struct.inv_mpu6050_state* %42, i32 %43)
  store i32 %44, i32* %13, align 4
  br label %48

45:                                               ; preds = %33
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %13, align 4
  br label %48

48:                                               ; preds = %45, %41, %37
  br label %84

49:                                               ; preds = %31
  %50 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %51 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %77 [
    i32 130, label %53
    i32 131, label %65
  ]

53:                                               ; preds = %49
  %54 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %12, align 8
  %55 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %12, align 8
  %56 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %61 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @inv_mpu6050_sensor_set(%struct.inv_mpu6050_state* %54, i32 %59, i32 %62, i32 %63)
  store i32 %64, i32* %13, align 4
  br label %80

65:                                               ; preds = %49
  %66 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %12, align 8
  %67 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %12, align 8
  %68 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %73 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @inv_mpu6050_sensor_set(%struct.inv_mpu6050_state* %66, i32 %71, i32 %74, i32 %75)
  store i32 %76, i32* %13, align 4
  br label %80

77:                                               ; preds = %49
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %13, align 4
  br label %80

80:                                               ; preds = %77, %65, %53
  br label %84

81:                                               ; preds = %31
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %13, align 4
  br label %84

84:                                               ; preds = %81, %80, %48
  %85 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %12, align 8
  %86 = call i32 @inv_mpu6050_set_power_itg(%struct.inv_mpu6050_state* %85, i32 0)
  %87 = load i32, i32* %13, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %13, align 4
  br label %89

89:                                               ; preds = %84, %30
  %90 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %12, align 8
  %91 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %90, i32 0, i32 0
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %94 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %93)
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %89, %20
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local %struct.inv_mpu6050_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @inv_mpu6050_set_power_itg(%struct.inv_mpu6050_state*, i32) #1

declare dso_local i32 @inv_mpu6050_write_gyro_scale(%struct.inv_mpu6050_state*, i32) #1

declare dso_local i32 @inv_mpu6050_write_accel_scale(%struct.inv_mpu6050_state*, i32) #1

declare dso_local i32 @inv_mpu6050_sensor_set(%struct.inv_mpu6050_state*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
