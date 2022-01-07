; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_compute_drm_infoframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_compute_drm_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.hdmi_drm_infoframe }
%struct.hdmi_drm_infoframe = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.drm_i915_private = type { i32 }

@HDMI_INFOFRAME_TYPE_DRM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"couldn't set HDR metadata in infoframe\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_hdmi_compute_drm_infoframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_hdmi_compute_drm_infoframe(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_encoder*, align 8
  %6 = alloca %struct.intel_crtc_state*, align 8
  %7 = alloca %struct.drm_connector_state*, align 8
  %8 = alloca %struct.hdmi_drm_infoframe*, align 8
  %9 = alloca %struct.drm_i915_private*, align 8
  %10 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %5, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %6, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %7, align 8
  %11 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %12 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.hdmi_drm_infoframe* %14, %struct.hdmi_drm_infoframe** %8, align 8
  %15 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %16 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.drm_i915_private* @to_i915(i32 %18)
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %9, align 8
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %21 = call i32 @INTEL_GEN(%struct.drm_i915_private* %20)
  %22 = icmp sge i32 %21, 10
  br i1 %22, label %28, label %23

23:                                               ; preds = %3
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %25 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  store i32 1, i32* %4, align 4
  br label %63

28:                                               ; preds = %23, %3
  %29 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %30 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store i32 1, i32* %4, align 4
  br label %63

34:                                               ; preds = %28
  %35 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %36 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i32 1, i32* %4, align 4
  br label %63

40:                                               ; preds = %34
  %41 = load i32, i32* @HDMI_INFOFRAME_TYPE_DRM, align 4
  %42 = call i32 @intel_hdmi_infoframe_enable(i32 %41)
  %43 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %44 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %42
  store i32 %47, i32* %45, align 4
  %48 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %8, align 8
  %49 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %50 = call i32 @drm_hdmi_infoframe_set_hdr_metadata(%struct.hdmi_drm_infoframe* %48, %struct.drm_connector_state* %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %40
  %54 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %63

55:                                               ; preds = %40
  %56 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %8, align 8
  %57 = call i32 @hdmi_drm_infoframe_check(%struct.hdmi_drm_infoframe* %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i64 @WARN_ON(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %63

62:                                               ; preds = %55
  store i32 1, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %61, %53, %39, %33, %27
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_hdmi_infoframe_enable(i32) #1

declare dso_local i32 @drm_hdmi_infoframe_set_hdr_metadata(%struct.hdmi_drm_infoframe*, %struct.drm_connector_state*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @hdmi_drm_infoframe_check(%struct.hdmi_drm_infoframe*) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
