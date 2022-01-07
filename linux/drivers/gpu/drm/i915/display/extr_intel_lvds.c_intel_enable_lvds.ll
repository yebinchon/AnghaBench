; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lvds.c_intel_enable_lvds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lvds.c_intel_enable_lvds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.intel_lvds_encoder = type { i32 }
%struct.drm_i915_private = type { i32 }

@LVDS_PORT_EN = common dso_local global i32 0, align 4
@PANEL_POWER_ON = common dso_local global i32 0, align 4
@PP_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"timed out waiting for panel to power on\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_enable_lvds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_enable_lvds(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.intel_lvds_encoder*, align 8
  %9 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %10 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %11 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %7, align 8
  %14 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %15 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %14, i32 0, i32 0
  %16 = call %struct.intel_lvds_encoder* @to_lvds_encoder(%struct.TYPE_2__* %15)
  store %struct.intel_lvds_encoder* %16, %struct.intel_lvds_encoder** %8, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %18 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %17)
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %9, align 8
  %19 = load %struct.intel_lvds_encoder*, %struct.intel_lvds_encoder** %8, align 8
  %20 = getelementptr inbounds %struct.intel_lvds_encoder, %struct.intel_lvds_encoder* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.intel_lvds_encoder*, %struct.intel_lvds_encoder** %8, align 8
  %23 = getelementptr inbounds %struct.intel_lvds_encoder, %struct.intel_lvds_encoder* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @I915_READ(i32 %24)
  %26 = load i32, i32* @LVDS_PORT_EN, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @I915_WRITE(i32 %21, i32 %27)
  %29 = call i32 @PP_CONTROL(i32 0)
  %30 = call i32 @PP_CONTROL(i32 0)
  %31 = call i32 @I915_READ(i32 %30)
  %32 = load i32, i32* @PANEL_POWER_ON, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @I915_WRITE(i32 %29, i32 %33)
  %35 = load %struct.intel_lvds_encoder*, %struct.intel_lvds_encoder** %8, align 8
  %36 = getelementptr inbounds %struct.intel_lvds_encoder, %struct.intel_lvds_encoder* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @POSTING_READ(i32 %37)
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %40 = call i32 @PP_STATUS(i32 0)
  %41 = load i32, i32* @PP_ON, align 4
  %42 = call i64 @intel_de_wait_for_set(%struct.drm_i915_private* %39, i32 %40, i32 %41, i32 5000)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %3
  %45 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %3
  %47 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %48 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %49 = call i32 @intel_panel_enable_backlight(%struct.intel_crtc_state* %47, %struct.drm_connector_state* %48)
  ret void
}

declare dso_local %struct.intel_lvds_encoder* @to_lvds_encoder(%struct.TYPE_2__*) #1

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @PP_CONTROL(i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i64 @intel_de_wait_for_set(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i32 @PP_STATUS(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @intel_panel_enable_backlight(%struct.intel_crtc_state*, %struct.drm_connector_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
