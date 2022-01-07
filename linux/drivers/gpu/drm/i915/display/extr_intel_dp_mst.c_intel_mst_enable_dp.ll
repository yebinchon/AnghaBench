; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_mst.c_intel_mst_enable_dp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_mst.c_intel_mst_enable_dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.intel_crtc_state = type { i64 }
%struct.drm_connector_state = type { i32 }
%struct.intel_dp_mst_encoder = type { %struct.intel_digital_port* }
%struct.intel_digital_port = type { %struct.TYPE_3__, %struct.intel_dp }
%struct.TYPE_3__ = type { i32 }
%struct.intel_dp = type { i32, i32 }
%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"active links %d\0A\00", align 1
@DP_TP_STATUS_ACT_SENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Timed out waiting for ACT sent\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_mst_enable_dp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_mst_enable_dp(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.intel_dp_mst_encoder*, align 8
  %8 = alloca %struct.intel_digital_port*, align 8
  %9 = alloca %struct.intel_dp*, align 8
  %10 = alloca %struct.drm_i915_private*, align 8
  %11 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %12 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %13 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %12, i32 0, i32 0
  %14 = call %struct.intel_dp_mst_encoder* @enc_to_mst(%struct.TYPE_4__* %13)
  store %struct.intel_dp_mst_encoder* %14, %struct.intel_dp_mst_encoder** %7, align 8
  %15 = load %struct.intel_dp_mst_encoder*, %struct.intel_dp_mst_encoder** %7, align 8
  %16 = getelementptr inbounds %struct.intel_dp_mst_encoder, %struct.intel_dp_mst_encoder* %15, i32 0, i32 0
  %17 = load %struct.intel_digital_port*, %struct.intel_digital_port** %16, align 8
  store %struct.intel_digital_port* %17, %struct.intel_digital_port** %8, align 8
  %18 = load %struct.intel_digital_port*, %struct.intel_digital_port** %8, align 8
  %19 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %18, i32 0, i32 1
  store %struct.intel_dp* %19, %struct.intel_dp** %9, align 8
  %20 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %21 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.drm_i915_private* @to_i915(i32 %23)
  store %struct.drm_i915_private* %24, %struct.drm_i915_private** %10, align 8
  %25 = load %struct.intel_digital_port*, %struct.intel_digital_port** %8, align 8
  %26 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  %29 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %30 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @DP_TP_STATUS(i32 %34)
  %36 = load i32, i32* @DP_TP_STATUS_ACT_SENT, align 4
  %37 = call i64 @intel_de_wait_for_set(%struct.drm_i915_private* %33, i32 %35, i32 %36, i32 1)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %3
  %40 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %3
  %42 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %43 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %42, i32 0, i32 0
  %44 = call i32 @drm_dp_check_act_status(i32* %43)
  %45 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %46 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %45, i32 0, i32 0
  %47 = call i32 @drm_dp_update_payload_part2(i32* %46)
  %48 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %49 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %41
  %53 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %54 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %55 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %56 = call i32 @intel_audio_codec_enable(%struct.intel_encoder* %53, %struct.intel_crtc_state* %54, %struct.drm_connector_state* %55)
  br label %57

57:                                               ; preds = %52, %41
  ret void
}

declare dso_local %struct.intel_dp_mst_encoder* @enc_to_mst(%struct.TYPE_4__*) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i64 @intel_de_wait_for_set(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i32 @DP_TP_STATUS(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_dp_check_act_status(i32*) #1

declare dso_local i32 @drm_dp_update_payload_part2(i32*) #1

declare dso_local i32 @intel_audio_codec_enable(%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
