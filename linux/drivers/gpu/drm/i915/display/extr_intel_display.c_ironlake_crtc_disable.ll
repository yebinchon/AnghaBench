; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_ironlake_crtc_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_ironlake_crtc_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_crtc* }
%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_atomic_state = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_crtc = type { i32 }

@TRANS_DP_OUTPUT_ENABLE = common dso_local global i32 0, align 4
@TRANS_DP_PORT_SEL_MASK = common dso_local global i32 0, align 4
@TRANS_DP_PORT_SEL_NONE = common dso_local global i32 0, align 4
@PCH_DPLL_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*, %struct.intel_atomic_state*)* @ironlake_crtc_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ironlake_crtc_disable(%struct.intel_crtc_state* %0, %struct.intel_atomic_state* %1) #0 {
  %3 = alloca %struct.intel_crtc_state*, align 8
  %4 = alloca %struct.intel_atomic_state*, align 8
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.intel_crtc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %3, align 8
  store %struct.intel_atomic_state* %1, %struct.intel_atomic_state** %4, align 8
  %12 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %13 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %14, align 8
  store %struct.drm_crtc* %15, %struct.drm_crtc** %5, align 8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %17 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %16, i32 0, i32 0
  %18 = load %struct.drm_device*, %struct.drm_device** %17, align 8
  store %struct.drm_device* %18, %struct.drm_device** %6, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %20 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %19)
  store %struct.drm_i915_private* %20, %struct.drm_i915_private** %7, align 8
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %22 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %21)
  store %struct.intel_crtc* %22, %struct.intel_crtc** %8, align 8
  %23 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %24 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @intel_set_cpu_fifo_underrun_reporting(%struct.drm_i915_private* %26, i32 %27, i32 0)
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @intel_set_pch_fifo_underrun_reporting(%struct.drm_i915_private* %29, i32 %30, i32 0)
  %32 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %33 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %34 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %4, align 8
  %35 = call i32 @intel_encoders_disable(%struct.intel_crtc* %32, %struct.intel_crtc_state* %33, %struct.intel_atomic_state* %34)
  %36 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %37 = call i32 @drm_crtc_vblank_off(%struct.drm_crtc* %36)
  %38 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %39 = call i32 @assert_vblank_disabled(%struct.drm_crtc* %38)
  %40 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %41 = call i32 @intel_disable_pipe(%struct.intel_crtc_state* %40)
  %42 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %43 = call i32 @ironlake_pfit_disable(%struct.intel_crtc_state* %42)
  %44 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %45 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %2
  %49 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %50 = call i32 @ironlake_fdi_disable(%struct.drm_crtc* %49)
  br label %51

51:                                               ; preds = %48, %2
  %52 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %53 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %54 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %4, align 8
  %55 = call i32 @intel_encoders_post_disable(%struct.intel_crtc* %52, %struct.intel_crtc_state* %53, %struct.intel_atomic_state* %54)
  %56 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %57 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %100

60:                                               ; preds = %51
  %61 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @ironlake_disable_pch_transcoder(%struct.drm_i915_private* %61, i32 %62)
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %65 = call i64 @HAS_PCH_CPT(%struct.drm_i915_private* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %97

67:                                               ; preds = %60
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @TRANS_DP_CTL(i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @I915_READ(i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* @TRANS_DP_OUTPUT_ENABLE, align 4
  %73 = load i32, i32* @TRANS_DP_PORT_SEL_MASK, align 4
  %74 = or i32 %72, %73
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %11, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* @TRANS_DP_PORT_SEL_NONE, align 4
  %79 = load i32, i32* %11, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @I915_WRITE(i32 %81, i32 %82)
  %84 = load i32, i32* @PCH_DPLL_SEL, align 4
  %85 = call i32 @I915_READ(i32 %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @TRANS_DPLL_ENABLE(i32 %86)
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @TRANS_DPLLB_SEL(i32 %88)
  %90 = or i32 %87, %89
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %11, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* @PCH_DPLL_SEL, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @I915_WRITE(i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %67, %60
  %98 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %99 = call i32 @ironlake_fdi_pll_disable(%struct.intel_crtc* %98)
  br label %100

100:                                              ; preds = %97, %51
  %101 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @intel_set_cpu_fifo_underrun_reporting(%struct.drm_i915_private* %101, i32 %102, i32 1)
  %104 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @intel_set_pch_fifo_underrun_reporting(%struct.drm_i915_private* %104, i32 %105, i32 1)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @intel_set_cpu_fifo_underrun_reporting(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @intel_set_pch_fifo_underrun_reporting(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @intel_encoders_disable(%struct.intel_crtc*, %struct.intel_crtc_state*, %struct.intel_atomic_state*) #1

declare dso_local i32 @drm_crtc_vblank_off(%struct.drm_crtc*) #1

declare dso_local i32 @assert_vblank_disabled(%struct.drm_crtc*) #1

declare dso_local i32 @intel_disable_pipe(%struct.intel_crtc_state*) #1

declare dso_local i32 @ironlake_pfit_disable(%struct.intel_crtc_state*) #1

declare dso_local i32 @ironlake_fdi_disable(%struct.drm_crtc*) #1

declare dso_local i32 @intel_encoders_post_disable(%struct.intel_crtc*, %struct.intel_crtc_state*, %struct.intel_atomic_state*) #1

declare dso_local i32 @ironlake_disable_pch_transcoder(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @HAS_PCH_CPT(%struct.drm_i915_private*) #1

declare dso_local i32 @TRANS_DP_CTL(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @TRANS_DPLL_ENABLE(i32) #1

declare dso_local i32 @TRANS_DPLLB_SEL(i32) #1

declare dso_local i32 @ironlake_fdi_pll_disable(%struct.intel_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
