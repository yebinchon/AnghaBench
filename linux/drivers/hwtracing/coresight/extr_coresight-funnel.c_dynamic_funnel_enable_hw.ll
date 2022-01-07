; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-funnel.c_dynamic_funnel_enable_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-funnel.c_dynamic_funnel_enable_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.funnel_drvdata = type { i32, i64 }

@FUNNEL_FUNCTL = common dso_local global i64 0, align 8
@FUNNEL_ENSx_MASK = common dso_local global i32 0, align 4
@FUNNEL_HOLDTIME_MASK = common dso_local global i32 0, align 4
@FUNNEL_HOLDTIME = common dso_local global i32 0, align 4
@FUNNEL_PRICTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.funnel_drvdata*, i32)* @dynamic_funnel_enable_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dynamic_funnel_enable_hw(%struct.funnel_drvdata* %0, i32 %1) #0 {
  %3 = alloca %struct.funnel_drvdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.funnel_drvdata* %0, %struct.funnel_drvdata** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.funnel_drvdata*, %struct.funnel_drvdata** %3, align 8
  %8 = getelementptr inbounds %struct.funnel_drvdata, %struct.funnel_drvdata* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @CS_UNLOCK(i64 %9)
  %11 = load %struct.funnel_drvdata*, %struct.funnel_drvdata** %3, align 8
  %12 = getelementptr inbounds %struct.funnel_drvdata, %struct.funnel_drvdata* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @FUNNEL_FUNCTL, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl_relaxed(i64 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @FUNNEL_ENSx_MASK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %2
  %22 = load %struct.funnel_drvdata*, %struct.funnel_drvdata** %3, align 8
  %23 = getelementptr inbounds %struct.funnel_drvdata, %struct.funnel_drvdata* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @coresight_claim_device_unlocked(i64 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %58

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i32, i32* @FUNNEL_HOLDTIME_MASK, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @FUNNEL_HOLDTIME, align 4
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = shl i32 1, %38
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.funnel_drvdata*, %struct.funnel_drvdata** %3, align 8
  %44 = getelementptr inbounds %struct.funnel_drvdata, %struct.funnel_drvdata* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @FUNNEL_FUNCTL, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel_relaxed(i32 %42, i64 %47)
  %49 = load %struct.funnel_drvdata*, %struct.funnel_drvdata** %3, align 8
  %50 = getelementptr inbounds %struct.funnel_drvdata, %struct.funnel_drvdata* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.funnel_drvdata*, %struct.funnel_drvdata** %3, align 8
  %53 = getelementptr inbounds %struct.funnel_drvdata, %struct.funnel_drvdata* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @FUNNEL_PRICTL, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel_relaxed(i32 %51, i64 %56)
  br label %58

58:                                               ; preds = %30, %28
  %59 = load %struct.funnel_drvdata*, %struct.funnel_drvdata** %3, align 8
  %60 = getelementptr inbounds %struct.funnel_drvdata, %struct.funnel_drvdata* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @CS_LOCK(i64 %61)
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32 @CS_UNLOCK(i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @coresight_claim_device_unlocked(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @CS_LOCK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
