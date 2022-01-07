; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, %struct.intel_gt, %struct.intel_uncore }
%struct.intel_gt = type { i32, i32 }
%struct.intel_uncore = type { i32 }

@FORCEWAKE_ALL = common dso_local global i32 0, align 4
@HSW_IDICR = common dso_local global i32 0, align 4
@MI_PREDICATE_RESULT_2 = common dso_local global i32 0, align 4
@LOWER_SLICE_ENABLED = common dso_local global i32 0, align 4
@LOWER_SLICE_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Enabling PPGTT failed (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Enabling uc failed (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_init_hw(%struct.drm_i915_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_uncore*, align 8
  %5 = alloca %struct.intel_gt*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %8 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %7, i32 0, i32 2
  store %struct.intel_uncore* %8, %struct.intel_uncore** %4, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 1
  store %struct.intel_gt* %10, %struct.intel_gt** %5, align 8
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %12 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.intel_gt*, %struct.intel_gt** %5, align 8
  %19 = call i32 @intel_gt_terminally_wedged(%struct.intel_gt* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %94

24:                                               ; preds = %1
  %25 = call i32 (...) @ktime_get()
  %26 = load %struct.intel_gt*, %struct.intel_gt** %5, align 8
  %27 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %29 = load i32, i32* @FORCEWAKE_ALL, align 4
  %30 = call i32 @intel_uncore_forcewake_get(%struct.intel_uncore* %28, i32 %29)
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %32 = call i64 @HAS_EDRAM(%struct.drm_i915_private* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %24
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %36 = call i32 @INTEL_GEN(%struct.drm_i915_private* %35)
  %37 = icmp slt i32 %36, 9
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %40 = load i32, i32* @HSW_IDICR, align 4
  %41 = call i32 @IDIHASHMSK(i32 15)
  %42 = call i32 @intel_uncore_rmw(%struct.intel_uncore* %39, i32 %40, i32 0, i32 %41)
  br label %43

43:                                               ; preds = %38, %34, %24
  %44 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %45 = call i64 @IS_HASWELL(%struct.drm_i915_private* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %49 = load i32, i32* @MI_PREDICATE_RESULT_2, align 4
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %51 = call i64 @IS_HSW_GT3(%struct.drm_i915_private* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @LOWER_SLICE_ENABLED, align 4
  br label %57

55:                                               ; preds = %47
  %56 = load i32, i32* @LOWER_SLICE_DISABLED, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = call i32 @intel_uncore_write(%struct.intel_uncore* %48, i32 %49, i32 %58)
  br label %60

60:                                               ; preds = %57, %43
  %61 = load %struct.intel_gt*, %struct.intel_gt** %5, align 8
  %62 = call i32 @intel_gt_apply_workarounds(%struct.intel_gt* %61)
  %63 = load %struct.intel_gt*, %struct.intel_gt** %5, align 8
  %64 = call i32 @intel_gt_verify_workarounds(%struct.intel_gt* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.intel_gt*, %struct.intel_gt** %5, align 8
  %66 = call i32 @intel_gt_init_swizzling(%struct.intel_gt* %65)
  %67 = load %struct.intel_gt*, %struct.intel_gt** %5, align 8
  %68 = call i32 @init_unused_rings(%struct.intel_gt* %67)
  %69 = load %struct.intel_gt*, %struct.intel_gt** %5, align 8
  %70 = call i32 @i915_ppgtt_init_hw(%struct.intel_gt* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %60
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  br label %89

76:                                               ; preds = %60
  %77 = load %struct.intel_gt*, %struct.intel_gt** %5, align 8
  %78 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %77, i32 0, i32 0
  %79 = call i32 @intel_uc_init_hw(i32* %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @i915_probe_error(%struct.drm_i915_private* %83, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %89

86:                                               ; preds = %76
  %87 = load %struct.intel_gt*, %struct.intel_gt** %5, align 8
  %88 = call i32 @intel_mocs_init(%struct.intel_gt* %87)
  br label %89

89:                                               ; preds = %86, %82, %73
  %90 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %91 = load i32, i32* @FORCEWAKE_ALL, align 4
  %92 = call i32 @intel_uncore_forcewake_put(%struct.intel_uncore* %90, i32 %91)
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %89, %22
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @intel_gt_terminally_wedged(%struct.intel_gt*) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @intel_uncore_forcewake_get(%struct.intel_uncore*, i32) #1

declare dso_local i64 @HAS_EDRAM(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_uncore_rmw(%struct.intel_uncore*, i32, i32, i32) #1

declare dso_local i32 @IDIHASHMSK(i32) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_uncore_write(%struct.intel_uncore*, i32, i32) #1

declare dso_local i64 @IS_HSW_GT3(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_gt_apply_workarounds(%struct.intel_gt*) #1

declare dso_local i32 @intel_gt_verify_workarounds(%struct.intel_gt*, i8*) #1

declare dso_local i32 @intel_gt_init_swizzling(%struct.intel_gt*) #1

declare dso_local i32 @init_unused_rings(%struct.intel_gt*) #1

declare dso_local i32 @i915_ppgtt_init_hw(%struct.intel_gt*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @intel_uc_init_hw(i32*) #1

declare dso_local i32 @i915_probe_error(%struct.drm_i915_private*, i8*, i32) #1

declare dso_local i32 @intel_mocs_init(%struct.intel_gt*) #1

declare dso_local i32 @intel_uncore_forcewake_put(%struct.intel_uncore*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
