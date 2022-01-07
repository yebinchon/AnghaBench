; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etf.c_tmc_etb_get_sysfs_trace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etf.c_tmc_etb_get_sysfs_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmc_drvdata = type { i64, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tmc_etb_get_sysfs_trace(%struct.tmc_drvdata* %0, i64 %1, i64 %2, i8** %3) #0 {
  %5 = alloca %struct.tmc_drvdata*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  store %struct.tmc_drvdata* %0, %struct.tmc_drvdata** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8** %3, i8*** %8, align 8
  %10 = load i64, i64* %7, align 8
  store i64 %10, i64* %9, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* %9, align 8
  %13 = add nsw i64 %11, %12
  %14 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %5, align 8
  %15 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %13, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %5, align 8
  %20 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = sub nsw i64 %21, %22
  store i64 %23, i64* %9, align 8
  br label %24

24:                                               ; preds = %18, %4
  %25 = load i64, i64* %9, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %5, align 8
  %29 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load i8**, i8*** %8, align 8
  store i8* %32, i8** %33, align 8
  br label %34

34:                                               ; preds = %27, %24
  %35 = load i64, i64* %9, align 8
  ret i64 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
