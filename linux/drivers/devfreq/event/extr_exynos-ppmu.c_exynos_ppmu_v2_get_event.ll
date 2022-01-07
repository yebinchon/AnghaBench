; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/event/extr_exynos-ppmu.c_exynos_ppmu_v2_get_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/event/extr_exynos-ppmu.c_exynos_ppmu_v2_get_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfreq_event_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.devfreq_event_data = type { i32, i64 }
%struct.exynos_ppmu = type { i32 }

@PPMU_V2_PMNC = common dso_local global i32 0, align 4
@PPMU_PMNC_ENABLE_MASK = common dso_local global i32 0, align 4
@PPMU_V2_CCNT = common dso_local global i32 0, align 4
@PPMU_V2_PMCNT3_HIGH = common dso_local global i32 0, align 4
@PPMU_V2_PMCNT3_LOW = common dso_local global i32 0, align 4
@PPMU_V2_CNTENC = common dso_local global i32 0, align 4
@PPMU_CCNT_MASK = common dso_local global i32 0, align 4
@PPMU_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%25s (load: %ld / %ld)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devfreq_event_dev*, %struct.devfreq_event_data*)* @exynos_ppmu_v2_get_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_ppmu_v2_get_event(%struct.devfreq_event_dev* %0, %struct.devfreq_event_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.devfreq_event_dev*, align 8
  %5 = alloca %struct.devfreq_event_data*, align 8
  %6 = alloca %struct.exynos_ppmu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.devfreq_event_dev* %0, %struct.devfreq_event_dev** %4, align 8
  store %struct.devfreq_event_data* %1, %struct.devfreq_event_data** %5, align 8
  %16 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %4, align 8
  %17 = call %struct.exynos_ppmu* @devfreq_event_get_drvdata(%struct.devfreq_event_dev* %16)
  store %struct.exynos_ppmu* %17, %struct.exynos_ppmu** %6, align 8
  %18 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %4, align 8
  %19 = call i32 @exynos_ppmu_find_ppmu_id(%struct.devfreq_event_dev* %18)
  store i32 %19, i32* %7, align 4
  store i64 0, i64* %15, align 8
  %20 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %6, align 8
  %21 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PPMU_V2_PMNC, align 4
  %24 = call i32 @regmap_read(i32 %22, i32 %23, i32* %9)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %145

29:                                               ; preds = %2
  %30 = load i32, i32* @PPMU_PMNC_ENABLE_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %9, align 4
  %34 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %6, align 8
  %35 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PPMU_V2_PMNC, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @regmap_write(i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %29
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %145

44:                                               ; preds = %29
  %45 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %6, align 8
  %46 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @PPMU_V2_CCNT, align 4
  %49 = call i32 @regmap_read(i32 %47, i32 %48, i32* %13)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %145

54:                                               ; preds = %44
  %55 = load i32, i32* %13, align 4
  %56 = load %struct.devfreq_event_data*, %struct.devfreq_event_data** %5, align 8
  %57 = getelementptr inbounds %struct.devfreq_event_data, %struct.devfreq_event_data* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %7, align 4
  switch i32 %58, label %100 [
    i32 131, label %59
    i32 130, label %59
    i32 129, label %59
    i32 128, label %73
  ]

59:                                               ; preds = %54, %54, %54
  %60 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %6, align 8
  %61 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @PPMU_V2_PMNCT(i32 %63)
  %65 = call i32 @regmap_read(i32 %62, i32 %64, i32* %14)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %3, align 4
  br label %145

70:                                               ; preds = %59
  %71 = load i32, i32* %14, align 4
  %72 = zext i32 %71 to i64
  store i64 %72, i64* %15, align 8
  br label %100

73:                                               ; preds = %54
  %74 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %6, align 8
  %75 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @PPMU_V2_PMCNT3_HIGH, align 4
  %78 = call i32 @regmap_read(i32 %76, i32 %77, i32* %11)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %3, align 4
  br label %145

83:                                               ; preds = %73
  %84 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %6, align 8
  %85 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @PPMU_V2_PMCNT3_LOW, align 4
  %88 = call i32 @regmap_read(i32 %86, i32 %87, i32* %12)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %3, align 4
  br label %145

93:                                               ; preds = %83
  %94 = load i32, i32* %11, align 4
  %95 = and i32 %94, 255
  %96 = shl i32 %95, 32
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  store i64 %99, i64* %15, align 8
  br label %100

100:                                              ; preds = %54, %93, %70
  %101 = load i64, i64* %15, align 8
  %102 = load %struct.devfreq_event_data*, %struct.devfreq_event_data** %5, align 8
  %103 = getelementptr inbounds %struct.devfreq_event_data, %struct.devfreq_event_data* %102, i32 0, i32 1
  store i64 %101, i64* %103, align 8
  %104 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %6, align 8
  %105 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @PPMU_V2_CNTENC, align 4
  %108 = call i32 @regmap_read(i32 %106, i32 %107, i32* %10)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %100
  store i32 0, i32* %3, align 4
  br label %145

112:                                              ; preds = %100
  %113 = load i32, i32* @PPMU_CCNT_MASK, align 4
  %114 = load i32, i32* @PPMU_ENABLE, align 4
  %115 = load i32, i32* %7, align 4
  %116 = shl i32 %114, %115
  %117 = or i32 %113, %116
  %118 = load i32, i32* %10, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %10, align 4
  %120 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %6, align 8
  %121 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @PPMU_V2_CNTENC, align 4
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @regmap_write(i32 %122, i32 %123, i32 %124)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %112
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %3, align 4
  br label %145

130:                                              ; preds = %112
  %131 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %4, align 8
  %132 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %131, i32 0, i32 1
  %133 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %4, align 8
  %134 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %133, i32 0, i32 0
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.devfreq_event_data*, %struct.devfreq_event_data** %5, align 8
  %139 = getelementptr inbounds %struct.devfreq_event_data, %struct.devfreq_event_data* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.devfreq_event_data*, %struct.devfreq_event_data** %5, align 8
  %142 = getelementptr inbounds %struct.devfreq_event_data, %struct.devfreq_event_data* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @dev_dbg(i32* %132, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %137, i64 %140, i32 %143)
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %130, %128, %111, %91, %81, %68, %52, %42, %27
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local %struct.exynos_ppmu* @devfreq_event_get_drvdata(%struct.devfreq_event_dev*) #1

declare dso_local i32 @exynos_ppmu_find_ppmu_id(%struct.devfreq_event_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @PPMU_V2_PMNCT(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
