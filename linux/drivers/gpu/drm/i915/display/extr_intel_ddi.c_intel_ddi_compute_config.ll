; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_compute_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_compute_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.intel_crtc_state = type { i64, i32, i32, i64, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.intel_crtc = type { i64 }
%struct.drm_i915_private = type { i32 }

@PORT_A = common dso_local global i32 0, align 4
@TRANSCODER_EDP = common dso_local global i64 0, align 8
@INTEL_OUTPUT_HDMI = common dso_local global i32 0, align 4
@PIPE_A = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_ddi_compute_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_ddi_compute_config(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_encoder*, align 8
  %6 = alloca %struct.intel_crtc_state*, align 8
  %7 = alloca %struct.drm_connector_state*, align 8
  %8 = alloca %struct.intel_crtc*, align 8
  %9 = alloca %struct.drm_i915_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %5, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %6, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %7, align 8
  %12 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %13 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.intel_crtc* @to_intel_crtc(i32 %15)
  store %struct.intel_crtc* %16, %struct.intel_crtc** %8, align 8
  %17 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %18 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.drm_i915_private* @to_i915(i32 %20)
  store %struct.drm_i915_private* %21, %struct.drm_i915_private** %9, align 8
  %22 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %23 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %26 = call i64 @HAS_TRANSCODER_EDP(%struct.drm_i915_private* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %3
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @PORT_A, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i64, i64* @TRANSCODER_EDP, align 8
  %34 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %35 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %32, %28, %3
  %37 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %38 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %39 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %43 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %44 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %45 = call i32 @intel_hdmi_compute_config(%struct.intel_encoder* %42, %struct.intel_crtc_state* %43, %struct.drm_connector_state* %44)
  store i32 %45, i32* %11, align 4
  br label %51

46:                                               ; preds = %36
  %47 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %48 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %49 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %50 = call i32 @intel_dp_compute_config(%struct.intel_encoder* %47, %struct.intel_crtc_state* %48, %struct.drm_connector_state* %49)
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %46, %41
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %4, align 4
  br label %104

56:                                               ; preds = %51
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %58 = call i64 @IS_HASWELL(%struct.drm_i915_private* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %89

60:                                               ; preds = %56
  %61 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %62 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @PIPE_A, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %89

66:                                               ; preds = %60
  %67 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %68 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @TRANSCODER_EDP, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %89

72:                                               ; preds = %66
  %73 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %74 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %72
  %79 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %80 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br label %83

83:                                               ; preds = %78, %72
  %84 = phi i1 [ true, %72 ], [ %82, %78 ]
  %85 = zext i1 %84 to i32
  %86 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %87 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 8
  br label %89

89:                                               ; preds = %83, %66, %60, %56
  %90 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %91 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %89
  %94 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %95 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @bxt_ddi_phy_calc_lane_lat_optim_mask(i32 %96)
  %98 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %99 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %93, %89
  %101 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %102 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %103 = call i32 @intel_ddi_compute_min_voltage_level(%struct.drm_i915_private* %101, %struct.intel_crtc_state* %102)
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %100, %54
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @HAS_TRANSCODER_EDP(%struct.drm_i915_private*) #1

declare dso_local i64 @intel_crtc_has_type(%struct.intel_crtc_state*, i32) #1

declare dso_local i32 @intel_hdmi_compute_config(%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*) #1

declare dso_local i32 @intel_dp_compute_config(%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i32 @bxt_ddi_phy_calc_lane_lat_optim_mask(i32) #1

declare dso_local i32 @intel_ddi_compute_min_voltage_level(%struct.drm_i915_private*, %struct.intel_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
