; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/inv_mpu6050/extr_inv_mpu_core.c_inv_mpu6050_read_channel_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/inv_mpu6050/extr_inv_mpu_core.c_inv_mpu6050_read_channel_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }
%struct.inv_mpu6050_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@INV_MPU6050_BIT_PWR_GYRO_STBY = common dso_local global i32 0, align 4
@INV_MPU6050_BIT_PWR_ACCL_STBY = common dso_local global i32 0, align 4
@INV_MPU6050_SENSOR_UP_TIME = common dso_local global i32 0, align 4
@IIO_MOD_X = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*)* @inv_mpu6050_read_channel_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inv_mpu6050_read_channel_data(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inv_mpu6050_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %12 = call %struct.inv_mpu6050_state* @iio_priv(%struct.iio_dev* %11)
  store %struct.inv_mpu6050_state* %12, %struct.inv_mpu6050_state** %8, align 8
  %13 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %8, align 8
  %14 = call i32 @inv_mpu6050_set_power_itg(%struct.inv_mpu6050_state* %13, i32 1)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %4, align 4
  br label %102

19:                                               ; preds = %3
  %20 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %21 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %87 [
    i32 129, label %23
    i32 130, label %49
    i32 128, label %75
  ]

23:                                               ; preds = %19
  %24 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %8, align 8
  %25 = load i32, i32* @INV_MPU6050_BIT_PWR_GYRO_STBY, align 4
  %26 = call i32 @inv_mpu6050_switch_engine(%struct.inv_mpu6050_state* %24, i32 1, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %98

30:                                               ; preds = %23
  %31 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %8, align 8
  %32 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %8, align 8
  %33 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %38 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @inv_mpu6050_sensor_show(%struct.inv_mpu6050_state* %31, i32 %36, i32 %39, i32* %40)
  store i32 %41, i32* %10, align 4
  %42 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %8, align 8
  %43 = load i32, i32* @INV_MPU6050_BIT_PWR_GYRO_STBY, align 4
  %44 = call i32 @inv_mpu6050_switch_engine(%struct.inv_mpu6050_state* %42, i32 0, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %30
  br label %98

48:                                               ; preds = %30
  br label %90

49:                                               ; preds = %19
  %50 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %8, align 8
  %51 = load i32, i32* @INV_MPU6050_BIT_PWR_ACCL_STBY, align 4
  %52 = call i32 @inv_mpu6050_switch_engine(%struct.inv_mpu6050_state* %50, i32 1, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %98

56:                                               ; preds = %49
  %57 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %8, align 8
  %58 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %8, align 8
  %59 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %64 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @inv_mpu6050_sensor_show(%struct.inv_mpu6050_state* %57, i32 %62, i32 %65, i32* %66)
  store i32 %67, i32* %10, align 4
  %68 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %8, align 8
  %69 = load i32, i32* @INV_MPU6050_BIT_PWR_ACCL_STBY, align 4
  %70 = call i32 @inv_mpu6050_switch_engine(%struct.inv_mpu6050_state* %68, i32 0, i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %56
  br label %98

74:                                               ; preds = %56
  br label %90

75:                                               ; preds = %19
  %76 = load i32, i32* @INV_MPU6050_SENSOR_UP_TIME, align 4
  %77 = call i32 @msleep(i32 %76)
  %78 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %8, align 8
  %79 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %8, align 8
  %80 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IIO_MOD_X, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = call i32 @inv_mpu6050_sensor_show(%struct.inv_mpu6050_state* %78, i32 %83, i32 %84, i32* %85)
  store i32 %86, i32* %10, align 4
  br label %90

87:                                               ; preds = %19
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %87, %75, %74, %48
  %91 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %8, align 8
  %92 = call i32 @inv_mpu6050_set_power_itg(%struct.inv_mpu6050_state* %91, i32 0)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %98

96:                                               ; preds = %90
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %4, align 4
  br label %102

98:                                               ; preds = %95, %73, %55, %47, %29
  %99 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %8, align 8
  %100 = call i32 @inv_mpu6050_set_power_itg(%struct.inv_mpu6050_state* %99, i32 0)
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %98, %96, %17
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local %struct.inv_mpu6050_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @inv_mpu6050_set_power_itg(%struct.inv_mpu6050_state*, i32) #1

declare dso_local i32 @inv_mpu6050_switch_engine(%struct.inv_mpu6050_state*, i32, i32) #1

declare dso_local i32 @inv_mpu6050_sensor_show(%struct.inv_mpu6050_state*, i32, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
