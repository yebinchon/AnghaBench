; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_rcs_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_rcs_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@ECOSKPD = common dso_local global i32 0, align 4
@ECO_CONSTANT_BUFFER_SR_DISABLE = common dso_local global i32 0, align 4
@MI_MODE = common dso_local global i32 0, align 4
@VS_TIMER_DISPATCH = common dso_local global i32 0, align 4
@ASYNC_FLIP_PERF_DISABLE = common dso_local global i32 0, align 4
@GFX_MODE = common dso_local global i32 0, align 4
@GFX_TLB_INVALIDATE_EXPLICIT = common dso_local global i32 0, align 4
@GFX_MODE_GEN7 = common dso_local global i32 0, align 4
@GFX_REPLAY_MODE = common dso_local global i32 0, align 4
@CACHE_MODE_0 = common dso_local global i32 0, align 4
@CM0_STC_EVICT_DISABLE_LRA_SNB = common dso_local global i32 0, align 4
@INSTPM = common dso_local global i32 0, align 4
@INSTPM_FORCE_ORDERING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_engine_cs*)* @rcs_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcs_resume(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca %struct.intel_engine_cs*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %2, align 8
  %4 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %5 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %4, i32 0, i32 0
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  store %struct.drm_i915_private* %6, %struct.drm_i915_private** %3, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %8 = call i64 @IS_GEN(%struct.drm_i915_private* %7, i32 4)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32, i32* @ECOSKPD, align 4
  %12 = load i32, i32* @ECO_CONSTANT_BUFFER_SR_DISABLE, align 4
  %13 = call i32 @_MASKED_BIT_ENABLE(i32 %12)
  %14 = call i32 @I915_WRITE(i32 %11, i32 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %17 = call i64 @IS_GEN_RANGE(%struct.drm_i915_private* %16, i32 4, i32 6)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i32, i32* @MI_MODE, align 4
  %21 = load i32, i32* @VS_TIMER_DISPATCH, align 4
  %22 = call i32 @_MASKED_BIT_ENABLE(i32 %21)
  %23 = call i32 @I915_WRITE(i32 %20, i32 %22)
  br label %24

24:                                               ; preds = %19, %15
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %26 = call i64 @IS_GEN_RANGE(%struct.drm_i915_private* %25, i32 6, i32 7)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i32, i32* @MI_MODE, align 4
  %30 = load i32, i32* @ASYNC_FLIP_PERF_DISABLE, align 4
  %31 = call i32 @_MASKED_BIT_ENABLE(i32 %30)
  %32 = call i32 @I915_WRITE(i32 %29, i32 %31)
  br label %33

33:                                               ; preds = %28, %24
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %35 = call i64 @IS_GEN(%struct.drm_i915_private* %34, i32 6)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32, i32* @GFX_MODE, align 4
  %39 = load i32, i32* @GFX_TLB_INVALIDATE_EXPLICIT, align 4
  %40 = call i32 @_MASKED_BIT_ENABLE(i32 %39)
  %41 = call i32 @I915_WRITE(i32 %38, i32 %40)
  br label %42

42:                                               ; preds = %37, %33
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %44 = call i64 @IS_GEN(%struct.drm_i915_private* %43, i32 7)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load i32, i32* @GFX_MODE_GEN7, align 4
  %48 = load i32, i32* @GFX_TLB_INVALIDATE_EXPLICIT, align 4
  %49 = call i32 @_MASKED_BIT_ENABLE(i32 %48)
  %50 = load i32, i32* @GFX_REPLAY_MODE, align 4
  %51 = call i32 @_MASKED_BIT_ENABLE(i32 %50)
  %52 = or i32 %49, %51
  %53 = call i32 @I915_WRITE(i32 %47, i32 %52)
  br label %54

54:                                               ; preds = %46, %42
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %56 = call i64 @IS_GEN(%struct.drm_i915_private* %55, i32 6)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i32, i32* @CACHE_MODE_0, align 4
  %60 = load i32, i32* @CM0_STC_EVICT_DISABLE_LRA_SNB, align 4
  %61 = call i32 @_MASKED_BIT_DISABLE(i32 %60)
  %62 = call i32 @I915_WRITE(i32 %59, i32 %61)
  br label %63

63:                                               ; preds = %58, %54
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %65 = call i64 @IS_GEN_RANGE(%struct.drm_i915_private* %64, i32 6, i32 7)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i32, i32* @INSTPM, align 4
  %69 = load i32, i32* @INSTPM_FORCE_ORDERING, align 4
  %70 = call i32 @_MASKED_BIT_ENABLE(i32 %69)
  %71 = call i32 @I915_WRITE(i32 %68, i32 %70)
  br label %72

72:                                               ; preds = %67, %63
  %73 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %74 = call i32 @xcs_resume(%struct.intel_engine_cs* %73)
  ret i32 %74
}

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @_MASKED_BIT_ENABLE(i32) #1

declare dso_local i64 @IS_GEN_RANGE(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @_MASKED_BIT_DISABLE(i32) #1

declare dso_local i32 @xcs_resume(%struct.intel_engine_cs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
