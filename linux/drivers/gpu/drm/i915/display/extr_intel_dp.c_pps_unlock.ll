; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_pps_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_pps_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32 }
%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dp*, i32)* @pps_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pps_unlock(%struct.intel_dp* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_dp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_dp* %0, %struct.intel_dp** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %7 = call %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp* %6)
  store %struct.drm_i915_private* %7, %struct.drm_i915_private** %5, align 8
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 0
  %10 = call i32 @mutex_unlock(i32* %9)
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %12 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %13 = call i32 @dp_to_dig_port(%struct.intel_dp* %12)
  %14 = call i32 @intel_aux_power_domain(i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @intel_display_power_put(%struct.drm_i915_private* %11, i32 %14, i32 %15)
  ret i32 0
}

declare dso_local %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @intel_display_power_put(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @intel_aux_power_domain(i32) #1

declare dso_local i32 @dp_to_dig_port(%struct.intel_dp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
