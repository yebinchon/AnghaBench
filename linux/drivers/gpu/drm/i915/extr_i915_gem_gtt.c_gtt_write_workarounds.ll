; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_gtt_write_workarounds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_gtt_write_workarounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gt = type { %struct.intel_uncore*, %struct.drm_i915_private* }
%struct.intel_uncore = type { i32 }
%struct.drm_i915_private = type { i32 }

@GEN8_L3_LRA_1_GPGPU = common dso_local global i32 0, align 4
@GEN8_L3_LRA_1_GPGPU_DEFAULT_VALUE_BDW = common dso_local global i32 0, align 4
@GEN8_L3_LRA_1_GPGPU_DEFAULT_VALUE_CHV = common dso_local global i32 0, align 4
@GEN9_L3_LRA_1_GPGPU_DEFAULT_VALUE_BXT = common dso_local global i32 0, align 4
@GEN9_L3_LRA_1_GPGPU_DEFAULT_VALUE_SKL = common dso_local global i32 0, align 4
@I915_GTT_PAGE_SIZE_64K = common dso_local global i32 0, align 4
@GEN8_GAMW_ECO_DEV_RW_IA = common dso_local global i32 0, align 4
@GAMW_ECO_ENABLE_64K_IPS_FIELD = common dso_local global i32 0, align 4
@I915_GTT_PAGE_SIZE_2M = common dso_local global i32 0, align 4
@HSW_GTT_CACHE_EN = common dso_local global i32 0, align 4
@GTT_CACHE_EN_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_gt*)* @gtt_write_workarounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gtt_write_workarounds(%struct.intel_gt* %0) #0 {
  %2 = alloca %struct.intel_gt*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_uncore*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_gt* %0, %struct.intel_gt** %2, align 8
  %6 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %7 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %6, i32 0, i32 1
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %3, align 8
  %9 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %10 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %9, i32 0, i32 0
  %11 = load %struct.intel_uncore*, %struct.intel_uncore** %10, align 8
  store %struct.intel_uncore* %11, %struct.intel_uncore** %4, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %13 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %17 = load i32, i32* @GEN8_L3_LRA_1_GPGPU, align 4
  %18 = load i32, i32* @GEN8_L3_LRA_1_GPGPU_DEFAULT_VALUE_BDW, align 4
  %19 = call i32 @intel_uncore_write(%struct.intel_uncore* %16, i32 %17, i32 %18)
  br label %50

20:                                               ; preds = %1
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %22 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %26 = load i32, i32* @GEN8_L3_LRA_1_GPGPU, align 4
  %27 = load i32, i32* @GEN8_L3_LRA_1_GPGPU_DEFAULT_VALUE_CHV, align 4
  %28 = call i32 @intel_uncore_write(%struct.intel_uncore* %25, i32 %26, i32 %27)
  br label %49

29:                                               ; preds = %20
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %31 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %35 = load i32, i32* @GEN8_L3_LRA_1_GPGPU, align 4
  %36 = load i32, i32* @GEN9_L3_LRA_1_GPGPU_DEFAULT_VALUE_BXT, align 4
  %37 = call i32 @intel_uncore_write(%struct.intel_uncore* %34, i32 %35, i32 %36)
  br label %48

38:                                               ; preds = %29
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %40 = call i32 @INTEL_GEN(%struct.drm_i915_private* %39)
  %41 = icmp sge i32 %40, 9
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %44 = load i32, i32* @GEN8_L3_LRA_1_GPGPU, align 4
  %45 = load i32, i32* @GEN9_L3_LRA_1_GPGPU_DEFAULT_VALUE_SKL, align 4
  %46 = call i32 @intel_uncore_write(%struct.intel_uncore* %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %38
  br label %48

48:                                               ; preds = %47, %33
  br label %49

49:                                               ; preds = %48, %24
  br label %50

50:                                               ; preds = %49, %15
  %51 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %52 = load i32, i32* @I915_GTT_PAGE_SIZE_64K, align 4
  %53 = call i64 @HAS_PAGE_SIZES(%struct.drm_i915_private* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %57 = call i32 @INTEL_GEN(%struct.drm_i915_private* %56)
  %58 = icmp sle i32 %57, 10
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %61 = load i32, i32* @GEN8_GAMW_ECO_DEV_RW_IA, align 4
  %62 = load i32, i32* @GAMW_ECO_ENABLE_64K_IPS_FIELD, align 4
  %63 = call i32 @intel_uncore_rmw(%struct.intel_uncore* %60, i32 %61, i32 0, i32 %62)
  br label %64

64:                                               ; preds = %59, %55, %50
  %65 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %66 = call i64 @IS_GEN_RANGE(%struct.drm_i915_private* %65, i32 8, i32 11)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %96

68:                                               ; preds = %64
  store i32 1, i32* %5, align 4
  %69 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %70 = load i32, i32* @I915_GTT_PAGE_SIZE_2M, align 4
  %71 = call i64 @HAS_PAGE_SIZES(%struct.drm_i915_private* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %68
  %75 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %76 = load i32, i32* @HSW_GTT_CACHE_EN, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @GTT_CACHE_EN_ALL, align 4
  br label %82

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81, %79
  %83 = phi i32 [ %80, %79 ], [ 0, %81 ]
  %84 = call i32 @intel_uncore_write(%struct.intel_uncore* %75, i32 %76, i32 %83)
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %89 = load i32, i32* @HSW_GTT_CACHE_EN, align 4
  %90 = call i64 @intel_uncore_read(%struct.intel_uncore* %88, i32 %89)
  %91 = icmp eq i64 %90, 0
  br label %92

92:                                               ; preds = %87, %82
  %93 = phi i1 [ false, %82 ], [ %91, %87 ]
  %94 = zext i1 %93 to i32
  %95 = call i32 @WARN_ON_ONCE(i32 %94)
  br label %96

96:                                               ; preds = %92, %64
  ret void
}

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_uncore_write(%struct.intel_uncore*, i32, i32) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @HAS_PAGE_SIZES(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_uncore_rmw(%struct.intel_uncore*, i32, i32, i32) #1

declare dso_local i64 @IS_GEN_RANGE(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @intel_uncore_read(%struct.intel_uncore*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
