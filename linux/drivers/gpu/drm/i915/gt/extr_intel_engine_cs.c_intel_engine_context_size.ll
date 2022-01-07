; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_intel_engine_context_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_intel_engine_context_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@I915_GTT_PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@DEFAULT_LR_CONTEXT_RENDER_SIZE = common dso_local global i32 0, align 4
@GEN11_LR_CONTEXT_RENDER_SIZE = common dso_local global i32 0, align 4
@GEN10_LR_CONTEXT_RENDER_SIZE = common dso_local global i32 0, align 4
@GEN9_LR_CONTEXT_RENDER_SIZE = common dso_local global i32 0, align 4
@GEN8_LR_CONTEXT_RENDER_SIZE = common dso_local global i32 0, align 4
@HSW_CXT_TOTAL_SIZE = common dso_local global i32 0, align 4
@GEN7_CXT_SIZE = common dso_local global i32 0, align 4
@CXT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"gen%d CXT_SIZE = %d bytes [0x%08x]\0A\00", align 1
@GEN8_LR_CONTEXT_OTHER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_engine_context_size(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* @I915_GTT_PAGE_SIZE, align 8
  %8 = load i64, i64* @PAGE_SIZE, align 8
  %9 = icmp ne i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUILD_BUG_ON(i32 %10)
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %67 [
    i32 130, label %13
    i32 129, label %70
    i32 128, label %70
    i32 131, label %70
  ]

13:                                               ; preds = %2
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %15 = call i32 @INTEL_GEN(%struct.drm_i915_private* %14)
  switch i32 %15, label %16 [
    i32 12, label %21
    i32 11, label %21
    i32 10, label %23
    i32 9, label %25
    i32 8, label %27
    i32 7, label %29
    i32 6, label %43
    i32 5, label %51
    i32 4, label %51
    i32 3, label %66
    i32 2, label %66
    i32 1, label %66
  ]

16:                                               ; preds = %13
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %18 = call i32 @INTEL_GEN(%struct.drm_i915_private* %17)
  %19 = call i32 @MISSING_CASE(i32 %18)
  %20 = load i32, i32* @DEFAULT_LR_CONTEXT_RENDER_SIZE, align 4
  store i32 %20, i32* %3, align 4
  br label %77

21:                                               ; preds = %13, %13
  %22 = load i32, i32* @GEN11_LR_CONTEXT_RENDER_SIZE, align 4
  store i32 %22, i32* %3, align 4
  br label %77

23:                                               ; preds = %13
  %24 = load i32, i32* @GEN10_LR_CONTEXT_RENDER_SIZE, align 4
  store i32 %24, i32* %3, align 4
  br label %77

25:                                               ; preds = %13
  %26 = load i32, i32* @GEN9_LR_CONTEXT_RENDER_SIZE, align 4
  store i32 %26, i32* %3, align 4
  br label %77

27:                                               ; preds = %13
  %28 = load i32, i32* @GEN8_LR_CONTEXT_RENDER_SIZE, align 4
  store i32 %28, i32* %3, align 4
  br label %77

29:                                               ; preds = %13
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %31 = call i32 @IS_HASWELL(%struct.drm_i915_private* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @HSW_CXT_TOTAL_SIZE, align 4
  store i32 %34, i32* %3, align 4
  br label %77

35:                                               ; preds = %29
  %36 = load i32, i32* @GEN7_CXT_SIZE, align 4
  %37 = call i32 @I915_READ(i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @GEN7_CXT_TOTAL_SIZE(i32 %38)
  %40 = mul nsw i32 %39, 64
  %41 = load i64, i64* @PAGE_SIZE, align 8
  %42 = call i32 @round_up(i32 %40, i64 %41)
  store i32 %42, i32* %3, align 4
  br label %77

43:                                               ; preds = %13
  %44 = load i32, i32* @CXT_SIZE, align 4
  %45 = call i32 @I915_READ(i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @GEN6_CXT_TOTAL_SIZE(i32 %46)
  %48 = mul nsw i32 %47, 64
  %49 = load i64, i64* @PAGE_SIZE, align 8
  %50 = call i32 @round_up(i32 %48, i64 %49)
  store i32 %50, i32* %3, align 4
  br label %77

51:                                               ; preds = %13, %13
  %52 = load i32, i32* @CXT_SIZE, align 4
  %53 = call i32 @I915_READ(i32 %52)
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %56 = call i32 @INTEL_GEN(%struct.drm_i915_private* %55)
  %57 = load i32, i32* %6, align 4
  %58 = mul nsw i32 %57, 64
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 %59, 1
  %61 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %58, i32 %60)
  %62 = load i32, i32* %6, align 4
  %63 = mul nsw i32 %62, 64
  %64 = load i64, i64* @PAGE_SIZE, align 8
  %65 = call i32 @round_up(i32 %63, i64 %64)
  store i32 %65, i32* %3, align 4
  br label %77

66:                                               ; preds = %13, %13, %13
  store i32 0, i32* %3, align 4
  br label %77

67:                                               ; preds = %2
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @MISSING_CASE(i32 %68)
  br label %70

70:                                               ; preds = %2, %2, %2, %67
  %71 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %72 = call i32 @INTEL_GEN(%struct.drm_i915_private* %71)
  %73 = icmp slt i32 %72, 8
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  br label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @GEN8_LR_CONTEXT_OTHER_SIZE, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %74, %66, %51, %43, %35, %33, %27, %25, %23, %21, %16
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @MISSING_CASE(i32) #1

declare dso_local i32 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @round_up(i32, i64) #1

declare dso_local i32 @GEN7_CXT_TOTAL_SIZE(i32) #1

declare dso_local i32 @GEN6_CXT_TOTAL_SIZE(i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
