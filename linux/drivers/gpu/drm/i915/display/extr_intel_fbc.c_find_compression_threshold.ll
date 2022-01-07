; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbc.c_find_compression_threshold.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbc.c_find_compression_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.drm_mm_node = type { i32 }

@U64_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, %struct.drm_mm_node*, i32, i32)* @find_compression_threshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_compression_threshold(%struct.drm_i915_private* %0, %struct.drm_mm_node* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.drm_mm_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %6, align 8
  store %struct.drm_mm_node* %1, %struct.drm_mm_node** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %14 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %18 = call i64 @IS_GEN9_BC(%struct.drm_i915_private* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16, %4
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %22 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %21, i32 0, i32 0
  %23 = call i64 @resource_size(i32* %22)
  %24 = sub nsw i64 %23, 8388608
  store i64 %24, i64* %12, align 8
  br label %27

25:                                               ; preds = %16
  %26 = load i64, i64* @U64_MAX, align 8
  store i64 %26, i64* %12, align 8
  br label %27

27:                                               ; preds = %25, %20
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %29 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = shl i32 %30, 1
  store i32 %31, i32* %8, align 4
  %32 = load i64, i64* %12, align 8
  %33 = call i32 @i915_gem_stolen_insert_node_in_range(%struct.drm_i915_private* %28, %struct.drm_mm_node* %29, i32 %31, i32 4096, i32 0, i64 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %5, align 4
  br label %71

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %66, %38
  %40 = load i32, i32* %10, align 4
  %41 = icmp sgt i32 %40, 4
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %49

48:                                               ; preds = %45, %39
  store i32 0, i32* %5, align 4
  br label %71

49:                                               ; preds = %45, %42
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %51 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = ashr i32 %52, 1
  store i32 %53, i32* %8, align 4
  %54 = load i64, i64* %12, align 8
  %55 = call i32 @i915_gem_stolen_insert_node_in_range(%struct.drm_i915_private* %50, %struct.drm_mm_node* %51, i32 %53, i32 4096, i32 0, i64 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %49
  %59 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %60 = call i32 @INTEL_GEN(%struct.drm_i915_private* %59)
  %61 = icmp sle i32 %60, 4
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  br label %71

63:                                               ; preds = %58, %49
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* %10, align 4
  %68 = shl i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %39

69:                                               ; preds = %63
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %69, %62, %48, %36
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN9_BC(%struct.drm_i915_private*) #1

declare dso_local i64 @resource_size(i32*) #1

declare dso_local i32 @i915_gem_stolen_insert_node_in_range(%struct.drm_i915_private*, %struct.drm_mm_node*, i32, i32, i32, i64) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
