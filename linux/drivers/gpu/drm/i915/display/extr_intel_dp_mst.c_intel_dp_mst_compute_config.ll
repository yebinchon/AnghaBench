; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_mst.c_intel_dp_mst_compute_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_mst.c_intel_dp_mst_compute_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.intel_crtc_state = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_dp_mst_encoder = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.intel_dp }
%struct.intel_dp = type { i32 }
%struct.intel_connector = type { i8* }
%struct.intel_digital_connector_state = type { i64 }
%struct.link_config_limits = type { i32, i32, i32, i32, i32, i32 }

@DRM_MODE_FLAG_DBLSCAN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@INTEL_OUTPUT_FORMAT_RGB = common dso_local global i32 0, align 4
@HDMI_AUDIO_AUTO = common dso_local global i64 0, align 8
@HDMI_AUDIO_ON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_dp_mst_compute_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_mst_compute_config(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_encoder*, align 8
  %6 = alloca %struct.intel_crtc_state*, align 8
  %7 = alloca %struct.drm_connector_state*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.intel_dp_mst_encoder*, align 8
  %10 = alloca %struct.intel_dp*, align 8
  %11 = alloca %struct.intel_connector*, align 8
  %12 = alloca %struct.intel_digital_connector_state*, align 8
  %13 = alloca %struct.drm_display_mode*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.link_config_limits, align 4
  %16 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %5, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %6, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %7, align 8
  %17 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %18 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.drm_i915_private* @to_i915(i32 %20)
  store %struct.drm_i915_private* %21, %struct.drm_i915_private** %8, align 8
  %22 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %23 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %22, i32 0, i32 0
  %24 = call %struct.intel_dp_mst_encoder* @enc_to_mst(%struct.TYPE_6__* %23)
  store %struct.intel_dp_mst_encoder* %24, %struct.intel_dp_mst_encoder** %9, align 8
  %25 = load %struct.intel_dp_mst_encoder*, %struct.intel_dp_mst_encoder** %9, align 8
  %26 = getelementptr inbounds %struct.intel_dp_mst_encoder, %struct.intel_dp_mst_encoder* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store %struct.intel_dp* %28, %struct.intel_dp** %10, align 8
  %29 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %30 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.intel_connector* @to_intel_connector(i32 %31)
  store %struct.intel_connector* %32, %struct.intel_connector** %11, align 8
  %33 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %34 = call %struct.intel_digital_connector_state* @to_intel_digital_connector_state(%struct.drm_connector_state* %33)
  store %struct.intel_digital_connector_state* %34, %struct.intel_digital_connector_state** %12, align 8
  %35 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %36 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %35, i32 0, i32 7
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store %struct.drm_display_mode* %37, %struct.drm_display_mode** %13, align 8
  %38 = load %struct.intel_connector*, %struct.intel_connector** %11, align 8
  %39 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %14, align 8
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %13, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @DRM_MODE_FLAG_DBLSCAN, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %3
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %125

50:                                               ; preds = %3
  %51 = load i32, i32* @INTEL_OUTPUT_FORMAT_RGB, align 4
  %52 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %53 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 4
  %54 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %55 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %54, i32 0, i32 0
  store i32 0, i32* %55, align 4
  %56 = load %struct.intel_digital_connector_state*, %struct.intel_digital_connector_state** %12, align 8
  %57 = getelementptr inbounds %struct.intel_digital_connector_state, %struct.intel_digital_connector_state* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @HDMI_AUDIO_AUTO, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %50
  %62 = load %struct.intel_dp*, %struct.intel_dp** %10, align 8
  %63 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %62, i32 0, i32 0
  %64 = load i8*, i8** %14, align 8
  %65 = call i32 @drm_dp_mst_port_has_audio(i32* %63, i8* %64)
  %66 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %67 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %77

68:                                               ; preds = %50
  %69 = load %struct.intel_digital_connector_state*, %struct.intel_digital_connector_state** %12, align 8
  %70 = getelementptr inbounds %struct.intel_digital_connector_state, %struct.intel_digital_connector_state* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @HDMI_AUDIO_ON, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %76 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %68, %61
  %78 = load %struct.intel_dp*, %struct.intel_dp** %10, align 8
  %79 = call i32 @intel_dp_max_link_rate(%struct.intel_dp* %78)
  %80 = getelementptr inbounds %struct.link_config_limits, %struct.link_config_limits* %15, i32 0, i32 4
  store i32 %79, i32* %80, align 4
  %81 = getelementptr inbounds %struct.link_config_limits, %struct.link_config_limits* %15, i32 0, i32 5
  store i32 %79, i32* %81, align 4
  %82 = load %struct.intel_dp*, %struct.intel_dp** %10, align 8
  %83 = call i32 @intel_dp_max_lane_count(%struct.intel_dp* %82)
  %84 = getelementptr inbounds %struct.link_config_limits, %struct.link_config_limits* %15, i32 0, i32 2
  store i32 %83, i32* %84, align 4
  %85 = getelementptr inbounds %struct.link_config_limits, %struct.link_config_limits* %15, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %87 = call i32 @intel_dp_min_bpp(%struct.intel_crtc_state* %86)
  %88 = getelementptr inbounds %struct.link_config_limits, %struct.link_config_limits* %15, i32 0, i32 1
  store i32 %87, i32* %88, align 4
  %89 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %90 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @min(i32 %91, i32 24)
  %93 = getelementptr inbounds %struct.link_config_limits, %struct.link_config_limits* %15, i32 0, i32 0
  store i32 %92, i32* %93, align 4
  %94 = load %struct.intel_dp*, %struct.intel_dp** %10, align 8
  %95 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %96 = call i32 @intel_dp_adjust_compliance_config(%struct.intel_dp* %94, %struct.intel_crtc_state* %95, %struct.link_config_limits* %15)
  %97 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %98 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %99 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %100 = call i32 @intel_dp_mst_compute_link_config(%struct.intel_encoder* %97, %struct.intel_crtc_state* %98, %struct.drm_connector_state* %99, %struct.link_config_limits* %15)
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %16, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %77
  %104 = load i32, i32* %16, align 4
  store i32 %104, i32* %4, align 4
  br label %125

105:                                              ; preds = %77
  %106 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %107 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %108 = call i32 @intel_dp_limited_color_range(%struct.intel_crtc_state* %106, %struct.drm_connector_state* %107)
  %109 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %110 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 4
  %111 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %112 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %105
  %115 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %116 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @bxt_ddi_phy_calc_lane_lat_optim_mask(i32 %117)
  %119 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %120 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %114, %105
  %122 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %123 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %124 = call i32 @intel_ddi_compute_min_voltage_level(%struct.drm_i915_private* %122, %struct.intel_crtc_state* %123)
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %121, %103, %47
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_dp_mst_encoder* @enc_to_mst(%struct.TYPE_6__*) #1

declare dso_local %struct.intel_connector* @to_intel_connector(i32) #1

declare dso_local %struct.intel_digital_connector_state* @to_intel_digital_connector_state(%struct.drm_connector_state*) #1

declare dso_local i32 @drm_dp_mst_port_has_audio(i32*, i8*) #1

declare dso_local i32 @intel_dp_max_link_rate(%struct.intel_dp*) #1

declare dso_local i32 @intel_dp_max_lane_count(%struct.intel_dp*) #1

declare dso_local i32 @intel_dp_min_bpp(%struct.intel_crtc_state*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @intel_dp_adjust_compliance_config(%struct.intel_dp*, %struct.intel_crtc_state*, %struct.link_config_limits*) #1

declare dso_local i32 @intel_dp_mst_compute_link_config(%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*, %struct.link_config_limits*) #1

declare dso_local i32 @intel_dp_limited_color_range(%struct.intel_crtc_state*, %struct.drm_connector_state*) #1

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i32 @bxt_ddi_phy_calc_lane_lat_optim_mask(i32) #1

declare dso_local i32 @intel_ddi_compute_min_voltage_level(%struct.drm_i915_private*, %struct.intel_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
