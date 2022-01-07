; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/inv_mpu6050/extr_inv_mpu_spi.c_inv_mpu_i2c_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/inv_mpu6050/extr_inv_mpu_spi.c_inv_mpu_i2c_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.inv_mpu6050_state = type { %struct.TYPE_3__, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64 }

@INV_ICM20602_BIT_I2C_IF_DIS = common dso_local global i32 0, align 4
@INV_MPU6050_BIT_I2C_IF_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @inv_mpu_i2c_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inv_mpu_i2c_disable(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.inv_mpu6050_state*, align 8
  %5 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %6 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %7 = call %struct.inv_mpu6050_state* @iio_priv(%struct.iio_dev* %6)
  store %struct.inv_mpu6050_state* %7, %struct.inv_mpu6050_state** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %4, align 8
  %9 = call i32 @inv_mpu6050_set_power_itg(%struct.inv_mpu6050_state* %8, i32 1)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %62

14:                                               ; preds = %1
  %15 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %4, align 8
  %16 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %14
  %22 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %4, align 8
  %23 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %4, align 8
  %26 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @INV_ICM20602_BIT_I2C_IF_DIS, align 4
  %31 = call i32 @regmap_write(i32 %24, i64 %29, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %52

32:                                               ; preds = %14
  %33 = load i32, i32* @INV_MPU6050_BIT_I2C_IF_DIS, align 4
  %34 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %4, align 8
  %35 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %33
  store i32 %38, i32* %36, align 8
  %39 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %4, align 8
  %40 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %4, align 8
  %43 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %4, align 8
  %48 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @regmap_write(i32 %41, i64 %46, i32 %50)
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %32, %21
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %4, align 8
  %57 = call i32 @inv_mpu6050_set_power_itg(%struct.inv_mpu6050_state* %56, i32 0)
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %62

59:                                               ; preds = %52
  %60 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %4, align 8
  %61 = call i32 @inv_mpu6050_set_power_itg(%struct.inv_mpu6050_state* %60, i32 0)
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %59, %55, %12
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.inv_mpu6050_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @inv_mpu6050_set_power_itg(%struct.inv_mpu6050_state*, i32) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
