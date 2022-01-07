; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_hsw_ddi_wrpll_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_hsw_ddi_wrpll_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_shared_dpll = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@WRPLL_PLL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_shared_dpll*)* @hsw_ddi_wrpll_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hsw_ddi_wrpll_disable(%struct.drm_i915_private* %0, %struct.intel_shared_dpll* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_shared_dpll*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.intel_shared_dpll* %1, %struct.intel_shared_dpll** %4, align 8
  %7 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %4, align 8
  %8 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @WRPLL_CTL(i32 %12)
  %14 = call i32 @I915_READ(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @WRPLL_CTL(i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @WRPLL_PLL_ENABLE, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = call i32 @I915_WRITE(i32 %16, i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @WRPLL_CTL(i32 %22)
  %24 = call i32 @POSTING_READ(i32 %23)
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %26 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @BIT(i32 %28)
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %34 = call i32 @intel_init_pch_refclk(%struct.drm_i915_private* %33)
  br label %35

35:                                               ; preds = %32, %2
  ret void
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @WRPLL_CTL(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @intel_init_pch_refclk(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
