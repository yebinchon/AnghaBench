; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_icl_dpclka_cfgcr0_clk_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_icl_dpclka_cfgcr0_clk_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i32)* @icl_dpclka_cfgcr0_clk_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icl_dpclka_cfgcr0_clk_off(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @intel_phy_is_combo(%struct.drm_i915_private* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(i32 %12)
  store i32 %13, i32* %3, align 4
  br label %27

14:                                               ; preds = %2
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @intel_phy_is_tc(%struct.drm_i915_private* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @intel_port_to_tc(%struct.drm_i915_private* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @ICL_DPCLKA_CFGCR0_TC_CLK_OFF(i32 %23)
  store i32 %24, i32* %3, align 4
  br label %27

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %19, %11
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i64 @intel_phy_is_combo(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(i32) #1

declare dso_local i64 @intel_phy_is_tc(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_port_to_tc(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @ICL_DPCLKA_CFGCR0_TC_CLK_OFF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
