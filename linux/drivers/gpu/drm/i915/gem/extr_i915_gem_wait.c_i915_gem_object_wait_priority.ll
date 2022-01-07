; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_wait.c_i915_gem_object_wait_priority.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_wait.c_i915_gem_object_wait_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i915_sched_attr = type { i32 }
%struct.dma_fence = type { i32 }

@I915_WAIT_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_object_wait_priority(%struct.drm_i915_gem_object* %0, i32 %1, %struct.i915_sched_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_gem_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i915_sched_attr*, align 8
  %8 = alloca %struct.dma_fence*, align 8
  %9 = alloca %struct.dma_fence**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.i915_sched_attr* %2, %struct.i915_sched_attr** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @I915_WAIT_ALL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %52

17:                                               ; preds = %3
  %18 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %19 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dma_resv_get_fences_rcu(i32 %21, %struct.dma_fence** %8, i32* %10, %struct.dma_fence*** %9)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %4, align 4
  br label %68

27:                                               ; preds = %17
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %46, %27
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %28
  %33 = load %struct.dma_fence**, %struct.dma_fence*** %9, align 8
  %34 = load i32, i32* %11, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %33, i64 %35
  %37 = load %struct.dma_fence*, %struct.dma_fence** %36, align 8
  %38 = load %struct.i915_sched_attr*, %struct.i915_sched_attr** %7, align 8
  %39 = call i32 @fence_set_priority(%struct.dma_fence* %37, %struct.i915_sched_attr* %38)
  %40 = load %struct.dma_fence**, %struct.dma_fence*** %9, align 8
  %41 = load i32, i32* %11, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %40, i64 %42
  %44 = load %struct.dma_fence*, %struct.dma_fence** %43, align 8
  %45 = call i32 @dma_fence_put(%struct.dma_fence* %44)
  br label %46

46:                                               ; preds = %32
  %47 = load i32, i32* %11, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %11, align 4
  br label %28

49:                                               ; preds = %28
  %50 = load %struct.dma_fence**, %struct.dma_fence*** %9, align 8
  %51 = call i32 @kfree(%struct.dma_fence** %50)
  br label %58

52:                                               ; preds = %3
  %53 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %54 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.dma_fence* @dma_resv_get_excl_rcu(i32 %56)
  store %struct.dma_fence* %57, %struct.dma_fence** %8, align 8
  br label %58

58:                                               ; preds = %52, %49
  %59 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %60 = icmp ne %struct.dma_fence* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %63 = load %struct.i915_sched_attr*, %struct.i915_sched_attr** %7, align 8
  %64 = call i32 @fence_set_priority(%struct.dma_fence* %62, %struct.i915_sched_attr* %63)
  %65 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %66 = call i32 @dma_fence_put(%struct.dma_fence* %65)
  br label %67

67:                                               ; preds = %61, %58
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %25
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @dma_resv_get_fences_rcu(i32, %struct.dma_fence**, i32*, %struct.dma_fence***) #1

declare dso_local i32 @fence_set_priority(%struct.dma_fence*, %struct.i915_sched_attr*) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @kfree(%struct.dma_fence**) #1

declare dso_local %struct.dma_fence* @dma_resv_get_excl_rcu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
