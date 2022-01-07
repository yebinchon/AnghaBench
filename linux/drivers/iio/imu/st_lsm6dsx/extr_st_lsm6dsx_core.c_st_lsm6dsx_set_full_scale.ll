; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_core.c_st_lsm6dsx_set_full_scale.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_core.c_st_lsm6dsx_set_full_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_lsm6dsx_sensor = type { i64, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.st_lsm6dsx_fs_table_entry* }
%struct.st_lsm6dsx_fs_table_entry = type { i32, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_lsm6dsx_sensor*, i64)* @st_lsm6dsx_set_full_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_lsm6dsx_set_full_scale(%struct.st_lsm6dsx_sensor* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.st_lsm6dsx_sensor*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.st_lsm6dsx_fs_table_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.st_lsm6dsx_sensor* %0, %struct.st_lsm6dsx_sensor** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %4, align 8
  %11 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %10, i32 0, i32 2
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.st_lsm6dsx_fs_table_entry*, %struct.st_lsm6dsx_fs_table_entry** %15, align 8
  %17 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %4, align 8
  %18 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.st_lsm6dsx_fs_table_entry, %struct.st_lsm6dsx_fs_table_entry* %16, i64 %19
  store %struct.st_lsm6dsx_fs_table_entry* %20, %struct.st_lsm6dsx_fs_table_entry** %6, align 8
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %40, %2
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.st_lsm6dsx_fs_table_entry*, %struct.st_lsm6dsx_fs_table_entry** %6, align 8
  %24 = getelementptr inbounds %struct.st_lsm6dsx_fs_table_entry, %struct.st_lsm6dsx_fs_table_entry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %21
  %28 = load %struct.st_lsm6dsx_fs_table_entry*, %struct.st_lsm6dsx_fs_table_entry** %6, align 8
  %29 = getelementptr inbounds %struct.st_lsm6dsx_fs_table_entry, %struct.st_lsm6dsx_fs_table_entry* %28, i32 0, i32 2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %43

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %21

43:                                               ; preds = %38, %21
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.st_lsm6dsx_fs_table_entry*, %struct.st_lsm6dsx_fs_table_entry** %6, align 8
  %46 = getelementptr inbounds %struct.st_lsm6dsx_fs_table_entry, %struct.st_lsm6dsx_fs_table_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %44, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %87

52:                                               ; preds = %43
  %53 = load %struct.st_lsm6dsx_fs_table_entry*, %struct.st_lsm6dsx_fs_table_entry** %6, align 8
  %54 = getelementptr inbounds %struct.st_lsm6dsx_fs_table_entry, %struct.st_lsm6dsx_fs_table_entry* %53, i32 0, i32 2
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.st_lsm6dsx_fs_table_entry*, %struct.st_lsm6dsx_fs_table_entry** %6, align 8
  %62 = getelementptr inbounds %struct.st_lsm6dsx_fs_table_entry, %struct.st_lsm6dsx_fs_table_entry* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ST_LSM6DSX_SHIFT_VAL(i32 %60, i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %4, align 8
  %67 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %66, i32 0, i32 2
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = load %struct.st_lsm6dsx_fs_table_entry*, %struct.st_lsm6dsx_fs_table_entry** %6, align 8
  %70 = getelementptr inbounds %struct.st_lsm6dsx_fs_table_entry, %struct.st_lsm6dsx_fs_table_entry* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.st_lsm6dsx_fs_table_entry*, %struct.st_lsm6dsx_fs_table_entry** %6, align 8
  %74 = getelementptr inbounds %struct.st_lsm6dsx_fs_table_entry, %struct.st_lsm6dsx_fs_table_entry* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @st_lsm6dsx_update_bits_locked(%struct.TYPE_8__* %68, i32 %72, i32 %76, i32 %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %52
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %3, align 4
  br label %87

83:                                               ; preds = %52
  %84 = load i64, i64* %5, align 8
  %85 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %4, align 8
  %86 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %83, %81, %49
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @ST_LSM6DSX_SHIFT_VAL(i32, i32) #1

declare dso_local i32 @st_lsm6dsx_update_bits_locked(%struct.TYPE_8__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
