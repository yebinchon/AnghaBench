; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_enable_ddi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_enable_ddi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.drm_connector_state = type { i64, i64, i32 }

@INTEL_OUTPUT_HDMI = common dso_local global i32 0, align 4
@DRM_MODE_CONTENT_PROTECTION_DESIRED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_enable_ddi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_enable_ddi(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %7 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %8 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %9 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %13 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %14 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %15 = call i32 @intel_enable_ddi_hdmi(%struct.intel_encoder* %12, %struct.intel_crtc_state* %13, %struct.drm_connector_state* %14)
  br label %21

16:                                               ; preds = %3
  %17 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %18 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %19 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %20 = call i32 @intel_enable_ddi_dp(%struct.intel_encoder* %17, %struct.intel_crtc_state* %18, %struct.drm_connector_state* %19)
  br label %21

21:                                               ; preds = %16, %11
  %22 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %23 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DRM_MODE_CONTENT_PROTECTION_DESIRED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %29 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @to_intel_connector(i32 %30)
  %32 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %33 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @intel_hdcp_enable(i32 %31, i32 %35)
  br label %37

37:                                               ; preds = %27, %21
  ret void
}

declare dso_local i64 @intel_crtc_has_type(%struct.intel_crtc_state*, i32) #1

declare dso_local i32 @intel_enable_ddi_hdmi(%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*) #1

declare dso_local i32 @intel_enable_ddi_dp(%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*) #1

declare dso_local i32 @intel_hdcp_enable(i32, i32) #1

declare dso_local i32 @to_intel_connector(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
