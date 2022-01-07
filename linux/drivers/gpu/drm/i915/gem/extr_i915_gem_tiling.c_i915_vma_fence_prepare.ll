; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_tiling.c_i915_vma_fence_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_tiling.c_i915_vma_fence_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_vma = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_vma*, i32, i32)* @i915_vma_fence_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_vma_fence_prepare(%struct.i915_vma* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i915_vma*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.i915_vma* %0, %struct.i915_vma** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %12 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %8, align 8
  %16 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %17 = call i32 @i915_vma_is_map_and_fenceable(%struct.i915_vma* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %52

20:                                               ; preds = %3
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %22 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %23 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @i915_gem_fence_size(%struct.drm_i915_private* %21, i32 %24, i32 %25, i32 %26)
  store i64 %27, i64* %9, align 8
  %28 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %29 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %52

35:                                               ; preds = %20
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %37 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %38 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @i915_gem_fence_alignment(%struct.drm_i915_private* %36, i32 %39, i32 %40, i32 %41)
  store i64 %42, i64* %10, align 8
  %43 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %44 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @IS_ALIGNED(i32 %46, i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %52

51:                                               ; preds = %35
  store i32 1, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %50, %34, %19
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @i915_vma_is_map_and_fenceable(%struct.i915_vma*) #1

declare dso_local i64 @i915_gem_fence_size(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i64 @i915_gem_fence_alignment(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
