; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/inv_mpu6050/extr_inv_mpu_core.c_inv_mpu6050_init_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/inv_mpu6050/extr_inv_mpu_core.c_inv_mpu6050_init_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.iio_dev = type { i32 }
%struct.inv_mpu6050_state = type { i32, i64, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@INV_MPU6050_FSR_2000DPS = common dso_local global i32 0, align 4
@INV_MPU6050_GYRO_CONFIG_FSR_SHIFT = common dso_local global i32 0, align 4
@INV_MPU6050_FILTER_20HZ = common dso_local global i32 0, align 4
@INV_MPU6050_INIT_FIFO_RATE = common dso_local global i32 0, align 4
@INV_MPU6050_FS_02G = common dso_local global i32 0, align 4
@INV_MPU6050_ACCL_CONFIG_FSR_SHIFT = common dso_local global i32 0, align 4
@hw_info = common dso_local global %struct.TYPE_4__* null, align 8
@NSEC_PER_MSEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @inv_mpu6050_init_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inv_mpu6050_init_config(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.inv_mpu6050_state*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.inv_mpu6050_state* @iio_priv(%struct.iio_dev* %7)
  store %struct.inv_mpu6050_state* %8, %struct.inv_mpu6050_state** %6, align 8
  %9 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %10 = call i32 @inv_mpu6050_set_power_itg(%struct.inv_mpu6050_state* %9, i32 1)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %109

15:                                               ; preds = %1
  %16 = load i32, i32* @INV_MPU6050_FSR_2000DPS, align 4
  %17 = load i32, i32* @INV_MPU6050_GYRO_CONFIG_FSR_SHIFT, align 4
  %18 = shl i32 %16, %17
  store i32 %18, i32* %5, align 4
  %19 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %20 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %23 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %22, i32 0, i32 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @regmap_write(i32 %21, i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %15
  br label %105

32:                                               ; preds = %15
  %33 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %34 = load i32, i32* @INV_MPU6050_FILTER_20HZ, align 4
  %35 = call i32 @inv_mpu6050_set_lpf_regs(%struct.inv_mpu6050_state* %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %105

39:                                               ; preds = %32
  %40 = load i32, i32* @INV_MPU6050_INIT_FIFO_RATE, align 4
  %41 = call i32 @INV_MPU6050_FIFO_RATE_TO_DIVIDER(i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %43 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %46 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %45, i32 0, i32 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @regmap_write(i32 %44, i32 %49, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %39
  br label %105

55:                                               ; preds = %39
  %56 = load i32, i32* @INV_MPU6050_FS_02G, align 4
  %57 = load i32, i32* @INV_MPU6050_ACCL_CONFIG_FSR_SHIFT, align 4
  %58 = shl i32 %56, %57
  store i32 %58, i32* %5, align 4
  %59 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %60 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %63 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %62, i32 0, i32 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @regmap_write(i32 %61, i32 %66, i32 %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %55
  br label %105

72:                                               ; preds = %55
  %73 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %74 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %77 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %76, i32 0, i32 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %82 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @regmap_write(i32 %75, i32 %80, i32 %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %72
  %88 = load i32, i32* %4, align 4
  store i32 %88, i32* %2, align 4
  br label %109

89:                                               ; preds = %72
  %90 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %91 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %90, i32 0, i32 3
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hw_info, align 8
  %93 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %94 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @memcpy(i32* %91, i32 %98, i32 4)
  %100 = load i32, i32* @NSEC_PER_MSEC, align 4
  %101 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %102 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %104 = call i32 @inv_mpu6050_set_power_itg(%struct.inv_mpu6050_state* %103, i32 0)
  store i32 %104, i32* %2, align 4
  br label %109

105:                                              ; preds = %71, %54, %38, %31
  %106 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %107 = call i32 @inv_mpu6050_set_power_itg(%struct.inv_mpu6050_state* %106, i32 0)
  %108 = load i32, i32* %4, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %105, %89, %87, %13
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.inv_mpu6050_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @inv_mpu6050_set_power_itg(%struct.inv_mpu6050_state*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @inv_mpu6050_set_lpf_regs(%struct.inv_mpu6050_state*, i32) #1

declare dso_local i32 @INV_MPU6050_FIFO_RATE_TO_DIVIDER(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
