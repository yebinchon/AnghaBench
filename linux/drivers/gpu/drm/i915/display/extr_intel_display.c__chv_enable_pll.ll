; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c__chv_enable_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c__chv_enable_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@DPIO_DCLKP_EN = common dso_local global i32 0, align 4
@DPLL_LOCK_VLV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"PLL %d failed to lock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*, %struct.intel_crtc_state*)* @_chv_enable_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_chv_enable_pll(%struct.intel_crtc* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %9 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %10 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.drm_i915_private* @to_i915(i32 %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %5, align 8
  %14 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %15 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @vlv_pipe_to_channel(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %20 = call i32 @vlv_dpio_get(%struct.drm_i915_private* %19)
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @CHV_CMN_DW14(i32 %23)
  %25 = call i32 @vlv_dpio_read(%struct.drm_i915_private* %21, i32 %22, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @DPIO_DCLKP_EN, align 4
  %27 = load i32, i32* %8, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %8, align 4
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @CHV_CMN_DW14(i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @vlv_dpio_write(%struct.drm_i915_private* %29, i32 %30, i32 %32, i32 %33)
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %36 = call i32 @vlv_dpio_put(%struct.drm_i915_private* %35)
  %37 = call i32 @udelay(i32 1)
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @DPLL(i32 %38)
  %40 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %41 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @I915_WRITE(i32 %39, i32 %43)
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @DPLL(i32 %46)
  %48 = load i32, i32* @DPLL_LOCK_VLV, align 4
  %49 = call i64 @intel_de_wait_for_set(%struct.drm_i915_private* %45, i32 %47, i32 %48, i32 1)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %2
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %51, %2
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @vlv_pipe_to_channel(i32) #1

declare dso_local i32 @vlv_dpio_get(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_dpio_read(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @CHV_CMN_DW14(i32) #1

declare dso_local i32 @vlv_dpio_write(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i32 @vlv_dpio_put(%struct.drm_i915_private*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @DPLL(i32) #1

declare dso_local i64 @intel_de_wait_for_set(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
