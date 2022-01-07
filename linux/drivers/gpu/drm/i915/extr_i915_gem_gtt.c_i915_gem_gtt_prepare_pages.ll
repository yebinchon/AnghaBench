; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_i915_gem_gtt_prepare_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_i915_gem_gtt_prepare_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { %struct.TYPE_5__, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { %struct.sg_table* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.sg_table = type { i32, i32 }

@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_ATTR_NO_WARN = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@I915_SHRINK_BOUND = common dso_local global i32 0, align 4
@I915_SHRINK_UNBOUND = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_gtt_prepare_pages(%struct.drm_i915_gem_object* %0, %struct.sg_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_gem_object*, align 8
  %5 = alloca %struct.sg_table*, align 8
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %4, align 8
  store %struct.sg_table* %1, %struct.sg_table** %5, align 8
  br label %6

6:                                                ; preds = %34, %2
  %7 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %8 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.sg_table*, %struct.sg_table** %5, align 8
  %15 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sg_table*, %struct.sg_table** %5, align 8
  %18 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %21 = load i32, i32* @DMA_ATTR_NO_WARN, align 4
  %22 = call i64 @dma_map_sg_attrs(i32* %13, i32 %16, i32 %19, i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %54

25:                                               ; preds = %6
  %26 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %27 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.sg_table*, %struct.sg_table** %28, align 8
  %30 = load %struct.sg_table*, %struct.sg_table** %5, align 8
  %31 = icmp eq %struct.sg_table* %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @GEM_BUG_ON(i32 %32)
  br label %34

34:                                               ; preds = %25
  %35 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %36 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = call i32 @to_i915(%struct.TYPE_8__* %38)
  %40 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %41 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @PAGE_SHIFT, align 4
  %45 = ashr i32 %43, %44
  %46 = load i32, i32* @I915_SHRINK_BOUND, align 4
  %47 = load i32, i32* @I915_SHRINK_UNBOUND, align 4
  %48 = or i32 %46, %47
  %49 = call i64 @i915_gem_shrink(i32 %39, i32 %45, i32* null, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %6, label %51

51:                                               ; preds = %34
  %52 = load i32, i32* @ENOSPC, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %51, %24
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @dma_map_sg_attrs(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i64 @i915_gem_shrink(i32, i32, i32*, i32) #1

declare dso_local i32 @to_i915(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
