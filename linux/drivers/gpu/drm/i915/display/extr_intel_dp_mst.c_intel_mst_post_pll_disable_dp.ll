; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_mst.c_intel_mst_post_pll_disable_dp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_mst.c_intel_mst_post_pll_disable_dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.intel_dp_mst_encoder = type { %struct.intel_digital_port* }
%struct.intel_digital_port = type { %struct.TYPE_2__, %struct.intel_dp }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, %struct.intel_crtc_state.0*, %struct.drm_connector_state.1*)* }
%struct.intel_crtc_state.0 = type opaque
%struct.drm_connector_state.1 = type opaque
%struct.intel_dp = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_mst_post_pll_disable_dp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_mst_post_pll_disable_dp(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.intel_dp_mst_encoder*, align 8
  %8 = alloca %struct.intel_digital_port*, align 8
  %9 = alloca %struct.intel_dp*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %10 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %11 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %10, i32 0, i32 0
  %12 = call %struct.intel_dp_mst_encoder* @enc_to_mst(i32* %11)
  store %struct.intel_dp_mst_encoder* %12, %struct.intel_dp_mst_encoder** %7, align 8
  %13 = load %struct.intel_dp_mst_encoder*, %struct.intel_dp_mst_encoder** %7, align 8
  %14 = getelementptr inbounds %struct.intel_dp_mst_encoder, %struct.intel_dp_mst_encoder* %13, i32 0, i32 0
  %15 = load %struct.intel_digital_port*, %struct.intel_digital_port** %14, align 8
  store %struct.intel_digital_port* %15, %struct.intel_digital_port** %8, align 8
  %16 = load %struct.intel_digital_port*, %struct.intel_digital_port** %8, align 8
  %17 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %16, i32 0, i32 1
  store %struct.intel_dp* %17, %struct.intel_dp** %9, align 8
  %18 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %19 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %3
  %23 = load %struct.intel_digital_port*, %struct.intel_digital_port** %8, align 8
  %24 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_2__*, %struct.intel_crtc_state.0*, %struct.drm_connector_state.1*)*, i32 (%struct.TYPE_2__*, %struct.intel_crtc_state.0*, %struct.drm_connector_state.1*)** %25, align 8
  %27 = load %struct.intel_digital_port*, %struct.intel_digital_port** %8, align 8
  %28 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %27, i32 0, i32 0
  %29 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %30 = bitcast %struct.intel_crtc_state* %29 to %struct.intel_crtc_state.0*
  %31 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %32 = bitcast %struct.drm_connector_state* %31 to %struct.drm_connector_state.1*
  %33 = call i32 %26(%struct.TYPE_2__* %28, %struct.intel_crtc_state.0* %30, %struct.drm_connector_state.1* %32)
  br label %34

34:                                               ; preds = %22, %3
  ret void
}

declare dso_local %struct.intel_dp_mst_encoder* @enc_to_mst(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
