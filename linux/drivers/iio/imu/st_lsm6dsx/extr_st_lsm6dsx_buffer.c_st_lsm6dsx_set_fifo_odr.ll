; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_buffer.c_st_lsm6dsx_set_fifo_odr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_buffer.c_st_lsm6dsx_set_fifo_odr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_lsm6dsx_sensor = type { i64, i32, %struct.st_lsm6dsx_hw* }
%struct.st_lsm6dsx_hw = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.st_lsm6dsx_reg* }
%struct.st_lsm6dsx_reg = type { i32, i64 }

@ST_LSM6DSX_MAX_FIFO_ODR_VAL = common dso_local global i32 0, align 4
@ST_LSM6DSX_REG_FIFO_MODE_ADDR = common dso_local global i64 0, align 8
@ST_LSM6DSX_FIFO_ODR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_lsm6dsx_sensor*, i32)* @st_lsm6dsx_set_fifo_odr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_lsm6dsx_set_fifo_odr(%struct.st_lsm6dsx_sensor* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.st_lsm6dsx_sensor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.st_lsm6dsx_hw*, align 8
  %7 = alloca %struct.st_lsm6dsx_reg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.st_lsm6dsx_sensor* %0, %struct.st_lsm6dsx_sensor** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %4, align 8
  %12 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %11, i32 0, i32 2
  %13 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %12, align 8
  store %struct.st_lsm6dsx_hw* %13, %struct.st_lsm6dsx_hw** %6, align 8
  %14 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %6, align 8
  %15 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.st_lsm6dsx_reg*, %struct.st_lsm6dsx_reg** %17, align 8
  %19 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %4, align 8
  %20 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg* %18, i64 %21
  store %struct.st_lsm6dsx_reg* %22, %struct.st_lsm6dsx_reg** %7, align 8
  %23 = load %struct.st_lsm6dsx_reg*, %struct.st_lsm6dsx_reg** %7, align 8
  %24 = getelementptr inbounds %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %4, align 8
  %32 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %4, align 8
  %33 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @st_lsm6dsx_check_odr(%struct.st_lsm6dsx_sensor* %31, i32 %34, i32* %8)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %3, align 4
  br label %74

40:                                               ; preds = %30
  br label %42

41:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %41, %40
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.st_lsm6dsx_reg*, %struct.st_lsm6dsx_reg** %7, align 8
  %45 = getelementptr inbounds %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @ST_LSM6DSX_SHIFT_VAL(i32 %43, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %6, align 8
  %49 = load %struct.st_lsm6dsx_reg*, %struct.st_lsm6dsx_reg** %7, align 8
  %50 = getelementptr inbounds %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.st_lsm6dsx_reg*, %struct.st_lsm6dsx_reg** %7, align 8
  %53 = getelementptr inbounds %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @st_lsm6dsx_update_bits_locked(%struct.st_lsm6dsx_hw* %48, i64 %51, i32 %54, i32 %55)
  store i32 %56, i32* %3, align 4
  br label %74

57:                                               ; preds = %2
  %58 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %6, align 8
  %59 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @ST_LSM6DSX_MAX_FIFO_ODR_VAL, align 4
  br label %65

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i32 [ %63, %62 ], [ 0, %64 ]
  store i32 %66, i32* %8, align 4
  %67 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %6, align 8
  %68 = load i64, i64* @ST_LSM6DSX_REG_FIFO_MODE_ADDR, align 8
  %69 = load i32, i32* @ST_LSM6DSX_FIFO_ODR_MASK, align 4
  %70 = load i32, i32* @ST_LSM6DSX_FIFO_ODR_MASK, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @FIELD_PREP(i32 %70, i32 %71)
  %73 = call i32 @st_lsm6dsx_update_bits_locked(%struct.st_lsm6dsx_hw* %67, i64 %68, i32 %69, i32 %72)
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %65, %42, %38
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @st_lsm6dsx_check_odr(%struct.st_lsm6dsx_sensor*, i32, i32*) #1

declare dso_local i32 @ST_LSM6DSX_SHIFT_VAL(i32, i32) #1

declare dso_local i32 @st_lsm6dsx_update_bits_locked(%struct.st_lsm6dsx_hw*, i64, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
