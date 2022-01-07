; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_gen8_enable_rps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_gen8_enable_rps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.intel_rps }
%struct.intel_rps = type { i32, i32, i32 }

@FORCEWAKE_ALL = common dso_local global i32 0, align 4
@GEN6_RPNSWREQ = common dso_local global i32 0, align 4
@GEN6_RC_VIDEO_FREQ = common dso_local global i32 0, align 4
@GEN6_RP_DOWN_TIMEOUT = common dso_local global i32 0, align 4
@GEN6_RP_INTERRUPT_LIMITS = common dso_local global i32 0, align 4
@GEN6_RP_UP_THRESHOLD = common dso_local global i32 0, align 4
@GEN6_RP_DOWN_THRESHOLD = common dso_local global i32 0, align 4
@GEN6_RP_UP_EI = common dso_local global i32 0, align 4
@GEN6_RP_DOWN_EI = common dso_local global i32 0, align 4
@GEN6_RP_IDLE_HYSTERSIS = common dso_local global i32 0, align 4
@GEN6_RP_CONTROL = common dso_local global i32 0, align 4
@GEN6_RP_MEDIA_TURBO = common dso_local global i32 0, align 4
@GEN6_RP_MEDIA_HW_NORMAL_MODE = common dso_local global i32 0, align 4
@GEN6_RP_MEDIA_IS_GFX = common dso_local global i32 0, align 4
@GEN6_RP_ENABLE = common dso_local global i32 0, align 4
@GEN6_RP_UP_BUSY_AVG = common dso_local global i32 0, align 4
@GEN6_RP_DOWN_IDLE_AVG = common dso_local global i32 0, align 4
@gen6_set_rps = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @gen8_enable_rps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen8_enable_rps(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_rps*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %5 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store %struct.intel_rps* %6, %struct.intel_rps** %3, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %8 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %7, i32 0, i32 0
  %9 = load i32, i32* @FORCEWAKE_ALL, align 4
  %10 = call i32 @intel_uncore_forcewake_get(i32* %8, i32 %9)
  %11 = load i32, i32* @GEN6_RPNSWREQ, align 4
  %12 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %13 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @HSW_FREQUENCY(i32 %14)
  %16 = call i32 @I915_WRITE(i32 %11, i32 %15)
  %17 = load i32, i32* @GEN6_RC_VIDEO_FREQ, align 4
  %18 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %19 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @HSW_FREQUENCY(i32 %20)
  %22 = call i32 @I915_WRITE(i32 %17, i32 %21)
  %23 = load i32, i32* @GEN6_RP_DOWN_TIMEOUT, align 4
  %24 = call i32 @I915_WRITE(i32 %23, i32 781250)
  %25 = load i32, i32* @GEN6_RP_INTERRUPT_LIMITS, align 4
  %26 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %27 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 24
  %30 = load %struct.intel_rps*, %struct.intel_rps** %3, align 8
  %31 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 16
  %34 = or i32 %29, %33
  %35 = call i32 @I915_WRITE(i32 %25, i32 %34)
  %36 = load i32, i32* @GEN6_RP_UP_THRESHOLD, align 4
  %37 = call i32 @I915_WRITE(i32 %36, i32 59375)
  %38 = load i32, i32* @GEN6_RP_DOWN_THRESHOLD, align 4
  %39 = call i32 @I915_WRITE(i32 %38, i32 244531)
  %40 = load i32, i32* @GEN6_RP_UP_EI, align 4
  %41 = call i32 @I915_WRITE(i32 %40, i32 66000)
  %42 = load i32, i32* @GEN6_RP_DOWN_EI, align 4
  %43 = call i32 @I915_WRITE(i32 %42, i32 350000)
  %44 = load i32, i32* @GEN6_RP_IDLE_HYSTERSIS, align 4
  %45 = call i32 @I915_WRITE(i32 %44, i32 10)
  %46 = load i32, i32* @GEN6_RP_CONTROL, align 4
  %47 = load i32, i32* @GEN6_RP_MEDIA_TURBO, align 4
  %48 = load i32, i32* @GEN6_RP_MEDIA_HW_NORMAL_MODE, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @GEN6_RP_MEDIA_IS_GFX, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @GEN6_RP_ENABLE, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @GEN6_RP_UP_BUSY_AVG, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @GEN6_RP_DOWN_IDLE_AVG, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @I915_WRITE(i32 %46, i32 %57)
  %59 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %60 = load i32, i32* @gen6_set_rps, align 4
  %61 = call i32 @reset_rps(%struct.drm_i915_private* %59, i32 %60)
  %62 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %63 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %62, i32 0, i32 0
  %64 = load i32, i32* @FORCEWAKE_ALL, align 4
  %65 = call i32 @intel_uncore_forcewake_put(i32* %63, i32 %64)
  ret void
}

declare dso_local i32 @intel_uncore_forcewake_get(i32*, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @HSW_FREQUENCY(i32) #1

declare dso_local i32 @reset_rps(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_uncore_forcewake_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
