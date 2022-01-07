; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/event/extr_exynos-ppmu.c_exynos_ppmu_v2_set_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/event/extr_exynos-ppmu.c_exynos_ppmu_v2_set_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfreq_event_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.exynos_ppmu = type { i32 }

@PPMU_V2_CNTENS = common dso_local global i32 0, align 4
@PPMU_CCNT_MASK = common dso_local global i32 0, align 4
@PPMU_ENABLE = common dso_local global i32 0, align 4
@PPMU_V2_PMNC = common dso_local global i32 0, align 4
@PPMU_PMNC_ENABLE_MASK = common dso_local global i32 0, align 4
@PPMU_PMNC_COUNTER_RESET_MASK = common dso_local global i32 0, align 4
@PPMU_PMNC_CC_RESET_MASK = common dso_local global i32 0, align 4
@PPMU_PMNC_CC_DIVIDER_MASK = common dso_local global i32 0, align 4
@PPMU_V2_PMNC_START_MODE_MASK = common dso_local global i32 0, align 4
@PPMU_PMNC_ENABLE_SHIFT = common dso_local global i32 0, align 4
@PPMU_PMNC_COUNTER_RESET_SHIFT = common dso_local global i32 0, align 4
@PPMU_PMNC_CC_RESET_SHIFT = common dso_local global i32 0, align 4
@PPMU_V2_MODE_MANUAL = common dso_local global i32 0, align 4
@PPMU_V2_PMNC_START_MODE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devfreq_event_dev*)* @exynos_ppmu_v2_set_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_ppmu_v2_set_event(%struct.devfreq_event_dev* %0) #0 {
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
  store i32 %12, i32* %7, align 4
  %13 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %14 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PPMU_V2_CNTENS, align 4
  %17 = call i32 @regmap_read(i32 %15, i32 %16, i32* %6)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %2, align 4
  br label %110

22:                                               ; preds = %1
  %23 = load i32, i32* @PPMU_CCNT_MASK, align 4
  %24 = load i32, i32* @PPMU_ENABLE, align 4
  %25 = load i32, i32* %7, align 4
  %26 = shl i32 %24, %25
  %27 = or i32 %23, %26
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %31 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PPMU_V2_CNTENS, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @regmap_write(i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %22
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %2, align 4
  br label %110

40:                                               ; preds = %22
  %41 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %42 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @PPMU_V2_CH_EVx_TYPE(i32 %44)
  %46 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %47 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @regmap_write(i32 %43, i32 %45, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %40
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %2, align 4
  br label %110

56:                                               ; preds = %40
  %57 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %58 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @PPMU_V2_PMNC, align 4
  %61 = call i32 @regmap_read(i32 %59, i32 %60, i32* %5)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %2, align 4
  br label %110

66:                                               ; preds = %56
  %67 = load i32, i32* @PPMU_PMNC_ENABLE_MASK, align 4
  %68 = load i32, i32* @PPMU_PMNC_COUNTER_RESET_MASK, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @PPMU_PMNC_CC_RESET_MASK, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @PPMU_PMNC_CC_DIVIDER_MASK, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @PPMU_V2_PMNC_START_MODE_MASK, align 4
  %75 = or i32 %73, %74
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %5, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* @PPMU_ENABLE, align 4
  %80 = load i32, i32* @PPMU_PMNC_ENABLE_SHIFT, align 4
  %81 = shl i32 %79, %80
  %82 = load i32, i32* %5, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* @PPMU_ENABLE, align 4
  %85 = load i32, i32* @PPMU_PMNC_COUNTER_RESET_SHIFT, align 4
  %86 = shl i32 %84, %85
  %87 = load i32, i32* %5, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* @PPMU_ENABLE, align 4
  %90 = load i32, i32* @PPMU_PMNC_CC_RESET_SHIFT, align 4
  %91 = shl i32 %89, %90
  %92 = load i32, i32* %5, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* @PPMU_V2_MODE_MANUAL, align 4
  %95 = load i32, i32* @PPMU_V2_PMNC_START_MODE_SHIFT, align 4
  %96 = shl i32 %94, %95
  %97 = load i32, i32* %5, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %5, align 4
  %99 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %4, align 8
  %100 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @PPMU_V2_PMNC, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @regmap_write(i32 %101, i32 %102, i32 %103)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %66
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %2, align 4
  br label %110

109:                                              ; preds = %66
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %109, %107, %64, %54, %38, %20
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local %struct.exynos_ppmu* @devfreq_event_get_drvdata(%struct.devfreq_event_dev*) #1

declare dso_local i32 @exynos_ppmu_find_ppmu_id(%struct.devfreq_event_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @PPMU_V2_CH_EVx_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
