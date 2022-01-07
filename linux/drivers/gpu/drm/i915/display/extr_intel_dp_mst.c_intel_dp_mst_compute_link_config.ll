; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_mst.c_intel_dp_mst_compute_link_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_mst.c_intel_dp_mst_compute_link_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32 }
%struct.intel_crtc_state = type { i32, %struct.TYPE_6__, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.drm_display_mode, %struct.drm_atomic_state* }
%struct.drm_display_mode = type { i32 }
%struct.drm_atomic_state = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.link_config_limits = type { i32, i32, i32, i32 }
%struct.intel_dp_mst_encoder = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.intel_dp }
%struct.intel_dp = type { i32, i32 }
%struct.intel_connector = type { i8* }

@DP_DPCD_QUIRK_CONSTANT_N = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EDEADLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed finding vcpi slots:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*, %struct.link_config_limits*)* @intel_dp_mst_compute_link_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_mst_compute_link_config(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2, %struct.link_config_limits* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_encoder*, align 8
  %7 = alloca %struct.intel_crtc_state*, align 8
  %8 = alloca %struct.drm_connector_state*, align 8
  %9 = alloca %struct.link_config_limits*, align 8
  %10 = alloca %struct.drm_atomic_state*, align 8
  %11 = alloca %struct.intel_dp_mst_encoder*, align 8
  %12 = alloca %struct.intel_dp*, align 8
  %13 = alloca %struct.intel_connector*, align 8
  %14 = alloca %struct.drm_display_mode*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %6, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %7, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %8, align 8
  store %struct.link_config_limits* %3, %struct.link_config_limits** %9, align 8
  %19 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %20 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %21, align 8
  store %struct.drm_atomic_state* %22, %struct.drm_atomic_state** %10, align 8
  %23 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %24 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %23, i32 0, i32 0
  %25 = call %struct.intel_dp_mst_encoder* @enc_to_mst(i32* %24)
  store %struct.intel_dp_mst_encoder* %25, %struct.intel_dp_mst_encoder** %11, align 8
  %26 = load %struct.intel_dp_mst_encoder*, %struct.intel_dp_mst_encoder** %11, align 8
  %27 = getelementptr inbounds %struct.intel_dp_mst_encoder, %struct.intel_dp_mst_encoder* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store %struct.intel_dp* %29, %struct.intel_dp** %12, align 8
  %30 = load %struct.drm_connector_state*, %struct.drm_connector_state** %8, align 8
  %31 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.intel_connector* @to_intel_connector(i32 %32)
  store %struct.intel_connector* %33, %struct.intel_connector** %13, align 8
  %34 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %35 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store %struct.drm_display_mode* %36, %struct.drm_display_mode** %14, align 8
  %37 = load %struct.intel_connector*, %struct.intel_connector** %13, align 8
  %38 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %15, align 8
  %40 = load %struct.intel_dp*, %struct.intel_dp** %12, align 8
  %41 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %40, i32 0, i32 1
  %42 = load i32, i32* @DP_DPCD_QUIRK_CONSTANT_N, align 4
  %43 = call i32 @drm_dp_has_quirk(i32* %41, i32 %42)
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %18, align 4
  %46 = load %struct.link_config_limits*, %struct.link_config_limits** %9, align 8
  %47 = getelementptr inbounds %struct.link_config_limits, %struct.link_config_limits* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %50 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load %struct.link_config_limits*, %struct.link_config_limits** %9, align 8
  %52 = getelementptr inbounds %struct.link_config_limits, %struct.link_config_limits* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %55 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load %struct.link_config_limits*, %struct.link_config_limits** %9, align 8
  %57 = getelementptr inbounds %struct.link_config_limits, %struct.link_config_limits* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %17, align 4
  br label %59

59:                                               ; preds = %97, %4
  %60 = load i32, i32* %17, align 4
  %61 = load %struct.link_config_limits*, %struct.link_config_limits** %9, align 8
  %62 = getelementptr inbounds %struct.link_config_limits, %struct.link_config_limits* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp sge i32 %60, %63
  br i1 %64, label %65, label %100

65:                                               ; preds = %59
  %66 = load i32, i32* %17, align 4
  %67 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %68 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %70 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %73 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @drm_dp_calc_pbn_mode(i32 %71, i32 %74)
  %76 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %77 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 4
  %78 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %10, align 8
  %79 = load %struct.intel_dp*, %struct.intel_dp** %12, align 8
  %80 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %79, i32 0, i32 0
  %81 = load i8*, i8** %15, align 8
  %82 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %83 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @drm_dp_atomic_find_vcpi_slots(%struct.drm_atomic_state* %78, i32* %80, i8* %81, i32 %84)
  store i32 %85, i32* %18, align 4
  %86 = load i32, i32* %18, align 4
  %87 = load i32, i32* @EDEADLK, align 4
  %88 = sub nsw i32 0, %87
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %65
  %91 = load i32, i32* %18, align 4
  store i32 %91, i32* %5, align 4
  br label %131

92:                                               ; preds = %65
  %93 = load i32, i32* %18, align 4
  %94 = icmp sge i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %100

96:                                               ; preds = %92
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %17, align 4
  %99 = sub nsw i32 %98, 6
  store i32 %99, i32* %17, align 4
  br label %59

100:                                              ; preds = %95, %59
  %101 = load i32, i32* %18, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load i32, i32* %18, align 4
  %105 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %18, align 4
  store i32 %106, i32* %5, align 4
  br label %131

107:                                              ; preds = %100
  %108 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %109 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %112 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %115 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %118 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %121 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %120, i32 0, i32 1
  %122 = load i32, i32* %16, align 4
  %123 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %124 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @intel_link_compute_m_n(i32 %110, i32 %113, i32 %116, i32 %119, %struct.TYPE_6__* %121, i32 %122, i32 %125)
  %127 = load i32, i32* %18, align 4
  %128 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %129 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  store i32 %127, i32* %130, align 4
  store i32 0, i32* %5, align 4
  br label %131

131:                                              ; preds = %107, %103, %90
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local %struct.intel_dp_mst_encoder* @enc_to_mst(i32*) #1

declare dso_local %struct.intel_connector* @to_intel_connector(i32) #1

declare dso_local i32 @drm_dp_has_quirk(i32*, i32) #1

declare dso_local i32 @drm_dp_calc_pbn_mode(i32, i32) #1

declare dso_local i32 @drm_dp_atomic_find_vcpi_slots(%struct.drm_atomic_state*, i32*, i8*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @intel_link_compute_m_n(i32, i32, i32, i32, %struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
