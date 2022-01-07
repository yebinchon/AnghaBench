; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_skylake_get_ddi_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_skylake_get_ddi_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_crtc_state = type { i32 }

@DPLL_CTRL2 = common dso_local global i32 0, align 4
@SKL_DPLL0 = common dso_local global i32 0, align 4
@SKL_DPLL3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32, %struct.intel_crtc_state*)* @skylake_get_ddi_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skylake_get_ddi_pll(%struct.drm_i915_private* %0, i32 %1, %struct.intel_crtc_state* %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_crtc_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.intel_crtc_state* %2, %struct.intel_crtc_state** %6, align 8
  %9 = load i32, i32* @DPLL_CTRL2, align 4
  %10 = call i32 @I915_READ(i32 %9)
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @DPLL_CTRL2_DDI_CLK_SEL_MASK(i32 %11)
  %13 = and i32 %10, %12
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = mul i32 %15, 3
  %17 = add i32 %16, 1
  %18 = ashr i32 %14, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @SKL_DPLL0, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @SKL_DPLL3, align 4
  %25 = icmp ugt i32 %23, %24
  br label %26

26:                                               ; preds = %22, %3
  %27 = phi i1 [ true, %3 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = call i64 @WARN_ON(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %38

32:                                               ; preds = %26
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @intel_get_shared_dpll_by_id(%struct.drm_i915_private* %33, i32 %34)
  %36 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %37 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %32, %31
  ret void
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DPLL_CTRL2_DDI_CLK_SEL_MASK(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @intel_get_shared_dpll_by_id(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
