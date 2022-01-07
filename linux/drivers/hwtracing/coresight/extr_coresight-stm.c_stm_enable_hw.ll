; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-stm.c_stm_enable_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-stm.c_stm_enable_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm_drvdata = type { i32, i64, i64 }

@STMSYNCR = common dso_local global i64 0, align 8
@STMTCSR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm_drvdata*)* @stm_enable_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm_enable_hw(%struct.stm_drvdata* %0) #0 {
  %2 = alloca %struct.stm_drvdata*, align 8
  store %struct.stm_drvdata* %0, %struct.stm_drvdata** %2, align 8
  %3 = load %struct.stm_drvdata*, %struct.stm_drvdata** %2, align 8
  %4 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.stm_drvdata*, %struct.stm_drvdata** %2, align 8
  %9 = call i32 @stm_hwevent_enable_hw(%struct.stm_drvdata* %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.stm_drvdata*, %struct.stm_drvdata** %2, align 8
  %12 = call i32 @stm_port_enable_hw(%struct.stm_drvdata* %11)
  %13 = load %struct.stm_drvdata*, %struct.stm_drvdata** %2, align 8
  %14 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @CS_UNLOCK(i64 %15)
  %17 = load %struct.stm_drvdata*, %struct.stm_drvdata** %2, align 8
  %18 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @STMSYNCR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel_relaxed(i32 4095, i64 %21)
  %23 = load %struct.stm_drvdata*, %struct.stm_drvdata** %2, align 8
  %24 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = shl i32 %25, 16
  %27 = or i32 %26, 2
  %28 = or i32 %27, 1
  %29 = load %struct.stm_drvdata*, %struct.stm_drvdata** %2, align 8
  %30 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @STMTCSR, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel_relaxed(i32 %28, i64 %33)
  %35 = load %struct.stm_drvdata*, %struct.stm_drvdata** %2, align 8
  %36 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @CS_LOCK(i64 %37)
  ret void
}

declare dso_local i32 @stm_hwevent_enable_hw(%struct.stm_drvdata*) #1

declare dso_local i32 @stm_port_enable_hw(%struct.stm_drvdata*) #1

declare dso_local i32 @CS_UNLOCK(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @CS_LOCK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
