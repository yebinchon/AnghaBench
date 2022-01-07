; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_mst.c_intel_mst_disable_dp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_mst.c_intel_mst_disable_dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32 }
%struct.intel_crtc_state = type { i64 }
%struct.drm_connector_state = type { i32 }
%struct.intel_dp_mst_encoder = type { %struct.intel_digital_port* }
%struct.intel_digital_port = type { %struct.intel_dp }
%struct.intel_dp = type { i32, i32 }
%struct.intel_connector = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"active links %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to update payload %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_mst_disable_dp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_mst_disable_dp(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.intel_dp_mst_encoder*, align 8
  %8 = alloca %struct.intel_digital_port*, align 8
  %9 = alloca %struct.intel_dp*, align 8
  %10 = alloca %struct.intel_connector*, align 8
  %11 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %12 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %13 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %12, i32 0, i32 0
  %14 = call %struct.intel_dp_mst_encoder* @enc_to_mst(i32* %13)
  store %struct.intel_dp_mst_encoder* %14, %struct.intel_dp_mst_encoder** %7, align 8
  %15 = load %struct.intel_dp_mst_encoder*, %struct.intel_dp_mst_encoder** %7, align 8
  %16 = getelementptr inbounds %struct.intel_dp_mst_encoder, %struct.intel_dp_mst_encoder* %15, i32 0, i32 0
  %17 = load %struct.intel_digital_port*, %struct.intel_digital_port** %16, align 8
  store %struct.intel_digital_port* %17, %struct.intel_digital_port** %8, align 8
  %18 = load %struct.intel_digital_port*, %struct.intel_digital_port** %8, align 8
  %19 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %18, i32 0, i32 0
  store %struct.intel_dp* %19, %struct.intel_dp** %9, align 8
  %20 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %21 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.intel_connector* @to_intel_connector(i32 %22)
  store %struct.intel_connector* %23, %struct.intel_connector** %10, align 8
  %24 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %25 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %29 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %28, i32 0, i32 0
  %30 = load %struct.intel_connector*, %struct.intel_connector** %10, align 8
  %31 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @drm_dp_mst_reset_vcpi_slots(i32* %29, i32 %32)
  %34 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %35 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %34, i32 0, i32 0
  %36 = call i32 @drm_dp_update_payload_part1(i32* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %3
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %3
  %43 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %44 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %49 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %50 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %51 = call i32 @intel_audio_codec_disable(%struct.intel_encoder* %48, %struct.intel_crtc_state* %49, %struct.drm_connector_state* %50)
  br label %52

52:                                               ; preds = %47, %42
  ret void
}

declare dso_local %struct.intel_dp_mst_encoder* @enc_to_mst(i32*) #1

declare dso_local %struct.intel_connector* @to_intel_connector(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @drm_dp_mst_reset_vcpi_slots(i32*, i32) #1

declare dso_local i32 @drm_dp_update_payload_part1(i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @intel_audio_codec_disable(%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
