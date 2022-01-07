; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_ironlake_crtc_compute_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_ironlake_crtc_compute_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_limit = type { i32 }
%struct.intel_crtc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.intel_crtc_state = type { i32, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.intel_atomic_state = type { i32 }

@INTEL_OUTPUT_LVDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"using SSC reference clock of %d kHz\0A\00", align 1
@intel_limits_ironlake_dual_lvds_100m = common dso_local global %struct.intel_limit zeroinitializer, align 4
@intel_limits_ironlake_dual_lvds = common dso_local global %struct.intel_limit zeroinitializer, align 4
@intel_limits_ironlake_single_lvds_100m = common dso_local global %struct.intel_limit zeroinitializer, align 4
@intel_limits_ironlake_single_lvds = common dso_local global %struct.intel_limit zeroinitializer, align 4
@intel_limits_ironlake_dac = common dso_local global %struct.intel_limit zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Couldn't find PLL settings for mode!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to find PLL for pipe %c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc*, %struct.intel_crtc_state*)* @ironlake_crtc_compute_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ironlake_crtc_compute_clock(%struct.intel_crtc* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_crtc*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_atomic_state*, align 8
  %8 = alloca %struct.intel_limit*, align 8
  %9 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  %10 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %11 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.drm_i915_private* @to_i915(i32 %13)
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %6, align 8
  %15 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %16 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.intel_atomic_state* @to_intel_atomic_state(i32 %18)
  store %struct.intel_atomic_state* %19, %struct.intel_atomic_state** %7, align 8
  store i32 120000, i32* %9, align 4
  %20 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %21 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %20, i32 0, i32 4
  %22 = call i32 @memset(i32* %21, i32 0, i32 4)
  %23 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %24 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %102

28:                                               ; preds = %2
  %29 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %30 = load i32, i32* @INTEL_OUTPUT_LVDS, align 4
  %31 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %64

33:                                               ; preds = %28
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %35 = call i64 @intel_panel_use_ssc(%struct.drm_i915_private* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %39 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %44 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %37, %33
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %49 = call i64 @intel_is_dual_link_lvds(%struct.drm_i915_private* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %52, 100000
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store %struct.intel_limit* @intel_limits_ironlake_dual_lvds_100m, %struct.intel_limit** %8, align 8
  br label %56

55:                                               ; preds = %51
  store %struct.intel_limit* @intel_limits_ironlake_dual_lvds, %struct.intel_limit** %8, align 8
  br label %56

56:                                               ; preds = %55, %54
  br label %63

57:                                               ; preds = %47
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %58, 100000
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store %struct.intel_limit* @intel_limits_ironlake_single_lvds_100m, %struct.intel_limit** %8, align 8
  br label %62

61:                                               ; preds = %57
  store %struct.intel_limit* @intel_limits_ironlake_single_lvds, %struct.intel_limit** %8, align 8
  br label %62

62:                                               ; preds = %61, %60
  br label %63

63:                                               ; preds = %62, %56
  br label %65

64:                                               ; preds = %28
  store %struct.intel_limit* @intel_limits_ironlake_dac, %struct.intel_limit** %8, align 8
  br label %65

65:                                               ; preds = %64, %63
  %66 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %67 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %85, label %70

70:                                               ; preds = %65
  %71 = load %struct.intel_limit*, %struct.intel_limit** %8, align 8
  %72 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %73 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %74 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %78 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %77, i32 0, i32 0
  %79 = call i32 @g4x_find_best_dpll(%struct.intel_limit* %71, %struct.intel_crtc_state* %72, i32 %75, i32 %76, i32* null, i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %70
  %82 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %102

85:                                               ; preds = %70, %65
  %86 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %87 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %88 = call i32 @ironlake_compute_dpll(%struct.intel_crtc* %86, %struct.intel_crtc_state* %87, i32* null)
  %89 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %7, align 8
  %90 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %91 = call i32 @intel_reserve_shared_dplls(%struct.intel_atomic_state* %89, %struct.intel_crtc* %90, i32* null)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %85
  %94 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %95 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @pipe_name(i32 %96)
  %98 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %102

101:                                              ; preds = %85
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %93, %81, %27
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_atomic_state* @to_intel_atomic_state(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @intel_crtc_has_type(%struct.intel_crtc_state*, i32) #1

declare dso_local i64 @intel_panel_use_ssc(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i64 @intel_is_dual_link_lvds(%struct.drm_i915_private*) #1

declare dso_local i32 @g4x_find_best_dpll(%struct.intel_limit*, %struct.intel_crtc_state*, i32, i32, i32*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @ironlake_compute_dpll(%struct.intel_crtc*, %struct.intel_crtc_state*, i32*) #1

declare dso_local i32 @intel_reserve_shared_dplls(%struct.intel_atomic_state*, %struct.intel_crtc*, i32*) #1

declare dso_local i32 @pipe_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
