; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_pre_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_pre_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32 }
%struct.intel_crtc_state = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.intel_crtc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_lspcon = type { i64 }
%struct.intel_digital_port = type { i32 (%struct.intel_encoder*, i32, %struct.intel_crtc_state.0*, %struct.drm_connector_state.1*)* }
%struct.intel_crtc_state.0 = type opaque
%struct.drm_connector_state.1 = type opaque

@INTEL_OUTPUT_HDMI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_ddi_pre_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_ddi_pre_enable(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.intel_crtc*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.intel_lspcon*, align 8
  %11 = alloca %struct.intel_digital_port*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %12 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %13 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.intel_crtc* @to_intel_crtc(i32 %15)
  store %struct.intel_crtc* %16, %struct.intel_crtc** %7, align 8
  %17 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %18 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.drm_i915_private* @to_i915(i32 %20)
  store %struct.drm_i915_private* %21, %struct.drm_i915_private** %8, align 8
  %22 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %23 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %26 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @WARN_ON(i32 %27)
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %30 = call i32 @INTEL_GEN(%struct.drm_i915_private* %29)
  %31 = icmp sge i32 %30, 11
  br i1 %31, label %32, label %36

32:                                               ; preds = %3
  %33 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %34 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %35 = call i32 @icl_map_plls_to_ports(%struct.intel_encoder* %33, %struct.intel_crtc_state* %34)
  br label %36

36:                                               ; preds = %32, %3
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @intel_set_cpu_fifo_underrun_reporting(%struct.drm_i915_private* %37, i32 %38, i32 1)
  %40 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %41 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %42 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %46 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %47 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %48 = call i32 @intel_ddi_pre_enable_hdmi(%struct.intel_encoder* %45, %struct.intel_crtc_state* %46, %struct.drm_connector_state* %47)
  br label %78

49:                                               ; preds = %36
  %50 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %51 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %50, i32 0, i32 0
  %52 = call %struct.intel_lspcon* @enc_to_intel_lspcon(i32* %51)
  store %struct.intel_lspcon* %52, %struct.intel_lspcon** %10, align 8
  %53 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %54 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %55 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %56 = call i32 @intel_ddi_pre_enable_dp(%struct.intel_encoder* %53, %struct.intel_crtc_state* %54, %struct.drm_connector_state* %55)
  %57 = load %struct.intel_lspcon*, %struct.intel_lspcon** %10, align 8
  %58 = getelementptr inbounds %struct.intel_lspcon, %struct.intel_lspcon* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %49
  %62 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %63 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %62, i32 0, i32 0
  %64 = call %struct.intel_digital_port* @enc_to_dig_port(i32* %63)
  store %struct.intel_digital_port* %64, %struct.intel_digital_port** %11, align 8
  %65 = load %struct.intel_digital_port*, %struct.intel_digital_port** %11, align 8
  %66 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %65, i32 0, i32 0
  %67 = load i32 (%struct.intel_encoder*, i32, %struct.intel_crtc_state.0*, %struct.drm_connector_state.1*)*, i32 (%struct.intel_encoder*, i32, %struct.intel_crtc_state.0*, %struct.drm_connector_state.1*)** %66, align 8
  %68 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %69 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %70 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %73 = bitcast %struct.intel_crtc_state* %72 to %struct.intel_crtc_state.0*
  %74 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %75 = bitcast %struct.drm_connector_state* %74 to %struct.drm_connector_state.1*
  %76 = call i32 %67(%struct.intel_encoder* %68, i32 %71, %struct.intel_crtc_state.0* %73, %struct.drm_connector_state.1* %75)
  br label %77

77:                                               ; preds = %61, %49
  br label %78

78:                                               ; preds = %77, %44
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @icl_map_plls_to_ports(%struct.intel_encoder*, %struct.intel_crtc_state*) #1

declare dso_local i32 @intel_set_cpu_fifo_underrun_reporting(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i64 @intel_crtc_has_type(%struct.intel_crtc_state*, i32) #1

declare dso_local i32 @intel_ddi_pre_enable_hdmi(%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*) #1

declare dso_local %struct.intel_lspcon* @enc_to_intel_lspcon(i32*) #1

declare dso_local i32 @intel_ddi_pre_enable_dp(%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*) #1

declare dso_local %struct.intel_digital_port* @enc_to_dig_port(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
