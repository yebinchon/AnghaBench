; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_icl_load_csc_matrix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_icl_load_csc_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i64, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.intel_crtc = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@ilk_csc_off_zero = common dso_local global i32 0, align 4
@INTEL_OUTPUT_FORMAT_RGB = common dso_local global i64 0, align 8
@ilk_csc_coeff_rgb_to_ycbcr = common dso_local global i32 0, align 4
@ilk_csc_postoff_rgb_to_ycbcr = common dso_local global i32 0, align 4
@ilk_csc_coeff_limited_range = common dso_local global i32 0, align 4
@ilk_csc_postoff_limited_range = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*)* @icl_load_csc_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icl_load_csc_matrix(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_crtc_state*, align 8
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca [9 x i32], align 16
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %2, align 8
  %6 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %7 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.intel_crtc* @to_intel_crtc(i32 %9)
  store %struct.intel_crtc* %10, %struct.intel_crtc** %3, align 8
  %11 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %12 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.drm_i915_private* @to_i915(i32 %14)
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %4, align 8
  %16 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %17 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %23 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  %24 = call i32 @ilk_csc_convert_ctm(%struct.intel_crtc_state* %22, i32* %23)
  %25 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %26 = load i32, i32* @ilk_csc_off_zero, align 4
  %27 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  %28 = load i32, i32* @ilk_csc_off_zero, align 4
  %29 = call i32 @ilk_update_pipe_csc(%struct.intel_crtc* %25, i32 %26, i32* %27, i32 %28)
  br label %30

30:                                               ; preds = %21, %1
  %31 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %32 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @INTEL_OUTPUT_FORMAT_RGB, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %38 = load i32, i32* @ilk_csc_off_zero, align 4
  %39 = load i32, i32* @ilk_csc_coeff_rgb_to_ycbcr, align 4
  %40 = load i32, i32* @ilk_csc_postoff_rgb_to_ycbcr, align 4
  %41 = call i32 @icl_update_output_csc(%struct.intel_crtc* %37, i32 %38, i32 %39, i32 %40)
  br label %54

42:                                               ; preds = %30
  %43 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %44 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %49 = load i32, i32* @ilk_csc_off_zero, align 4
  %50 = load i32, i32* @ilk_csc_coeff_limited_range, align 4
  %51 = load i32, i32* @ilk_csc_postoff_limited_range, align 4
  %52 = call i32 @icl_update_output_csc(%struct.intel_crtc* %48, i32 %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %47, %42
  br label %54

54:                                               ; preds = %53, %36
  %55 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %56 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @PIPE_CSC_MODE(i32 %57)
  %59 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %60 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @I915_WRITE(i32 %58, i32 %61)
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @ilk_csc_convert_ctm(%struct.intel_crtc_state*, i32*) #1

declare dso_local i32 @ilk_update_pipe_csc(%struct.intel_crtc*, i32, i32*, i32) #1

declare dso_local i32 @icl_update_output_csc(%struct.intel_crtc*, i32, i32, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @PIPE_CSC_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
