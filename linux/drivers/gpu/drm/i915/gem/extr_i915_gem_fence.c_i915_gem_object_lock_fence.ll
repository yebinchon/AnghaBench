; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_fence.c_i915_gem_object_lock_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_fence.c_i915_gem_object_lock_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.drm_i915_gem_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.stub_fence = type { %struct.dma_fence, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@stub_notify = common dso_local global i32 0, align 4
@stub_fence_ops = common dso_local global i32 0, align 4
@I915_FENCE_TIMEOUT = common dso_local global i32 0, align 4
@I915_FENCE_GFP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dma_fence* @i915_gem_object_lock_fence(%struct.drm_i915_gem_object* %0) #0 {
  %2 = alloca %struct.dma_fence*, align 8
  %3 = alloca %struct.drm_i915_gem_object*, align 8
  %4 = alloca %struct.stub_fence*, align 8
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %3, align 8
  %5 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %6 = call i32 @assert_object_held(%struct.drm_i915_gem_object* %5)
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.stub_fence* @kmalloc(i32 8, i32 %7)
  store %struct.stub_fence* %8, %struct.stub_fence** %4, align 8
  %9 = load %struct.stub_fence*, %struct.stub_fence** %4, align 8
  %10 = icmp ne %struct.stub_fence* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.dma_fence* null, %struct.dma_fence** %2, align 8
  br label %49

12:                                               ; preds = %1
  %13 = load %struct.stub_fence*, %struct.stub_fence** %4, align 8
  %14 = getelementptr inbounds %struct.stub_fence, %struct.stub_fence* %13, i32 0, i32 1
  %15 = load i32, i32* @stub_notify, align 4
  %16 = call i32 @i915_sw_fence_init(%struct.TYPE_7__* %14, i32 %15)
  %17 = load %struct.stub_fence*, %struct.stub_fence** %4, align 8
  %18 = getelementptr inbounds %struct.stub_fence, %struct.stub_fence* %17, i32 0, i32 0
  %19 = load %struct.stub_fence*, %struct.stub_fence** %4, align 8
  %20 = getelementptr inbounds %struct.stub_fence, %struct.stub_fence* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = call i32 @dma_fence_init(%struct.dma_fence* %18, i32* @stub_fence_ops, i32* %22, i32 0, i32 0)
  %24 = load %struct.stub_fence*, %struct.stub_fence** %4, align 8
  %25 = getelementptr inbounds %struct.stub_fence, %struct.stub_fence* %24, i32 0, i32 1
  %26 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %27 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @I915_FENCE_TIMEOUT, align 4
  %31 = load i32, i32* @I915_FENCE_GFP, align 4
  %32 = call i64 @i915_sw_fence_await_reservation(%struct.TYPE_7__* %25, i32 %29, i32* null, i32 1, i32 %30, i32 %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %12
  br label %45

35:                                               ; preds = %12
  %36 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %37 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.stub_fence*, %struct.stub_fence** %4, align 8
  %41 = getelementptr inbounds %struct.stub_fence, %struct.stub_fence* %40, i32 0, i32 0
  %42 = call i32 @dma_resv_add_excl_fence(i32 %39, %struct.dma_fence* %41)
  %43 = load %struct.stub_fence*, %struct.stub_fence** %4, align 8
  %44 = getelementptr inbounds %struct.stub_fence, %struct.stub_fence* %43, i32 0, i32 0
  store %struct.dma_fence* %44, %struct.dma_fence** %2, align 8
  br label %49

45:                                               ; preds = %34
  %46 = load %struct.stub_fence*, %struct.stub_fence** %4, align 8
  %47 = getelementptr inbounds %struct.stub_fence, %struct.stub_fence* %46, i32 0, i32 0
  %48 = call i32 @stub_release(%struct.dma_fence* %47)
  store %struct.dma_fence* null, %struct.dma_fence** %2, align 8
  br label %49

49:                                               ; preds = %45, %35, %11
  %50 = load %struct.dma_fence*, %struct.dma_fence** %2, align 8
  ret %struct.dma_fence* %50
}

declare dso_local i32 @assert_object_held(%struct.drm_i915_gem_object*) #1

declare dso_local %struct.stub_fence* @kmalloc(i32, i32) #1

declare dso_local i32 @i915_sw_fence_init(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @dma_fence_init(%struct.dma_fence*, i32*, i32*, i32, i32) #1

declare dso_local i64 @i915_sw_fence_await_reservation(%struct.TYPE_7__*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @dma_resv_add_excl_fence(i32, %struct.dma_fence*) #1

declare dso_local i32 @stub_release(%struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
