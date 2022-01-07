; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_enable_ddi_dp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_enable_ddi_dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_crtc_state = type { i64 }
%struct.drm_connector_state = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_dp = type { i32 }

@PORT_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_enable_ddi_dp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_enable_ddi_dp(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.intel_dp*, align 8
  %9 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %10 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %11 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.drm_i915_private* @to_i915(i32 %13)
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %7, align 8
  %15 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %16 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %15, i32 0, i32 1
  %17 = call %struct.intel_dp* @enc_to_intel_dp(%struct.TYPE_2__* %16)
  store %struct.intel_dp* %17, %struct.intel_dp** %8, align 8
  %18 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %19 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @PORT_A, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %26 = call i32 @INTEL_GEN(%struct.drm_i915_private* %25)
  %27 = icmp slt i32 %26, 9
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load %struct.intel_dp*, %struct.intel_dp** %8, align 8
  %30 = call i32 @intel_dp_stop_link_train(%struct.intel_dp* %29)
  br label %31

31:                                               ; preds = %28, %24, %3
  %32 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %33 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %34 = call i32 @intel_edp_backlight_on(%struct.intel_crtc_state* %32, %struct.drm_connector_state* %33)
  %35 = load %struct.intel_dp*, %struct.intel_dp** %8, align 8
  %36 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %37 = call i32 @intel_psr_enable(%struct.intel_dp* %35, %struct.intel_crtc_state* %36)
  %38 = load %struct.intel_dp*, %struct.intel_dp** %8, align 8
  %39 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %40 = call i32 @intel_dp_ycbcr_420_enable(%struct.intel_dp* %38, %struct.intel_crtc_state* %39)
  %41 = load %struct.intel_dp*, %struct.intel_dp** %8, align 8
  %42 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %43 = call i32 @intel_edp_drrs_enable(%struct.intel_dp* %41, %struct.intel_crtc_state* %42)
  %44 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %45 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %31
  %49 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %50 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %51 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %52 = call i32 @intel_audio_codec_enable(%struct.intel_encoder* %49, %struct.intel_crtc_state* %50, %struct.drm_connector_state* %51)
  br label %53

53:                                               ; preds = %48, %31
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_dp* @enc_to_intel_dp(%struct.TYPE_2__*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_dp_stop_link_train(%struct.intel_dp*) #1

declare dso_local i32 @intel_edp_backlight_on(%struct.intel_crtc_state*, %struct.drm_connector_state*) #1

declare dso_local i32 @intel_psr_enable(%struct.intel_dp*, %struct.intel_crtc_state*) #1

declare dso_local i32 @intel_dp_ycbcr_420_enable(%struct.intel_dp*, %struct.intel_crtc_state*) #1

declare dso_local i32 @intel_edp_drrs_enable(%struct.intel_dp*, %struct.intel_crtc_state*) #1

declare dso_local i32 @intel_audio_codec_enable(%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
