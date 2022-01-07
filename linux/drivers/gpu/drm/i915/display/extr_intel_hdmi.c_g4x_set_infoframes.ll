; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_g4x_set_infoframes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_g4x_set_infoframes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.drm_connector_state = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_digital_port = type { %struct.intel_hdmi }
%struct.intel_hdmi = type { i32 }

@VIDEO_DIP_CTL = common dso_local global i32 0, align 4
@VIDEO_DIP_SELECT_AVI = common dso_local global i32 0, align 4
@VIDEO_DIP_FREQ_VSYNC = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE = common dso_local global i32 0, align 4
@VIDEO_DIP_PORT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"video DIP still enabled on port %c\0A\00", align 1
@VIDEO_DIP_ENABLE_AVI = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE_VENDOR = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE_SPD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"video DIP already enabled on port %c\0A\00", align 1
@HDMI_INFOFRAME_TYPE_AVI = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_TYPE_SPD = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_TYPE_VENDOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, i32, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @g4x_set_infoframes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g4x_set_infoframes(%struct.intel_encoder* %0, i32 %1, %struct.intel_crtc_state* %2, %struct.drm_connector_state* %3) #0 {
  %5 = alloca %struct.intel_encoder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_crtc_state*, align 8
  %8 = alloca %struct.drm_connector_state*, align 8
  %9 = alloca %struct.drm_i915_private*, align 8
  %10 = alloca %struct.intel_digital_port*, align 8
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
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.drm_i915_private* @to_i915(i32 %18)
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %9, align 8
  %20 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %21 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %20, i32 0, i32 1
  %22 = call %struct.intel_digital_port* @enc_to_dig_port(%struct.TYPE_4__* %21)
  store %struct.intel_digital_port* %22, %struct.intel_digital_port** %10, align 8
  %23 = load %struct.intel_digital_port*, %struct.intel_digital_port** %10, align 8
  %24 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %23, i32 0, i32 0
  store %struct.intel_hdmi* %24, %struct.intel_hdmi** %11, align 8
  %25 = load i32, i32* @VIDEO_DIP_CTL, align 4
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @I915_READ(i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %29 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @VIDEO_DIP_PORT(i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load %struct.intel_hdmi*, %struct.intel_hdmi** %11, align 8
  %33 = call i32 @assert_hdmi_port_disabled(%struct.intel_hdmi* %32)
  %34 = load i32, i32* @VIDEO_DIP_SELECT_AVI, align 4
  %35 = load i32, i32* @VIDEO_DIP_FREQ_VSYNC, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %13, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %75, label %41

41:                                               ; preds = %4
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @VIDEO_DIP_ENABLE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %138

47:                                               ; preds = %41
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @VIDEO_DIP_PORT_MASK, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %48, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @VIDEO_DIP_PORT_MASK, align 4
  %56 = and i32 %54, %55
  %57 = ashr i32 %56, 29
  %58 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %138

59:                                               ; preds = %47
  %60 = load i32, i32* @VIDEO_DIP_ENABLE, align 4
  %61 = load i32, i32* @VIDEO_DIP_ENABLE_AVI, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @VIDEO_DIP_ENABLE_VENDOR, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @VIDEO_DIP_ENABLE_SPD, align 4
  %66 = or i32 %64, %65
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %13, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @I915_WRITE(i32 %70, i32 %71)
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @POSTING_READ(i32 %73)
  br label %138

75:                                               ; preds = %4
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* @VIDEO_DIP_PORT_MASK, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %76, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %75
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @VIDEO_DIP_ENABLE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @VIDEO_DIP_PORT_MASK, align 4
  %89 = and i32 %87, %88
  %90 = ashr i32 %89, 29
  %91 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  br label %138

92:                                               ; preds = %81
  %93 = load i32, i32* @VIDEO_DIP_PORT_MASK, align 4
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %13, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %13, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %13, align 4
  br label %100

100:                                              ; preds = %92, %75
  %101 = load i32, i32* @VIDEO_DIP_ENABLE, align 4
  %102 = load i32, i32* %13, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* @VIDEO_DIP_ENABLE_AVI, align 4
  %105 = load i32, i32* @VIDEO_DIP_ENABLE_VENDOR, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @VIDEO_DIP_ENABLE_SPD, align 4
  %108 = or i32 %106, %107
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %13, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @I915_WRITE(i32 %112, i32 %113)
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @POSTING_READ(i32 %115)
  %117 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %118 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %119 = load i32, i32* @HDMI_INFOFRAME_TYPE_AVI, align 4
  %120 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %121 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  %123 = call i32 @intel_write_infoframe(%struct.intel_encoder* %117, %struct.intel_crtc_state* %118, i32 %119, i32* %122)
  %124 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %125 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %126 = load i32, i32* @HDMI_INFOFRAME_TYPE_SPD, align 4
  %127 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %128 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  %130 = call i32 @intel_write_infoframe(%struct.intel_encoder* %124, %struct.intel_crtc_state* %125, i32 %126, i32* %129)
  %131 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %132 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %133 = load i32, i32* @HDMI_INFOFRAME_TYPE_VENDOR, align 4
  %134 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %135 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = call i32 @intel_write_infoframe(%struct.intel_encoder* %131, %struct.intel_crtc_state* %132, i32 %133, i32* %136)
  br label %138

138:                                              ; preds = %100, %86, %59, %53, %46
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_digital_port* @enc_to_dig_port(%struct.TYPE_4__*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @VIDEO_DIP_PORT(i32) #1

declare dso_local i32 @assert_hdmi_port_disabled(%struct.intel_hdmi*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @intel_write_infoframe(%struct.intel_encoder*, %struct.intel_crtc_state*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
