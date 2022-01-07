; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_core.c_st_lsm6dsx_get_drdy_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_core.c_st_lsm6dsx_get_drdy_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_lsm6dsx_hw = type { %struct.device*, %struct.TYPE_2__* }
%struct.device = type { i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.st_sensors_platform_data = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"unsupported data ready pin\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_lsm6dsx_hw*, i32*)* @st_lsm6dsx_get_drdy_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_lsm6dsx_get_drdy_reg(%struct.st_lsm6dsx_hw* %0, i32* %1) #0 {
  %3 = alloca %struct.st_lsm6dsx_hw*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.st_sensors_platform_data*, align 8
  %8 = alloca %struct.device*, align 8
  store %struct.st_lsm6dsx_hw* %0, %struct.st_lsm6dsx_hw** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %10 = call i64 @st_lsm6dsx_of_get_drdy_pin(%struct.st_lsm6dsx_hw* %9, i32* %6)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %2
  %13 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %14 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %8, align 8
  %16 = load %struct.device*, %struct.device** %8, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.st_sensors_platform_data*
  store %struct.st_sensors_platform_data* %19, %struct.st_sensors_platform_data** %7, align 8
  %20 = load %struct.st_sensors_platform_data*, %struct.st_sensors_platform_data** %7, align 8
  %21 = icmp ne %struct.st_sensors_platform_data* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %12
  %23 = load %struct.st_sensors_platform_data*, %struct.st_sensors_platform_data** %7, align 8
  %24 = getelementptr inbounds %struct.st_sensors_platform_data, %struct.st_sensors_platform_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  br label %27

26:                                               ; preds = %12
  br label %27

27:                                               ; preds = %26, %22
  %28 = phi i32 [ %25, %22 ], [ 1, %26 ]
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %27, %2
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %45 [
    i32 1, label %31
    i32 2, label %38
  ]

31:                                               ; preds = %29
  %32 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %33 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %4, align 8
  store i32 %36, i32* %37, align 4
  br label %52

38:                                               ; preds = %29
  %39 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %40 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %4, align 8
  store i32 %43, i32* %44, align 4
  br label %52

45:                                               ; preds = %29
  %46 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %47 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %46, i32 0, i32 0
  %48 = load %struct.device*, %struct.device** %47, align 8
  %49 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %45, %38, %31
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i64 @st_lsm6dsx_of_get_drdy_pin(%struct.st_lsm6dsx_hw*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
