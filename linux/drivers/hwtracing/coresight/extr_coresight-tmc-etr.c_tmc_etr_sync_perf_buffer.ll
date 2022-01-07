; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_tmc_etr_sync_perf_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_tmc_etr_sync_perf_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etr_perf_buffer = type { i64, i64, i64, %struct.etr_buf* }
%struct.etr_buf = type { i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etr_perf_buffer*, i64, i64)* @tmc_etr_sync_perf_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmc_etr_sync_perf_buffer(%struct.etr_perf_buffer* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.etr_perf_buffer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.etr_buf*, align 8
  store %struct.etr_perf_buffer* %0, %struct.etr_perf_buffer** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct.etr_perf_buffer*, %struct.etr_perf_buffer** %4, align 8
  %15 = getelementptr inbounds %struct.etr_perf_buffer, %struct.etr_perf_buffer* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %10, align 8
  %17 = load %struct.etr_perf_buffer*, %struct.etr_perf_buffer** %4, align 8
  %18 = getelementptr inbounds %struct.etr_perf_buffer, %struct.etr_perf_buffer* %17, i32 0, i32 3
  %19 = load %struct.etr_buf*, %struct.etr_buf** %18, align 8
  store %struct.etr_buf* %19, %struct.etr_buf** %13, align 8
  %20 = load %struct.etr_perf_buffer*, %struct.etr_perf_buffer** %4, align 8
  %21 = getelementptr inbounds %struct.etr_perf_buffer, %struct.etr_perf_buffer* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @PAGE_SHIFT, align 8
  %25 = lshr i64 %23, %24
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = and i64 %26, %29
  store i64 %30, i64* %9, align 8
  %31 = load %struct.etr_perf_buffer*, %struct.etr_perf_buffer** %4, align 8
  %32 = getelementptr inbounds %struct.etr_perf_buffer, %struct.etr_perf_buffer* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8**
  store i8** %34, i8*** %11, align 8
  br label %35

35:                                               ; preds = %96, %3
  %36 = load i64, i64* %6, align 8
  %37 = icmp ugt i64 %36, 0
  br i1 %37, label %38, label %100

38:                                               ; preds = %35
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.etr_buf*, %struct.etr_buf** %13, align 8
  %41 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp uge i64 %39, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.etr_buf*, %struct.etr_buf** %13, align 8
  %46 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = sub i64 %48, %47
  store i64 %49, i64* %5, align 8
  br label %50

50:                                               ; preds = %44, %38
  %51 = load %struct.etr_buf*, %struct.etr_buf** %13, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i64 @tmc_etr_buf_get_data(%struct.etr_buf* %51, i64 %52, i64 %53, i8** %12)
  store i64 %54, i64* %7, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp sle i64 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i64 @WARN_ON_ONCE(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %100

61:                                               ; preds = %50
  %62 = load i64, i64* %7, align 8
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %9, align 8
  %66 = sub nsw i64 %64, %65
  %67 = call i64 @min(i64 %62, i64 %66)
  store i64 %67, i64* %7, align 8
  %68 = load i8**, i8*** %11, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds i8*, i8** %68, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = load i64, i64* %9, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  %74 = load i8*, i8** %12, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @memcpy(i8* %73, i8* %74, i64 %75)
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* %6, align 8
  %79 = sub i64 %78, %77
  store i64 %79, i64* %6, align 8
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* %9, align 8
  %82 = add nsw i64 %81, %80
  store i64 %82, i64* %9, align 8
  %83 = load i64, i64* %9, align 8
  %84 = load i32, i32* @PAGE_SIZE, align 4
  %85 = sext i32 %84 to i64
  %86 = icmp eq i64 %83, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %61
  store i64 0, i64* %9, align 8
  %88 = load i64, i64* %8, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %8, align 8
  %90 = load %struct.etr_perf_buffer*, %struct.etr_perf_buffer** %4, align 8
  %91 = getelementptr inbounds %struct.etr_perf_buffer, %struct.etr_perf_buffer* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %89, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  store i64 0, i64* %8, align 8
  br label %95

95:                                               ; preds = %94, %87
  br label %96

96:                                               ; preds = %95, %61
  %97 = load i64, i64* %7, align 8
  %98 = load i64, i64* %5, align 8
  %99 = add i64 %98, %97
  store i64 %99, i64* %5, align 8
  br label %35

100:                                              ; preds = %60, %35
  ret void
}

declare dso_local i64 @tmc_etr_buf_get_data(%struct.etr_buf*, i64, i64, i8**) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
