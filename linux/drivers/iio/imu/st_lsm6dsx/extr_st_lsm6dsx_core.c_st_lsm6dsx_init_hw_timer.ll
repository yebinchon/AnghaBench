; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_core.c_st_lsm6dsx_init_hw_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_core.c_st_lsm6dsx_init_hw_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_lsm6dsx_hw = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.st_lsm6dsx_hw_ts_settings }
%struct.st_lsm6dsx_hw_ts_settings = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_lsm6dsx_hw*)* @st_lsm6dsx_init_hw_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_lsm6dsx_init_hw_timer(%struct.st_lsm6dsx_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.st_lsm6dsx_hw*, align 8
  %4 = alloca %struct.st_lsm6dsx_hw_ts_settings*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.st_lsm6dsx_hw* %0, %struct.st_lsm6dsx_hw** %3, align 8
  %7 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %8 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store %struct.st_lsm6dsx_hw_ts_settings* %10, %struct.st_lsm6dsx_hw_ts_settings** %4, align 8
  %11 = load %struct.st_lsm6dsx_hw_ts_settings*, %struct.st_lsm6dsx_hw_ts_settings** %4, align 8
  %12 = getelementptr inbounds %struct.st_lsm6dsx_hw_ts_settings, %struct.st_lsm6dsx_hw_ts_settings* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %1
  %17 = load %struct.st_lsm6dsx_hw_ts_settings*, %struct.st_lsm6dsx_hw_ts_settings** %4, align 8
  %18 = getelementptr inbounds %struct.st_lsm6dsx_hw_ts_settings, %struct.st_lsm6dsx_hw_ts_settings* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ST_LSM6DSX_SHIFT_VAL(i32 1, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %23 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.st_lsm6dsx_hw_ts_settings*, %struct.st_lsm6dsx_hw_ts_settings** %4, align 8
  %26 = getelementptr inbounds %struct.st_lsm6dsx_hw_ts_settings, %struct.st_lsm6dsx_hw_ts_settings* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.st_lsm6dsx_hw_ts_settings*, %struct.st_lsm6dsx_hw_ts_settings** %4, align 8
  %30 = getelementptr inbounds %struct.st_lsm6dsx_hw_ts_settings, %struct.st_lsm6dsx_hw_ts_settings* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @regmap_update_bits(i32 %24, i64 %28, i32 %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %16
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %101

39:                                               ; preds = %16
  br label %40

40:                                               ; preds = %39, %1
  %41 = load %struct.st_lsm6dsx_hw_ts_settings*, %struct.st_lsm6dsx_hw_ts_settings** %4, align 8
  %42 = getelementptr inbounds %struct.st_lsm6dsx_hw_ts_settings, %struct.st_lsm6dsx_hw_ts_settings* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %70

46:                                               ; preds = %40
  %47 = load %struct.st_lsm6dsx_hw_ts_settings*, %struct.st_lsm6dsx_hw_ts_settings** %4, align 8
  %48 = getelementptr inbounds %struct.st_lsm6dsx_hw_ts_settings, %struct.st_lsm6dsx_hw_ts_settings* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ST_LSM6DSX_SHIFT_VAL(i32 1, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %53 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.st_lsm6dsx_hw_ts_settings*, %struct.st_lsm6dsx_hw_ts_settings** %4, align 8
  %56 = getelementptr inbounds %struct.st_lsm6dsx_hw_ts_settings, %struct.st_lsm6dsx_hw_ts_settings* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.st_lsm6dsx_hw_ts_settings*, %struct.st_lsm6dsx_hw_ts_settings** %4, align 8
  %60 = getelementptr inbounds %struct.st_lsm6dsx_hw_ts_settings, %struct.st_lsm6dsx_hw_ts_settings* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @regmap_update_bits(i32 %54, i64 %58, i32 %62, i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %46
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %2, align 4
  br label %101

69:                                               ; preds = %46
  br label %70

70:                                               ; preds = %69, %40
  %71 = load %struct.st_lsm6dsx_hw_ts_settings*, %struct.st_lsm6dsx_hw_ts_settings** %4, align 8
  %72 = getelementptr inbounds %struct.st_lsm6dsx_hw_ts_settings, %struct.st_lsm6dsx_hw_ts_settings* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %100

76:                                               ; preds = %70
  %77 = load %struct.st_lsm6dsx_hw_ts_settings*, %struct.st_lsm6dsx_hw_ts_settings** %4, align 8
  %78 = getelementptr inbounds %struct.st_lsm6dsx_hw_ts_settings, %struct.st_lsm6dsx_hw_ts_settings* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @ST_LSM6DSX_SHIFT_VAL(i32 1, i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %83 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.st_lsm6dsx_hw_ts_settings*, %struct.st_lsm6dsx_hw_ts_settings** %4, align 8
  %86 = getelementptr inbounds %struct.st_lsm6dsx_hw_ts_settings, %struct.st_lsm6dsx_hw_ts_settings* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.st_lsm6dsx_hw_ts_settings*, %struct.st_lsm6dsx_hw_ts_settings** %4, align 8
  %90 = getelementptr inbounds %struct.st_lsm6dsx_hw_ts_settings, %struct.st_lsm6dsx_hw_ts_settings* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @regmap_update_bits(i32 %84, i64 %88, i32 %92, i32 %93)
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %76
  %98 = load i32, i32* %5, align 4
  store i32 %98, i32* %2, align 4
  br label %101

99:                                               ; preds = %76
  br label %100

100:                                              ; preds = %99, %70
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %97, %67, %37
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @ST_LSM6DSX_SHIFT_VAL(i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
