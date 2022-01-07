; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_crt.c_hsw_enable_crt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_crt.c_hsw_enable_crt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_crtc_state = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_crtc = type { i32 }

@DRM_MODE_DPMS_ON = common dso_local global i32 0, align 4
@PIPE_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @hsw_enable_crt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hsw_enable_crt(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.intel_crtc*, align 8
  %9 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %10 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %11 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.drm_i915_private* @to_i915(i32 %13)
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %7, align 8
  %15 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %16 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.intel_crtc* @to_intel_crtc(i32 %18)
  store %struct.intel_crtc* %19, %struct.intel_crtc** %8, align 8
  %20 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %21 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %24 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON(i32 %28)
  %30 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %31 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %32 = load i32, i32* @DRM_MODE_DPMS_ON, align 4
  %33 = call i32 @intel_crt_set_dpms(%struct.intel_encoder* %30, %struct.intel_crtc_state* %31, i32 %32)
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @intel_wait_for_vblank(%struct.drm_i915_private* %34, i32 %35)
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @intel_wait_for_vblank(%struct.drm_i915_private* %37, i32 %38)
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @intel_set_cpu_fifo_underrun_reporting(%struct.drm_i915_private* %40, i32 %41, i32 1)
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %44 = load i32, i32* @PIPE_A, align 4
  %45 = call i32 @intel_set_pch_fifo_underrun_reporting(%struct.drm_i915_private* %43, i32 %44, i32 1)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @intel_crt_set_dpms(%struct.intel_encoder*, %struct.intel_crtc_state*, i32) #1

declare dso_local i32 @intel_wait_for_vblank(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_set_cpu_fifo_underrun_reporting(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @intel_set_pch_fifo_underrun_reporting(%struct.drm_i915_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
