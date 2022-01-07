; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_chv_disable_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_chv_disable_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@DPLL_SSC_REF_CLK_CHV = common dso_local global i32 0, align 4
@DPLL_REF_CLK_ENABLE_VLV = common dso_local global i32 0, align 4
@DPLL_VGA_MODE_DIS = common dso_local global i32 0, align 4
@PIPE_A = common dso_local global i32 0, align 4
@DPLL_INTEGRATED_CRI_CLK_VLV = common dso_local global i32 0, align 4
@DPIO_DCLKP_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32)* @chv_disable_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chv_disable_pll(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @vlv_pipe_to_channel(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @assert_pipe_disabled(%struct.drm_i915_private* %9, i32 %10)
  %12 = load i32, i32* @DPLL_SSC_REF_CLK_CHV, align 4
  %13 = load i32, i32* @DPLL_REF_CLK_ENABLE_VLV, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @DPLL_VGA_MODE_DIS, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @PIPE_A, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @DPLL_INTEGRATED_CRI_CLK_VLV, align 4
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %20, %2
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @DPLL(i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @I915_WRITE(i32 %26, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @DPLL(i32 %29)
  %31 = call i32 @POSTING_READ(i32 %30)
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %33 = call i32 @vlv_dpio_get(%struct.drm_i915_private* %32)
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @CHV_CMN_DW14(i32 %36)
  %38 = call i32 @vlv_dpio_read(%struct.drm_i915_private* %34, i32 %35, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* @DPIO_DCLKP_EN, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %6, align 4
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @CHV_CMN_DW14(i32 %45)
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @vlv_dpio_write(%struct.drm_i915_private* %43, i32 %44, i32 %46, i32 %47)
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %50 = call i32 @vlv_dpio_put(%struct.drm_i915_private* %49)
  ret void
}

declare dso_local i32 @vlv_pipe_to_channel(i32) #1

declare dso_local i32 @assert_pipe_disabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @DPLL(i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @vlv_dpio_get(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_dpio_read(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @CHV_CMN_DW14(i32) #1

declare dso_local i32 @vlv_dpio_write(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i32 @vlv_dpio_put(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
