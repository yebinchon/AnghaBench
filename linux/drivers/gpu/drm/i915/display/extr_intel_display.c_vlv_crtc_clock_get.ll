; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_vlv_crtc_clock_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_vlv_crtc_clock_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_crtc_state = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.dpll = type { i32, i32, i32, i32, i32 }

@DPLL_VCO_ENABLE = common dso_local global i32 0, align 4
@DPIO_M1DIV_SHIFT = common dso_local global i32 0, align 4
@DPIO_M2DIV_MASK = common dso_local global i32 0, align 4
@DPIO_N_SHIFT = common dso_local global i32 0, align 4
@DPIO_P1_SHIFT = common dso_local global i32 0, align 4
@DPIO_P2_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*, %struct.intel_crtc_state*)* @vlv_crtc_clock_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlv_crtc_clock_get(%struct.intel_crtc* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dpll, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %11 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %12 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %5, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %15)
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %6, align 8
  %17 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %18 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  store i32 100000, i32* %10, align 4
  %20 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %21 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DPLL_VCO_ENABLE, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %66

28:                                               ; preds = %2
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %30 = call i32 @vlv_dpio_get(%struct.drm_i915_private* %29)
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @VLV_PLL_DW3(i32 %33)
  %35 = call i32 @vlv_dpio_read(%struct.drm_i915_private* %31, i32 %32, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %37 = call i32 @vlv_dpio_put(%struct.drm_i915_private* %36)
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @DPIO_M1DIV_SHIFT, align 4
  %40 = ashr i32 %38, %39
  %41 = and i32 %40, 7
  %42 = getelementptr inbounds %struct.dpll, %struct.dpll* %8, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @DPIO_M2DIV_MASK, align 4
  %45 = and i32 %43, %44
  %46 = getelementptr inbounds %struct.dpll, %struct.dpll* %8, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @DPIO_N_SHIFT, align 4
  %49 = ashr i32 %47, %48
  %50 = and i32 %49, 15
  %51 = getelementptr inbounds %struct.dpll, %struct.dpll* %8, i32 0, i32 2
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @DPIO_P1_SHIFT, align 4
  %54 = ashr i32 %52, %53
  %55 = and i32 %54, 7
  %56 = getelementptr inbounds %struct.dpll, %struct.dpll* %8, i32 0, i32 3
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @DPIO_P2_SHIFT, align 4
  %59 = ashr i32 %57, %58
  %60 = and i32 %59, 31
  %61 = getelementptr inbounds %struct.dpll, %struct.dpll* %8, i32 0, i32 4
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @vlv_calc_dpll_params(i32 %62, %struct.dpll* %8)
  %64 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %65 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %28, %27
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @vlv_dpio_get(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_dpio_read(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @VLV_PLL_DW3(i32) #1

declare dso_local i32 @vlv_dpio_put(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_calc_dpll_params(i32, %struct.dpll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
