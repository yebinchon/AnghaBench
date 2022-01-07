; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_tmc_etr_get_sysfs_trace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_tmc_etr_get_sysfs_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmc_drvdata = type { %struct.etr_buf* }
%struct.etr_buf = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tmc_etr_get_sysfs_trace(%struct.tmc_drvdata* %0, i64 %1, i64 %2, i8** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.tmc_drvdata*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.etr_buf*, align 8
  store %struct.tmc_drvdata* %0, %struct.tmc_drvdata** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8** %3, i8*** %9, align 8
  %13 = load i64, i64* %8, align 8
  store i64 %13, i64* %11, align 8
  %14 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %6, align 8
  %15 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %14, i32 0, i32 0
  %16 = load %struct.etr_buf*, %struct.etr_buf** %15, align 8
  store %struct.etr_buf* %16, %struct.etr_buf** %12, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %11, align 8
  %19 = add nsw i64 %17, %18
  %20 = load %struct.etr_buf*, %struct.etr_buf** %12, align 8
  %21 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load %struct.etr_buf*, %struct.etr_buf** %12, align 8
  %26 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = sub nsw i64 %27, %28
  store i64 %29, i64* %11, align 8
  br label %30

30:                                               ; preds = %24, %4
  %31 = load i64, i64* %11, align 8
  %32 = icmp sle i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i64, i64* %11, align 8
  store i64 %34, i64* %5, align 8
  br label %58

35:                                               ; preds = %30
  %36 = load %struct.etr_buf*, %struct.etr_buf** %12, align 8
  %37 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = add nsw i64 %38, %39
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load %struct.etr_buf*, %struct.etr_buf** %12, align 8
  %43 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %41, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %35
  %47 = load %struct.etr_buf*, %struct.etr_buf** %12, align 8
  %48 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = sub nsw i64 %50, %49
  store i64 %51, i64* %10, align 8
  br label %52

52:                                               ; preds = %46, %35
  %53 = load %struct.etr_buf*, %struct.etr_buf** %12, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i8**, i8*** %9, align 8
  %57 = call i64 @tmc_etr_buf_get_data(%struct.etr_buf* %53, i64 %54, i64 %55, i8** %56)
  store i64 %57, i64* %5, align 8
  br label %58

58:                                               ; preds = %52, %33
  %59 = load i64, i64* %5, align 8
  ret i64 %59
}

declare dso_local i64 @tmc_etr_buf_get_data(%struct.etr_buf*, i64, i64, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
