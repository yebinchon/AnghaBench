; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_disable_hdmi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_disable_hdmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_hdmi = type { i32 }
%struct.intel_digital_port = type { i32 (%struct.intel_encoder*, i32, %struct.intel_crtc_state.0*, %struct.drm_connector_state.1*)* }
%struct.intel_crtc_state.0 = type opaque
%struct.drm_connector_state.1 = type opaque
%struct.intel_crtc = type { i64 }

@SDVO_ENABLE = common dso_local global i32 0, align 4
@HDMI_AUDIO_ENABLE = common dso_local global i32 0, align 4
@PIPE_B = common dso_local global i64 0, align 8
@PIPE_A = common dso_local global i32 0, align 4
@SDVO_PIPE_SEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_disable_hdmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_disable_hdmi(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.intel_hdmi*, align 8
  %10 = alloca %struct.intel_digital_port*, align 8
  %11 = alloca %struct.intel_crtc*, align 8
  %12 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %13 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %14 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %7, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %18 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %17)
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %8, align 8
  %19 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %20 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %19, i32 0, i32 0
  %21 = call %struct.intel_hdmi* @enc_to_intel_hdmi(%struct.TYPE_4__* %20)
  store %struct.intel_hdmi* %21, %struct.intel_hdmi** %9, align 8
  %22 = load %struct.intel_hdmi*, %struct.intel_hdmi** %9, align 8
  %23 = call %struct.intel_digital_port* @hdmi_to_dig_port(%struct.intel_hdmi* %22)
  store %struct.intel_digital_port* %23, %struct.intel_digital_port** %10, align 8
  %24 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %25 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.intel_crtc* @to_intel_crtc(i32 %27)
  store %struct.intel_crtc* %28, %struct.intel_crtc** %11, align 8
  %29 = load %struct.intel_hdmi*, %struct.intel_hdmi** %9, align 8
  %30 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @I915_READ(i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* @SDVO_ENABLE, align 4
  %34 = load i32, i32* @HDMI_AUDIO_ENABLE, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %12, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %12, align 4
  %39 = load %struct.intel_hdmi*, %struct.intel_hdmi** %9, align 8
  %40 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @I915_WRITE(i32 %41, i32 %42)
  %44 = load %struct.intel_hdmi*, %struct.intel_hdmi** %9, align 8
  %45 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @POSTING_READ(i32 %46)
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %49 = call i64 @HAS_PCH_IBX(%struct.drm_i915_private* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %114

51:                                               ; preds = %3
  %52 = load %struct.intel_crtc*, %struct.intel_crtc** %11, align 8
  %53 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PIPE_B, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %114

57:                                               ; preds = %51
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %59 = load i32, i32* @PIPE_A, align 4
  %60 = call i32 @intel_set_cpu_fifo_underrun_reporting(%struct.drm_i915_private* %58, i32 %59, i32 0)
  %61 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %62 = load i32, i32* @PIPE_A, align 4
  %63 = call i32 @intel_set_pch_fifo_underrun_reporting(%struct.drm_i915_private* %61, i32 %62, i32 0)
  %64 = load i32, i32* @SDVO_PIPE_SEL_MASK, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %12, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* @SDVO_ENABLE, align 4
  %69 = load i32, i32* @PIPE_A, align 4
  %70 = call i32 @SDVO_PIPE_SEL(i32 %69)
  %71 = or i32 %68, %70
  %72 = load i32, i32* %12, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %12, align 4
  %74 = load %struct.intel_hdmi*, %struct.intel_hdmi** %9, align 8
  %75 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @I915_WRITE(i32 %76, i32 %77)
  %79 = load %struct.intel_hdmi*, %struct.intel_hdmi** %9, align 8
  %80 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @POSTING_READ(i32 %81)
  %83 = load %struct.intel_hdmi*, %struct.intel_hdmi** %9, align 8
  %84 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @I915_WRITE(i32 %85, i32 %86)
  %88 = load %struct.intel_hdmi*, %struct.intel_hdmi** %9, align 8
  %89 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @POSTING_READ(i32 %90)
  %92 = load i32, i32* @SDVO_ENABLE, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %12, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %12, align 4
  %96 = load %struct.intel_hdmi*, %struct.intel_hdmi** %9, align 8
  %97 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @I915_WRITE(i32 %98, i32 %99)
  %101 = load %struct.intel_hdmi*, %struct.intel_hdmi** %9, align 8
  %102 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @POSTING_READ(i32 %103)
  %105 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %106 = load i32, i32* @PIPE_A, align 4
  %107 = call i32 @intel_wait_for_vblank_if_active(%struct.drm_i915_private* %105, i32 %106)
  %108 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %109 = load i32, i32* @PIPE_A, align 4
  %110 = call i32 @intel_set_cpu_fifo_underrun_reporting(%struct.drm_i915_private* %108, i32 %109, i32 1)
  %111 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %112 = load i32, i32* @PIPE_A, align 4
  %113 = call i32 @intel_set_pch_fifo_underrun_reporting(%struct.drm_i915_private* %111, i32 %112, i32 1)
  br label %114

114:                                              ; preds = %57, %51, %3
  %115 = load %struct.intel_digital_port*, %struct.intel_digital_port** %10, align 8
  %116 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %115, i32 0, i32 0
  %117 = load i32 (%struct.intel_encoder*, i32, %struct.intel_crtc_state.0*, %struct.drm_connector_state.1*)*, i32 (%struct.intel_encoder*, i32, %struct.intel_crtc_state.0*, %struct.drm_connector_state.1*)** %116, align 8
  %118 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %119 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %120 = bitcast %struct.intel_crtc_state* %119 to %struct.intel_crtc_state.0*
  %121 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %122 = bitcast %struct.drm_connector_state* %121 to %struct.drm_connector_state.1*
  %123 = call i32 %117(%struct.intel_encoder* %118, i32 0, %struct.intel_crtc_state.0* %120, %struct.drm_connector_state.1* %122)
  %124 = load %struct.intel_hdmi*, %struct.intel_hdmi** %9, align 8
  %125 = call i32 @intel_dp_dual_mode_set_tmds_output(%struct.intel_hdmi* %124, i32 0)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local %struct.intel_hdmi* @enc_to_intel_hdmi(%struct.TYPE_4__*) #1

declare dso_local %struct.intel_digital_port* @hdmi_to_dig_port(%struct.intel_hdmi*) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i64 @HAS_PCH_IBX(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_set_cpu_fifo_underrun_reporting(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @intel_set_pch_fifo_underrun_reporting(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @SDVO_PIPE_SEL(i32) #1

declare dso_local i32 @intel_wait_for_vblank_if_active(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_dp_dual_mode_set_tmds_output(%struct.intel_hdmi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
