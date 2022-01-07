; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tc.c_intel_tc_port_reset_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tc.c_intel_tc_port_reset_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Port %s: TC port mode reset (%s -> %s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_digital_port*, i32)* @intel_tc_port_reset_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_tc_port_reset_mode(%struct.intel_digital_port* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_digital_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %8 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.drm_i915_private* @to_i915(i32 %11)
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %5, align 8
  %13 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %14 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %17 = call i32 @intel_display_power_flush_work(%struct.drm_i915_private* %16)
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %19 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %20 = call i32 @intel_aux_power_domain(%struct.intel_digital_port* %19)
  %21 = call i32 @intel_display_power_is_enabled(%struct.drm_i915_private* %18, i32 %20)
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %24 = call i32 @icl_tc_phy_disconnect(%struct.intel_digital_port* %23)
  %25 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @icl_tc_phy_connect(%struct.intel_digital_port* %25, i32 %26)
  %28 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %29 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @tc_port_mode_name(i32 %31)
  %33 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %34 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @tc_port_mode_name(i32 %35)
  %37 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %32, i32 %36)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_display_power_flush_work(%struct.drm_i915_private*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @intel_display_power_is_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_aux_power_domain(%struct.intel_digital_port*) #1

declare dso_local i32 @icl_tc_phy_disconnect(%struct.intel_digital_port*) #1

declare dso_local i32 @icl_tc_phy_connect(%struct.intel_digital_port*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32) #1

declare dso_local i32 @tc_port_mode_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
