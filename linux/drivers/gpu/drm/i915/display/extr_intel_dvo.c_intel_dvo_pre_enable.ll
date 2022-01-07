; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dvo.c_intel_dvo_pre_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dvo.c_intel_dvo_pre_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.drm_display_mode, i32 }
%struct.drm_display_mode = type { i32, i32, i32 }
%struct.drm_connector_state = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_crtc = type { i32 }
%struct.intel_dvo = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@DVO_PRESERVE_MASK = common dso_local global i32 0, align 4
@DVO_DATA_ORDER_GBRG = common dso_local global i32 0, align 4
@DVO_DATA_ORDER_FP = common dso_local global i32 0, align 4
@DVO_BORDER_ENABLE = common dso_local global i32 0, align 4
@DVO_BLANK_ACTIVE_HIGH = common dso_local global i32 0, align 4
@DVO_PIPE_STALL = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@DVO_HSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@DVO_VSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@DVO_SRCDIM_HORIZONTAL_SHIFT = common dso_local global i32 0, align 4
@DVO_SRCDIM_VERTICAL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_dvo_pre_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_dvo_pre_enable(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.intel_crtc*, align 8
  %9 = alloca %struct.drm_display_mode*, align 8
  %10 = alloca %struct.intel_dvo*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %15 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %16 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.drm_i915_private* @to_i915(i32 %18)
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %7, align 8
  %20 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %21 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.intel_crtc* @to_intel_crtc(i32 %23)
  store %struct.intel_crtc* %24, %struct.intel_crtc** %8, align 8
  %25 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %26 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store %struct.drm_display_mode* %27, %struct.drm_display_mode** %9, align 8
  %28 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %29 = call %struct.intel_dvo* @enc_to_dvo(%struct.intel_encoder* %28)
  store %struct.intel_dvo* %29, %struct.intel_dvo** %10, align 8
  %30 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %31 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %11, align 4
  %33 = load %struct.intel_dvo*, %struct.intel_dvo** %10, align 8
  %34 = getelementptr inbounds %struct.intel_dvo, %struct.intel_dvo* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %13, align 4
  %37 = load %struct.intel_dvo*, %struct.intel_dvo** %10, align 8
  %38 = getelementptr inbounds %struct.intel_dvo, %struct.intel_dvo* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @I915_READ(i32 %41)
  %43 = load i32, i32* @DVO_PRESERVE_MASK, align 4
  %44 = load i32, i32* @DVO_DATA_ORDER_GBRG, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* @DVO_DATA_ORDER_FP, align 4
  %48 = load i32, i32* @DVO_BORDER_ENABLE, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @DVO_BLANK_ACTIVE_HIGH, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %12, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @DVO_PIPE_SEL(i32 %54)
  %56 = load i32, i32* %12, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* @DVO_PIPE_STALL, align 4
  %59 = load i32, i32* %12, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %12, align 4
  %61 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %62 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %3
  %68 = load i32, i32* @DVO_HSYNC_ACTIVE_HIGH, align 4
  %69 = load i32, i32* %12, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %12, align 4
  br label %71

71:                                               ; preds = %67, %3
  %72 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %73 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load i32, i32* @DVO_VSYNC_ACTIVE_HIGH, align 4
  %80 = load i32, i32* %12, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %12, align 4
  br label %82

82:                                               ; preds = %78, %71
  %83 = load i32, i32* %14, align 4
  %84 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %85 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @DVO_SRCDIM_HORIZONTAL_SHIFT, align 4
  %88 = shl i32 %86, %87
  %89 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %90 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @DVO_SRCDIM_VERTICAL_SHIFT, align 4
  %93 = shl i32 %91, %92
  %94 = or i32 %88, %93
  %95 = call i32 @I915_WRITE(i32 %83, i32 %94)
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @I915_WRITE(i32 %96, i32 %97)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.intel_dvo* @enc_to_dvo(%struct.intel_encoder*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DVO_PIPE_SEL(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
