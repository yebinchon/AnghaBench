; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_gen6_enable_rps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_gen6_enable_rps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@FORCEWAKE_ALL = common dso_local global i32 0, align 4
@GEN6_RP_DOWN_TIMEOUT = common dso_local global i32 0, align 4
@GEN6_RP_IDLE_HYSTERSIS = common dso_local global i32 0, align 4
@gen6_set_rps = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @gen6_enable_rps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen6_enable_rps(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %3 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %4 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %3, i32 0, i32 0
  %5 = load i32, i32* @FORCEWAKE_ALL, align 4
  %6 = call i32 @intel_uncore_forcewake_get(i32* %4, i32 %5)
  %7 = load i32, i32* @GEN6_RP_DOWN_TIMEOUT, align 4
  %8 = call i32 @I915_WRITE(i32 %7, i32 50000)
  %9 = load i32, i32* @GEN6_RP_IDLE_HYSTERSIS, align 4
  %10 = call i32 @I915_WRITE(i32 %9, i32 10)
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %12 = load i32, i32* @gen6_set_rps, align 4
  %13 = call i32 @reset_rps(%struct.drm_i915_private* %11, i32 %12)
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %15 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %14, i32 0, i32 0
  %16 = load i32, i32* @FORCEWAKE_ALL, align 4
  %17 = call i32 @intel_uncore_forcewake_put(i32* %15, i32 %16)
  ret void
}

declare dso_local i32 @intel_uncore_forcewake_get(i32*, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @reset_rps(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_uncore_forcewake_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
