; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_ring_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_ring_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { %struct.TYPE_2__, %struct.drm_i915_private* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.drm_i915_private = type { i32 }

@RING_MI_MODE = common dso_local global i32 0, align 4
@MODE_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_cs*)* @ring_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ring_destroy(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca %struct.intel_engine_cs*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %2, align 8
  %4 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %5 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %4, i32 0, i32 1
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  store %struct.drm_i915_private* %6, %struct.drm_i915_private** %3, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %8 = call i32 @INTEL_GEN(%struct.drm_i915_private* %7)
  %9 = icmp sgt i32 %8, 2
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %12 = load i32, i32* @RING_MI_MODE, align 4
  %13 = call i32 @ENGINE_READ(%struct.intel_engine_cs* %11, i32 %12)
  %14 = load i32, i32* @MODE_IDLE, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br label %17

17:                                               ; preds = %10, %1
  %18 = phi i1 [ false, %1 ], [ %16, %10 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %22 = call i32 @intel_engine_cleanup_common(%struct.intel_engine_cs* %21)
  %23 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %24 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @intel_ring_unpin(i32 %26)
  %28 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %29 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @intel_ring_put(i32 %31)
  %33 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %34 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @intel_timeline_unpin(i32 %36)
  %38 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %39 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @intel_timeline_put(i32 %41)
  %43 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %44 = call i32 @kfree(%struct.intel_engine_cs* %43)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @ENGINE_READ(%struct.intel_engine_cs*, i32) #1

declare dso_local i32 @intel_engine_cleanup_common(%struct.intel_engine_cs*) #1

declare dso_local i32 @intel_ring_unpin(i32) #1

declare dso_local i32 @intel_ring_put(i32) #1

declare dso_local i32 @intel_timeline_unpin(i32) #1

declare dso_local i32 @intel_timeline_put(i32) #1

declare dso_local i32 @kfree(%struct.intel_engine_cs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
