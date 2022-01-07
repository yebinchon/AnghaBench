; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_vlv_disable_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_vlv_disable_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@DPLL_INTEGRATED_REF_CLK_VLV = common dso_local global i32 0, align 4
@DPLL_REF_CLK_ENABLE_VLV = common dso_local global i32 0, align 4
@DPLL_VGA_MODE_DIS = common dso_local global i32 0, align 4
@PIPE_A = common dso_local global i32 0, align 4
@DPLL_INTEGRATED_CRI_CLK_VLV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32)* @vlv_disable_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlv_disable_pll(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @assert_pipe_disabled(%struct.drm_i915_private* %6, i32 %7)
  %9 = load i32, i32* @DPLL_INTEGRATED_REF_CLK_VLV, align 4
  %10 = load i32, i32* @DPLL_REF_CLK_ENABLE_VLV, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @DPLL_VGA_MODE_DIS, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @PIPE_A, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @DPLL_INTEGRATED_CRI_CLK_VLV, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %17, %2
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @DPLL(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @I915_WRITE(i32 %23, i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @DPLL(i32 %26)
  %28 = call i32 @POSTING_READ(i32 %27)
  ret void
}

declare dso_local i32 @assert_pipe_disabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @DPLL(i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
