; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tpiu.c_tpiu_disable_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tpiu.c_tpiu_disable_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpiu_drvdata = type { i64 }

@FFCR_STOP_FI = common dso_local global i32 0, align 4
@TPIU_FFCR = common dso_local global i64 0, align 8
@FFCR_FON_MAN = common dso_local global i32 0, align 4
@FFCR_FON_MAN_BIT = common dso_local global i32 0, align 4
@TPIU_FFSR = common dso_local global i64 0, align 8
@FFSR_FT_STOPPED_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tpiu_drvdata*)* @tpiu_disable_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tpiu_disable_hw(%struct.tpiu_drvdata* %0) #0 {
  %2 = alloca %struct.tpiu_drvdata*, align 8
  store %struct.tpiu_drvdata* %0, %struct.tpiu_drvdata** %2, align 8
  %3 = load %struct.tpiu_drvdata*, %struct.tpiu_drvdata** %2, align 8
  %4 = getelementptr inbounds %struct.tpiu_drvdata, %struct.tpiu_drvdata* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @CS_UNLOCK(i64 %5)
  %7 = load i32, i32* @FFCR_STOP_FI, align 4
  %8 = load %struct.tpiu_drvdata*, %struct.tpiu_drvdata** %2, align 8
  %9 = getelementptr inbounds %struct.tpiu_drvdata, %struct.tpiu_drvdata* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @TPIU_FFCR, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel_relaxed(i32 %7, i64 %12)
  %14 = load i32, i32* @FFCR_STOP_FI, align 4
  %15 = load i32, i32* @FFCR_FON_MAN, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.tpiu_drvdata*, %struct.tpiu_drvdata** %2, align 8
  %18 = getelementptr inbounds %struct.tpiu_drvdata, %struct.tpiu_drvdata* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TPIU_FFCR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel_relaxed(i32 %16, i64 %21)
  %23 = load %struct.tpiu_drvdata*, %struct.tpiu_drvdata** %2, align 8
  %24 = getelementptr inbounds %struct.tpiu_drvdata, %struct.tpiu_drvdata* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TPIU_FFCR, align 8
  %27 = load i32, i32* @FFCR_FON_MAN_BIT, align 4
  %28 = call i32 @coresight_timeout(i64 %25, i64 %26, i32 %27, i32 0)
  %29 = load %struct.tpiu_drvdata*, %struct.tpiu_drvdata** %2, align 8
  %30 = getelementptr inbounds %struct.tpiu_drvdata, %struct.tpiu_drvdata* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TPIU_FFSR, align 8
  %33 = load i32, i32* @FFSR_FT_STOPPED_BIT, align 4
  %34 = call i32 @coresight_timeout(i64 %31, i64 %32, i32 %33, i32 1)
  %35 = load %struct.tpiu_drvdata*, %struct.tpiu_drvdata** %2, align 8
  %36 = getelementptr inbounds %struct.tpiu_drvdata, %struct.tpiu_drvdata* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @CS_LOCK(i64 %37)
  ret void
}

declare dso_local i32 @CS_UNLOCK(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @coresight_timeout(i64, i64, i32, i32) #1

declare dso_local i32 @CS_LOCK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
