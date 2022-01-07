; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_intel_panel_actually_set_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_intel_panel_actually_set_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector_state = type { i32 }
%struct.intel_connector = type { %struct.intel_panel }
%struct.intel_panel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.drm_connector_state.0*, i32)* }
%struct.drm_connector_state.0 = type opaque

@.str = private unnamed_addr constant [24 x i8] c"set backlight PWM = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector_state*, i32)* @intel_panel_actually_set_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_panel_actually_set_backlight(%struct.drm_connector_state* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_connector_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_connector*, align 8
  %6 = alloca %struct.intel_panel*, align 8
  store %struct.drm_connector_state* %0, %struct.drm_connector_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_connector_state*, %struct.drm_connector_state** %3, align 8
  %8 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.intel_connector* @to_intel_connector(i32 %9)
  store %struct.intel_connector* %10, %struct.intel_connector** %5, align 8
  %11 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %12 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %11, i32 0, i32 0
  store %struct.intel_panel* %12, %struct.intel_panel** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @intel_panel_compute_brightness(%struct.intel_connector* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.intel_panel*, %struct.intel_panel** %6, align 8
  %19 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.drm_connector_state.0*, i32)*, i32 (%struct.drm_connector_state.0*, i32)** %20, align 8
  %22 = load %struct.drm_connector_state*, %struct.drm_connector_state** %3, align 8
  %23 = bitcast %struct.drm_connector_state* %22 to %struct.drm_connector_state.0*
  %24 = load i32, i32* %4, align 4
  %25 = call i32 %21(%struct.drm_connector_state.0* %23, i32 %24)
  ret void
}

declare dso_local %struct.intel_connector* @to_intel_connector(i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

declare dso_local i32 @intel_panel_compute_brightness(%struct.intel_connector*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
