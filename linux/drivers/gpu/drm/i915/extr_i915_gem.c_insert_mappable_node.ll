; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem.c_insert_mappable_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem.c_insert_mappable_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_ggtt = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_mm_node = type { i32 }

@I915_COLOR_UNEVICTABLE = common dso_local global i32 0, align 4
@DRM_MM_INSERT_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_ggtt*, %struct.drm_mm_node*, i32)* @insert_mappable_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_mappable_node(%struct.i915_ggtt* %0, %struct.drm_mm_node* %1, i32 %2) #0 {
  %4 = alloca %struct.i915_ggtt*, align 8
  %5 = alloca %struct.drm_mm_node*, align 8
  %6 = alloca i32, align 4
  store %struct.i915_ggtt* %0, %struct.i915_ggtt** %4, align 8
  store %struct.drm_mm_node* %1, %struct.drm_mm_node** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %8 = call i32 @memset(%struct.drm_mm_node* %7, i32 0, i32 4)
  %9 = load %struct.i915_ggtt*, %struct.i915_ggtt** %4, align 8
  %10 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @I915_COLOR_UNEVICTABLE, align 4
  %15 = load %struct.i915_ggtt*, %struct.i915_ggtt** %4, align 8
  %16 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DRM_MM_INSERT_LOW, align 4
  %19 = call i32 @drm_mm_insert_node_in_range(i32* %11, %struct.drm_mm_node* %12, i32 %13, i32 0, i32 %14, i32 0, i32 %17, i32 %18)
  ret i32 %19
}

declare dso_local i32 @memset(%struct.drm_mm_node*, i32, i32) #1

declare dso_local i32 @drm_mm_insert_node_in_range(i32*, %struct.drm_mm_node*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
