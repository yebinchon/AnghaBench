; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_edp_backlight_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_edp_backlight_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.intel_dp = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_edp_backlight_on(%struct.intel_crtc_state* %0, %struct.drm_connector_state* %1) #0 {
  %3 = alloca %struct.intel_crtc_state*, align 8
  %4 = alloca %struct.drm_connector_state*, align 8
  %5 = alloca %struct.intel_dp*, align 8
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %3, align 8
  store %struct.drm_connector_state* %1, %struct.drm_connector_state** %4, align 8
  %6 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %7 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.intel_dp* @enc_to_intel_dp(i32 %8)
  store %struct.intel_dp* %9, %struct.intel_dp** %5, align 8
  %10 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %11 = call i32 @intel_dp_is_edp(%struct.intel_dp* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %21

14:                                               ; preds = %2
  %15 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %17 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %18 = call i32 @intel_panel_enable_backlight(%struct.intel_crtc_state* %16, %struct.drm_connector_state* %17)
  %19 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %20 = call i32 @_intel_edp_backlight_on(%struct.intel_dp* %19)
  br label %21

21:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.intel_dp* @enc_to_intel_dp(i32) #1

declare dso_local i32 @intel_dp_is_edp(%struct.intel_dp*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @intel_panel_enable_backlight(%struct.intel_crtc_state*, %struct.drm_connector_state*) #1

declare dso_local i32 @_intel_edp_backlight_on(%struct.intel_dp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
