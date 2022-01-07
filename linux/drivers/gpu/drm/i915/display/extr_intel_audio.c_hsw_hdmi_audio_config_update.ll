; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_audio.c_hsw_hdmi_audio_config_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_audio.c_hsw_hdmi_audio_config_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.drm_i915_private = type { %struct.i915_audio_component* }
%struct.i915_audio_component = type { i32* }

@AUD_CONFIG_N_VALUE_INDEX = common dso_local global i32 0, align 4
@AUD_CONFIG_PIXEL_CLOCK_HDMI_MASK = common dso_local global i32 0, align 4
@AUD_CONFIG_N_PROG_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"using N %d\0A\00", align 1
@AUD_CONFIG_N_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"using automatic N\0A\00", align 1
@AUD_M_CTS_M_PROG_ENABLE = common dso_local global i32 0, align 4
@AUD_M_CTS_M_VALUE_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*)* @hsw_hdmi_audio_config_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hsw_hdmi_audio_config_update(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.i915_audio_component*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %12 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %13 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.drm_i915_private* @to_i915(i32 %15)
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %5, align 8
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %18 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %17, i32 0, i32 0
  %19 = load %struct.i915_audio_component*, %struct.i915_audio_component** %18, align 8
  store %struct.i915_audio_component* %19, %struct.i915_audio_component** %6, align 8
  %20 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %21 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %24 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load %struct.i915_audio_component*, %struct.i915_audio_component** %6, align 8
  %27 = icmp ne %struct.i915_audio_component* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %2
  %29 = load %struct.i915_audio_component*, %struct.i915_audio_component** %6, align 8
  %30 = getelementptr inbounds %struct.i915_audio_component, %struct.i915_audio_component* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  br label %37

36:                                               ; preds = %2
  br label %37

37:                                               ; preds = %36, %28
  %38 = phi i32 [ %35, %28 ], [ 0, %36 ]
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @HSW_AUD_CFG(i32 %39)
  %41 = call i32 @I915_READ(i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* @AUD_CONFIG_N_VALUE_INDEX, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %11, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* @AUD_CONFIG_PIXEL_CLOCK_HDMI_MASK, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %11, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* @AUD_CONFIG_N_PROG_ENABLE, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %11, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %11, align 4
  %54 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %55 = call i32 @audio_config_hdmi_pixel_clock(%struct.intel_crtc_state* %54)
  %56 = load i32, i32* %11, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %11, align 4
  %58 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @audio_config_hdmi_get_n(%struct.intel_crtc_state* %58, i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %37
  %64 = load i32, i32* %9, align 4
  %65 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @AUD_CONFIG_N_MASK, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %11, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @AUD_CONFIG_N(i32 %70)
  %72 = load i32, i32* %11, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* @AUD_CONFIG_N_PROG_ENABLE, align 4
  %75 = load i32, i32* %11, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %11, align 4
  br label %79

77:                                               ; preds = %37
  %78 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %63
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @HSW_AUD_CFG(i32 %80)
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @I915_WRITE(i32 %81, i32 %82)
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @HSW_AUD_M_CTS_ENABLE(i32 %84)
  %86 = call i32 @I915_READ(i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* @AUD_M_CTS_M_PROG_ENABLE, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %11, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* @AUD_M_CTS_M_VALUE_INDEX, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %11, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @HSW_AUD_M_CTS_ENABLE(i32 %95)
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @I915_WRITE(i32 %96, i32 %97)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @HSW_AUD_CFG(i32) #1

declare dso_local i32 @audio_config_hdmi_pixel_clock(%struct.intel_crtc_state*) #1

declare dso_local i32 @audio_config_hdmi_get_n(%struct.intel_crtc_state*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @AUD_CONFIG_N(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @HSW_AUD_M_CTS_ENABLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
