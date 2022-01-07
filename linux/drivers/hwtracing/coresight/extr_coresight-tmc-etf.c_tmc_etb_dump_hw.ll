; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etf.c_tmc_etb_dump_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etf.c_tmc_etb_dump_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmc_drvdata = type { i8*, i64, i64 }

@TMC_STS = common dso_local global i64 0, align 8
@TMC_STS_FULL = common dso_local global i32 0, align 4
@TMC_RRD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmc_drvdata*)* @tmc_etb_dump_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmc_etb_dump_hw(%struct.tmc_drvdata* %0) #0 {
  %2 = alloca %struct.tmc_drvdata*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tmc_drvdata* %0, %struct.tmc_drvdata** %2, align 8
  %6 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %7 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @TMC_STS, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl_relaxed(i64 %10)
  %12 = load i32, i32* @TMC_STS_FULL, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %15 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %3, align 8
  %17 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %18 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  br label %19

19:                                               ; preds = %1, %29
  %20 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %21 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TMC_RRD, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl_relaxed(i64 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %38

29:                                               ; preds = %19
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @memcpy(i8* %30, i32* %4, i32 4)
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 4
  store i8* %33, i8** %3, align 8
  %34 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %35 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 4
  store i64 %37, i64* %35, align 8
  br label %19

38:                                               ; preds = %28
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %43 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @coresight_insert_barrier_packet(i8* %44)
  br label %46

46:                                               ; preds = %41, %38
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @coresight_insert_barrier_packet(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
