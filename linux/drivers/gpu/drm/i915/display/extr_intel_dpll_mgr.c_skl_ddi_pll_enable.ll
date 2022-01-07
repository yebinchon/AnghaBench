; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_skl_ddi_pll_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_skl_ddi_pll_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_dpll_regs = type { i32, i32, i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_shared_dpll = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@skl_dpll_regs = common dso_local global %struct.skl_dpll_regs* null, align 8
@LCPLL_PLL_ENABLE = common dso_local global i32 0, align 4
@DPLL_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"DPLL %d not locked\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_shared_dpll*)* @skl_ddi_pll_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_ddi_pll_enable(%struct.drm_i915_private* %0, %struct.intel_shared_dpll* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_shared_dpll*, align 8
  %5 = alloca %struct.skl_dpll_regs*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.intel_shared_dpll* %1, %struct.intel_shared_dpll** %4, align 8
  %7 = load %struct.skl_dpll_regs*, %struct.skl_dpll_regs** @skl_dpll_regs, align 8
  store %struct.skl_dpll_regs* %7, %struct.skl_dpll_regs** %5, align 8
  %8 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %4, align 8
  %9 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %14 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %4, align 8
  %15 = call i32 @skl_ddi_pll_write_ctrl1(%struct.drm_i915_private* %13, %struct.intel_shared_dpll* %14)
  %16 = load %struct.skl_dpll_regs*, %struct.skl_dpll_regs** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.skl_dpll_regs, %struct.skl_dpll_regs* %16, i64 %18
  %20 = getelementptr inbounds %struct.skl_dpll_regs, %struct.skl_dpll_regs* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %4, align 8
  %23 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @I915_WRITE(i32 %21, i32 %26)
  %28 = load %struct.skl_dpll_regs*, %struct.skl_dpll_regs** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.skl_dpll_regs, %struct.skl_dpll_regs* %28, i64 %30
  %32 = getelementptr inbounds %struct.skl_dpll_regs, %struct.skl_dpll_regs* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %4, align 8
  %35 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @I915_WRITE(i32 %33, i32 %38)
  %40 = load %struct.skl_dpll_regs*, %struct.skl_dpll_regs** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.skl_dpll_regs, %struct.skl_dpll_regs* %40, i64 %42
  %44 = getelementptr inbounds %struct.skl_dpll_regs, %struct.skl_dpll_regs* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @POSTING_READ(i32 %45)
  %47 = load %struct.skl_dpll_regs*, %struct.skl_dpll_regs** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.skl_dpll_regs, %struct.skl_dpll_regs* %47, i64 %49
  %51 = getelementptr inbounds %struct.skl_dpll_regs, %struct.skl_dpll_regs* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @POSTING_READ(i32 %52)
  %54 = load %struct.skl_dpll_regs*, %struct.skl_dpll_regs** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.skl_dpll_regs, %struct.skl_dpll_regs* %54, i64 %56
  %58 = getelementptr inbounds %struct.skl_dpll_regs, %struct.skl_dpll_regs* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.skl_dpll_regs*, %struct.skl_dpll_regs** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.skl_dpll_regs, %struct.skl_dpll_regs* %60, i64 %62
  %64 = getelementptr inbounds %struct.skl_dpll_regs, %struct.skl_dpll_regs* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @I915_READ(i32 %65)
  %67 = load i32, i32* @LCPLL_PLL_ENABLE, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @I915_WRITE(i32 %59, i32 %68)
  %70 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %71 = load i32, i32* @DPLL_STATUS, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @DPLL_LOCK(i32 %72)
  %74 = call i64 @intel_de_wait_for_set(%struct.drm_i915_private* %70, i32 %71, i32 %73, i32 5)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %2
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %76, %2
  ret void
}

declare dso_local i32 @skl_ddi_pll_write_ctrl1(%struct.drm_i915_private*, %struct.intel_shared_dpll*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @intel_de_wait_for_set(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i32 @DPLL_LOCK(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
