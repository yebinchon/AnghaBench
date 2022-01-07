; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_ilk_load_csc_matrix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_ilk_load_csc_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i64, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.intel_crtc = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@ilk_csc_off_zero = common dso_local global i32 0, align 4
@ilk_csc_postoff_limited_range = common dso_local global i32 0, align 4
@INTEL_OUTPUT_FORMAT_RGB = common dso_local global i64 0, align 8
@ilk_csc_coeff_rgb_to_ycbcr = common dso_local global i32* null, align 8
@ilk_csc_postoff_rgb_to_ycbcr = common dso_local global i32 0, align 4
@ilk_csc_coeff_limited_range = common dso_local global i32* null, align 8
@ilk_csc_coeff_identity = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*)* @ilk_load_csc_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ilk_load_csc_matrix(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_crtc_state*, align 8
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [9 x i32], align 16
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %2, align 8
  %7 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %8 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.intel_crtc* @to_intel_crtc(i32 %10)
  store %struct.intel_crtc* %11, %struct.intel_crtc** %3, align 8
  %12 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %13 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.drm_i915_private* @to_i915(i32 %15)
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %4, align 8
  %17 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %18 = call i32 @ilk_csc_limited_range(%struct.intel_crtc_state* %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %20 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %1
  %25 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %26 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0
  %27 = call i32 @ilk_csc_convert_ctm(%struct.intel_crtc_state* %25, i32* %26)
  %28 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %29 = load i32, i32* @ilk_csc_off_zero, align 4
  %30 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* @ilk_csc_postoff_limited_range, align 4
  br label %37

35:                                               ; preds = %24
  %36 = load i32, i32* @ilk_csc_off_zero, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = call i32 @ilk_update_pipe_csc(%struct.intel_crtc* %28, i32 %29, i32* %30, i32 %38)
  br label %87

40:                                               ; preds = %1
  %41 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %42 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @INTEL_OUTPUT_FORMAT_RGB, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %48 = load i32, i32* @ilk_csc_off_zero, align 4
  %49 = load i32*, i32** @ilk_csc_coeff_rgb_to_ycbcr, align 8
  %50 = load i32, i32* @ilk_csc_postoff_rgb_to_ycbcr, align 4
  %51 = call i32 @ilk_update_pipe_csc(%struct.intel_crtc* %47, i32 %48, i32* %49, i32 %50)
  br label %86

52:                                               ; preds = %40
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %57 = load i32, i32* @ilk_csc_off_zero, align 4
  %58 = load i32*, i32** @ilk_csc_coeff_limited_range, align 8
  %59 = load i32, i32* @ilk_csc_postoff_limited_range, align 4
  %60 = call i32 @ilk_update_pipe_csc(%struct.intel_crtc* %56, i32 %57, i32* %58, i32 %59)
  br label %85

61:                                               ; preds = %52
  %62 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %63 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %61
  %67 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %68 = call i32 @IS_CANNONLAKE(%struct.drm_i915_private* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %66
  %71 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %72 = call i32 @IS_GEMINILAKE(%struct.drm_i915_private* %71)
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  br label %75

75:                                               ; preds = %70, %66
  %76 = phi i1 [ false, %66 ], [ %74, %70 ]
  %77 = zext i1 %76 to i32
  %78 = call i32 @WARN_ON(i32 %77)
  %79 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %80 = load i32, i32* @ilk_csc_off_zero, align 4
  %81 = load i32*, i32** @ilk_csc_coeff_identity, align 8
  %82 = load i32, i32* @ilk_csc_off_zero, align 4
  %83 = call i32 @ilk_update_pipe_csc(%struct.intel_crtc* %79, i32 %80, i32* %81, i32 %82)
  br label %84

84:                                               ; preds = %75, %61
  br label %85

85:                                               ; preds = %84, %55
  br label %86

86:                                               ; preds = %85, %46
  br label %87

87:                                               ; preds = %86, %37
  %88 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %89 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @PIPE_CSC_MODE(i32 %90)
  %92 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %93 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @I915_WRITE(i32 %91, i32 %94)
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @ilk_csc_limited_range(%struct.intel_crtc_state*) #1

declare dso_local i32 @ilk_csc_convert_ctm(%struct.intel_crtc_state*, i32*) #1

declare dso_local i32 @ilk_update_pipe_csc(%struct.intel_crtc*, i32, i32*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @IS_CANNONLAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @PIPE_CSC_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
