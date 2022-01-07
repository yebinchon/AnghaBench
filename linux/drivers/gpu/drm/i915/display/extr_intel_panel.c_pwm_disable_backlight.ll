; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_pwm_disable_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_pwm_disable_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector_state = type { i32 }
%struct.intel_connector = type { %struct.intel_panel }
%struct.intel_panel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector_state*)* @pwm_disable_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pwm_disable_backlight(%struct.drm_connector_state* %0) #0 {
  %2 = alloca %struct.drm_connector_state*, align 8
  %3 = alloca %struct.intel_connector*, align 8
  %4 = alloca %struct.intel_panel*, align 8
  store %struct.drm_connector_state* %0, %struct.drm_connector_state** %2, align 8
  %5 = load %struct.drm_connector_state*, %struct.drm_connector_state** %2, align 8
  %6 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.intel_connector* @to_intel_connector(i32 %7)
  store %struct.intel_connector* %8, %struct.intel_connector** %3, align 8
  %9 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %10 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %9, i32 0, i32 0
  store %struct.intel_panel* %10, %struct.intel_panel** %4, align 8
  %11 = load %struct.drm_connector_state*, %struct.drm_connector_state** %2, align 8
  %12 = call i32 @intel_panel_actually_set_backlight(%struct.drm_connector_state* %11, i32 0)
  %13 = call i32 @usleep_range(i32 2000, i32 3000)
  %14 = load %struct.intel_panel*, %struct.intel_panel** %4, align 8
  %15 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pwm_disable(i32 %17)
  ret void
}

declare dso_local %struct.intel_connector* @to_intel_connector(i32) #1

declare dso_local i32 @intel_panel_actually_set_backlight(%struct.drm_connector_state*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @pwm_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
