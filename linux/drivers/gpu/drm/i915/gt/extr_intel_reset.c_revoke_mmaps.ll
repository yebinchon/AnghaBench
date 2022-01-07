; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_reset.c_revoke_mmaps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_reset.c_revoke_mmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gt = type { %struct.TYPE_18__*, %struct.TYPE_11__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.drm_vma_offset_node = type { i32 }
%struct.i915_vma = type { i32, %struct.TYPE_15__, %struct.TYPE_13__*, %struct.TYPE_10__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.drm_vma_offset_node }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_gt*)* @revoke_mmaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @revoke_mmaps(%struct.intel_gt* %0) #0 {
  %2 = alloca %struct.intel_gt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_vma_offset_node*, align 8
  %5 = alloca %struct.i915_vma*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_gt* %0, %struct.intel_gt** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %79, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %10 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %9, i32 0, i32 1
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %8, %13
  br i1 %14, label %15, label %82

15:                                               ; preds = %7
  %16 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %17 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %16, i32 0, i32 1
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.i915_vma* @READ_ONCE(i32 %25)
  store %struct.i915_vma* %26, %struct.i915_vma** %5, align 8
  %27 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %28 = icmp ne %struct.i915_vma* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %15
  br label %79

30:                                               ; preds = %15
  %31 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %32 = call i32 @i915_vma_has_userfault(%struct.i915_vma* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  br label %79

35:                                               ; preds = %30
  %36 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %37 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %36, i32 0, i32 3
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %40 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %39, i32 0, i32 1
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i64 %45
  %47 = icmp ne %struct.TYPE_10__* %38, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @GEM_BUG_ON(i32 %48)
  %50 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %51 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %50, i32 0, i32 2
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  store %struct.drm_vma_offset_node* %54, %struct.drm_vma_offset_node** %4, align 8
  %55 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %56 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @PAGE_SHIFT, align 4
  %61 = shl i32 %59, %60
  store i32 %61, i32* %6, align 4
  %62 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %63 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %62, i32 0, i32 0
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.drm_vma_offset_node*, %struct.drm_vma_offset_node** %4, align 8
  %71 = call i64 @drm_vma_node_offset_addr(%struct.drm_vma_offset_node* %70)
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %71, %73
  %75 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %76 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @unmap_mapping_range(i32 %69, i64 %74, i32 %77, i32 1)
  br label %79

79:                                               ; preds = %35, %34, %29
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %3, align 4
  br label %7

82:                                               ; preds = %7
  ret void
}

declare dso_local %struct.i915_vma* @READ_ONCE(i32) #1

declare dso_local i32 @i915_vma_has_userfault(%struct.i915_vma*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @unmap_mapping_range(i32, i64, i32, i32) #1

declare dso_local i64 @drm_vma_node_offset_addr(%struct.drm_vma_offset_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
