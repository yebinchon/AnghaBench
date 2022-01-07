; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_chv_crtc_clock_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_chv_crtc_clock_get.c"
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
@DPIO_CHV_M1_DIV_BY_2 = common dso_local global i32 0, align 4
@DPIO_CHV_FRAC_DIV_EN = common dso_local global i32 0, align 4
@DPIO_CHV_N_DIV_SHIFT = common dso_local global i32 0, align 4
@DPIO_CHV_P1_DIV_SHIFT = common dso_local global i32 0, align 4
@DPIO_CHV_P2_DIV_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*, %struct.intel_crtc_state*)* @chv_crtc_clock_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chv_crtc_clock_get(%struct.intel_crtc* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dpll, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %16 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %17 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.drm_device*, %struct.drm_device** %18, align 8
  store %struct.drm_device* %19, %struct.drm_device** %5, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %21 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %20)
  store %struct.drm_i915_private* %21, %struct.drm_i915_private** %6, align 8
  %22 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %23 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @vlv_pipe_to_channel(i32 %25)
  store i32 %26, i32* %8, align 4
  store i32 100000, i32* %15, align 4
  %27 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %28 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DPLL_VCO_ENABLE, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  br label %106

35:                                               ; preds = %2
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %37 = call i32 @vlv_dpio_get(%struct.drm_i915_private* %36)
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @CHV_CMN_DW13(i32 %40)
  %42 = call i32 @vlv_dpio_read(%struct.drm_i915_private* %38, i32 %39, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @CHV_PLL_DW0(i32 %45)
  %47 = call i32 @vlv_dpio_read(%struct.drm_i915_private* %43, i32 %44, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @CHV_PLL_DW1(i32 %50)
  %52 = call i32 @vlv_dpio_read(%struct.drm_i915_private* %48, i32 %49, i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @CHV_PLL_DW2(i32 %55)
  %57 = call i32 @vlv_dpio_read(%struct.drm_i915_private* %53, i32 %54, i32 %56)
  store i32 %57, i32* %13, align 4
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @CHV_PLL_DW3(i32 %60)
  %62 = call i32 @vlv_dpio_read(%struct.drm_i915_private* %58, i32 %59, i32 %61)
  store i32 %62, i32* %14, align 4
  %63 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %64 = call i32 @vlv_dpio_put(%struct.drm_i915_private* %63)
  %65 = load i32, i32* %12, align 4
  %66 = and i32 %65, 7
  %67 = load i32, i32* @DPIO_CHV_M1_DIV_BY_2, align 4
  %68 = icmp eq i32 %66, %67
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 2, i32 0
  %71 = getelementptr inbounds %struct.dpll, %struct.dpll* %9, i32 0, i32 0
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %11, align 4
  %73 = and i32 %72, 255
  %74 = shl i32 %73, 22
  %75 = getelementptr inbounds %struct.dpll, %struct.dpll* %9, i32 0, i32 1
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* @DPIO_CHV_FRAC_DIV_EN, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %35
  %81 = load i32, i32* %13, align 4
  %82 = and i32 %81, 4194303
  %83 = getelementptr inbounds %struct.dpll, %struct.dpll* %9, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %82
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %80, %35
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @DPIO_CHV_N_DIV_SHIFT, align 4
  %89 = ashr i32 %87, %88
  %90 = and i32 %89, 15
  %91 = getelementptr inbounds %struct.dpll, %struct.dpll* %9, i32 0, i32 2
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @DPIO_CHV_P1_DIV_SHIFT, align 4
  %94 = ashr i32 %92, %93
  %95 = and i32 %94, 7
  %96 = getelementptr inbounds %struct.dpll, %struct.dpll* %9, i32 0, i32 3
  store i32 %95, i32* %96, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @DPIO_CHV_P2_DIV_SHIFT, align 4
  %99 = ashr i32 %97, %98
  %100 = and i32 %99, 31
  %101 = getelementptr inbounds %struct.dpll, %struct.dpll* %9, i32 0, i32 4
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* %15, align 4
  %103 = call i32 @chv_calc_dpll_params(i32 %102, %struct.dpll* %9)
  %104 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %105 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %86, %34
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @vlv_pipe_to_channel(i32) #1

declare dso_local i32 @vlv_dpio_get(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_dpio_read(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @CHV_CMN_DW13(i32) #1

declare dso_local i32 @CHV_PLL_DW0(i32) #1

declare dso_local i32 @CHV_PLL_DW1(i32) #1

declare dso_local i32 @CHV_PLL_DW2(i32) #1

declare dso_local i32 @CHV_PLL_DW3(i32) #1

declare dso_local i32 @vlv_dpio_put(%struct.drm_i915_private*) #1

declare dso_local i32 @chv_calc_dpll_params(i32, %struct.dpll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
