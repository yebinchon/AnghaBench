; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_bxt_display_core_uninit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_bxt_display_core_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.i915_power_domains }
%struct.i915_power_domains = type { i32 }
%struct.i915_power_well = type { i32 }

@SKL_DISP_PW_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @bxt_display_core_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxt_display_core_uninit(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.i915_power_domains*, align 8
  %4 = alloca %struct.i915_power_well*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %6 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %5, i32 0, i32 0
  store %struct.i915_power_domains* %6, %struct.i915_power_domains** %3, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %8 = call i32 @gen9_disable_dc_states(%struct.drm_i915_private* %7)
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %10 = call i32 @gen9_dbuf_disable(%struct.drm_i915_private* %9)
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %12 = call i32 @intel_cdclk_uninit(%struct.drm_i915_private* %11)
  %13 = load %struct.i915_power_domains*, %struct.i915_power_domains** %3, align 8
  %14 = getelementptr inbounds %struct.i915_power_domains, %struct.i915_power_domains* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %17 = load i32, i32* @SKL_DISP_PW_1, align 4
  %18 = call %struct.i915_power_well* @lookup_power_well(%struct.drm_i915_private* %16, i32 %17)
  store %struct.i915_power_well* %18, %struct.i915_power_well** %4, align 8
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %20 = load %struct.i915_power_well*, %struct.i915_power_well** %4, align 8
  %21 = call i32 @intel_power_well_disable(%struct.drm_i915_private* %19, %struct.i915_power_well* %20)
  %22 = load %struct.i915_power_domains*, %struct.i915_power_domains** %3, align 8
  %23 = getelementptr inbounds %struct.i915_power_domains, %struct.i915_power_domains* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = call i32 @usleep_range(i32 10, i32 30)
  ret void
}

declare dso_local i32 @gen9_disable_dc_states(%struct.drm_i915_private*) #1

declare dso_local i32 @gen9_dbuf_disable(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_cdclk_uninit(%struct.drm_i915_private*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.i915_power_well* @lookup_power_well(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_power_well_disable(%struct.drm_i915_private*, %struct.i915_power_well*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
