; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/inv_mpu6050/extr_inv_mpu_trigger.c_inv_scan_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/inv_mpu6050/extr_inv_mpu_trigger.c_inv_scan_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.inv_mpu6050_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@INV_MPU6050_SCAN_GYRO_X = common dso_local global i32 0, align 4
@INV_MPU6050_SCAN_GYRO_Y = common dso_local global i32 0, align 4
@INV_MPU6050_SCAN_GYRO_Z = common dso_local global i32 0, align 4
@INV_MPU6050_SCAN_ACCL_X = common dso_local global i32 0, align 4
@INV_MPU6050_SCAN_ACCL_Y = common dso_local global i32 0, align 4
@INV_MPU6050_SCAN_ACCL_Z = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iio_dev*)* @inv_scan_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inv_scan_query(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  %3 = alloca %struct.inv_mpu6050_state*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %2, align 8
  %4 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %5 = call %struct.inv_mpu6050_state* @iio_priv(%struct.iio_dev* %4)
  store %struct.inv_mpu6050_state* %5, %struct.inv_mpu6050_state** %3, align 8
  %6 = load i32, i32* @INV_MPU6050_SCAN_GYRO_X, align 4
  %7 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %8 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @test_bit(i32 %6, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @INV_MPU6050_SCAN_GYRO_Y, align 4
  %14 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %15 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @test_bit(i32 %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %12
  %20 = load i32, i32* @INV_MPU6050_SCAN_GYRO_Z, align 4
  %21 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %22 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @test_bit(i32 %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %19, %12, %1
  %27 = phi i1 [ true, %12 ], [ true, %1 ], [ %25, %19 ]
  %28 = zext i1 %27 to i32
  %29 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %3, align 8
  %30 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @INV_MPU6050_SCAN_ACCL_X, align 4
  %33 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %34 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @test_bit(i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %26
  %39 = load i32, i32* @INV_MPU6050_SCAN_ACCL_Y, align 4
  %40 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %41 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @test_bit(i32 %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @INV_MPU6050_SCAN_ACCL_Z, align 4
  %47 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %48 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @test_bit(i32 %46, i32 %49)
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %45, %38, %26
  %53 = phi i1 [ true, %38 ], [ true, %26 ], [ %51, %45 ]
  %54 = zext i1 %53 to i32
  %55 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %3, align 8
  %56 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  ret void
}

declare dso_local %struct.inv_mpu6050_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
