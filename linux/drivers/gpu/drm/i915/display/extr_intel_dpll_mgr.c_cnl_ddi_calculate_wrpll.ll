; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_cnl_ddi_calculate_wrpll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_cnl_ddi_calculate_wrpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.skl_wrpll_params = type { i32 }
%struct.drm_i915_private = type { i32 }

@cnl_ddi_calculate_wrpll.dividers = internal constant [46 x i32] [i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 24, i32 28, i32 30, i32 32, i32 36, i32 40, i32 42, i32 44, i32 48, i32 50, i32 52, i32 54, i32 56, i32 60, i32 64, i32 66, i32 68, i32 70, i32 72, i32 76, i32 78, i32 80, i32 84, i32 88, i32 90, i32 92, i32 96, i32 98, i32 100, i32 102, i32 3, i32 5, i32 7, i32 9, i32 15, i32 21], align 16
@U32_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*, %struct.skl_wrpll_params*)* @cnl_ddi_calculate_wrpll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnl_ddi_calculate_wrpll(%struct.intel_crtc_state* %0, %struct.skl_wrpll_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.skl_wrpll_params*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %4, align 8
  store %struct.skl_wrpll_params* %1, %struct.skl_wrpll_params** %5, align 8
  %21 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %22 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.drm_i915_private* @to_i915(i32 %26)
  store %struct.drm_i915_private* %27, %struct.drm_i915_private** %6, align 8
  %28 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %29 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = mul nsw i32 %30, 5
  store i32 %31, i32* %7, align 4
  store i32 7998000, i32* %9, align 4
  store i32 10000000, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %32, %33
  %35 = sdiv i32 %34, 2
  store i32 %35, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %36 = load i32, i32* @U32_MAX, align 4
  store i32 %36, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %16, align 4
  br label %37

37:                                               ; preds = %72, %2
  %38 = load i32, i32* %16, align 4
  %39 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([46 x i32], [46 x i32]* @cnl_ddi_calculate_wrpll.dividers, i64 0, i64 0))
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %75

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %16, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [46 x i32], [46 x i32]* @cnl_ddi_calculate_wrpll.dividers, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %42, %46
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %51, label %71

51:                                               ; preds = %41
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %11, align 4
  %58 = sub nsw i32 %56, %57
  %59 = call i32 @abs(i32 %58) #3
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %55
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %16, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [46 x i32], [46 x i32]* @cnl_ddi_calculate_wrpll.dividers, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %63, %55
  br label %71

71:                                               ; preds = %70, %51, %41
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %16, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %16, align 4
  br label %37

75:                                               ; preds = %37
  %76 = load i32, i32* %17, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %91

79:                                               ; preds = %75
  %80 = load i32, i32* %17, align 4
  %81 = call i32 @cnl_wrpll_get_multipliers(i32 %80, i32* %18, i32* %19, i32* %20)
  %82 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %83 = call i32 @cnl_hdmi_pll_ref_clock(%struct.drm_i915_private* %82)
  store i32 %83, i32* %8, align 4
  %84 = load %struct.skl_wrpll_params*, %struct.skl_wrpll_params** %5, align 8
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* %19, align 4
  %89 = load i32, i32* %20, align 4
  %90 = call i32 @cnl_wrpll_params_populate(%struct.skl_wrpll_params* %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89)
  store i32 1, i32* %3, align 4
  br label %91

91:                                               ; preds = %79, %78
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @cnl_wrpll_get_multipliers(i32, i32*, i32*, i32*) #1

declare dso_local i32 @cnl_hdmi_pll_ref_clock(%struct.drm_i915_private*) #1

declare dso_local i32 @cnl_wrpll_params_populate(%struct.skl_wrpll_params*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
