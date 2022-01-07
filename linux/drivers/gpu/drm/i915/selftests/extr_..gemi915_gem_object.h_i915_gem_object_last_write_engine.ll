; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_..gemi915_gem_object.h_i915_gem_object_last_write_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_..gemi915_gem_object.h_i915_gem_object_last_write_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32 }
%struct.drm_i915_gem_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dma_fence = type { i32 }
%struct.TYPE_4__ = type { %struct.intel_engine_cs* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_engine_cs* (%struct.drm_i915_gem_object*)* @i915_gem_object_last_write_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_engine_cs* @i915_gem_object_last_write_engine(%struct.drm_i915_gem_object* %0) #0 {
  %2 = alloca %struct.drm_i915_gem_object*, align 8
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca %struct.dma_fence*, align 8
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %2, align 8
  store %struct.intel_engine_cs* null, %struct.intel_engine_cs** %3, align 8
  %5 = call i32 (...) @rcu_read_lock()
  %6 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %2, align 8
  %7 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.dma_fence* @dma_resv_get_excl_rcu(i32 %9)
  store %struct.dma_fence* %10, %struct.dma_fence** %4, align 8
  %11 = call i32 (...) @rcu_read_unlock()
  %12 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %13 = icmp ne %struct.dma_fence* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  %15 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %16 = call i64 @dma_fence_is_i915(%struct.dma_fence* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %20 = call i32 @dma_fence_is_signaled(%struct.dma_fence* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %24 = call %struct.TYPE_4__* @to_request(%struct.dma_fence* %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %25, align 8
  store %struct.intel_engine_cs* %26, %struct.intel_engine_cs** %3, align 8
  br label %27

27:                                               ; preds = %22, %18, %14, %1
  %28 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %29 = call i32 @dma_fence_put(%struct.dma_fence* %28)
  %30 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  ret %struct.intel_engine_cs* %30
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.dma_fence* @dma_resv_get_excl_rcu(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @dma_fence_is_i915(%struct.dma_fence*) #1

declare dso_local i32 @dma_fence_is_signaled(%struct.dma_fence*) #1

declare dso_local %struct.TYPE_4__* @to_request(%struct.dma_fence*) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
