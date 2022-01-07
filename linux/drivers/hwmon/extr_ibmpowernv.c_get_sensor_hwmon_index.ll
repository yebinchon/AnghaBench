; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ibmpowernv.c_get_sensor_hwmon_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ibmpowernv.c_get_sensor_hwmon_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sensor_data = type { i64, i64, i32 }

@INVALID_INDEX = common dso_local global i64 0, align 8
@sensor_groups = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sensor_data*, %struct.sensor_data*, i32)* @get_sensor_hwmon_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sensor_hwmon_index(%struct.sensor_data* %0, %struct.sensor_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sensor_data*, align 8
  %6 = alloca %struct.sensor_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sensor_data* %0, %struct.sensor_data** %5, align 8
  store %struct.sensor_data* %1, %struct.sensor_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.sensor_data*, %struct.sensor_data** %5, align 8
  %10 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @INVALID_INDEX, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %53

14:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %49, %14
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %52

19:                                               ; preds = %15
  %20 = load %struct.sensor_data*, %struct.sensor_data** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %20, i64 %22
  %24 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.sensor_data*, %struct.sensor_data** %5, align 8
  %27 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %19
  %31 = load %struct.sensor_data*, %struct.sensor_data** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %31, i64 %33
  %35 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.sensor_data*, %struct.sensor_data** %5, align 8
  %38 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %30
  %42 = load %struct.sensor_data*, %struct.sensor_data** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %42, i64 %44
  %46 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %4, align 4
  br label %62

48:                                               ; preds = %30, %19
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %15

52:                                               ; preds = %15
  br label %53

53:                                               ; preds = %52, %3
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sensor_groups, align 8
  %55 = load %struct.sensor_data*, %struct.sensor_data** %5, align 8
  %56 = getelementptr inbounds %struct.sensor_data, %struct.sensor_data* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %53, %41
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
