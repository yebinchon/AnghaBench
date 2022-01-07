; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_audio.c_intel_audio_codec_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_audio.c_intel_audio_codec_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32, i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.drm_i915_private = type { i32, i32**, %struct.TYPE_8__, %struct.i915_audio_component* }
%struct.TYPE_8__ = type { i32 (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state.0*)* }
%struct.drm_connector_state.0 = type opaque
%struct.i915_audio_component = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 (i32, i32, i32)* }
%struct.intel_crtc = type { i32 }

@INTEL_OUTPUT_DP_MST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_audio_codec_disable(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.i915_audio_component*, align 8
  %9 = alloca %struct.intel_crtc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %12 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %13 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.drm_i915_private* @to_i915(i32 %15)
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %7, align 8
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %18 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %17, i32 0, i32 3
  %19 = load %struct.i915_audio_component*, %struct.i915_audio_component** %18, align 8
  store %struct.i915_audio_component* %19, %struct.i915_audio_component** %8, align 8
  %20 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %21 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.intel_crtc* @to_intel_crtc(i32 %23)
  store %struct.intel_crtc* %24, %struct.intel_crtc** %9, align 8
  %25 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %26 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %10, align 4
  %28 = load %struct.intel_crtc*, %struct.intel_crtc** %9, align 8
  %29 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %11, align 4
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %32 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32 (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state.0*)*, i32 (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state.0*)** %33, align 8
  %35 = icmp ne i32 (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state.0*)* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %3
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %38 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32 (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state.0*)*, i32 (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state.0*)** %39, align 8
  %41 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %42 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %43 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %44 = bitcast %struct.drm_connector_state* %43 to %struct.drm_connector_state.0*
  %45 = call i32 %40(%struct.intel_encoder* %41, %struct.intel_crtc_state* %42, %struct.drm_connector_state.0* %44)
  br label %46

46:                                               ; preds = %36, %3
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %48 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %47, i32 0, i32 0
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %51 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  %52 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %53 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %52, i32 0, i32 1
  %54 = load i32**, i32*** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  store i32* null, i32** %57, align 8
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %59 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load %struct.i915_audio_component*, %struct.i915_audio_component** %8, align 8
  %62 = icmp ne %struct.i915_audio_component* %61, null
  br i1 %62, label %63, label %99

63:                                               ; preds = %46
  %64 = load %struct.i915_audio_component*, %struct.i915_audio_component** %8, align 8
  %65 = getelementptr inbounds %struct.i915_audio_component, %struct.i915_audio_component* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = icmp ne %struct.TYPE_9__* %67, null
  br i1 %68, label %69, label %99

69:                                               ; preds = %63
  %70 = load %struct.i915_audio_component*, %struct.i915_audio_component** %8, align 8
  %71 = getelementptr inbounds %struct.i915_audio_component, %struct.i915_audio_component* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %74, align 8
  %76 = icmp ne i32 (i32, i32, i32)* %75, null
  br i1 %76, label %77, label %99

77:                                               ; preds = %69
  %78 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %79 = load i32, i32* @INTEL_OUTPUT_DP_MST, align 4
  %80 = call i32 @intel_crtc_has_type(%struct.intel_crtc_state* %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  store i32 -1, i32* %11, align 4
  br label %83

83:                                               ; preds = %82, %77
  %84 = load %struct.i915_audio_component*, %struct.i915_audio_component** %8, align 8
  %85 = getelementptr inbounds %struct.i915_audio_component, %struct.i915_audio_component* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %88, align 8
  %90 = load %struct.i915_audio_component*, %struct.i915_audio_component** %8, align 8
  %91 = getelementptr inbounds %struct.i915_audio_component, %struct.i915_audio_component* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %11, align 4
  %98 = call i32 %89(i32 %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %83, %69, %63, %46
  %100 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @intel_lpe_audio_notify(%struct.drm_i915_private* %100, i32 %101, i32 %102, i32* null, i32 0, i32 0)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @intel_crtc_has_type(%struct.intel_crtc_state*, i32) #1

declare dso_local i32 @intel_lpe_audio_notify(%struct.drm_i915_private*, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
