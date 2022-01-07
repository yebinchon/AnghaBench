; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_fence_reg.c_intel_gt_init_swizzling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_fence_reg.c_intel_gt_init_swizzling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gt = type { %struct.intel_uncore*, %struct.drm_i915_private* }
%struct.intel_uncore = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@I915_BIT_6_SWIZZLE_NONE = common dso_local global i64 0, align 8
@DISP_ARB_CTL = common dso_local global i32 0, align 4
@DISP_TILE_SURFACE_SWIZZLING = common dso_local global i32 0, align 4
@TILECTL = common dso_local global i32 0, align 4
@TILECTL_SWZCTL = common dso_local global i32 0, align 4
@ARB_MODE = common dso_local global i32 0, align 4
@ARB_MODE_SWIZZLE_SNB = common dso_local global i32 0, align 4
@ARB_MODE_SWIZZLE_IVB = common dso_local global i32 0, align 4
@GAMTARBMODE = common dso_local global i32 0, align 4
@ARB_MODE_SWIZZLE_BDW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_gt_init_swizzling(%struct.intel_gt* %0) #0 {
  %2 = alloca %struct.intel_gt*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_uncore*, align 8
  store %struct.intel_gt* %0, %struct.intel_gt** %2, align 8
  %5 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %6 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %5, i32 0, i32 1
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  store %struct.drm_i915_private* %7, %struct.drm_i915_private** %3, align 8
  %8 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %9 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %8, i32 0, i32 0
  %10 = load %struct.intel_uncore*, %struct.intel_uncore** %9, align 8
  store %struct.intel_uncore* %10, %struct.intel_uncore** %4, align 8
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %12 = call i32 @INTEL_GEN(%struct.drm_i915_private* %11)
  %13 = icmp slt i32 %12, 5
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %16 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @I915_BIT_6_SWIZZLE_NONE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14, %1
  br label %71

22:                                               ; preds = %14
  %23 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %24 = load i32, i32* @DISP_ARB_CTL, align 4
  %25 = load i32, i32* @DISP_TILE_SURFACE_SWIZZLING, align 4
  %26 = call i32 @intel_uncore_rmw(%struct.intel_uncore* %23, i32 %24, i32 0, i32 %25)
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %28 = call i64 @IS_GEN(%struct.drm_i915_private* %27, i32 5)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %71

31:                                               ; preds = %22
  %32 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %33 = load i32, i32* @TILECTL, align 4
  %34 = load i32, i32* @TILECTL_SWZCTL, align 4
  %35 = call i32 @intel_uncore_rmw(%struct.intel_uncore* %32, i32 %33, i32 0, i32 %34)
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %37 = call i64 @IS_GEN(%struct.drm_i915_private* %36, i32 6)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %41 = load i32, i32* @ARB_MODE, align 4
  %42 = load i32, i32* @ARB_MODE_SWIZZLE_SNB, align 4
  %43 = call i32 @_MASKED_BIT_ENABLE(i32 %42)
  %44 = call i32 @intel_uncore_write(%struct.intel_uncore* %40, i32 %41, i32 %43)
  br label %71

45:                                               ; preds = %31
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %47 = call i64 @IS_GEN(%struct.drm_i915_private* %46, i32 7)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %51 = load i32, i32* @ARB_MODE, align 4
  %52 = load i32, i32* @ARB_MODE_SWIZZLE_IVB, align 4
  %53 = call i32 @_MASKED_BIT_ENABLE(i32 %52)
  %54 = call i32 @intel_uncore_write(%struct.intel_uncore* %50, i32 %51, i32 %53)
  br label %70

55:                                               ; preds = %45
  %56 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %57 = call i64 @IS_GEN(%struct.drm_i915_private* %56, i32 8)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %61 = load i32, i32* @GAMTARBMODE, align 4
  %62 = load i32, i32* @ARB_MODE_SWIZZLE_BDW, align 4
  %63 = call i32 @_MASKED_BIT_ENABLE(i32 %62)
  %64 = call i32 @intel_uncore_write(%struct.intel_uncore* %60, i32 %61, i32 %63)
  br label %69

65:                                               ; preds = %55
  %66 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %67 = call i32 @INTEL_GEN(%struct.drm_i915_private* %66)
  %68 = call i32 @MISSING_CASE(i32 %67)
  br label %69

69:                                               ; preds = %65, %59
  br label %70

70:                                               ; preds = %69, %49
  br label %71

71:                                               ; preds = %21, %30, %70, %39
  ret void
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_uncore_rmw(%struct.intel_uncore*, i32, i32, i32) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_uncore_write(%struct.intel_uncore*, i32, i32) #1

declare dso_local i32 @_MASKED_BIT_ENABLE(i32) #1

declare dso_local i32 @MISSING_CASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
