; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/event/extr_exynos-ppmu.c_exynos_ppmu_get_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/event/extr_exynos-ppmu.c_exynos_ppmu_get_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfreq_event_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.devfreq_event_data = type { i32, i32 }
%struct.exynos_ppmu = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PPMU_PMNC = common dso_local global i32 0, align 4
@PPMU_PMNC_ENABLE_MASK = common dso_local global i32 0, align 4
@PPMU_CCNT = common dso_local global i32 0, align 4
@PPMU_PMCNT3_HIGH = common dso_local global i32 0, align 4
@PPMU_PMCNT3_LOW = common dso_local global i32 0, align 4
@PPMU_CNTENC = common dso_local global i32 0, align 4
@PPMU_CCNT_MASK = common dso_local global i32 0, align 4
@PPMU_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s (event: %ld/%ld)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devfreq_event_dev*, %struct.devfreq_event_data*)* @exynos_ppmu_get_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_ppmu_get_event(%struct.devfreq_event_dev* %0, %struct.devfreq_event_data* %1) #0 {
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
  store %struct.devfreq_event_dev* %0, %struct.devfreq_event_dev** %4, align 8
  store %struct.devfreq_event_data* %1, %struct.devfreq_event_data** %5, align 8
  %15 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %4, align 8
  %16 = call %struct.exynos_ppmu* @devfreq_event_get_drvdata(%struct.devfreq_event_dev* %15)
  store %struct.exynos_ppmu* %16, %struct.exynos_ppmu** %6, align 8
  %17 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %4, align 8
  %18 = call i32 @exynos_ppmu_find_ppmu_id(%struct.devfreq_event_dev* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %152

24:                                               ; preds = %2
  %25 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %6, align 8
  %26 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PPMU_PMNC, align 4
  %29 = call i32 @regmap_read(i32 %27, i32 %28, i32* %12)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %3, align 4
  br label %152

34:                                               ; preds = %24
  %35 = load i32, i32* @PPMU_PMNC_ENABLE_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %12, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %12, align 4
  %39 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %6, align 8
  %40 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @PPMU_PMNC, align 4
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @regmap_write(i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %34
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %3, align 4
  br label %152

49:                                               ; preds = %34
  %50 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %6, align 8
  %51 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @PPMU_CCNT, align 4
  %54 = call i32 @regmap_read(i32 %52, i32 %53, i32* %8)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* %14, align 4
  store i32 %58, i32* %3, align 4
  br label %152

59:                                               ; preds = %49
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.devfreq_event_data*, %struct.devfreq_event_data** %5, align 8
  %62 = getelementptr inbounds %struct.devfreq_event_data, %struct.devfreq_event_data* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %7, align 4
  switch i32 %63, label %106 [
    i32 131, label %64
    i32 130, label %64
    i32 129, label %64
    i32 128, label %79
  ]

64:                                               ; preds = %59, %59, %59
  %65 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %6, align 8
  %66 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @PPMU_PMNCT(i32 %68)
  %70 = call i32 @regmap_read(i32 %67, i32 %69, i32* %9)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %64
  %74 = load i32, i32* %14, align 4
  store i32 %74, i32* %3, align 4
  br label %152

75:                                               ; preds = %64
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.devfreq_event_data*, %struct.devfreq_event_data** %5, align 8
  %78 = getelementptr inbounds %struct.devfreq_event_data, %struct.devfreq_event_data* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  br label %109

79:                                               ; preds = %59
  %80 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %6, align 8
  %81 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @PPMU_PMCNT3_HIGH, align 4
  %84 = call i32 @regmap_read(i32 %82, i32 %83, i32* %10)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = load i32, i32* %14, align 4
  store i32 %88, i32* %3, align 4
  br label %152

89:                                               ; preds = %79
  %90 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %6, align 8
  %91 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @PPMU_PMCNT3_LOW, align 4
  %94 = call i32 @regmap_read(i32 %92, i32 %93, i32* %11)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = load i32, i32* %14, align 4
  store i32 %98, i32* %3, align 4
  br label %152

99:                                               ; preds = %89
  %100 = load i32, i32* %10, align 4
  %101 = shl i32 %100, 8
  %102 = load i32, i32* %11, align 4
  %103 = or i32 %101, %102
  %104 = load %struct.devfreq_event_data*, %struct.devfreq_event_data** %5, align 8
  %105 = getelementptr inbounds %struct.devfreq_event_data, %struct.devfreq_event_data* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  br label %109

106:                                              ; preds = %59
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %152

109:                                              ; preds = %99, %75
  %110 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %6, align 8
  %111 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @PPMU_CNTENC, align 4
  %114 = call i32 @regmap_read(i32 %112, i32 %113, i32* %13)
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %14, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %109
  %118 = load i32, i32* %14, align 4
  store i32 %118, i32* %3, align 4
  br label %152

119:                                              ; preds = %109
  %120 = load i32, i32* @PPMU_CCNT_MASK, align 4
  %121 = load i32, i32* @PPMU_ENABLE, align 4
  %122 = load i32, i32* %7, align 4
  %123 = shl i32 %121, %122
  %124 = or i32 %120, %123
  %125 = load i32, i32* %13, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %13, align 4
  %127 = load %struct.exynos_ppmu*, %struct.exynos_ppmu** %6, align 8
  %128 = getelementptr inbounds %struct.exynos_ppmu, %struct.exynos_ppmu* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @PPMU_CNTENC, align 4
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @regmap_write(i32 %129, i32 %130, i32 %131)
  store i32 %132, i32* %14, align 4
  %133 = load i32, i32* %14, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %119
  %136 = load i32, i32* %14, align 4
  store i32 %136, i32* %3, align 4
  br label %152

137:                                              ; preds = %119
  %138 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %4, align 8
  %139 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %138, i32 0, i32 1
  %140 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %4, align 8
  %141 = getelementptr inbounds %struct.devfreq_event_dev, %struct.devfreq_event_dev* %140, i32 0, i32 0
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.devfreq_event_data*, %struct.devfreq_event_data** %5, align 8
  %146 = getelementptr inbounds %struct.devfreq_event_data, %struct.devfreq_event_data* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.devfreq_event_data*, %struct.devfreq_event_data** %5, align 8
  %149 = getelementptr inbounds %struct.devfreq_event_data, %struct.devfreq_event_data* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @dev_dbg(i32* %139, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %144, i32 %147, i32 %150)
  store i32 0, i32* %3, align 4
  br label %152

152:                                              ; preds = %137, %135, %117, %106, %97, %87, %73, %57, %47, %32, %21
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local %struct.exynos_ppmu* @devfreq_event_get_drvdata(%struct.devfreq_event_dev*) #1

declare dso_local i32 @exynos_ppmu_find_ppmu_id(%struct.devfreq_event_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @PPMU_PMNCT(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
