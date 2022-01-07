; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_audio.c_ilk_audio_codec_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_audio.c_ilk_audio_codec_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_crtc = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Disable audio codec on port %c, pipe %c\0A\00", align 1
@PORT_A = common dso_local global i32 0, align 4
@IBX_AUD_CNTL_ST2 = common dso_local global i32 0, align 4
@VLV_AUD_CNTL_ST2 = common dso_local global i32 0, align 4
@CPT_AUD_CNTRL_ST2 = common dso_local global i32 0, align 4
@AUD_CONFIG_N_VALUE_INDEX = common dso_local global i32 0, align 4
@AUD_CONFIG_N_PROG_ENABLE = common dso_local global i32 0, align 4
@AUD_CONFIG_UPPER_N_MASK = common dso_local global i32 0, align 4
@AUD_CONFIG_LOWER_N_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @ilk_audio_codec_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ilk_audio_codec_disable(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.intel_crtc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %15 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %16 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.drm_i915_private* @to_i915(i32 %18)
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %7, align 8
  %20 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %21 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.intel_crtc* @to_intel_crtc(i32 %23)
  store %struct.intel_crtc* %24, %struct.intel_crtc** %8, align 8
  %25 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %26 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  %28 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %29 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @port_name(i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @pipe_name(i32 %33)
  %35 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %34)
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @PORT_A, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @WARN_ON(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %3
  br label %108

43:                                               ; preds = %3
  %44 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %45 = call i64 @HAS_PCH_IBX(%struct.drm_i915_private* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @IBX_AUD_CFG(i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* @IBX_AUD_CNTL_ST2, align 4
  store i32 %50, i32* %14, align 4
  br label %68

51:                                               ; preds = %43
  %52 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %53 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %57 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55, %51
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @VLV_AUD_CFG(i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* @VLV_AUD_CNTL_ST2, align 4
  store i32 %62, i32* %14, align 4
  br label %67

63:                                               ; preds = %55
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @CPT_AUD_CFG(i32 %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* @CPT_AUD_CNTRL_ST2, align 4
  store i32 %66, i32* %14, align 4
  br label %67

67:                                               ; preds = %63, %59
  br label %68

68:                                               ; preds = %67, %47
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @I915_READ(i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* @AUD_CONFIG_N_VALUE_INDEX, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %11, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* @AUD_CONFIG_N_PROG_ENABLE, align 4
  %76 = load i32, i32* %11, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* @AUD_CONFIG_UPPER_N_MASK, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %11, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* @AUD_CONFIG_LOWER_N_MASK, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %11, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %11, align 4
  %86 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %87 = call i64 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %68
  %90 = load i32, i32* @AUD_CONFIG_N_VALUE_INDEX, align 4
  %91 = load i32, i32* %11, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %89, %68
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @I915_WRITE(i32 %94, i32 %95)
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @IBX_ELD_VALID(i32 %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @I915_READ(i32 %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %12, align 4
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %11, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @I915_WRITE(i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %93, %42
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i32 @port_name(i32) #1

declare dso_local i32 @pipe_name(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @HAS_PCH_IBX(%struct.drm_i915_private*) #1

declare dso_local i32 @IBX_AUD_CFG(i32) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @VLV_AUD_CFG(i32) #1

declare dso_local i32 @CPT_AUD_CFG(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @IBX_ELD_VALID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
