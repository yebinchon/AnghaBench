; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_crt.c_intel_crt_set_dpms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_crt.c_intel_crt_set_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_display_mode, i32 }
%struct.drm_display_mode = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_crt = type { i32 }
%struct.intel_crtc = type { i32 }

@ADPA_HOTPLUG_BITS = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@ADPA_HSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@ADPA_VSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@ADPA_DAC_ENABLE = common dso_local global i32 0, align 4
@ADPA_HSYNC_CNTL_DISABLE = common dso_local global i32 0, align 4
@ADPA_VSYNC_CNTL_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*, i32)* @intel_crt_set_dpms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_crt_set_dpms(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, i32 %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.intel_crt*, align 8
  %9 = alloca %struct.intel_crtc*, align 8
  %10 = alloca %struct.drm_display_mode*, align 8
  %11 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %13 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.drm_i915_private* @to_i915(i32 %15)
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %7, align 8
  %17 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %18 = call %struct.intel_crt* @intel_encoder_to_crt(%struct.intel_encoder* %17)
  store %struct.intel_crt* %18, %struct.intel_crt** %8, align 8
  %19 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %20 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.intel_crtc* @to_intel_crtc(i32 %22)
  store %struct.intel_crtc* %23, %struct.intel_crtc** %9, align 8
  %24 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %25 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store %struct.drm_display_mode* %26, %struct.drm_display_mode** %10, align 8
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %28 = call i32 @INTEL_GEN(%struct.drm_i915_private* %27)
  %29 = icmp sge i32 %28, 5
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* @ADPA_HOTPLUG_BITS, align 4
  store i32 %31, i32* %11, align 4
  br label %33

32:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %32, %30
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %35 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i32, i32* @ADPA_HSYNC_ACTIVE_HIGH, align 4
  %42 = load i32, i32* %11, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %40, %33
  %45 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %46 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32, i32* @ADPA_VSYNC_ACTIVE_HIGH, align 4
  %53 = load i32, i32* %11, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %51, %44
  %56 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %57 = call i64 @HAS_PCH_LPT(%struct.drm_i915_private* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %79

60:                                               ; preds = %55
  %61 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %62 = call i64 @HAS_PCH_CPT(%struct.drm_i915_private* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load %struct.intel_crtc*, %struct.intel_crtc** %9, align 8
  %66 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ADPA_PIPE_SEL_CPT(i32 %67)
  %69 = load i32, i32* %11, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %11, align 4
  br label %78

71:                                               ; preds = %60
  %72 = load %struct.intel_crtc*, %struct.intel_crtc** %9, align 8
  %73 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ADPA_PIPE_SEL(i32 %74)
  %76 = load i32, i32* %11, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %71, %64
  br label %79

79:                                               ; preds = %78, %59
  %80 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %81 = call i32 @HAS_PCH_SPLIT(%struct.drm_i915_private* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %79
  %84 = load %struct.intel_crtc*, %struct.intel_crtc** %9, align 8
  %85 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @BCLRPAT(i32 %86)
  %88 = call i32 @I915_WRITE(i32 %87, i32 0)
  br label %89

89:                                               ; preds = %83, %79
  %90 = load i32, i32* %6, align 4
  switch i32 %90, label %113 [
    i32 130, label %91
    i32 129, label %95
    i32 128, label %101
    i32 131, label %107
  ]

91:                                               ; preds = %89
  %92 = load i32, i32* @ADPA_DAC_ENABLE, align 4
  %93 = load i32, i32* %11, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %11, align 4
  br label %113

95:                                               ; preds = %89
  %96 = load i32, i32* @ADPA_DAC_ENABLE, align 4
  %97 = load i32, i32* @ADPA_HSYNC_CNTL_DISABLE, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* %11, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %11, align 4
  br label %113

101:                                              ; preds = %89
  %102 = load i32, i32* @ADPA_DAC_ENABLE, align 4
  %103 = load i32, i32* @ADPA_VSYNC_CNTL_DISABLE, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* %11, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %11, align 4
  br label %113

107:                                              ; preds = %89
  %108 = load i32, i32* @ADPA_HSYNC_CNTL_DISABLE, align 4
  %109 = load i32, i32* @ADPA_VSYNC_CNTL_DISABLE, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* %11, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %11, align 4
  br label %113

113:                                              ; preds = %89, %107, %101, %95, %91
  %114 = load %struct.intel_crt*, %struct.intel_crt** %8, align 8
  %115 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @I915_WRITE(i32 %116, i32 %117)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_crt* @intel_encoder_to_crt(%struct.intel_encoder*) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @HAS_PCH_LPT(%struct.drm_i915_private*) #1

declare dso_local i64 @HAS_PCH_CPT(%struct.drm_i915_private*) #1

declare dso_local i32 @ADPA_PIPE_SEL_CPT(i32) #1

declare dso_local i32 @ADPA_PIPE_SEL(i32) #1

declare dso_local i32 @HAS_PCH_SPLIT(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @BCLRPAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
