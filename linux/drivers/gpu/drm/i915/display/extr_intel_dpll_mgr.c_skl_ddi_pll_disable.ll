; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_skl_ddi_pll_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_skl_ddi_pll_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_dpll_regs = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_shared_dpll = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@skl_dpll_regs = common dso_local global %struct.skl_dpll_regs* null, align 8
@LCPLL_PLL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_shared_dpll*)* @skl_ddi_pll_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_ddi_pll_disable(%struct.drm_i915_private* %0, %struct.intel_shared_dpll* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_shared_dpll*, align 8
  %5 = alloca %struct.skl_dpll_regs*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.intel_shared_dpll* %1, %struct.intel_shared_dpll** %4, align 8
  %7 = load %struct.skl_dpll_regs*, %struct.skl_dpll_regs** @skl_dpll_regs, align 8
  store %struct.skl_dpll_regs* %7, %struct.skl_dpll_regs** %5, align 8
  %8 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %4, align 8
  %9 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.skl_dpll_regs*, %struct.skl_dpll_regs** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.skl_dpll_regs, %struct.skl_dpll_regs* %13, i64 %15
  %17 = getelementptr inbounds %struct.skl_dpll_regs, %struct.skl_dpll_regs* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.skl_dpll_regs*, %struct.skl_dpll_regs** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.skl_dpll_regs, %struct.skl_dpll_regs* %19, i64 %21
  %23 = getelementptr inbounds %struct.skl_dpll_regs, %struct.skl_dpll_regs* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @I915_READ(i32 %24)
  %26 = load i32, i32* @LCPLL_PLL_ENABLE, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = call i32 @I915_WRITE(i32 %18, i32 %28)
  %30 = load %struct.skl_dpll_regs*, %struct.skl_dpll_regs** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.skl_dpll_regs, %struct.skl_dpll_regs* %30, i64 %32
  %34 = getelementptr inbounds %struct.skl_dpll_regs, %struct.skl_dpll_regs* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @POSTING_READ(i32 %35)
  ret void
}

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
