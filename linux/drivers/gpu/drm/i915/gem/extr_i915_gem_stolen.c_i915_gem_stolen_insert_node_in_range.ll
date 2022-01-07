; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_stolen.c_i915_gem_stolen_insert_node_in_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_stolen.c_i915_gem_stolen_insert_node_in_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.drm_mm_node = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@DRM_MM_INSERT_BEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_stolen_insert_node_in_range(%struct.drm_i915_private* %0, %struct.drm_mm_node* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.drm_mm_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %8, align 8
  store %struct.drm_mm_node* %1, %struct.drm_mm_node** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %16 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = call i32 @drm_mm_initialized(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %51

23:                                               ; preds = %6
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %25 = call i32 @INTEL_GEN(%struct.drm_i915_private* %24)
  %26 = icmp sge i32 %25, 8
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %28, 4096
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 4096, i32* %12, align 4
  br label %31

31:                                               ; preds = %30, %27, %23
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %33 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %37 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load %struct.drm_mm_node*, %struct.drm_mm_node** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @DRM_MM_INSERT_BEST, align 4
  %45 = call i32 @drm_mm_insert_node_in_range(i32* %38, %struct.drm_mm_node* %39, i32 %40, i32 %41, i32 0, i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %47 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load i32, i32* %14, align 4
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %31, %20
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i32 @drm_mm_initialized(i32*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drm_mm_insert_node_in_range(i32*, %struct.drm_mm_node*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
