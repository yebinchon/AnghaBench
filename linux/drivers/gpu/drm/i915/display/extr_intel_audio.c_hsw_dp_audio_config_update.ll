; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_audio.c_hsw_dp_audio_config_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_audio.c_hsw_dp_audio_config_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.drm_i915_private = type { %struct.i915_audio_component* }
%struct.i915_audio_component = type { i32* }
%struct.dp_aud_n_m = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"using Maud %u, Naud %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"using automatic Maud, Naud\0A\00", align 1
@AUD_CONFIG_N_VALUE_INDEX = common dso_local global i32 0, align 4
@AUD_CONFIG_PIXEL_CLOCK_HDMI_MASK = common dso_local global i32 0, align 4
@AUD_CONFIG_N_PROG_ENABLE = common dso_local global i32 0, align 4
@AUD_CONFIG_N_MASK = common dso_local global i32 0, align 4
@AUD_CONFIG_M_MASK = common dso_local global i32 0, align 4
@AUD_M_CTS_M_VALUE_INDEX = common dso_local global i32 0, align 4
@AUD_M_CTS_M_PROG_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*)* @hsw_dp_audio_config_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hsw_dp_audio_config_update(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.i915_audio_component*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dp_aud_n_m*, align 8
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
  %39 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call %struct.dp_aud_n_m* @audio_config_dp_get_n_m(%struct.intel_crtc_state* %39, i32 %40)
  store %struct.dp_aud_n_m* %41, %struct.dp_aud_n_m** %9, align 8
  %42 = load %struct.dp_aud_n_m*, %struct.dp_aud_n_m** %9, align 8
  %43 = icmp ne %struct.dp_aud_n_m* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load %struct.dp_aud_n_m*, %struct.dp_aud_n_m** %9, align 8
  %46 = getelementptr inbounds %struct.dp_aud_n_m, %struct.dp_aud_n_m* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dp_aud_n_m*, %struct.dp_aud_n_m** %9, align 8
  %49 = getelementptr inbounds %struct.dp_aud_n_m, %struct.dp_aud_n_m* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50)
  br label %54

52:                                               ; preds = %37
  %53 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %44
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @HSW_AUD_CFG(i32 %55)
  %57 = call i32 @I915_READ(i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* @AUD_CONFIG_N_VALUE_INDEX, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %11, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* @AUD_CONFIG_PIXEL_CLOCK_HDMI_MASK, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %11, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* @AUD_CONFIG_N_PROG_ENABLE, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %11, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* @AUD_CONFIG_N_VALUE_INDEX, align 4
  %71 = load i32, i32* %11, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %11, align 4
  %73 = load %struct.dp_aud_n_m*, %struct.dp_aud_n_m** %9, align 8
  %74 = icmp ne %struct.dp_aud_n_m* %73, null
  br i1 %74, label %75, label %89

75:                                               ; preds = %54
  %76 = load i32, i32* @AUD_CONFIG_N_MASK, align 4
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %11, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %11, align 4
  %80 = load %struct.dp_aud_n_m*, %struct.dp_aud_n_m** %9, align 8
  %81 = getelementptr inbounds %struct.dp_aud_n_m, %struct.dp_aud_n_m* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @AUD_CONFIG_N(i32 %82)
  %84 = load i32, i32* %11, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* @AUD_CONFIG_N_PROG_ENABLE, align 4
  %87 = load i32, i32* %11, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %75, %54
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @HSW_AUD_CFG(i32 %90)
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @I915_WRITE(i32 %91, i32 %92)
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @HSW_AUD_M_CTS_ENABLE(i32 %94)
  %96 = call i32 @I915_READ(i32 %95)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* @AUD_CONFIG_M_MASK, align 4
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %11, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* @AUD_M_CTS_M_VALUE_INDEX, align 4
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %11, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* @AUD_M_CTS_M_PROG_ENABLE, align 4
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %11, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %11, align 4
  %109 = load %struct.dp_aud_n_m*, %struct.dp_aud_n_m** %9, align 8
  %110 = icmp ne %struct.dp_aud_n_m* %109, null
  br i1 %110, label %111, label %123

111:                                              ; preds = %89
  %112 = load %struct.dp_aud_n_m*, %struct.dp_aud_n_m** %9, align 8
  %113 = getelementptr inbounds %struct.dp_aud_n_m, %struct.dp_aud_n_m* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %11, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* @AUD_M_CTS_M_VALUE_INDEX, align 4
  %118 = load i32, i32* %11, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* @AUD_M_CTS_M_PROG_ENABLE, align 4
  %121 = load i32, i32* %11, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %11, align 4
  br label %123

123:                                              ; preds = %111, %89
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @HSW_AUD_M_CTS_ENABLE(i32 %124)
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @I915_WRITE(i32 %125, i32 %126)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.dp_aud_n_m* @audio_config_dp_get_n_m(%struct.intel_crtc_state*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @HSW_AUD_CFG(i32) #1

declare dso_local i32 @AUD_CONFIG_N(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @HSW_AUD_M_CTS_ENABLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
