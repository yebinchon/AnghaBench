; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_audio.c_intel_audio_codec_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_audio.c_intel_audio_codec_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32, %struct.drm_connector*, %struct.TYPE_9__ }
%struct.drm_connector = type { i32*, %struct.TYPE_13__*, i32, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.intel_crtc_state = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.drm_display_mode, i32 }
%struct.drm_display_mode = type { i32 }
%struct.drm_connector_state = type { %struct.drm_connector* }
%struct.drm_i915_private = type { i32, %struct.intel_encoder**, %struct.TYPE_14__, %struct.i915_audio_component* }
%struct.TYPE_14__ = type { i32 (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state.0*)* }
%struct.drm_connector_state.0 = type opaque
%struct.i915_audio_component = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 (i32, i32, i32)* }
%struct.intel_crtc = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Bogus ELD on [CONNECTOR:%d:%s]\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"ELD on [CONNECTOR:%d:%s], [ENCODER:%d:%s]\0A\00", align 1
@INTEL_OUTPUT_DP_MST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_audio_codec_enable(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.i915_audio_component*, align 8
  %9 = alloca %struct.intel_crtc*, align 8
  %10 = alloca %struct.drm_connector*, align 8
  %11 = alloca %struct.drm_display_mode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %14 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %15 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.drm_i915_private* @to_i915(i32 %17)
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %7, align 8
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %20 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %19, i32 0, i32 3
  %21 = load %struct.i915_audio_component*, %struct.i915_audio_component** %20, align 8
  store %struct.i915_audio_component* %21, %struct.i915_audio_component** %8, align 8
  %22 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %23 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.intel_crtc* @to_intel_crtc(i32 %25)
  store %struct.intel_crtc* %26, %struct.intel_crtc** %9, align 8
  %27 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %28 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %27, i32 0, i32 0
  %29 = load %struct.drm_connector*, %struct.drm_connector** %28, align 8
  store %struct.drm_connector* %29, %struct.drm_connector** %10, align 8
  %30 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %31 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  store %struct.drm_display_mode* %32, %struct.drm_display_mode** %11, align 8
  %33 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %34 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %12, align 4
  %36 = load %struct.intel_crtc*, %struct.intel_crtc** %9, align 8
  %37 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %13, align 4
  %39 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %40 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %3
  %46 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %47 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %51 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %45, %3
  %55 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %56 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %60 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %63 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %62, i32 0, i32 1
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %69 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %68, i32 0, i32 1
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %61, i32 %67, i32 %72)
  %74 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %75 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %76 = call i32 @drm_av_sync_delay(%struct.drm_connector* %74, %struct.drm_display_mode* %75)
  %77 = sdiv i32 %76, 2
  %78 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %79 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 6
  store i32 %77, i32* %81, align 4
  %82 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %83 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i32 (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state.0*)*, i32 (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state.0*)** %84, align 8
  %86 = icmp ne i32 (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state.0*)* %85, null
  br i1 %86, label %87, label %97

87:                                               ; preds = %54
  %88 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %89 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i32 (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state.0*)*, i32 (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state.0*)** %90, align 8
  %92 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %93 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %94 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %95 = bitcast %struct.drm_connector_state* %94 to %struct.drm_connector_state.0*
  %96 = call i32 %91(%struct.intel_encoder* %92, %struct.intel_crtc_state* %93, %struct.drm_connector_state.0* %95)
  br label %97

97:                                               ; preds = %87, %54
  %98 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %99 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %98, i32 0, i32 0
  %100 = call i32 @mutex_lock(i32* %99)
  %101 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %102 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %103 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %102, i32 0, i32 1
  store %struct.drm_connector* %101, %struct.drm_connector** %103, align 8
  %104 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %105 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %106 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %105, i32 0, i32 1
  %107 = load %struct.intel_encoder**, %struct.intel_encoder*** %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.intel_encoder*, %struct.intel_encoder** %107, i64 %109
  store %struct.intel_encoder* %104, %struct.intel_encoder** %110, align 8
  %111 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %112 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %111, i32 0, i32 0
  %113 = call i32 @mutex_unlock(i32* %112)
  %114 = load %struct.i915_audio_component*, %struct.i915_audio_component** %8, align 8
  %115 = icmp ne %struct.i915_audio_component* %114, null
  br i1 %115, label %116, label %152

116:                                              ; preds = %97
  %117 = load %struct.i915_audio_component*, %struct.i915_audio_component** %8, align 8
  %118 = getelementptr inbounds %struct.i915_audio_component, %struct.i915_audio_component* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %119, align 8
  %121 = icmp ne %struct.TYPE_15__* %120, null
  br i1 %121, label %122, label %152

122:                                              ; preds = %116
  %123 = load %struct.i915_audio_component*, %struct.i915_audio_component** %8, align 8
  %124 = getelementptr inbounds %struct.i915_audio_component, %struct.i915_audio_component* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 1
  %128 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %127, align 8
  %129 = icmp ne i32 (i32, i32, i32)* %128, null
  br i1 %129, label %130, label %152

130:                                              ; preds = %122
  %131 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %132 = load i32, i32* @INTEL_OUTPUT_DP_MST, align 4
  %133 = call i32 @intel_crtc_has_type(%struct.intel_crtc_state* %131, i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %130
  store i32 -1, i32* %13, align 4
  br label %136

136:                                              ; preds = %135, %130
  %137 = load %struct.i915_audio_component*, %struct.i915_audio_component** %8, align 8
  %138 = getelementptr inbounds %struct.i915_audio_component, %struct.i915_audio_component* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 1
  %142 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %141, align 8
  %143 = load %struct.i915_audio_component*, %struct.i915_audio_component** %8, align 8
  %144 = getelementptr inbounds %struct.i915_audio_component, %struct.i915_audio_component* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* %13, align 4
  %151 = call i32 %142(i32 %148, i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %136, %122, %116, %97
  %153 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* %12, align 4
  %156 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %157 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %160 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %163 = call i32 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state* %162)
  %164 = call i32 @intel_lpe_audio_notify(%struct.drm_i915_private* %153, i32 %154, i32 %155, i32* %158, i32 %161, i32 %163)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @drm_av_sync_delay(%struct.drm_connector*, %struct.drm_display_mode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @intel_crtc_has_type(%struct.intel_crtc_state*, i32) #1

declare dso_local i32 @intel_lpe_audio_notify(%struct.drm_i915_private*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
