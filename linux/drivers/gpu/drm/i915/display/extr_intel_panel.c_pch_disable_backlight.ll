; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_pch_disable_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_pch_disable_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector_state = type { i32 }
%struct.intel_connector = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@BLC_PWM_CPU_CTL2 = common dso_local global i32 0, align 4
@BLM_PWM_ENABLE = common dso_local global i32 0, align 4
@BLC_PWM_PCH_CTL1 = common dso_local global i32 0, align 4
@BLM_PCH_PWM_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector_state*)* @pch_disable_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_disable_backlight(%struct.drm_connector_state* %0) #0 {
  %2 = alloca %struct.drm_connector_state*, align 8
  %3 = alloca %struct.intel_connector*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_connector_state* %0, %struct.drm_connector_state** %2, align 8
  %6 = load %struct.drm_connector_state*, %struct.drm_connector_state** %2, align 8
  %7 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.intel_connector* @to_intel_connector(i32 %8)
  store %struct.intel_connector* %9, %struct.intel_connector** %3, align 8
  %10 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %11 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.drm_i915_private* @to_i915(i32 %13)
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %4, align 8
  %15 = load %struct.drm_connector_state*, %struct.drm_connector_state** %2, align 8
  %16 = call i32 @intel_panel_actually_set_backlight(%struct.drm_connector_state* %15, i32 0)
  %17 = load i32, i32* @BLC_PWM_CPU_CTL2, align 4
  %18 = call i32 @I915_READ(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @BLC_PWM_CPU_CTL2, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @BLM_PWM_ENABLE, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = call i32 @I915_WRITE(i32 %19, i32 %23)
  %25 = load i32, i32* @BLC_PWM_PCH_CTL1, align 4
  %26 = call i32 @I915_READ(i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @BLC_PWM_PCH_CTL1, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @BLM_PCH_PWM_ENABLE, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = call i32 @I915_WRITE(i32 %27, i32 %31)
  ret void
}

declare dso_local %struct.intel_connector* @to_intel_connector(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_panel_actually_set_backlight(%struct.drm_connector_state*, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
