; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/inv_mpu6050/extr_inv_mpu_core.c_inv_mpu6050_write_accel_scale.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/inv_mpu6050/extr_inv_mpu_core.c_inv_mpu6050_write_accel_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inv_mpu6050_state = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@accel_scale = common dso_local global i32* null, align 8
@INV_MPU6050_ACCL_CONFIG_FSR_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inv_mpu6050_state*, i32)* @inv_mpu6050_write_accel_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inv_mpu6050_write_accel_scale(%struct.inv_mpu6050_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inv_mpu6050_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.inv_mpu6050_state* %0, %struct.inv_mpu6050_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %46, %2
  %10 = load i32, i32* %7, align 4
  %11 = load i32*, i32** @accel_scale, align 8
  %12 = call i32 @ARRAY_SIZE(i32* %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %49

14:                                               ; preds = %9
  %15 = load i32*, i32** @accel_scale, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %14
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @INV_MPU6050_ACCL_CONFIG_FSR_SHIFT, align 4
  %25 = shl i32 %23, %24
  store i32 %25, i32* %8, align 4
  %26 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %4, align 8
  %27 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %4, align 8
  %30 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @regmap_write(i32 %28, i32 %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %22
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %52

40:                                               ; preds = %22
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %4, align 8
  %43 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  store i32 0, i32* %3, align 4
  br label %52

45:                                               ; preds = %14
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %9

49:                                               ; preds = %9
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %49, %40, %38
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
