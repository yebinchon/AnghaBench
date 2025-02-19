; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etf.c___tmc_etb_enable_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etf.c___tmc_etb_enable_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmc_drvdata = type { i32, i64 }

@TMC_MODE_CIRCULAR_BUFFER = common dso_local global i32 0, align 4
@TMC_MODE = common dso_local global i64 0, align 8
@TMC_FFCR_EN_FMT = common dso_local global i32 0, align 4
@TMC_FFCR_EN_TI = common dso_local global i32 0, align 4
@TMC_FFCR_FON_FLIN = common dso_local global i32 0, align 4
@TMC_FFCR_FON_TRIG_EVT = common dso_local global i32 0, align 4
@TMC_FFCR_TRIGON_TRIGIN = common dso_local global i32 0, align 4
@TMC_FFCR = common dso_local global i64 0, align 8
@TMC_TRG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmc_drvdata*)* @__tmc_etb_enable_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__tmc_etb_enable_hw(%struct.tmc_drvdata* %0) #0 {
  %2 = alloca %struct.tmc_drvdata*, align 8
  store %struct.tmc_drvdata* %0, %struct.tmc_drvdata** %2, align 8
  %3 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %4 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @CS_UNLOCK(i64 %5)
  %7 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %8 = call i32 @tmc_wait_for_tmcready(%struct.tmc_drvdata* %7)
  %9 = load i32, i32* @TMC_MODE_CIRCULAR_BUFFER, align 4
  %10 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %11 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TMC_MODE, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writel_relaxed(i32 %9, i64 %14)
  %16 = load i32, i32* @TMC_FFCR_EN_FMT, align 4
  %17 = load i32, i32* @TMC_FFCR_EN_TI, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @TMC_FFCR_FON_FLIN, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @TMC_FFCR_FON_TRIG_EVT, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @TMC_FFCR_TRIGON_TRIGIN, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %26 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TMC_FFCR, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel_relaxed(i32 %24, i64 %29)
  %31 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %32 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %35 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TMC_TRG, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel_relaxed(i32 %33, i64 %38)
  %40 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %41 = call i32 @tmc_enable_hw(%struct.tmc_drvdata* %40)
  %42 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %43 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @CS_LOCK(i64 %44)
  ret void
}

declare dso_local i32 @CS_UNLOCK(i64) #1

declare dso_local i32 @tmc_wait_for_tmcready(%struct.tmc_drvdata*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @tmc_enable_hw(%struct.tmc_drvdata*) #1

declare dso_local i32 @CS_LOCK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
