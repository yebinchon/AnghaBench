; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_hangcheck.c_evict_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_hangcheck.c_evict_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evict_vma = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@I915_TILING_Y = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Invalid Y-tiling settings; err:%d\0A\00", align 1
@PIN_GLOBAL = common dso_local global i32 0, align 4
@PIN_MAPPABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Unable to pin vma for Y-tiled fence; err:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Unable to pin Y-tiled fence; err:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @evict_fence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evict_fence(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.evict_vma*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.evict_vma*
  store %struct.evict_vma* %7, %struct.evict_vma** %3, align 8
  %8 = load %struct.evict_vma*, %struct.evict_vma** %3, align 8
  %9 = getelementptr inbounds %struct.evict_vma, %struct.evict_vma* %8, i32 0, i32 0
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %13, align 8
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %4, align 8
  %15 = load %struct.evict_vma*, %struct.evict_vma** %3, align 8
  %16 = getelementptr inbounds %struct.evict_vma, %struct.evict_vma* %15, i32 0, i32 1
  %17 = call i32 @complete(i32* %16)
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %19 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.evict_vma*, %struct.evict_vma** %3, align 8
  %23 = getelementptr inbounds %struct.evict_vma, %struct.evict_vma* %22, i32 0, i32 0
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @I915_TILING_Y, align 4
  %28 = call i32 @i915_gem_object_set_tiling(i32 %26, i32 %27, i32 512)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %66

34:                                               ; preds = %1
  %35 = load %struct.evict_vma*, %struct.evict_vma** %3, align 8
  %36 = getelementptr inbounds %struct.evict_vma, %struct.evict_vma* %35, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = load i32, i32* @PIN_GLOBAL, align 4
  %39 = load i32, i32* @PIN_MAPPABLE, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @i915_vma_pin(%struct.TYPE_9__* %37, i32 0, i32 0, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %66

47:                                               ; preds = %34
  %48 = load %struct.evict_vma*, %struct.evict_vma** %3, align 8
  %49 = getelementptr inbounds %struct.evict_vma, %struct.evict_vma* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = call i32 @i915_vma_pin_fence(%struct.TYPE_9__* %50)
  store i32 %51, i32* %5, align 4
  %52 = load %struct.evict_vma*, %struct.evict_vma** %3, align 8
  %53 = getelementptr inbounds %struct.evict_vma, %struct.evict_vma* %52, i32 0, i32 0
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = call i32 @i915_vma_unpin(%struct.TYPE_9__* %54)
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %47
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  br label %66

61:                                               ; preds = %47
  %62 = load %struct.evict_vma*, %struct.evict_vma** %3, align 8
  %63 = getelementptr inbounds %struct.evict_vma, %struct.evict_vma* %62, i32 0, i32 0
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = call i32 @i915_vma_unpin_fence(%struct.TYPE_9__* %64)
  br label %66

66:                                               ; preds = %61, %58, %44, %31
  %67 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %68 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i915_gem_object_set_tiling(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @i915_vma_pin(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @i915_vma_pin_fence(%struct.TYPE_9__*) #1

declare dso_local i32 @i915_vma_unpin(%struct.TYPE_9__*) #1

declare dso_local i32 @i915_vma_unpin_fence(%struct.TYPE_9__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
