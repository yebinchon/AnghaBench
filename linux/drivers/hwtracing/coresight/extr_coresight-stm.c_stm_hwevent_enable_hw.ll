; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-stm.c_stm_hwevent_enable_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-stm.c_stm_hwevent_enable_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm_drvdata = type { i32, i32, i32, i64 }

@STMHEBSR = common dso_local global i64 0, align 8
@STMHETER = common dso_local global i64 0, align 8
@STMHEER = common dso_local global i64 0, align 8
@STMHEMCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm_drvdata*)* @stm_hwevent_enable_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm_hwevent_enable_hw(%struct.stm_drvdata* %0) #0 {
  %2 = alloca %struct.stm_drvdata*, align 8
  store %struct.stm_drvdata* %0, %struct.stm_drvdata** %2, align 8
  %3 = load %struct.stm_drvdata*, %struct.stm_drvdata** %2, align 8
  %4 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @CS_UNLOCK(i64 %5)
  %7 = load %struct.stm_drvdata*, %struct.stm_drvdata** %2, align 8
  %8 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.stm_drvdata*, %struct.stm_drvdata** %2, align 8
  %11 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @STMHEBSR, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writel_relaxed(i32 %9, i64 %14)
  %16 = load %struct.stm_drvdata*, %struct.stm_drvdata** %2, align 8
  %17 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.stm_drvdata*, %struct.stm_drvdata** %2, align 8
  %20 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @STMHETER, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel_relaxed(i32 %18, i64 %23)
  %25 = load %struct.stm_drvdata*, %struct.stm_drvdata** %2, align 8
  %26 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.stm_drvdata*, %struct.stm_drvdata** %2, align 8
  %29 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @STMHEER, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel_relaxed(i32 %27, i64 %32)
  %34 = load %struct.stm_drvdata*, %struct.stm_drvdata** %2, align 8
  %35 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @STMHEMCR, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel_relaxed(i32 5, i64 %38)
  %40 = load %struct.stm_drvdata*, %struct.stm_drvdata** %2, align 8
  %41 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @CS_LOCK(i64 %42)
  ret void
}

declare dso_local i32 @CS_UNLOCK(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @CS_LOCK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
