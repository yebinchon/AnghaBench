; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_bxt_disable_dc9.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_bxt_disable_dc9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Disabling DC9\0A\00", align 1
@DC_STATE_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @bxt_disable_dc9 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxt_disable_dc9(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %3 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %4 = call i32 @assert_can_disable_dc9(%struct.drm_i915_private* %3)
  %5 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %7 = load i32, i32* @DC_STATE_DISABLE, align 4
  %8 = call i32 @gen9_set_dc_state(%struct.drm_i915_private* %6, i32 %7)
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %10 = call i32 @intel_pps_unlock_regs_wa(%struct.drm_i915_private* %9)
  ret void
}

declare dso_local i32 @assert_can_disable_dc9(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @gen9_set_dc_state(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_pps_unlock_regs_wa(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
