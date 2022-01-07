; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_request.c_recursive_batch_resolve.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_request.c_recursive_batch_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_vma = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@I915_MAP_WC = common dso_local global i32 0, align 4
@MI_BATCH_BUFFER_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_vma*)* @recursive_batch_resolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recursive_batch_resolve(%struct.i915_vma* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i915_vma*, align 8
  %4 = alloca i32*, align 8
  store %struct.i915_vma* %0, %struct.i915_vma** %3, align 8
  %5 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %6 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @I915_MAP_WC, align 4
  %9 = call i32* @i915_gem_object_pin_map(i32 %7, i32 %8)
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i64 @IS_ERR(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @PTR_ERR(i32* %14)
  store i32 %15, i32* %2, align 4
  br label %29

16:                                               ; preds = %1
  %17 = load i32, i32* @MI_BATCH_BUFFER_END, align 4
  %18 = load i32*, i32** %4, align 8
  store i32 %17, i32* %18, align 4
  %19 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %20 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @intel_gt_chipset_flush(i32 %23)
  %25 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  %26 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @i915_gem_object_unpin_map(i32 %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %16, %13
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32* @i915_gem_object_pin_map(i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @intel_gt_chipset_flush(i32) #1

declare dso_local i32 @i915_gem_object_unpin_map(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
