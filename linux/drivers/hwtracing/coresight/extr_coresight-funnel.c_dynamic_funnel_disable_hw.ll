; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-funnel.c_dynamic_funnel_disable_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-funnel.c_dynamic_funnel_disable_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.funnel_drvdata = type { i64 }

@FUNNEL_FUNCTL = common dso_local global i64 0, align 8
@FUNNEL_ENSx_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.funnel_drvdata*, i32)* @dynamic_funnel_disable_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dynamic_funnel_disable_hw(%struct.funnel_drvdata* %0, i32 %1) #0 {
  %3 = alloca %struct.funnel_drvdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.funnel_drvdata* %0, %struct.funnel_drvdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.funnel_drvdata*, %struct.funnel_drvdata** %3, align 8
  %7 = getelementptr inbounds %struct.funnel_drvdata, %struct.funnel_drvdata* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @CS_UNLOCK(i64 %8)
  %10 = load %struct.funnel_drvdata*, %struct.funnel_drvdata** %3, align 8
  %11 = getelementptr inbounds %struct.funnel_drvdata, %struct.funnel_drvdata* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @FUNNEL_FUNCTL, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl_relaxed(i64 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = shl i32 1, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.funnel_drvdata*, %struct.funnel_drvdata** %3, align 8
  %23 = getelementptr inbounds %struct.funnel_drvdata, %struct.funnel_drvdata* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @FUNNEL_FUNCTL, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel_relaxed(i32 %21, i64 %26)
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @FUNNEL_ENSx_MASK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %2
  %33 = load %struct.funnel_drvdata*, %struct.funnel_drvdata** %3, align 8
  %34 = getelementptr inbounds %struct.funnel_drvdata, %struct.funnel_drvdata* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @coresight_disclaim_device_unlocked(i64 %35)
  br label %37

37:                                               ; preds = %32, %2
  %38 = load %struct.funnel_drvdata*, %struct.funnel_drvdata** %3, align 8
  %39 = getelementptr inbounds %struct.funnel_drvdata, %struct.funnel_drvdata* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @CS_LOCK(i64 %40)
  ret void
}

declare dso_local i32 @CS_UNLOCK(i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @coresight_disclaim_device_unlocked(i64) #1

declare dso_local i32 @CS_LOCK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
