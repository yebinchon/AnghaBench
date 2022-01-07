; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_arcturus_ppt.c_arcturus_get_current_clk_freq_by_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_arcturus_ppt.c_arcturus_get_current_clk_freq_by_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32, i32 }
%struct.smu_context = type { i32 }

@arcturus_get_current_clk_freq_by_table.metrics = internal global %struct.TYPE_3__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@SMU_FEATURE_DPM_GFXCLK_BIT = common dso_local global i32 0, align 4
@SMU_FEATURE_DPM_UCLK_BIT = common dso_local global i32 0, align 4
@SMU_FEATURE_DPM_SOCCLK_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32, i32*)* @arcturus_get_current_clk_freq_by_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcturus_get_current_clk_freq_by_table(%struct.smu_context* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32*, i32** %7, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %84

15:                                               ; preds = %3
  %16 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @smu_clk_get_index(%struct.smu_context* %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %84

24:                                               ; preds = %15
  %25 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %26 = call i32 @arcturus_get_metrics_table(%struct.smu_context* %25, %struct.TYPE_3__* @arcturus_get_current_clk_freq_by_table.metrics)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %84

31:                                               ; preds = %24
  %32 = load i32, i32* %9, align 4
  switch i32 %32, label %75 [
    i32 130, label %33
    i32 128, label %47
    i32 129, label %61
  ]

33:                                               ; preds = %31
  %34 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %35 = load i32, i32* @SMU_FEATURE_DPM_GFXCLK_BIT, align 4
  %36 = call i32 @smu_feature_is_enabled(%struct.smu_context* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @arcturus_get_current_clk_freq_by_table.metrics, i32 0, i32 0), align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 130
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  br label %46

43:                                               ; preds = %33
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @arcturus_get_current_clk_freq_by_table.metrics, i32 0, i32 3), align 8
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %38
  br label %82

47:                                               ; preds = %31
  %48 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %49 = load i32, i32* @SMU_FEATURE_DPM_UCLK_BIT, align 4
  %50 = call i32 @smu_feature_is_enabled(%struct.smu_context* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @arcturus_get_current_clk_freq_by_table.metrics, i32 0, i32 0), align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 128
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %7, align 8
  store i32 %55, i32* %56, align 4
  br label %60

57:                                               ; preds = %47
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @arcturus_get_current_clk_freq_by_table.metrics, i32 0, i32 2), align 4
  %59 = load i32*, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %52
  br label %82

61:                                               ; preds = %31
  %62 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %63 = load i32, i32* @SMU_FEATURE_DPM_SOCCLK_BIT, align 4
  %64 = call i32 @smu_feature_is_enabled(%struct.smu_context* %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @arcturus_get_current_clk_freq_by_table.metrics, i32 0, i32 0), align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 129
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %7, align 8
  store i32 %69, i32* %70, align 4
  br label %74

71:                                               ; preds = %61
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @arcturus_get_current_clk_freq_by_table.metrics, i32 0, i32 1), align 8
  %73 = load i32*, i32** %7, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %66
  br label %82

75:                                               ; preds = %31
  %76 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @arcturus_get_current_clk_freq_by_table.metrics, i32 0, i32 0), align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %7, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %75, %74, %60, %46
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %29, %21, %12
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @smu_clk_get_index(%struct.smu_context*, i32) #1

declare dso_local i32 @arcturus_get_metrics_table(%struct.smu_context*, %struct.TYPE_3__*) #1

declare dso_local i32 @smu_feature_is_enabled(%struct.smu_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
