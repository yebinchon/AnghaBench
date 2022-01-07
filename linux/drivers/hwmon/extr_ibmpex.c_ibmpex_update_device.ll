; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ibmpex.c_ibmpex_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ibmpex.c_ibmpex_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmpex_bmc_data = type { i32, i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8**, i32 }

@jiffies = common dso_local global i64 0, align 8
@REFRESH_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmpex_bmc_data*)* @ibmpex_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmpex_update_device(%struct.ibmpex_bmc_data* %0) #0 {
  %2 = alloca %struct.ibmpex_bmc_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ibmpex_bmc_data* %0, %struct.ibmpex_bmc_data** %2, align 8
  %5 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %2, align 8
  %6 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %5, i32 0, i32 2
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load i64, i64* @jiffies, align 8
  %9 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %2, align 8
  %10 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @REFRESH_INTERVAL, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i64 @time_before(i64 %8, i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %2, align 8
  %18 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %96

22:                                               ; preds = %16, %1
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %87, %22
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %2, align 8
  %26 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %90

29:                                               ; preds = %23
  %30 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %2, align 8
  %31 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %30, i32 0, i32 5
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %29
  br label %87

40:                                               ; preds = %29
  %41 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %2, align 8
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @ibmpex_query_sensor_data(%struct.ibmpex_bmc_data* %41, i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %87

47:                                               ; preds = %40
  %48 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %2, align 8
  %49 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i8* @extract_value(i32 %50, i32 16)
  %52 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %2, align 8
  %53 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %52, i32 0, i32 5
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i8**, i8*** %58, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  store i8* %51, i8** %60, align 8
  %61 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %2, align 8
  %62 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i8* @extract_value(i32 %63, i32 18)
  %65 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %2, align 8
  %66 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %65, i32 0, i32 5
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i8**, i8*** %71, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 1
  store i8* %64, i8** %73, align 8
  %74 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %2, align 8
  %75 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = call i8* @extract_value(i32 %76, i32 20)
  %78 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %2, align 8
  %79 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %78, i32 0, i32 5
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i8**, i8*** %84, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 2
  store i8* %77, i8** %86, align 8
  br label %87

87:                                               ; preds = %47, %46, %39
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %3, align 4
  br label %23

90:                                               ; preds = %23
  %91 = load i64, i64* @jiffies, align 8
  %92 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %2, align 8
  %93 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %92, i32 0, i32 3
  store i64 %91, i64* %93, align 8
  %94 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %2, align 8
  %95 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  br label %96

96:                                               ; preds = %90, %21
  %97 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %2, align 8
  %98 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %97, i32 0, i32 2
  %99 = call i32 @mutex_unlock(i32* %98)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @ibmpex_query_sensor_data(%struct.ibmpex_bmc_data*, i32) #1

declare dso_local i8* @extract_value(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
