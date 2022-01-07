; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_ibx_set_infoframes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_ibx_set_infoframes.c"
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
%struct.intel_digital_port = type { %struct.intel_hdmi }
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, i32, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @ibx_set_infoframes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibx_set_infoframes(%struct.intel_encoder* %0, i32 %1, %struct.intel_crtc_state* %2, %struct.drm_connector_state* %3) #0 {
  %5 = alloca %struct.intel_encoder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_crtc_state*, align 8
  %8 = alloca %struct.drm_connector_state*, align 8
  %9 = alloca %struct.drm_i915_private*, align 8
  %10 = alloca %struct.intel_crtc*, align 8
  %11 = alloca %struct.intel_digital_port*, align 8
  %12 = alloca %struct.intel_hdmi*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.intel_crtc_state* %2, %struct.intel_crtc_state** %7, align 8
  store %struct.drm_connector_state* %3, %struct.drm_connector_state** %8, align 8
  %16 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %17 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.drm_i915_private* @to_i915(i32 %19)
  store %struct.drm_i915_private* %20, %struct.drm_i915_private** %9, align 8
  %21 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %22 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.intel_crtc* @to_intel_crtc(i32 %24)
  store %struct.intel_crtc* %25, %struct.intel_crtc** %10, align 8
  %26 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %27 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %26, i32 0, i32 1
  %28 = call %struct.intel_digital_port* @enc_to_dig_port(%struct.TYPE_6__* %27)
  store %struct.intel_digital_port* %28, %struct.intel_digital_port** %11, align 8
  %29 = load %struct.intel_digital_port*, %struct.intel_digital_port** %11, align 8
  %30 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %29, i32 0, i32 0
  store %struct.intel_hdmi* %30, %struct.intel_hdmi** %12, align 8
  %31 = load %struct.intel_crtc*, %struct.intel_crtc** %10, align 8
  %32 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @TVIDEO_DIP_CTL(i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @I915_READ(i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %38 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @VIDEO_DIP_PORT(i32 %39)
  store i32 %40, i32* %15, align 4
  %41 = load %struct.intel_hdmi*, %struct.intel_hdmi** %12, align 8
  %42 = call i32 @assert_hdmi_port_disabled(%struct.intel_hdmi* %41)
  %43 = load i32, i32* @VIDEO_DIP_SELECT_AVI, align 4
  %44 = load i32, i32* @VIDEO_DIP_FREQ_VSYNC, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %14, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %76, label %50

50:                                               ; preds = %4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* @VIDEO_DIP_ENABLE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  br label %150

56:                                               ; preds = %50
  %57 = load i32, i32* @VIDEO_DIP_ENABLE, align 4
  %58 = load i32, i32* @VIDEO_DIP_ENABLE_AVI, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @VIDEO_DIP_ENABLE_VENDOR, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @VIDEO_DIP_ENABLE_GAMUT, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @VIDEO_DIP_ENABLE_SPD, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @VIDEO_DIP_ENABLE_GCP, align 4
  %67 = or i32 %65, %66
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %14, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @I915_WRITE(i32 %71, i32 %72)
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @POSTING_READ(i32 %74)
  br label %150

76:                                               ; preds = %4
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @VIDEO_DIP_PORT_MASK, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %77, %80
  br i1 %81, label %82, label %98

82:                                               ; preds = %76
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* @VIDEO_DIP_ENABLE, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* @VIDEO_DIP_PORT_MASK, align 4
  %88 = and i32 %86, %87
  %89 = ashr i32 %88, 29
  %90 = call i32 @WARN(i32 %85, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @VIDEO_DIP_PORT_MASK, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %14, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %14, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %14, align 4
  br label %98

98:                                               ; preds = %82, %76
  %99 = load i32, i32* @VIDEO_DIP_ENABLE, align 4
  %100 = load i32, i32* %14, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* @VIDEO_DIP_ENABLE_AVI, align 4
  %103 = load i32, i32* @VIDEO_DIP_ENABLE_VENDOR, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @VIDEO_DIP_ENABLE_GAMUT, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @VIDEO_DIP_ENABLE_SPD, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @VIDEO_DIP_ENABLE_GCP, align 4
  %110 = or i32 %108, %109
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %14, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %14, align 4
  %114 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %115 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %116 = load %struct.drm_connector_state*, %struct.drm_connector_state** %8, align 8
  %117 = call i64 @intel_hdmi_set_gcp_infoframe(%struct.intel_encoder* %114, %struct.intel_crtc_state* %115, %struct.drm_connector_state* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %98
  %120 = load i32, i32* @VIDEO_DIP_ENABLE_GCP, align 4
  %121 = load i32, i32* %14, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %14, align 4
  br label %123

123:                                              ; preds = %119, %98
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %14, align 4
  %126 = call i32 @I915_WRITE(i32 %124, i32 %125)
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @POSTING_READ(i32 %127)
  %129 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %130 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %131 = load i32, i32* @HDMI_INFOFRAME_TYPE_AVI, align 4
  %132 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %133 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 2
  %135 = call i32 @intel_write_infoframe(%struct.intel_encoder* %129, %struct.intel_crtc_state* %130, i32 %131, i32* %134)
  %136 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %137 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %138 = load i32, i32* @HDMI_INFOFRAME_TYPE_SPD, align 4
  %139 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %140 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  %142 = call i32 @intel_write_infoframe(%struct.intel_encoder* %136, %struct.intel_crtc_state* %137, i32 %138, i32* %141)
  %143 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %144 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %145 = load i32, i32* @HDMI_INFOFRAME_TYPE_VENDOR, align 4
  %146 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %147 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = call i32 @intel_write_infoframe(%struct.intel_encoder* %143, %struct.intel_crtc_state* %144, i32 %145, i32* %148)
  br label %150

150:                                              ; preds = %123, %56, %55
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.intel_digital_port* @enc_to_dig_port(%struct.TYPE_6__*) #1

declare dso_local i32 @TVIDEO_DIP_CTL(i32) #1

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
