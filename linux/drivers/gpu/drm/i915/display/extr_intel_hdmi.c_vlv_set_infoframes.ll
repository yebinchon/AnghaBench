; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_vlv_set_infoframes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_vlv_set_infoframes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_crtc = type { i32 }
%struct.intel_hdmi = type { i32 }

@VIDEO_DIP_SELECT_AVI = common dso_local global i32 0, align 4
@VIDEO_DIP_FREQ_VSYNC = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE_AVI = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE_VENDOR = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE_GAMUT = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE_SPD = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE_GCP = common dso_local global i32 0, align 4
@VIDEO_DIP_PORT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"DIP already enabled on port %c\0A\00", align 1
@HDMI_INFOFRAME_TYPE_AVI = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_TYPE_SPD = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_TYPE_VENDOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, i32, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @vlv_set_infoframes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlv_set_infoframes(%struct.intel_encoder* %0, i32 %1, %struct.intel_crtc_state* %2, %struct.drm_connector_state* %3) #0 {
  %5 = alloca %struct.intel_encoder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_crtc_state*, align 8
  %8 = alloca %struct.drm_connector_state*, align 8
  %9 = alloca %struct.drm_i915_private*, align 8
  %10 = alloca %struct.intel_crtc*, align 8
  %11 = alloca %struct.intel_hdmi*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.intel_crtc_state* %2, %struct.intel_crtc_state** %7, align 8
  store %struct.drm_connector_state* %3, %struct.drm_connector_state** %8, align 8
  %15 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %16 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.drm_i915_private* @to_i915(i32 %18)
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %9, align 8
  %20 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %21 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.intel_crtc* @to_intel_crtc(i32 %23)
  store %struct.intel_crtc* %24, %struct.intel_crtc** %10, align 8
  %25 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %26 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %25, i32 0, i32 1
  %27 = call %struct.intel_hdmi* @enc_to_intel_hdmi(%struct.TYPE_6__* %26)
  store %struct.intel_hdmi* %27, %struct.intel_hdmi** %11, align 8
  %28 = load %struct.intel_crtc*, %struct.intel_crtc** %10, align 8
  %29 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @VLV_TVIDEO_DIP_CTL(i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @I915_READ(i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %35 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @VIDEO_DIP_PORT(i32 %36)
  store i32 %37, i32* %14, align 4
  %38 = load %struct.intel_hdmi*, %struct.intel_hdmi** %11, align 8
  %39 = call i32 @assert_hdmi_port_disabled(%struct.intel_hdmi* %38)
  %40 = load i32, i32* @VIDEO_DIP_SELECT_AVI, align 4
  %41 = load i32, i32* @VIDEO_DIP_FREQ_VSYNC, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %13, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %73, label %47

47:                                               ; preds = %4
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @VIDEO_DIP_ENABLE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %147

53:                                               ; preds = %47
  %54 = load i32, i32* @VIDEO_DIP_ENABLE, align 4
  %55 = load i32, i32* @VIDEO_DIP_ENABLE_AVI, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @VIDEO_DIP_ENABLE_VENDOR, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @VIDEO_DIP_ENABLE_GAMUT, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @VIDEO_DIP_ENABLE_SPD, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @VIDEO_DIP_ENABLE_GCP, align 4
  %64 = or i32 %62, %63
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %13, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @I915_WRITE(i32 %68, i32 %69)
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @POSTING_READ(i32 %71)
  br label %147

73:                                               ; preds = %4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @VIDEO_DIP_PORT_MASK, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %74, %77
  br i1 %78, label %79, label %95

79:                                               ; preds = %73
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @VIDEO_DIP_ENABLE, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* @VIDEO_DIP_PORT_MASK, align 4
  %85 = and i32 %83, %84
  %86 = ashr i32 %85, 29
  %87 = call i32 @WARN(i32 %82, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @VIDEO_DIP_PORT_MASK, align 4
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %13, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %13, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %79, %73
  %96 = load i32, i32* @VIDEO_DIP_ENABLE, align 4
  %97 = load i32, i32* %13, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* @VIDEO_DIP_ENABLE_AVI, align 4
  %100 = load i32, i32* @VIDEO_DIP_ENABLE_VENDOR, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @VIDEO_DIP_ENABLE_GAMUT, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @VIDEO_DIP_ENABLE_SPD, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @VIDEO_DIP_ENABLE_GCP, align 4
  %107 = or i32 %105, %106
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %13, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %13, align 4
  %111 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %112 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %113 = load %struct.drm_connector_state*, %struct.drm_connector_state** %8, align 8
  %114 = call i64 @intel_hdmi_set_gcp_infoframe(%struct.intel_encoder* %111, %struct.intel_crtc_state* %112, %struct.drm_connector_state* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %95
  %117 = load i32, i32* @VIDEO_DIP_ENABLE_GCP, align 4
  %118 = load i32, i32* %13, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %13, align 4
  br label %120

120:                                              ; preds = %116, %95
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %13, align 4
  %123 = call i32 @I915_WRITE(i32 %121, i32 %122)
  %124 = load i32, i32* %12, align 4
  %125 = call i32 @POSTING_READ(i32 %124)
  %126 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %127 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %128 = load i32, i32* @HDMI_INFOFRAME_TYPE_AVI, align 4
  %129 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %130 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 2
  %132 = call i32 @intel_write_infoframe(%struct.intel_encoder* %126, %struct.intel_crtc_state* %127, i32 %128, i32* %131)
  %133 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %134 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %135 = load i32, i32* @HDMI_INFOFRAME_TYPE_SPD, align 4
  %136 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %137 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = call i32 @intel_write_infoframe(%struct.intel_encoder* %133, %struct.intel_crtc_state* %134, i32 %135, i32* %138)
  %140 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %141 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %142 = load i32, i32* @HDMI_INFOFRAME_TYPE_VENDOR, align 4
  %143 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %144 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = call i32 @intel_write_infoframe(%struct.intel_encoder* %140, %struct.intel_crtc_state* %141, i32 %142, i32* %145)
  br label %147

147:                                              ; preds = %120, %53, %52
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.intel_hdmi* @enc_to_intel_hdmi(%struct.TYPE_6__*) #1

declare dso_local i32 @VLV_TVIDEO_DIP_CTL(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @VIDEO_DIP_PORT(i32) #1

declare dso_local i32 @assert_hdmi_port_disabled(%struct.intel_hdmi*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i64 @intel_hdmi_set_gcp_infoframe(%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*) #1

declare dso_local i32 @intel_write_infoframe(%struct.intel_encoder*, %struct.intel_crtc_state*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
