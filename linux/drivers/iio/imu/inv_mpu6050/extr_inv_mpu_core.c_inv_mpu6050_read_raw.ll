; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/inv_mpu6050/extr_inv_mpu_core.c_inv_mpu6050_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/inv_mpu6050/extr_inv_mpu_core.c_inv_mpu6050_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }
%struct.inv_mpu6050_state = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64, i64 }

@gyro_scale_6050 = common dso_local global i32* null, align 8
@IIO_VAL_INT_PLUS_NANO = common dso_local global i32 0, align 4
@accel_scale = common dso_local global i32* null, align 8
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@INV_ICM20602 = common dso_local global i32 0, align 4
@INV_ICM20602_TEMP_SCALE = common dso_local global i32 0, align 4
@INV_MPU6050_TEMP_SCALE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@INV_ICM20602_TEMP_OFFSET = common dso_local global i32 0, align 4
@INV_MPU6050_TEMP_OFFSET = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @inv_mpu6050_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inv_mpu6050_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.inv_mpu6050_state*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.inv_mpu6050_state* @iio_priv(%struct.iio_dev* %14)
  store %struct.inv_mpu6050_state* %15, %struct.inv_mpu6050_state** %12, align 8
  store i32 0, i32* %13, align 4
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %160 [
    i64 130, label %17
    i64 129, label %38
    i64 131, label %94
    i64 132, label %115
  ]

17:                                               ; preds = %5
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %6, align 4
  br label %163

24:                                               ; preds = %17
  %25 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %12, align 8
  %26 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %29 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @inv_mpu6050_read_channel_data(%struct.iio_dev* %28, %struct.iio_chan_spec* %29, i32* %30)
  store i32 %31, i32* %13, align 4
  %32 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %12, align 8
  %33 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %36 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %35)
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %6, align 4
  br label %163

38:                                               ; preds = %5
  %39 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %40 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %91 [
    i32 133, label %42
    i32 134, label %59
    i32 128, label %76
  ]

42:                                               ; preds = %38
  %43 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %12, align 8
  %44 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %43, i32 0, i32 0
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load i32*, i32** %9, align 8
  store i32 0, i32* %46, align 4
  %47 = load i32*, i32** @gyro_scale_6050, align 8
  %48 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %12, align 8
  %49 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %10, align 8
  store i32 %53, i32* %54, align 4
  %55 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %12, align 8
  %56 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* @IIO_VAL_INT_PLUS_NANO, align 4
  store i32 %58, i32* %6, align 4
  br label %163

59:                                               ; preds = %38
  %60 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %12, align 8
  %61 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %60, i32 0, i32 0
  %62 = call i32 @mutex_lock(i32* %61)
  %63 = load i32*, i32** %9, align 8
  store i32 0, i32* %63, align 4
  %64 = load i32*, i32** @accel_scale, align 8
  %65 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %12, align 8
  %66 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %10, align 8
  store i32 %70, i32* %71, align 4
  %72 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %12, align 8
  %73 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %75, i32* %6, align 4
  br label %163

76:                                               ; preds = %38
  %77 = load i32*, i32** %9, align 8
  store i32 0, i32* %77, align 4
  %78 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %12, align 8
  %79 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @INV_ICM20602, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load i32, i32* @INV_ICM20602_TEMP_SCALE, align 4
  %85 = load i32*, i32** %10, align 8
  store i32 %84, i32* %85, align 4
  br label %89

86:                                               ; preds = %76
  %87 = load i32, i32* @INV_MPU6050_TEMP_SCALE, align 4
  %88 = load i32*, i32** %10, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %90, i32* %6, align 4
  br label %163

91:                                               ; preds = %38
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %6, align 4
  br label %163

94:                                               ; preds = %5
  %95 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %96 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  switch i32 %97, label %112 [
    i32 128, label %98
  ]

98:                                               ; preds = %94
  %99 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %12, align 8
  %100 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @INV_ICM20602, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load i32, i32* @INV_ICM20602_TEMP_OFFSET, align 4
  %106 = load i32*, i32** %9, align 8
  store i32 %105, i32* %106, align 4
  br label %110

107:                                              ; preds = %98
  %108 = load i32, i32* @INV_MPU6050_TEMP_OFFSET, align 4
  %109 = load i32*, i32** %9, align 8
  store i32 %108, i32* %109, align 4
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %111, i32* %6, align 4
  br label %163

112:                                              ; preds = %94
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %6, align 4
  br label %163

115:                                              ; preds = %5
  %116 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %117 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  switch i32 %118, label %157 [
    i32 133, label %119
    i32 134, label %138
  ]

119:                                              ; preds = %115
  %120 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %12, align 8
  %121 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %120, i32 0, i32 0
  %122 = call i32 @mutex_lock(i32* %121)
  %123 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %12, align 8
  %124 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %12, align 8
  %125 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %124, i32 0, i32 1
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %130 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %9, align 8
  %133 = call i32 @inv_mpu6050_sensor_show(%struct.inv_mpu6050_state* %123, i32 %128, i32 %131, i32* %132)
  store i32 %133, i32* %13, align 4
  %134 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %12, align 8
  %135 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %134, i32 0, i32 0
  %136 = call i32 @mutex_unlock(i32* %135)
  %137 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %137, i32* %6, align 4
  br label %163

138:                                              ; preds = %115
  %139 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %12, align 8
  %140 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %139, i32 0, i32 0
  %141 = call i32 @mutex_lock(i32* %140)
  %142 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %12, align 8
  %143 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %12, align 8
  %144 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %143, i32 0, i32 1
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %149 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32*, i32** %9, align 8
  %152 = call i32 @inv_mpu6050_sensor_show(%struct.inv_mpu6050_state* %142, i32 %147, i32 %150, i32* %151)
  store i32 %152, i32* %13, align 4
  %153 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %12, align 8
  %154 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %153, i32 0, i32 0
  %155 = call i32 @mutex_unlock(i32* %154)
  %156 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %156, i32* %6, align 4
  br label %163

157:                                              ; preds = %115
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %6, align 4
  br label %163

160:                                              ; preds = %5
  %161 = load i32, i32* @EINVAL, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %6, align 4
  br label %163

163:                                              ; preds = %160, %157, %138, %119, %112, %110, %91, %89, %59, %42, %24, %22
  %164 = load i32, i32* %6, align 4
  ret i32 %164
}

declare dso_local %struct.inv_mpu6050_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @inv_mpu6050_read_channel_data(%struct.iio_dev*, %struct.iio_chan_spec*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @inv_mpu6050_sensor_show(%struct.inv_mpu6050_state*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
