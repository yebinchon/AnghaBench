; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_enable_ddi_hdmi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_enable_ddi_hdmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.intel_crtc_state = type { i64, i32, i32 }
%struct.drm_connector_state = type { %struct.drm_connector* }
%struct.drm_connector = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_digital_port = type { i32 }

@.str = private unnamed_addr constant [76 x i8] c"[CONNECTOR:%d:%s] Failed to configure sink scrambling/TMDS bit clock ratio\0A\00", align 1
@PORT_E = common dso_local global i32 0, align 4
@DDIE_TRAINING_OVERRIDE_ENABLE = common dso_local global i32 0, align 4
@DDIE_TRAINING_OVERRIDE_VALUE = common dso_local global i32 0, align 4
@DDI_TRAINING_OVERRIDE_ENABLE = common dso_local global i32 0, align 4
@DDI_TRAINING_OVERRIDE_VALUE = common dso_local global i32 0, align 4
@DDI_BUF_CTL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_enable_ddi_hdmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_enable_ddi_hdmi(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.intel_digital_port*, align 8
  %9 = alloca %struct.drm_connector*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %13 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %14 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.drm_i915_private* @to_i915(i32 %16)
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %7, align 8
  %18 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %19 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %18, i32 0, i32 1
  %20 = call %struct.intel_digital_port* @enc_to_dig_port(%struct.TYPE_4__* %19)
  store %struct.intel_digital_port* %20, %struct.intel_digital_port** %8, align 8
  %21 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %22 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %21, i32 0, i32 0
  %23 = load %struct.drm_connector*, %struct.drm_connector** %22, align 8
  store %struct.drm_connector* %23, %struct.drm_connector** %9, align 8
  %24 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %25 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  %27 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %28 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %29 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %30 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %33 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @intel_hdmi_handle_sink_scrambling(%struct.intel_encoder* %27, %struct.drm_connector* %28, i32 %31, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %3
  %38 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %39 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %43 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %37, %3
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %48 = call i64 @IS_GEN9_BC(%struct.drm_i915_private* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %99

50:                                               ; preds = %46
  %51 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @gen9_chicken_trans_reg_by_port(%struct.drm_i915_private* %51, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @I915_READ(i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @PORT_E, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %50
  %60 = load i32, i32* @DDIE_TRAINING_OVERRIDE_ENABLE, align 4
  %61 = load i32, i32* @DDIE_TRAINING_OVERRIDE_VALUE, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %12, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %12, align 4
  br label %71

65:                                               ; preds = %50
  %66 = load i32, i32* @DDI_TRAINING_OVERRIDE_ENABLE, align 4
  %67 = load i32, i32* @DDI_TRAINING_OVERRIDE_VALUE, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* %12, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %12, align 4
  br label %71

71:                                               ; preds = %65, %59
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @I915_WRITE(i32 %72, i32 %73)
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @POSTING_READ(i32 %75)
  %77 = call i32 @udelay(i32 1)
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @PORT_E, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %71
  %82 = load i32, i32* @DDIE_TRAINING_OVERRIDE_ENABLE, align 4
  %83 = load i32, i32* @DDIE_TRAINING_OVERRIDE_VALUE, align 4
  %84 = or i32 %82, %83
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %12, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %12, align 4
  br label %95

88:                                               ; preds = %71
  %89 = load i32, i32* @DDI_TRAINING_OVERRIDE_ENABLE, align 4
  %90 = load i32, i32* @DDI_TRAINING_OVERRIDE_VALUE, align 4
  %91 = or i32 %89, %90
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %12, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %88, %81
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @I915_WRITE(i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %95, %46
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @DDI_BUF_CTL(i32 %100)
  %102 = load %struct.intel_digital_port*, %struct.intel_digital_port** %8, align 8
  %103 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @DDI_BUF_CTL_ENABLE, align 4
  %106 = or i32 %104, %105
  %107 = call i32 @I915_WRITE(i32 %101, i32 %106)
  %108 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %109 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %99
  %113 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %114 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %115 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %116 = call i32 @intel_audio_codec_enable(%struct.intel_encoder* %113, %struct.intel_crtc_state* %114, %struct.drm_connector_state* %115)
  br label %117

117:                                              ; preds = %112, %99
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_digital_port* @enc_to_dig_port(%struct.TYPE_4__*) #1

declare dso_local i32 @intel_hdmi_handle_sink_scrambling(%struct.intel_encoder*, %struct.drm_connector*, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i64 @IS_GEN9_BC(%struct.drm_i915_private*) #1

declare dso_local i32 @gen9_chicken_trans_reg_by_port(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DDI_BUF_CTL(i32) #1

declare dso_local i32 @intel_audio_codec_enable(%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
