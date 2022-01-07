; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/event/extr_exynos-ppmu.c_exynos_ppmu_set_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/event/extr_exynos-ppmu.c_exynos_ppmu_set_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfreq_event_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.exynos_ppmu = type { i32 }

@PPMU_CNTENS = common dso_local global i32 0, align 4
@PPMU_CCNT_MASK = common dso_local global i32 0, align 4
@PPMU_ENABLE = common dso_local global i32 0, align 4
@PPMU_PMNC = common dso_local global i32 0, align 4
@PPMU_PMNC_ENABLE_MASK = common dso_local global i32 0, align 4
@PPMU_PMNC_COUNTER_RESET_MASK = common dso_local global i32 0, align 4
@PPMU_PMNC_CC_RESET_MASK = common dso_local global i32 0, align 4
@PPMU_PMNC_ENABLE_SHIFT = common dso_local global i32 0, align 4
@PPMU_PMNC_COUNTER_RESET_SHIFT = common dso_local global i32 0, align 4
@PPMU_PMNC_CC_RESET_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devfreq_event_dev*)* @exynos_ppmu_set_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_ppmu_set_event(%struct.devfreq_event_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.devfreq_event_dev*, align 8
  %4 = alloca %struct.exynos_ppmu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.devfreq_event_dev* %0, %struct.devfreq_event_dev** %3, align 8
  %9 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %10 = call %struct.exynos_ppmu* @devfreq_event_get_drvdata(%struct.devfreq_event_dev* %9)
  store %struct.exynos_ppmu* %10, %struct.exynos_ppmu** %4, align 8
  %11 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %12 = call i32 @exynos_ppmu_find_ppmu_id(%struct.devfreq_event_dev* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %106

17:                                               ; preds = %1
  %18 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %19 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PPMU_CNTENS, align 4
  %22 = call i32 @regmap_read(i32 %20, i32 %21, i32* %8)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %106

27:                                               ; preds = %17
  %28 = load i32, i32* @PPMU_CCNT_MASK, align 4
  %29 = load i32, i32* @PPMU_ENABLE, align 4
  %30 = load i32, i32* %5, align 4
  %31 = shl i32 %29, %30
  %32 = or i32 %28, %31
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %8, align 4
  %35 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %36 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PPMU_CNTENS, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @regmap_write(i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %27
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %106

45:                                               ; preds = %27
  %46 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %47 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @PPMU_BEVTxSEL(i32 %49)
  %51 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %52 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @regmap_write(i32 %48, i32 %50, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %45
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %106

61:                                               ; preds = %45
  %62 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %63 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @PPMU_PMNC, align 4
  %66 = call i32 @regmap_read(i32 %64, i32 %65, i32* %7)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %106

71:                                               ; preds = %61
  %72 = load i32, i32* @PPMU_PMNC_ENABLE_MASK, align 4
  %73 = load i32, i32* @PPMU_PMNC_COUNTER_RESET_MASK, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @PPMU_PMNC_CC_RESET_MASK, align 4
  %76 = or i32 %74, %75
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %7, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* @PPMU_ENABLE, align 4
  %81 = load i32, i32* @PPMU_PMNC_ENABLE_SHIFT, align 4
  %82 = shl i32 %80, %81
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* @PPMU_ENABLE, align 4
  %86 = load i32, i32* @PPMU_PMNC_COUNTER_RESET_SHIFT, align 4
  %87 = shl i32 %85, %86
  %88 = load i32, i32* %7, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* @PPMU_ENABLE, align 4
  %91 = load i32, i32* @PPMU_PMNC_CC_RESET_SHIFT, align 4
  %92 = shl i32 %90, %91
  %93 = load i32, i32* %7, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %7, align 4
  %95 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %96 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @PPMU_PMNC, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @regmap_write(i32 %97, i32 %98, i32 %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %71
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %2, align 4
  br label %106

105:                                              ; preds = %71
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %105, %103, %69, %59, %43, %25, %15
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.exynos_ppmu* @devfreq_event_get_drvdata(%struct.devfreq_event_dev*) #1

declare dso_local i32 @exynos_ppmu_find_ppmu_id(%struct.devfreq_event_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @PPMU_BEVTxSEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
