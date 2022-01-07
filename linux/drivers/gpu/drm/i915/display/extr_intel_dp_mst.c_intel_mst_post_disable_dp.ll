; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_mst.c_intel_mst_post_disable_dp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_mst.c_intel_mst_post_disable_dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.intel_dp_mst_encoder = type { i32*, %struct.intel_digital_port* }
%struct.intel_digital_port = type { %struct.TYPE_2__, %struct.intel_dp }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, %struct.intel_crtc_state.0*, i32*)* }
%struct.intel_crtc_state.0 = type opaque
%struct.intel_dp = type { i64, i32 }
%struct.intel_connector = type { i32 }

@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"active links %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_mst_post_disable_dp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_mst_post_disable_dp(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.intel_dp_mst_encoder*, align 8
  %8 = alloca %struct.intel_digital_port*, align 8
  %9 = alloca %struct.intel_dp*, align 8
  %10 = alloca %struct.intel_connector*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %11 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %12 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %11, i32 0, i32 0
  %13 = call %struct.intel_dp_mst_encoder* @enc_to_mst(i32* %12)
  store %struct.intel_dp_mst_encoder* %13, %struct.intel_dp_mst_encoder** %7, align 8
  %14 = load %struct.intel_dp_mst_encoder*, %struct.intel_dp_mst_encoder** %7, align 8
  %15 = getelementptr inbounds %struct.intel_dp_mst_encoder, %struct.intel_dp_mst_encoder* %14, i32 0, i32 1
  %16 = load %struct.intel_digital_port*, %struct.intel_digital_port** %15, align 8
  store %struct.intel_digital_port* %16, %struct.intel_digital_port** %8, align 8
  %17 = load %struct.intel_digital_port*, %struct.intel_digital_port** %8, align 8
  %18 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %17, i32 0, i32 1
  store %struct.intel_dp* %18, %struct.intel_dp** %9, align 8
  %19 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %20 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.intel_connector* @to_intel_connector(i32 %21)
  store %struct.intel_connector* %22, %struct.intel_connector** %10, align 8
  %23 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %24 = call i32 @intel_ddi_disable_pipe_clock(%struct.intel_crtc_state* %23)
  %25 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %26 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %25, i32 0, i32 1
  %27 = call i32 @drm_dp_check_act_status(i32* %26)
  %28 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %29 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %28, i32 0, i32 1
  %30 = call i32 @drm_dp_update_payload_part2(i32* %29)
  %31 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %32 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %31, i32 0, i32 1
  %33 = load %struct.intel_connector*, %struct.intel_connector** %10, align 8
  %34 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @drm_dp_mst_deallocate_vcpi(i32* %32, i32 %35)
  %37 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %38 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %37, i32 0, i32 1
  %39 = load %struct.intel_connector*, %struct.intel_connector** %10, align 8
  %40 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @drm_dp_send_power_updown_phy(i32* %38, i32 %41, i32 0)
  %43 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %44 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, i64* %44, align 8
  %47 = load %struct.intel_dp_mst_encoder*, %struct.intel_dp_mst_encoder** %7, align 8
  %48 = getelementptr inbounds %struct.intel_dp_mst_encoder, %struct.intel_dp_mst_encoder* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  %49 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %50 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %3
  %54 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %55 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  %56 = call i32 @intel_dp_sink_dpms(%struct.intel_dp* %54, i32 %55)
  %57 = load %struct.intel_digital_port*, %struct.intel_digital_port** %8, align 8
  %58 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32 (%struct.TYPE_2__*, %struct.intel_crtc_state.0*, i32*)*, i32 (%struct.TYPE_2__*, %struct.intel_crtc_state.0*, i32*)** %59, align 8
  %61 = load %struct.intel_digital_port*, %struct.intel_digital_port** %8, align 8
  %62 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %61, i32 0, i32 0
  %63 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %64 = bitcast %struct.intel_crtc_state* %63 to %struct.intel_crtc_state.0*
  %65 = call i32 %60(%struct.TYPE_2__* %62, %struct.intel_crtc_state.0* %64, i32* null)
  br label %66

66:                                               ; preds = %53, %3
  %67 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %68 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %69)
  ret void
}

declare dso_local %struct.intel_dp_mst_encoder* @enc_to_mst(i32*) #1

declare dso_local %struct.intel_connector* @to_intel_connector(i32) #1

declare dso_local i32 @intel_ddi_disable_pipe_clock(%struct.intel_crtc_state*) #1

declare dso_local i32 @drm_dp_check_act_status(i32*) #1

declare dso_local i32 @drm_dp_update_payload_part2(i32*) #1

declare dso_local i32 @drm_dp_mst_deallocate_vcpi(i32*, i32) #1

declare dso_local i32 @drm_dp_send_power_updown_phy(i32*, i32, i32) #1

declare dso_local i32 @intel_dp_sink_dpms(%struct.intel_dp*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
