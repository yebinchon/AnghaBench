; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_pd_vma_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_pd_vma_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_vma = type { i32, i32, %struct.TYPE_10__*, i32, i32, i32, %struct.TYPE_9__, i32, %struct.gen6_ppgtt*, i32*, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.gen6_ppgtt = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.drm_i915_private* }
%struct.TYPE_6__ = type { %struct.i915_ggtt* }
%struct.i915_ggtt = type { %struct.TYPE_10__ }
%struct.drm_i915_private = type { i32 }

@I915_GTT_PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pd_vma_ops = common dso_local global i32 0, align 4
@I915_VMA_GGTT = common dso_local global i32 0, align 4
@I915_GGTT_VIEW_ROTATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i915_vma* (%struct.gen6_ppgtt*, i32)* @pd_vma_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i915_vma* @pd_vma_create(%struct.gen6_ppgtt* %0, i32 %1) #0 {
  %3 = alloca %struct.i915_vma*, align 8
  %4 = alloca %struct.gen6_ppgtt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.i915_ggtt*, align 8
  %8 = alloca %struct.i915_vma*, align 8
  store %struct.gen6_ppgtt* %0, %struct.gen6_ppgtt** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.gen6_ppgtt*, %struct.gen6_ppgtt** %4, align 8
  %10 = getelementptr inbounds %struct.gen6_ppgtt, %struct.gen6_ppgtt* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %6, align 8
  %14 = load %struct.gen6_ppgtt*, %struct.gen6_ppgtt** %4, align 8
  %15 = getelementptr inbounds %struct.gen6_ppgtt, %struct.gen6_ppgtt* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.i915_ggtt*, %struct.i915_ggtt** %19, align 8
  store %struct.i915_ggtt* %20, %struct.i915_ggtt** %7, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @I915_GTT_PAGE_SIZE, align 4
  %23 = call i32 @IS_ALIGNED(i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @GEM_BUG_ON(i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.i915_ggtt*, %struct.i915_ggtt** %7, align 8
  %30 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %28, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @GEM_BUG_ON(i32 %34)
  %36 = call %struct.i915_vma* (...) @i915_vma_alloc()
  store %struct.i915_vma* %36, %struct.i915_vma** %8, align 8
  %37 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %38 = icmp ne %struct.i915_vma* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %2
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  %42 = call %struct.i915_vma* @ERR_PTR(i32 %41)
  store %struct.i915_vma* %42, %struct.i915_vma** %3, align 8
  br label %94

43:                                               ; preds = %2
  %44 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %45 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %46 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %45, i32 0, i32 10
  %47 = call i32 @i915_active_init(%struct.drm_i915_private* %44, i32* %46, i32* null, i32* null)
  %48 = load %struct.i915_ggtt*, %struct.i915_ggtt** %7, align 8
  %49 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %48, i32 0, i32 0
  %50 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %51 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %50, i32 0, i32 2
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** %51, align 8
  %52 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %53 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %52, i32 0, i32 9
  store i32* @pd_vma_ops, i32** %53, align 8
  %54 = load %struct.gen6_ppgtt*, %struct.gen6_ppgtt** %4, align 8
  %55 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %56 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %55, i32 0, i32 8
  store %struct.gen6_ppgtt* %54, %struct.gen6_ppgtt** %56, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %59 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %62 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @I915_VMA_GGTT, align 4
  %64 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %65 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %64, i32 0, i32 7
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @I915_GGTT_VIEW_ROTATED, align 4
  %67 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %68 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 4
  %70 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %71 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %70, i32 0, i32 5
  %72 = call i32 @INIT_LIST_HEAD(i32* %71)
  %73 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %74 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %73, i32 0, i32 4
  %75 = call i32 @INIT_LIST_HEAD(i32* %74)
  %76 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %77 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %76, i32 0, i32 2
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = call i32 @mutex_lock(i32* %79)
  %81 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %82 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %81, i32 0, i32 3
  %83 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %84 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %83, i32 0, i32 2
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 2
  %87 = call i32 @list_add(i32* %82, i32* %86)
  %88 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %89 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %88, i32 0, i32 2
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  store %struct.i915_vma* %93, %struct.i915_vma** %3, align 8
  br label %94

94:                                               ; preds = %43, %39
  %95 = load %struct.i915_vma*, %struct.i915_vma** %3, align 8
  ret %struct.i915_vma* %95
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local %struct.i915_vma* @i915_vma_alloc(...) #1

declare dso_local %struct.i915_vma* @ERR_PTR(i32) #1

declare dso_local i32 @i915_active_init(%struct.drm_i915_private*, i32*, i32*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
