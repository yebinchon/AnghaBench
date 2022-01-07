; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_cpt_enable_hdmi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_cpt_enable_hdmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_crtc_state = type { i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_crtc = type { i32 }
%struct.intel_hdmi = type { i32 }

@SDVO_ENABLE = common dso_local global i32 0, align 4
@HDMI_AUDIO_ENABLE = common dso_local global i32 0, align 4
@TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE = common dso_local global i32 0, align 4
@SDVO_COLOR_FORMAT_MASK = common dso_local global i32 0, align 4
@SDVO_COLOR_FORMAT_8bpc = common dso_local global i32 0, align 4
@HDMI_COLOR_FORMAT_12bpc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @cpt_enable_hdmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpt_enable_hdmi(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.intel_crtc*, align 8
  %10 = alloca %struct.intel_hdmi*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %13 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %14 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %7, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %18 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %17)
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %8, align 8
  %19 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %20 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.intel_crtc* @to_intel_crtc(i32 %22)
  store %struct.intel_crtc* %23, %struct.intel_crtc** %9, align 8
  %24 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %25 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %24, i32 0, i32 0
  %26 = call %struct.intel_hdmi* @enc_to_intel_hdmi(%struct.TYPE_4__* %25)
  store %struct.intel_hdmi* %26, %struct.intel_hdmi** %10, align 8
  %27 = load %struct.intel_crtc*, %struct.intel_crtc** %9, align 8
  %28 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %11, align 4
  %30 = load %struct.intel_hdmi*, %struct.intel_hdmi** %10, align 8
  %31 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @I915_READ(i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* @SDVO_ENABLE, align 4
  %35 = load i32, i32* %12, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %12, align 4
  %37 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %38 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %3
  %42 = load i32, i32* @HDMI_AUDIO_ENABLE, align 4
  %43 = load i32, i32* %12, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %41, %3
  %46 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %47 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sgt i32 %48, 24
  br i1 %49, label %50, label %66

50:                                               ; preds = %45
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @TRANS_CHICKEN1(i32 %51)
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @TRANS_CHICKEN1(i32 %53)
  %55 = call i32 @I915_READ(i32 %54)
  %56 = load i32, i32* @TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @I915_WRITE(i32 %52, i32 %57)
  %59 = load i32, i32* @SDVO_COLOR_FORMAT_MASK, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %12, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* @SDVO_COLOR_FORMAT_8bpc, align 4
  %64 = load i32, i32* %12, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %50, %45
  %67 = load %struct.intel_hdmi*, %struct.intel_hdmi** %10, align 8
  %68 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @I915_WRITE(i32 %69, i32 %70)
  %72 = load %struct.intel_hdmi*, %struct.intel_hdmi** %10, align 8
  %73 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @POSTING_READ(i32 %74)
  %76 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %77 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp sgt i32 %78, 24
  br i1 %79, label %80, label %106

80:                                               ; preds = %66
  %81 = load i32, i32* @SDVO_COLOR_FORMAT_MASK, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %12, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* @HDMI_COLOR_FORMAT_12bpc, align 4
  %86 = load i32, i32* %12, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %12, align 4
  %88 = load %struct.intel_hdmi*, %struct.intel_hdmi** %10, align 8
  %89 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @I915_WRITE(i32 %90, i32 %91)
  %93 = load %struct.intel_hdmi*, %struct.intel_hdmi** %10, align 8
  %94 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @POSTING_READ(i32 %95)
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @TRANS_CHICKEN1(i32 %97)
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @TRANS_CHICKEN1(i32 %99)
  %101 = call i32 @I915_READ(i32 %100)
  %102 = load i32, i32* @TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE, align 4
  %103 = xor i32 %102, -1
  %104 = and i32 %101, %103
  %105 = call i32 @I915_WRITE(i32 %98, i32 %104)
  br label %106

106:                                              ; preds = %80, %66
  %107 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %108 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %113 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %114 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %115 = call i32 @intel_enable_hdmi_audio(%struct.intel_encoder* %112, %struct.intel_crtc_state* %113, %struct.drm_connector_state* %114)
  br label %116

116:                                              ; preds = %111, %106
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.intel_hdmi* @enc_to_intel_hdmi(%struct.TYPE_4__*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @TRANS_CHICKEN1(i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @intel_enable_hdmi_audio(%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
