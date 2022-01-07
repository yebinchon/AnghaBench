; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_icl_update_active_dpll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_icl_update_active_dpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_atomic_state = type { i32 }
%struct.intel_crtc = type { i32 }
%struct.intel_encoder = type { i64, i32 }
%struct.intel_crtc_state = type { i32 }
%struct.intel_digital_port = type { i64 }
%struct.TYPE_2__ = type { %struct.intel_digital_port* }

@ICL_PORT_DPLL_DEFAULT = common dso_local global i32 0, align 4
@INTEL_OUTPUT_DP_MST = common dso_local global i64 0, align 8
@TC_PORT_DP_ALT = common dso_local global i64 0, align 8
@TC_PORT_LEGACY = common dso_local global i64 0, align 8
@ICL_PORT_DPLL_MG_PHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_atomic_state*, %struct.intel_crtc*, %struct.intel_encoder*)* @icl_update_active_dpll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icl_update_active_dpll(%struct.intel_atomic_state* %0, %struct.intel_crtc* %1, %struct.intel_encoder* %2) #0 {
  %4 = alloca %struct.intel_atomic_state*, align 8
  %5 = alloca %struct.intel_crtc*, align 8
  %6 = alloca %struct.intel_encoder*, align 8
  %7 = alloca %struct.intel_crtc_state*, align 8
  %8 = alloca %struct.intel_digital_port*, align 8
  %9 = alloca i32, align 4
  store %struct.intel_atomic_state* %0, %struct.intel_atomic_state** %4, align 8
  store %struct.intel_crtc* %1, %struct.intel_crtc** %5, align 8
  store %struct.intel_encoder* %2, %struct.intel_encoder** %6, align 8
  %10 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %4, align 8
  %11 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %12 = call %struct.intel_crtc_state* @intel_atomic_get_new_crtc_state(%struct.intel_atomic_state* %10, %struct.intel_crtc* %11)
  store %struct.intel_crtc_state* %12, %struct.intel_crtc_state** %7, align 8
  %13 = load i32, i32* @ICL_PORT_DPLL_DEFAULT, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %15 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @INTEL_OUTPUT_DP_MST, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %21 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %20, i32 0, i32 1
  %22 = call %struct.TYPE_2__* @enc_to_mst(i32* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.intel_digital_port*, %struct.intel_digital_port** %23, align 8
  br label %29

25:                                               ; preds = %3
  %26 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %27 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %26, i32 0, i32 1
  %28 = call %struct.intel_digital_port* @enc_to_dig_port(i32* %27)
  br label %29

29:                                               ; preds = %25, %19
  %30 = phi %struct.intel_digital_port* [ %24, %19 ], [ %28, %25 ]
  store %struct.intel_digital_port* %30, %struct.intel_digital_port** %8, align 8
  %31 = load %struct.intel_digital_port*, %struct.intel_digital_port** %8, align 8
  %32 = icmp ne %struct.intel_digital_port* %31, null
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load %struct.intel_digital_port*, %struct.intel_digital_port** %8, align 8
  %35 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TC_PORT_DP_ALT, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.intel_digital_port*, %struct.intel_digital_port** %8, align 8
  %41 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TC_PORT_LEGACY, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39, %33
  %46 = load i32, i32* @ICL_PORT_DPLL_MG_PHY, align 4
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %45, %39, %29
  %48 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @icl_set_active_port_dpll(%struct.intel_crtc_state* %48, i32 %49)
  ret void
}

declare dso_local %struct.intel_crtc_state* @intel_atomic_get_new_crtc_state(%struct.intel_atomic_state*, %struct.intel_crtc*) #1

declare dso_local %struct.TYPE_2__* @enc_to_mst(i32*) #1

declare dso_local %struct.intel_digital_port* @enc_to_dig_port(i32*) #1

declare dso_local i32 @icl_set_active_port_dpll(%struct.intel_crtc_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
