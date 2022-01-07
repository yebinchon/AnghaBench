; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_psr.c_intel_psr_setup_vsc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_psr.c_intel_psr_setup_vsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.intel_digital_port = type { i32, i32 (i32*, %struct.intel_crtc_state.0*, i32, %struct.dp_sdp*, i32)* }
%struct.intel_crtc_state.0 = type opaque
%struct.dp_sdp = type opaque
%struct.drm_i915_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.dp_sdp.1 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }

@DP_SDP_VSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*, %struct.intel_crtc_state*)* @intel_psr_setup_vsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_psr_setup_vsc(%struct.intel_dp* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_dp*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.intel_digital_port*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.dp_sdp.1, align 8
  store %struct.intel_dp* %0, %struct.intel_dp** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %8 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %9 = call %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp* %8)
  store %struct.intel_digital_port* %9, %struct.intel_digital_port** %5, align 8
  %10 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %11 = call %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp* %10)
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %6, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %2
  %18 = call i32 @memset(%struct.dp_sdp.1* %7, i32 0, i32 24)
  %19 = getelementptr inbounds %struct.dp_sdp.1, %struct.dp_sdp.1* %7, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.dp_sdp.1, %struct.dp_sdp.1* %7, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 7, i32* %22, align 8
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %24 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.dp_sdp.1, %struct.dp_sdp.1* %7, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 5, i32* %30, align 4
  %31 = getelementptr inbounds %struct.dp_sdp.1, %struct.dp_sdp.1* %7, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  store i32 19, i32* %32, align 8
  br label %38

33:                                               ; preds = %17
  %34 = getelementptr inbounds %struct.dp_sdp.1, %struct.dp_sdp.1* %7, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i32 4, i32* %35, align 4
  %36 = getelementptr inbounds %struct.dp_sdp.1, %struct.dp_sdp.1* %7, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  store i32 14, i32* %37, align 8
  br label %38

38:                                               ; preds = %33, %28
  br label %49

39:                                               ; preds = %2
  %40 = call i32 @memset(%struct.dp_sdp.1* %7, i32 0, i32 24)
  %41 = getelementptr inbounds %struct.dp_sdp.1, %struct.dp_sdp.1* %7, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = getelementptr inbounds %struct.dp_sdp.1, %struct.dp_sdp.1* %7, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 7, i32* %44, align 8
  %45 = getelementptr inbounds %struct.dp_sdp.1, %struct.dp_sdp.1* %7, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 2, i32* %46, align 4
  %47 = getelementptr inbounds %struct.dp_sdp.1, %struct.dp_sdp.1* %7, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  store i32 8, i32* %48, align 8
  br label %49

49:                                               ; preds = %39, %38
  %50 = load %struct.intel_digital_port*, %struct.intel_digital_port** %5, align 8
  %51 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %50, i32 0, i32 1
  %52 = load i32 (i32*, %struct.intel_crtc_state.0*, i32, %struct.dp_sdp*, i32)*, i32 (i32*, %struct.intel_crtc_state.0*, i32, %struct.dp_sdp*, i32)** %51, align 8
  %53 = load %struct.intel_digital_port*, %struct.intel_digital_port** %5, align 8
  %54 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %53, i32 0, i32 0
  %55 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %56 = bitcast %struct.intel_crtc_state* %55 to %struct.intel_crtc_state.0*
  %57 = load i32, i32* @DP_SDP_VSC, align 4
  %58 = bitcast %struct.dp_sdp.1* %7 to %struct.dp_sdp*
  %59 = call i32 %52(i32* %54, %struct.intel_crtc_state.0* %56, i32 %57, %struct.dp_sdp* %58, i32 24)
  ret void
}

declare dso_local %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp*) #1

declare dso_local %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp*) #1

declare dso_local i32 @memset(%struct.dp_sdp.1*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
