; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_stop_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_stop_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32, i32, i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@STOP_RING = common dso_local global i32 0, align 4
@MODE_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%s : timed out trying to stop ring\0A\00", align 1
@HEAD_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_engine_cs*)* @stop_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stop_ring(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %3, align 8
  %5 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %6 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %5, i32 0, i32 3
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  store %struct.drm_i915_private* %7, %struct.drm_i915_private** %4, align 8
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %9 = call i32 @INTEL_GEN(%struct.drm_i915_private* %8)
  %10 = icmp sgt i32 %9, 2
  br i1 %10, label %11, label %40

11:                                               ; preds = %1
  %12 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %13 = load i32, i32* @STOP_RING, align 4
  %14 = call i32 @_MASKED_BIT_ENABLE(i32 %13)
  %15 = call i32 @ENGINE_WRITE(%struct.intel_engine_cs* %12, i32 (i32)* @RING_MI_MODE, i32 %14)
  %16 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %17 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %20 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @RING_MI_MODE(i32 %21)
  %23 = load i32, i32* @MODE_IDLE, align 4
  %24 = load i32, i32* @MODE_IDLE, align 4
  %25 = call i64 @intel_wait_for_register(i32 %18, i32 %22, i32 %23, i32 %24, i32 1000)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %11
  %28 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %29 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %33 = call i32 @ENGINE_READ(%struct.intel_engine_cs* %32, i32 (i32)* @RING_HEAD)
  %34 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %35 = call i32 @ENGINE_READ(%struct.intel_engine_cs* %34, i32 (i32)* @RING_TAIL)
  %36 = icmp ne i32 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %57

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %11
  br label %40

40:                                               ; preds = %39, %1
  %41 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %42 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %43 = call i32 @ENGINE_READ(%struct.intel_engine_cs* %42, i32 (i32)* @RING_TAIL)
  %44 = call i32 @ENGINE_WRITE(%struct.intel_engine_cs* %41, i32 (i32)* @RING_HEAD, i32 %43)
  %45 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %46 = call i32 @ENGINE_WRITE(%struct.intel_engine_cs* %45, i32 (i32)* @RING_HEAD, i32 0)
  %47 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %48 = call i32 @ENGINE_WRITE(%struct.intel_engine_cs* %47, i32 (i32)* @RING_TAIL, i32 0)
  %49 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %50 = call i32 @ENGINE_WRITE(%struct.intel_engine_cs* %49, i32 (i32)* @RING_CTL, i32 0)
  %51 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %52 = call i32 @ENGINE_READ(%struct.intel_engine_cs* %51, i32 (i32)* @RING_HEAD)
  %53 = load i32, i32* @HEAD_ADDR, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %40, %37
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @ENGINE_WRITE(%struct.intel_engine_cs*, i32 (i32)*, i32) #1

declare dso_local i32 @RING_MI_MODE(i32) #1

declare dso_local i32 @_MASKED_BIT_ENABLE(i32) #1

declare dso_local i64 @intel_wait_for_register(i32, i32, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @ENGINE_READ(%struct.intel_engine_cs*, i32 (i32)*) #1

declare dso_local i32 @RING_HEAD(i32) #1

declare dso_local i32 @RING_TAIL(i32) #1

declare dso_local i32 @RING_CTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
