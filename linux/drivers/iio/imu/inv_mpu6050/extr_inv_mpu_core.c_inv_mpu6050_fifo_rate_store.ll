; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/inv_mpu6050/extr_inv_mpu_core.c_inv_mpu6050_fifo_rate_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/inv_mpu6050/extr_inv_mpu_core.c_inv_mpu6050_fifo_rate_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.inv_mpu6050_state = type { i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@INV_MPU6050_MIN_FIFO_RATE = common dso_local global i32 0, align 4
@INV_MPU6050_MAX_FIFO_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @inv_mpu6050_fifo_rate_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inv_mpu6050_fifo_rate_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.iio_dev*, align 8
  %14 = alloca %struct.inv_mpu6050_state*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %15)
  store %struct.iio_dev* %16, %struct.iio_dev** %13, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %18 = call %struct.inv_mpu6050_state* @iio_priv(%struct.iio_dev* %17)
  store %struct.inv_mpu6050_state* %18, %struct.inv_mpu6050_state** %14, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @kstrtoint(i8* %19, i32 10, i32* %10)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %108

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @INV_MPU6050_MIN_FIFO_RATE, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @INV_MPU6050_MAX_FIFO_RATE, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29, %25
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %108

36:                                               ; preds = %29
  %37 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %38 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %5, align 4
  br label %108

43:                                               ; preds = %36
  %44 = load i32, i32* %10, align 4
  %45 = call i64 @INV_MPU6050_FIFO_RATE_TO_DIVIDER(i32 %44)
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %11, align 8
  %47 = call i32 @INV_MPU6050_DIVIDER_TO_FIFO_RATE(i64 %46)
  store i32 %47, i32* %10, align 4
  %48 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %14, align 8
  %49 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %48, i32 0, i32 0
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load i64, i64* %11, align 8
  %52 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %14, align 8
  %53 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %51, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %43
  store i32 0, i32* %12, align 4
  br label %95

58:                                               ; preds = %43
  %59 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %14, align 8
  %60 = call i32 @inv_mpu6050_set_power_itg(%struct.inv_mpu6050_state* %59, i32 1)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %95

64:                                               ; preds = %58
  %65 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %14, align 8
  %66 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %14, align 8
  %69 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %68, i32 0, i32 2
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* %11, align 8
  %74 = call i32 @regmap_write(i32 %67, i32 %72, i64 %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %64
  br label %90

78:                                               ; preds = %64
  %79 = load i64, i64* %11, align 8
  %80 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %14, align 8
  %81 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i64 %79, i64* %82, align 8
  %83 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %14, align 8
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @inv_mpu6050_set_lpf(%struct.inv_mpu6050_state* %83, i32 %84)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  br label %90

89:                                               ; preds = %78
  br label %90

90:                                               ; preds = %89, %88, %77
  %91 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %14, align 8
  %92 = call i32 @inv_mpu6050_set_power_itg(%struct.inv_mpu6050_state* %91, i32 0)
  %93 = load i32, i32* %12, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %90, %63, %57
  %96 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %14, align 8
  %97 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %96, i32 0, i32 0
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %100 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %99)
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %95
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %5, align 4
  br label %108

105:                                              ; preds = %95
  %106 = load i64, i64* %9, align 8
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %105, %103, %41, %33, %22
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.inv_mpu6050_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @kstrtoint(i8*, i32, i32*) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i64 @INV_MPU6050_FIFO_RATE_TO_DIVIDER(i32) #1

declare dso_local i32 @INV_MPU6050_DIVIDER_TO_FIFO_RATE(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @inv_mpu6050_set_power_itg(%struct.inv_mpu6050_state*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i64) #1

declare dso_local i32 @inv_mpu6050_set_lpf(%struct.inv_mpu6050_state*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
