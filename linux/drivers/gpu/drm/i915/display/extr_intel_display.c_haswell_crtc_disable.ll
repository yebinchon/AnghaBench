; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_haswell_crtc_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_haswell_crtc_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_crtc* }
%struct.drm_crtc = type { i32 }
%struct.intel_atomic_state = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_crtc = type { i32 }

@INTEL_OUTPUT_DP_MST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*, %struct.intel_atomic_state*)* @haswell_crtc_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @haswell_crtc_disable(%struct.intel_crtc_state* %0, %struct.intel_atomic_state* %1) #0 {
  %3 = alloca %struct.intel_crtc_state*, align 8
  %4 = alloca %struct.intel_atomic_state*, align 8
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_crtc*, align 8
  %8 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %3, align 8
  store %struct.intel_atomic_state* %1, %struct.intel_atomic_state** %4, align 8
  %9 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %10 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %11, align 8
  store %struct.drm_crtc* %12, %struct.drm_crtc** %5, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %14 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.drm_i915_private* @to_i915(i32 %15)
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %6, align 8
  %17 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %18 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %17)
  store %struct.intel_crtc* %18, %struct.intel_crtc** %7, align 8
  %19 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %20 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  %22 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %23 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %24 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %4, align 8
  %25 = call i32 @intel_encoders_disable(%struct.intel_crtc* %22, %struct.intel_crtc_state* %23, %struct.intel_atomic_state* %24)
  %26 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %27 = call i32 @drm_crtc_vblank_off(%struct.drm_crtc* %26)
  %28 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %29 = call i32 @assert_vblank_disabled(%struct.drm_crtc* %28)
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @transcoder_is_dsi(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %2
  %34 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %35 = call i32 @intel_disable_pipe(%struct.intel_crtc_state* %34)
  br label %36

36:                                               ; preds = %33, %2
  %37 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %38 = load i32, i32* @INTEL_OUTPUT_DP_MST, align 4
  %39 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %43 = call i32 @intel_ddi_set_vc_payload_alloc(%struct.intel_crtc_state* %42, i32 0)
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @transcoder_is_dsi(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %50 = call i32 @intel_ddi_disable_transcoder_func(%struct.intel_crtc_state* %49)
  br label %51

51:                                               ; preds = %48, %44
  %52 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %53 = call i32 @intel_dsc_disable(%struct.intel_crtc_state* %52)
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %55 = call i32 @INTEL_GEN(%struct.drm_i915_private* %54)
  %56 = icmp sge i32 %55, 9
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %59 = call i32 @skylake_scaler_disable(%struct.intel_crtc* %58)
  br label %63

60:                                               ; preds = %51
  %61 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %62 = call i32 @ironlake_pfit_disable(%struct.intel_crtc_state* %61)
  br label %63

63:                                               ; preds = %60, %57
  %64 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %65 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %66 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %4, align 8
  %67 = call i32 @intel_encoders_post_disable(%struct.intel_crtc* %64, %struct.intel_crtc_state* %65, %struct.intel_atomic_state* %66)
  %68 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %69 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %70 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %4, align 8
  %71 = call i32 @intel_encoders_post_pll_disable(%struct.intel_crtc* %68, %struct.intel_crtc_state* %69, %struct.intel_atomic_state* %70)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @intel_encoders_disable(%struct.intel_crtc*, %struct.intel_crtc_state*, %struct.intel_atomic_state*) #1

declare dso_local i32 @drm_crtc_vblank_off(%struct.drm_crtc*) #1

declare dso_local i32 @assert_vblank_disabled(%struct.drm_crtc*) #1

declare dso_local i32 @transcoder_is_dsi(i32) #1

declare dso_local i32 @intel_disable_pipe(%struct.intel_crtc_state*) #1

declare dso_local i64 @intel_crtc_has_type(%struct.intel_crtc_state*, i32) #1

declare dso_local i32 @intel_ddi_set_vc_payload_alloc(%struct.intel_crtc_state*, i32) #1

declare dso_local i32 @intel_ddi_disable_transcoder_func(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_dsc_disable(%struct.intel_crtc_state*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @skylake_scaler_disable(%struct.intel_crtc*) #1

declare dso_local i32 @ironlake_pfit_disable(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_encoders_post_disable(%struct.intel_crtc*, %struct.intel_crtc_state*, %struct.intel_atomic_state*) #1

declare dso_local i32 @intel_encoders_post_pll_disable(%struct.intel_crtc*, %struct.intel_crtc_state*, %struct.intel_atomic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
