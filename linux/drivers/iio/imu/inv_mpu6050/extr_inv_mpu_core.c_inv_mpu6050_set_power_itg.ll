; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/inv_mpu6050/extr_inv_mpu_core.c_inv_mpu6050_set_power_itg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/inv_mpu6050/extr_inv_mpu_core.c_inv_mpu6050_set_power_itg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inv_mpu6050_state = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@INV_MPU6050_REG_UP_TIME_MIN = common dso_local global i32 0, align 4
@INV_MPU6050_REG_UP_TIME_MAX = common dso_local global i32 0, align 4
@INV_MPU6050_BIT_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"set power %d, count=%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inv_mpu6050_set_power_itg(%struct.inv_mpu6050_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inv_mpu6050_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.inv_mpu6050_state* %0, %struct.inv_mpu6050_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %37

9:                                                ; preds = %2
  %10 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %4, align 8
  %11 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %9
  %15 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %4, align 8
  %16 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %4, align 8
  %19 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @regmap_write(i32 %17, i32 %22, i32 0)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %14
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %73

28:                                               ; preds = %14
  %29 = load i32, i32* @INV_MPU6050_REG_UP_TIME_MIN, align 4
  %30 = load i32, i32* @INV_MPU6050_REG_UP_TIME_MAX, align 4
  %31 = call i32 @usleep_range(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %9
  %33 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %4, align 8
  %34 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  br label %63

37:                                               ; preds = %2
  %38 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %4, align 8
  %39 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %58

42:                                               ; preds = %37
  %43 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %4, align 8
  %44 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %4, align 8
  %47 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @INV_MPU6050_BIT_SLEEP, align 4
  %52 = call i32 @regmap_write(i32 %45, i32 %50, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %42
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %73

57:                                               ; preds = %42
  br label %58

58:                                               ; preds = %57, %37
  %59 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %4, align 8
  %60 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %58, %32
  %64 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %4, align 8
  %65 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @regmap_get_device(i32 %66)
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %4, align 8
  %70 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dev_dbg(i32 %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %71)
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %63, %55, %26
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @regmap_get_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
