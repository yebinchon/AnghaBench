; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/event/extr_exynos-ppmu.c_exynos_ppmu_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/event/extr_exynos-ppmu.c_exynos_ppmu_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfreq_event_dev = type { i32 }
%struct.exynos_ppmu = type { i32 }

@PPMU_CNTENC = common dso_local global i32 0, align 4
@PPMU_CCNT_MASK = common dso_local global i32 0, align 4
@PPMU_PMCNT0_MASK = common dso_local global i32 0, align 4
@PPMU_PMCNT1_MASK = common dso_local global i32 0, align 4
@PPMU_PMCNT2_MASK = common dso_local global i32 0, align 4
@PPMU_PMCNT3_MASK = common dso_local global i32 0, align 4
@PPMU_PMNC = common dso_local global i32 0, align 4
@PPMU_PMNC_ENABLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devfreq_event_dev*)* @exynos_ppmu_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_ppmu_disable(%struct.devfreq_event_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.devfreq_event_dev*, align 8
  %4 = alloca %struct.exynos_ppmu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.devfreq_event_dev* %0, %struct.devfreq_event_dev** %3, align 8
  %7 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %8 = call %struct.exynos_ppmu* @devfreq_event_get_drvdata(%struct.devfreq_event_dev* %7)
  store %struct.exynos_ppmu* %8, %struct.exynos_ppmu** %4, align 8
  %9 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %10 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @PPMU_CNTENC, align 4
  %13 = load i32, i32* @PPMU_CCNT_MASK, align 4
  %14 = load i32, i32* @PPMU_PMCNT0_MASK, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @PPMU_PMCNT1_MASK, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @PPMU_PMCNT2_MASK, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @PPMU_PMCNT3_MASK, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @regmap_write(i32 %11, i32 %12, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %53

27:                                               ; preds = %1
  %28 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %29 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PPMU_PMNC, align 4
  %32 = call i32 @regmap_read(i32 %30, i32 %31, i32* %6)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %53

37:                                               ; preds = %27
  %38 = load i32, i32* @PPMU_PMNC_ENABLE_MASK, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %43 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @PPMU_PMNC, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @regmap_write(i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %53

52:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %50, %35, %25
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.exynos_ppmu* @devfreq_event_get_drvdata(%struct.devfreq_event_dev*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
