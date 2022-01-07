; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_disable_sdvo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_disable_sdvo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_crtc_state = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_sdvo = type { i32 }
%struct.intel_crtc = type { i64 }

@SDVO_ENABLE = common dso_local global i32 0, align 4
@PIPE_B = common dso_local global i64 0, align 8
@PIPE_A = common dso_local global i32 0, align 4
@SDVO_PIPE_SEL_MASK = common dso_local global i32 0, align 4
@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_disable_sdvo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_disable_sdvo(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.intel_sdvo*, align 8
  %9 = alloca %struct.intel_crtc*, align 8
  %10 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %11 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %12 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.drm_i915_private* @to_i915(i32 %14)
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %7, align 8
  %16 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %17 = call %struct.intel_sdvo* @to_sdvo(%struct.intel_encoder* %16)
  store %struct.intel_sdvo* %17, %struct.intel_sdvo** %8, align 8
  %18 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %19 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.intel_crtc* @to_intel_crtc(i32 %21)
  store %struct.intel_crtc* %22, %struct.intel_crtc** %9, align 8
  %23 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %24 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load %struct.intel_sdvo*, %struct.intel_sdvo** %8, align 8
  %29 = call i32 @intel_sdvo_disable_audio(%struct.intel_sdvo* %28)
  br label %30

30:                                               ; preds = %27, %3
  %31 = load %struct.intel_sdvo*, %struct.intel_sdvo** %8, align 8
  %32 = call i32 @intel_sdvo_set_active_outputs(%struct.intel_sdvo* %31, i32 0)
  %33 = load %struct.intel_sdvo*, %struct.intel_sdvo** %8, align 8
  %34 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @I915_READ(i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* @SDVO_ENABLE, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %10, align 4
  %41 = load %struct.intel_sdvo*, %struct.intel_sdvo** %8, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @intel_sdvo_write_sdvox(%struct.intel_sdvo* %41, i32 %42)
  %44 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %45 = call i64 @HAS_PCH_IBX(%struct.drm_i915_private* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %89

47:                                               ; preds = %30
  %48 = load %struct.intel_crtc*, %struct.intel_crtc** %9, align 8
  %49 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PIPE_B, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %89

53:                                               ; preds = %47
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %55 = load i32, i32* @PIPE_A, align 4
  %56 = call i32 @intel_set_cpu_fifo_underrun_reporting(%struct.drm_i915_private* %54, i32 %55, i32 0)
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %58 = load i32, i32* @PIPE_A, align 4
  %59 = call i32 @intel_set_pch_fifo_underrun_reporting(%struct.drm_i915_private* %57, i32 %58, i32 0)
  %60 = load i32, i32* @SDVO_PIPE_SEL_MASK, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %10, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* @SDVO_ENABLE, align 4
  %65 = load i32, i32* @PIPE_A, align 4
  %66 = call i32 @SDVO_PIPE_SEL(i32 %65)
  %67 = or i32 %64, %66
  %68 = load i32, i32* %10, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %10, align 4
  %70 = load %struct.intel_sdvo*, %struct.intel_sdvo** %8, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @intel_sdvo_write_sdvox(%struct.intel_sdvo* %70, i32 %71)
  %73 = load i32, i32* @SDVO_ENABLE, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %10, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %10, align 4
  %77 = load %struct.intel_sdvo*, %struct.intel_sdvo** %8, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @intel_sdvo_write_sdvox(%struct.intel_sdvo* %77, i32 %78)
  %80 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %81 = load i32, i32* @PIPE_A, align 4
  %82 = call i32 @intel_wait_for_vblank_if_active(%struct.drm_i915_private* %80, i32 %81)
  %83 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %84 = load i32, i32* @PIPE_A, align 4
  %85 = call i32 @intel_set_cpu_fifo_underrun_reporting(%struct.drm_i915_private* %83, i32 %84, i32 1)
  %86 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %87 = load i32, i32* @PIPE_A, align 4
  %88 = call i32 @intel_set_pch_fifo_underrun_reporting(%struct.drm_i915_private* %86, i32 %87, i32 1)
  br label %89

89:                                               ; preds = %53, %47, %30
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_sdvo* @to_sdvo(%struct.intel_encoder*) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local i32 @intel_sdvo_disable_audio(%struct.intel_sdvo*) #1

declare dso_local i32 @intel_sdvo_set_active_outputs(%struct.intel_sdvo*, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @intel_sdvo_write_sdvox(%struct.intel_sdvo*, i32) #1

declare dso_local i64 @HAS_PCH_IBX(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_set_cpu_fifo_underrun_reporting(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @intel_set_pch_fifo_underrun_reporting(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @SDVO_PIPE_SEL(i32) #1

declare dso_local i32 @intel_wait_for_vblank_if_active(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
