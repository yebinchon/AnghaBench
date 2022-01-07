; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_core.c_st_lsm6dsx_check_odr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_core.c_st_lsm6dsx_check_odr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_lsm6dsx_sensor = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.st_lsm6dsx_odr_table_entry* }
%struct.st_lsm6dsx_odr_table_entry = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@ST_LSM6DSX_ODR_LIST_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st_lsm6dsx_check_odr(%struct.st_lsm6dsx_sensor* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.st_lsm6dsx_sensor*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.st_lsm6dsx_odr_table_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.st_lsm6dsx_sensor* %0, %struct.st_lsm6dsx_sensor** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %5, align 8
  %11 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.st_lsm6dsx_odr_table_entry*, %struct.st_lsm6dsx_odr_table_entry** %15, align 8
  %17 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %5, align 8
  %18 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.st_lsm6dsx_odr_table_entry, %struct.st_lsm6dsx_odr_table_entry* %16, i64 %19
  store %struct.st_lsm6dsx_odr_table_entry* %20, %struct.st_lsm6dsx_odr_table_entry** %8, align 8
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %38, %3
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @ST_LSM6DSX_ODR_LIST_SIZE, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %21
  %26 = load %struct.st_lsm6dsx_odr_table_entry*, %struct.st_lsm6dsx_odr_table_entry** %8, align 8
  %27 = getelementptr inbounds %struct.st_lsm6dsx_odr_table_entry, %struct.st_lsm6dsx_odr_table_entry* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %41

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %21

41:                                               ; preds = %36, %21
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @ST_LSM6DSX_ODR_LIST_SIZE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %58

48:                                               ; preds = %41
  %49 = load %struct.st_lsm6dsx_odr_table_entry*, %struct.st_lsm6dsx_odr_table_entry** %8, align 8
  %50 = getelementptr inbounds %struct.st_lsm6dsx_odr_table_entry, %struct.st_lsm6dsx_odr_table_entry* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %48, %45
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
