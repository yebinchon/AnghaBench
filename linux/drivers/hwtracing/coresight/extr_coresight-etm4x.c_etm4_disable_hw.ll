; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x.c_etm4_disable_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x.c_etm4_disable_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etmv4_drvdata = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@TRCPDCR = common dso_local global i64 0, align 8
@TRCPDCR_PU = common dso_local global i32 0, align 4
@TRCPRGCTLR = common dso_local global i64 0, align 8
@sy = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"cpu: %d disable smp call done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @etm4_disable_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etm4_disable_hw(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.etmv4_drvdata*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.etmv4_drvdata*
  store %struct.etmv4_drvdata* %6, %struct.etmv4_drvdata** %4, align 8
  %7 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %4, align 8
  %8 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @CS_UNLOCK(i64 %9)
  %11 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %4, align 8
  %12 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TRCPDCR, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl_relaxed(i64 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @TRCPDCR_PU, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %4, align 8
  %23 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TRCPDCR, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel_relaxed(i32 %21, i64 %26)
  %28 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %4, align 8
  %29 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TRCPRGCTLR, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @readl_relaxed(i64 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, -2
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* @sy, align 4
  %37 = call i32 @dsb(i32 %36)
  %38 = call i32 (...) @isb()
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %4, align 8
  %41 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TRCPRGCTLR, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel_relaxed(i32 %39, i64 %44)
  %46 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %4, align 8
  %47 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @coresight_disclaim_device_unlocked(i64 %48)
  %50 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %4, align 8
  %51 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @CS_LOCK(i64 %52)
  %54 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %4, align 8
  %55 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %4, align 8
  %59 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @dev_dbg(i32* %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %60)
  ret void
}

declare dso_local i32 @CS_UNLOCK(i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @dsb(i32) #1

declare dso_local i32 @isb(...) #1

declare dso_local i32 @coresight_disclaim_device_unlocked(i64) #1

declare dso_local i32 @CS_LOCK(i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
