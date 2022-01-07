; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc.c_tmc_flush_and_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc.c_tmc_flush_and_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmc_drvdata = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@TMC_FFCR = common dso_local global i64 0, align 8
@TMC_FFCR_STOP_ON_FLUSH = common dso_local global i32 0, align 4
@TMC_FFCR_FLUSHMAN_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"timeout while waiting for completion of Manual Flush\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tmc_flush_and_stop(%struct.tmc_drvdata* %0) #0 {
  %2 = alloca %struct.tmc_drvdata*, align 8
  %3 = alloca i32, align 4
  store %struct.tmc_drvdata* %0, %struct.tmc_drvdata** %2, align 8
  %4 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %5 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @TMC_FFCR, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl_relaxed(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @TMC_FFCR_STOP_ON_FLUSH, align 4
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %15 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TMC_FFCR, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel_relaxed(i32 %13, i64 %18)
  %20 = load i32, i32* @TMC_FFCR_FLUSHMAN_BIT, align 4
  %21 = call i32 @BIT(i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %26 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TMC_FFCR, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel_relaxed(i32 %24, i64 %29)
  %31 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %32 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TMC_FFCR, align 8
  %35 = load i32, i32* @TMC_FFCR_FLUSHMAN_BIT, align 4
  %36 = call i64 @coresight_timeout(i64 %33, i64 %34, i32 %35, i32 0)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %1
  %39 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %40 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %38, %1
  %45 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %46 = call i32 @tmc_wait_for_tmcready(%struct.tmc_drvdata* %45)
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @coresight_timeout(i64, i64, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @tmc_wait_for_tmcready(%struct.tmc_drvdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
