; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_hdmi_reset_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_hdmi_reset_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.drm_modeset_acquire_ctx = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.intel_hdmi = type { i32, %struct.intel_connector* }
%struct.intel_connector = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.drm_connector_state* }
%struct.drm_connector_state = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.intel_crtc_state = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.intel_crtc = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }

@connector_status_connected = common dso_local global i64 0, align 8
@INTEL_OUTPUT_HDMI = common dso_local global i32 0, align 4
@SCDC_TMDS_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to read TMDS config: %d\0A\00", align 1
@SCDC_TMDS_BIT_CLOCK_RATIO_BY_40 = common dso_local global i32 0, align 4
@SCDC_SCRAMBLING_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_encoder*, %struct.drm_modeset_acquire_ctx*)* @intel_hdmi_reset_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_hdmi_reset_link(%struct.intel_encoder* %0, %struct.drm_modeset_acquire_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.drm_modeset_acquire_ctx*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_hdmi*, align 8
  %8 = alloca %struct.intel_connector*, align 8
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca %struct.drm_connector_state*, align 8
  %11 = alloca %struct.intel_crtc_state*, align 8
  %12 = alloca %struct.intel_crtc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.drm_modeset_acquire_ctx* %1, %struct.drm_modeset_acquire_ctx** %5, align 8
  %15 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %16 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.drm_i915_private* @to_i915(i32 %18)
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %6, align 8
  %20 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %21 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %20, i32 0, i32 0
  %22 = call %struct.intel_hdmi* @enc_to_intel_hdmi(%struct.TYPE_14__* %21)
  store %struct.intel_hdmi* %22, %struct.intel_hdmi** %7, align 8
  %23 = load %struct.intel_hdmi*, %struct.intel_hdmi** %7, align 8
  %24 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %23, i32 0, i32 1
  %25 = load %struct.intel_connector*, %struct.intel_connector** %24, align 8
  store %struct.intel_connector* %25, %struct.intel_connector** %8, align 8
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %27 = load %struct.intel_hdmi*, %struct.intel_hdmi** %7, align 8
  %28 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.i2c_adapter* @intel_gmbus_get_adapter(%struct.drm_i915_private* %26, i32 %29)
  store %struct.i2c_adapter* %30, %struct.i2c_adapter** %9, align 8
  %31 = load %struct.intel_connector*, %struct.intel_connector** %8, align 8
  %32 = icmp ne %struct.intel_connector* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %2
  %34 = load %struct.intel_connector*, %struct.intel_connector** %8, align 8
  %35 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @connector_status_connected, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33, %2
  store i32 0, i32* %3, align 4
  br label %156

41:                                               ; preds = %33
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %43 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %5, align 8
  %47 = call i32 @drm_modeset_lock(i32* %45, %struct.drm_modeset_acquire_ctx* %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* %14, align 4
  store i32 %51, i32* %3, align 4
  br label %156

52:                                               ; preds = %41
  %53 = load %struct.intel_connector*, %struct.intel_connector** %8, align 8
  %54 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load %struct.drm_connector_state*, %struct.drm_connector_state** %55, align 8
  store %struct.drm_connector_state* %56, %struct.drm_connector_state** %10, align 8
  %57 = load %struct.drm_connector_state*, %struct.drm_connector_state** %10, align 8
  %58 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.intel_crtc* @to_intel_crtc(i32 %59)
  store %struct.intel_crtc* %60, %struct.intel_crtc** %12, align 8
  %61 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %62 = icmp ne %struct.intel_crtc* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %156

64:                                               ; preds = %52
  %65 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %66 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %5, align 8
  %69 = call i32 @drm_modeset_lock(i32* %67, %struct.drm_modeset_acquire_ctx* %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* %14, align 4
  store i32 %73, i32* %3, align 4
  br label %156

74:                                               ; preds = %64
  %75 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %76 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call %struct.intel_crtc_state* @to_intel_crtc_state(i32 %78)
  store %struct.intel_crtc_state* %79, %struct.intel_crtc_state** %11, align 8
  %80 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %11, align 8
  %81 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %82 = call i32 @intel_crtc_has_type(%struct.intel_crtc_state* %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i32 @WARN_ON(i32 %85)
  %87 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %11, align 8
  %88 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %156

93:                                               ; preds = %74
  %94 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %11, align 8
  %95 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %93
  %99 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %11, align 8
  %100 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %98
  store i32 0, i32* %3, align 4
  br label %156

104:                                              ; preds = %98, %93
  %105 = load %struct.drm_connector_state*, %struct.drm_connector_state** %10, align 8
  %106 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %105, i32 0, i32 0
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %106, align 8
  %108 = icmp ne %struct.TYPE_12__* %107, null
  br i1 %108, label %109, label %117

109:                                              ; preds = %104
  %110 = load %struct.drm_connector_state*, %struct.drm_connector_state** %10, align 8
  %111 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %110, i32 0, i32 0
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = call i32 @try_wait_for_completion(i32* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %109
  store i32 0, i32* %3, align 4
  br label %156

117:                                              ; preds = %109, %104
  %118 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %119 = load i32, i32* @SCDC_TMDS_CONFIG, align 4
  %120 = call i32 @drm_scdc_readb(%struct.i2c_adapter* %118, i32 %119, i32* %13)
  store i32 %120, i32* %14, align 4
  %121 = load i32, i32* %14, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load i32, i32* %14, align 4
  %125 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %124)
  store i32 0, i32* %3, align 4
  br label %156

126:                                              ; preds = %117
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* @SCDC_TMDS_BIT_CLOCK_RATIO_BY_40, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i32
  %134 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %11, align 8
  %135 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %133, %136
  br i1 %137, label %138, label %151

138:                                              ; preds = %126
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* @SCDC_SCRAMBLING_ENABLE, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  %143 = xor i1 %142, true
  %144 = xor i1 %143, true
  %145 = zext i1 %144 to i32
  %146 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %11, align 8
  %147 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %145, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %138
  store i32 0, i32* %3, align 4
  br label %156

151:                                              ; preds = %138, %126
  %152 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %153 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %152, i32 0, i32 0
  %154 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %5, align 8
  %155 = call i32 @modeset_pipe(%struct.TYPE_13__* %153, %struct.drm_modeset_acquire_ctx* %154)
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %151, %150, %123, %116, %103, %92, %72, %63, %50, %40
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_hdmi* @enc_to_intel_hdmi(%struct.TYPE_14__*) #1

declare dso_local %struct.i2c_adapter* @intel_gmbus_get_adapter(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @drm_modeset_lock(i32*, %struct.drm_modeset_acquire_ctx*) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.intel_crtc_state* @to_intel_crtc_state(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @intel_crtc_has_type(%struct.intel_crtc_state*, i32) #1

declare dso_local i32 @try_wait_for_completion(i32*) #1

declare dso_local i32 @drm_scdc_readb(%struct.i2c_adapter*, i32, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @modeset_pipe(%struct.TYPE_13__*, %struct.drm_modeset_acquire_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
