; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_bxt_ddi_pll_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_bxt_ddi_pll_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_shared_dpll = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PORT_PLL_ENABLE = common dso_local global i32 0, align 4
@PORT_PLL_POWER_ENABLE = common dso_local global i32 0, align 4
@PORT_PLL_POWER_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Power state not reset for PLL:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_shared_dpll*)* @bxt_ddi_pll_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxt_ddi_pll_disable(%struct.drm_i915_private* %0, %struct.intel_shared_dpll* %1) #0 {
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
  %13 = call i32 @BXT_PORT_PLL_ENABLE(i32 %12)
  %14 = call i32 @I915_READ(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @PORT_PLL_ENABLE, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @BXT_PORT_PLL_ENABLE(i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @I915_WRITE(i32 %20, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @BXT_PORT_PLL_ENABLE(i32 %23)
  %25 = call i32 @POSTING_READ(i32 %24)
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %27 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %2
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @BXT_PORT_PLL_ENABLE(i32 %30)
  %32 = call i32 @I915_READ(i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* @PORT_PLL_POWER_ENABLE, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @BXT_PORT_PLL_ENABLE(i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @I915_WRITE(i32 %38, i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @BXT_PORT_PLL_ENABLE(i32 %41)
  %43 = call i32 @I915_READ(i32 %42)
  %44 = load i32, i32* @PORT_PLL_POWER_STATE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i64 @wait_for_us(i32 %48, i32 200)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %29
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %51, %29
  br label %55

55:                                               ; preds = %54, %2
  ret void
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @BXT_PORT_PLL_ENABLE(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i64 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @wait_for_us(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
