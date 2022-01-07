; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_tiling.c_i915_gem_fence_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_tiling.c_i915_gem_fence_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@I915_TILING_NONE = common dso_local global i32 0, align 4
@I965_FENCE_PAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_fence_size(%struct.drm_i915_private* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @GEM_BUG_ON(i32 %14)
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @I915_TILING_NONE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %5, align 4
  br label %61

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @GEM_BUG_ON(i32 %25)
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %28 = call i32 @INTEL_GEN(%struct.drm_i915_private* %27)
  %29 = icmp sge i32 %28, 4
  br i1 %29, label %30, label %45

30:                                               ; preds = %21
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @i915_gem_tile_height(i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = mul i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @I965_FENCE_PAGE, align 4
  %37 = call i32 @IS_ALIGNED(i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 @GEM_BUG_ON(i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @roundup(i32 %42, i32 %43)
  store i32 %44, i32* %5, align 4
  br label %61

45:                                               ; preds = %21
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %47 = call i64 @IS_GEN(%struct.drm_i915_private* %46, i32 3)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 1048576, i32* %10, align 4
  br label %51

50:                                               ; preds = %45
  store i32 524288, i32* %10, align 4
  br label %51

51:                                               ; preds = %50, %49
  br label %52

52:                                               ; preds = %56, %51
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* %10, align 4
  %58 = shl i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %52

59:                                               ; preds = %52
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %59, %30, %19
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_gem_tile_height(i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
