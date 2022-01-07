; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_flush_cs_tlb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_flush_cs_tlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32, i32, i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@RING_MI_MODE = common dso_local global i32 0, align 4
@MODE_IDLE = common dso_local global i32 0, align 4
@INSTPM_TLB_INVALIDATE = common dso_local global i32 0, align 4
@INSTPM_SYNC_FLUSH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"%s: wait for SyncFlush to complete for TLB invalidation timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_cs*)* @flush_cs_tlb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_cs_tlb(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca %struct.intel_engine_cs*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %2, align 8
  %4 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %5 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %4, i32 0, i32 3
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  store %struct.drm_i915_private* %6, %struct.drm_i915_private** %3, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %8 = call i32 @IS_GEN_RANGE(%struct.drm_i915_private* %7, i32 6, i32 7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %41

11:                                               ; preds = %1
  %12 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %13 = load i32, i32* @RING_MI_MODE, align 4
  %14 = call i32 @ENGINE_READ(%struct.intel_engine_cs* %12, i32 %13)
  %15 = load i32, i32* @MODE_IDLE, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %21 = load i32, i32* @INSTPM_TLB_INVALIDATE, align 4
  %22 = load i32, i32* @INSTPM_SYNC_FLUSH, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @_MASKED_BIT_ENABLE(i32 %23)
  %25 = call i32 @ENGINE_WRITE(%struct.intel_engine_cs* %20, i32 (i32)* @RING_INSTPM, i32 %24)
  %26 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %27 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %30 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @RING_INSTPM(i32 %31)
  %33 = load i32, i32* @INSTPM_SYNC_FLUSH, align 4
  %34 = call i64 @intel_wait_for_register(i32 %28, i32 %32, i32 %33, i32 0, i32 1000)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %11
  %37 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %38 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %10, %36, %11
  ret void
}

declare dso_local i32 @IS_GEN_RANGE(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ENGINE_READ(%struct.intel_engine_cs*, i32) #1

declare dso_local i32 @ENGINE_WRITE(%struct.intel_engine_cs*, i32 (i32)*, i32) #1

declare dso_local i32 @RING_INSTPM(i32) #1

declare dso_local i32 @_MASKED_BIT_ENABLE(i32) #1

declare dso_local i64 @intel_wait_for_register(i32, i32, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
