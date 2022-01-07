; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_mst.c_intel_mst_pre_enable_dp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_mst.c_intel_mst_pre_enable_dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.intel_dp_mst_encoder = type { %struct.intel_connector*, %struct.intel_digital_port* }
%struct.intel_connector = type { i32, %struct.intel_encoder* }
%struct.intel_digital_port = type { %struct.TYPE_5__, %struct.intel_dp }
%struct.TYPE_5__ = type { i32, i32 (%struct.TYPE_5__*, %struct.intel_crtc_state.0*, i32*)* }
%struct.intel_crtc_state.0 = type opaque
%struct.intel_dp = type { i64, i32 }
%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"active links %d\0A\00", align 1
@DRM_MODE_DPMS_ON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to allocate vcpi\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_mst_pre_enable_dp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_mst_pre_enable_dp(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.intel_dp_mst_encoder*, align 8
  %8 = alloca %struct.intel_digital_port*, align 8
  %9 = alloca %struct.intel_dp*, align 8
  %10 = alloca %struct.drm_i915_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.intel_connector*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %15 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %16 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %15, i32 0, i32 0
  %17 = call %struct.intel_dp_mst_encoder* @enc_to_mst(%struct.TYPE_6__* %16)
  store %struct.intel_dp_mst_encoder* %17, %struct.intel_dp_mst_encoder** %7, align 8
  %18 = load %struct.intel_dp_mst_encoder*, %struct.intel_dp_mst_encoder** %7, align 8
  %19 = getelementptr inbounds %struct.intel_dp_mst_encoder, %struct.intel_dp_mst_encoder* %18, i32 0, i32 1
  %20 = load %struct.intel_digital_port*, %struct.intel_digital_port** %19, align 8
  store %struct.intel_digital_port* %20, %struct.intel_digital_port** %8, align 8
  %21 = load %struct.intel_digital_port*, %struct.intel_digital_port** %8, align 8
  %22 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %21, i32 0, i32 1
  store %struct.intel_dp* %22, %struct.intel_dp** %9, align 8
  %23 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %24 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.drm_i915_private* @to_i915(i32 %26)
  store %struct.drm_i915_private* %27, %struct.drm_i915_private** %10, align 8
  %28 = load %struct.intel_digital_port*, %struct.intel_digital_port** %8, align 8
  %29 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %11, align 4
  %32 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %33 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.intel_connector* @to_intel_connector(i32 %34)
  store %struct.intel_connector* %35, %struct.intel_connector** %12, align 8
  %36 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %37 = load %struct.intel_connector*, %struct.intel_connector** %12, align 8
  %38 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %37, i32 0, i32 1
  store %struct.intel_encoder* %36, %struct.intel_encoder** %38, align 8
  %39 = load %struct.intel_connector*, %struct.intel_connector** %12, align 8
  %40 = load %struct.intel_dp_mst_encoder*, %struct.intel_dp_mst_encoder** %7, align 8
  %41 = getelementptr inbounds %struct.intel_dp_mst_encoder, %struct.intel_dp_mst_encoder* %40, i32 0, i32 0
  store %struct.intel_connector* %39, %struct.intel_connector** %41, align 8
  %42 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %43 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %44)
  %46 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %47 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %3
  %51 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %52 = load i32, i32* @DRM_MODE_DPMS_ON, align 4
  %53 = call i32 @intel_dp_sink_dpms(%struct.intel_dp* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %3
  %55 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %56 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %55, i32 0, i32 1
  %57 = load %struct.intel_connector*, %struct.intel_connector** %12, align 8
  %58 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @drm_dp_send_power_updown_phy(i32* %56, i32 %59, i32 1)
  %61 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %62 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %54
  %66 = load %struct.intel_digital_port*, %struct.intel_digital_port** %8, align 8
  %67 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32 (%struct.TYPE_5__*, %struct.intel_crtc_state.0*, i32*)*, i32 (%struct.TYPE_5__*, %struct.intel_crtc_state.0*, i32*)** %68, align 8
  %70 = load %struct.intel_digital_port*, %struct.intel_digital_port** %8, align 8
  %71 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %70, i32 0, i32 0
  %72 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %73 = bitcast %struct.intel_crtc_state* %72 to %struct.intel_crtc_state.0*
  %74 = call i32 %69(%struct.TYPE_5__* %71, %struct.intel_crtc_state.0* %73, i32* null)
  br label %75

75:                                               ; preds = %65, %54
  %76 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %77 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %76, i32 0, i32 1
  %78 = load %struct.intel_connector*, %struct.intel_connector** %12, align 8
  %79 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %82 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %85 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @drm_dp_mst_allocate_vcpi(i32* %77, i32 %80, i32 %83, i32 %87)
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %75
  %92 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %75
  %94 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %95 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %95, align 8
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @DP_TP_STATUS(i32 %98)
  %100 = call i32 @I915_READ(i32 %99)
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @DP_TP_STATUS(i32 %101)
  %103 = load i32, i32* %14, align 4
  %104 = call i32 @I915_WRITE(i32 %102, i32 %103)
  %105 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %106 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %105, i32 0, i32 1
  %107 = call i32 @drm_dp_update_payload_part1(i32* %106)
  store i32 %107, i32* %13, align 4
  %108 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %109 = call i32 @intel_ddi_enable_pipe_clock(%struct.intel_crtc_state* %108)
  ret void
}

declare dso_local %struct.intel_dp_mst_encoder* @enc_to_mst(%struct.TYPE_6__*) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_connector* @to_intel_connector(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i64) #1

declare dso_local i32 @intel_dp_sink_dpms(%struct.intel_dp*, i32) #1

declare dso_local i32 @drm_dp_send_power_updown_phy(i32*, i32, i32) #1

declare dso_local i32 @drm_dp_mst_allocate_vcpi(i32*, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DP_TP_STATUS(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @drm_dp_update_payload_part1(i32*) #1

declare dso_local i32 @intel_ddi_enable_pipe_clock(%struct.intel_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
