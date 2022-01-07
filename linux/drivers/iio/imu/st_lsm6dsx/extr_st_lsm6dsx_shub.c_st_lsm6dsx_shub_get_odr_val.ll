; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_shub.c_st_lsm6dsx_shub_get_odr_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_shub.c_st_lsm6dsx_shub_get_odr_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_lsm6dsx_sensor = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.st_lsm6dsx_ext_dev_settings* }
%struct.st_lsm6dsx_ext_dev_settings = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64 }

@ST_LSM6DSX_ODR_LIST_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_lsm6dsx_sensor*, i64, i64*)* @st_lsm6dsx_shub_get_odr_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_lsm6dsx_shub_get_odr_val(%struct.st_lsm6dsx_sensor* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.st_lsm6dsx_sensor*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.st_lsm6dsx_ext_dev_settings*, align 8
  %9 = alloca i32, align 4
  store %struct.st_lsm6dsx_sensor* %0, %struct.st_lsm6dsx_sensor** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %5, align 8
  %11 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.st_lsm6dsx_ext_dev_settings*, %struct.st_lsm6dsx_ext_dev_settings** %12, align 8
  store %struct.st_lsm6dsx_ext_dev_settings* %13, %struct.st_lsm6dsx_ext_dev_settings** %8, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %32, %3
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @ST_LSM6DSX_ODR_LIST_SIZE, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = load %struct.st_lsm6dsx_ext_dev_settings*, %struct.st_lsm6dsx_ext_dev_settings** %8, align 8
  %20 = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, %struct.st_lsm6dsx_ext_dev_settings* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %35

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  br label %14

35:                                               ; preds = %30, %14
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @ST_LSM6DSX_ODR_LIST_SIZE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %53

42:                                               ; preds = %35
  %43 = load %struct.st_lsm6dsx_ext_dev_settings*, %struct.st_lsm6dsx_ext_dev_settings** %8, align 8
  %44 = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, %struct.st_lsm6dsx_ext_dev_settings* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** %7, align 8
  store i64 %51, i64* %52, align 8
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %42, %39
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
