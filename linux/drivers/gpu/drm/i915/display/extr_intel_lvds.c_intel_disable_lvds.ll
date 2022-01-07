; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lvds.c_intel_disable_lvds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lvds.c_intel_disable_lvds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.intel_lvds_encoder = type { i32 }
%struct.drm_i915_private = type { i32 }

@PANEL_POWER_ON = common dso_local global i32 0, align 4
@PP_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"timed out waiting for panel to power off\0A\00", align 1
@LVDS_PORT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_disable_lvds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_disable_lvds(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.intel_lvds_encoder*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %9 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %10 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %9, i32 0, i32 0
  %11 = call %struct.intel_lvds_encoder* @to_lvds_encoder(%struct.TYPE_2__* %10)
  store %struct.intel_lvds_encoder* %11, %struct.intel_lvds_encoder** %7, align 8
  %12 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %13 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.drm_i915_private* @to_i915(i32 %15)
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %8, align 8
  %17 = call i32 @PP_CONTROL(i32 0)
  %18 = call i32 @PP_CONTROL(i32 0)
  %19 = call i32 @I915_READ(i32 %18)
  %20 = load i32, i32* @PANEL_POWER_ON, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = call i32 @I915_WRITE(i32 %17, i32 %22)
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %25 = call i32 @PP_STATUS(i32 0)
  %26 = load i32, i32* @PP_ON, align 4
  %27 = call i64 @intel_de_wait_for_clear(%struct.drm_i915_private* %24, i32 %25, i32 %26, i32 1000)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %3
  %32 = load %struct.intel_lvds_encoder*, %struct.intel_lvds_encoder** %7, align 8
  %33 = getelementptr inbounds %struct.intel_lvds_encoder, %struct.intel_lvds_encoder* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.intel_lvds_encoder*, %struct.intel_lvds_encoder** %7, align 8
  %36 = getelementptr inbounds %struct.intel_lvds_encoder, %struct.intel_lvds_encoder* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @I915_READ(i32 %37)
  %39 = load i32, i32* @LVDS_PORT_EN, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = call i32 @I915_WRITE(i32 %34, i32 %41)
  %43 = load %struct.intel_lvds_encoder*, %struct.intel_lvds_encoder** %7, align 8
  %44 = getelementptr inbounds %struct.intel_lvds_encoder, %struct.intel_lvds_encoder* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @POSTING_READ(i32 %45)
  ret void
}

declare dso_local %struct.intel_lvds_encoder* @to_lvds_encoder(%struct.TYPE_2__*) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @PP_CONTROL(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @intel_de_wait_for_clear(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i32 @PP_STATUS(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @POSTING_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
