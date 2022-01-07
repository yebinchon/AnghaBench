; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_retrain_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_retrain_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.drm_modeset_acquire_ctx = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.intel_dp = type { %struct.intel_connector* }
%struct.intel_connector = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.drm_connector_state* }
%struct.drm_connector_state = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.intel_crtc_state = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.intel_crtc = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }

@connector_status_connected = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_dp_retrain_link(%struct.intel_encoder* %0, %struct.drm_modeset_acquire_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.drm_modeset_acquire_ctx*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_dp*, align 8
  %8 = alloca %struct.intel_connector*, align 8
  %9 = alloca %struct.drm_connector_state*, align 8
  %10 = alloca %struct.intel_crtc_state*, align 8
  %11 = alloca %struct.intel_crtc*, align 8
  %12 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.drm_modeset_acquire_ctx* %1, %struct.drm_modeset_acquire_ctx** %5, align 8
  %13 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %14 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.drm_i915_private* @to_i915(i32 %16)
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %6, align 8
  %18 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %19 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %18, i32 0, i32 0
  %20 = call %struct.intel_dp* @enc_to_intel_dp(%struct.TYPE_14__* %19)
  store %struct.intel_dp* %20, %struct.intel_dp** %7, align 8
  %21 = load %struct.intel_dp*, %struct.intel_dp** %7, align 8
  %22 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %21, i32 0, i32 0
  %23 = load %struct.intel_connector*, %struct.intel_connector** %22, align 8
  store %struct.intel_connector* %23, %struct.intel_connector** %8, align 8
  %24 = load %struct.intel_connector*, %struct.intel_connector** %8, align 8
  %25 = icmp ne %struct.intel_connector* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load %struct.intel_connector*, %struct.intel_connector** %8, align 8
  %28 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @connector_status_connected, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26, %2
  store i32 0, i32* %3, align 4
  br label %143

34:                                               ; preds = %26
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %36 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %5, align 8
  %40 = call i32 @drm_modeset_lock(i32* %38, %struct.drm_modeset_acquire_ctx* %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %3, align 4
  br label %143

45:                                               ; preds = %34
  %46 = load %struct.intel_connector*, %struct.intel_connector** %8, align 8
  %47 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load %struct.drm_connector_state*, %struct.drm_connector_state** %48, align 8
  store %struct.drm_connector_state* %49, %struct.drm_connector_state** %9, align 8
  %50 = load %struct.drm_connector_state*, %struct.drm_connector_state** %9, align 8
  %51 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call %struct.intel_crtc* @to_intel_crtc(i32 %52)
  store %struct.intel_crtc* %53, %struct.intel_crtc** %11, align 8
  %54 = load %struct.intel_crtc*, %struct.intel_crtc** %11, align 8
  %55 = icmp ne %struct.intel_crtc* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %143

57:                                               ; preds = %45
  %58 = load %struct.intel_crtc*, %struct.intel_crtc** %11, align 8
  %59 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %5, align 8
  %62 = call i32 @drm_modeset_lock(i32* %60, %struct.drm_modeset_acquire_ctx* %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %3, align 4
  br label %143

67:                                               ; preds = %57
  %68 = load %struct.intel_crtc*, %struct.intel_crtc** %11, align 8
  %69 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.intel_crtc_state* @to_intel_crtc_state(i32 %71)
  store %struct.intel_crtc_state* %72, %struct.intel_crtc_state** %10, align 8
  %73 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %10, align 8
  %74 = call i32 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state* %73)
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = call i32 @WARN_ON(i32 %77)
  %79 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %10, align 8
  %80 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %143

85:                                               ; preds = %67
  %86 = load %struct.drm_connector_state*, %struct.drm_connector_state** %9, align 8
  %87 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %86, i32 0, i32 0
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %87, align 8
  %89 = icmp ne %struct.TYPE_13__* %88, null
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load %struct.drm_connector_state*, %struct.drm_connector_state** %9, align 8
  %92 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %91, i32 0, i32 0
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = call i32 @try_wait_for_completion(i32* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %90
  store i32 0, i32* %3, align 4
  br label %143

98:                                               ; preds = %90, %85
  %99 = load %struct.intel_dp*, %struct.intel_dp** %7, align 8
  %100 = call i32 @intel_dp_needs_link_retrain(%struct.intel_dp* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %98
  store i32 0, i32* %3, align 4
  br label %143

103:                                              ; preds = %98
  %104 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %105 = load %struct.intel_crtc*, %struct.intel_crtc** %11, align 8
  %106 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @intel_set_cpu_fifo_underrun_reporting(%struct.drm_i915_private* %104, i32 %107, i32 0)
  %109 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %10, align 8
  %110 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %103
  %114 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %115 = load %struct.intel_crtc*, %struct.intel_crtc** %11, align 8
  %116 = call i32 @intel_crtc_pch_transcoder(%struct.intel_crtc* %115)
  %117 = call i32 @intel_set_pch_fifo_underrun_reporting(%struct.drm_i915_private* %114, i32 %116, i32 0)
  br label %118

118:                                              ; preds = %113, %103
  %119 = load %struct.intel_dp*, %struct.intel_dp** %7, align 8
  %120 = call i32 @intel_dp_start_link_train(%struct.intel_dp* %119)
  %121 = load %struct.intel_dp*, %struct.intel_dp** %7, align 8
  %122 = call i32 @intel_dp_stop_link_train(%struct.intel_dp* %121)
  %123 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %124 = load %struct.intel_crtc*, %struct.intel_crtc** %11, align 8
  %125 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @intel_wait_for_vblank(%struct.drm_i915_private* %123, i32 %126)
  %128 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %129 = load %struct.intel_crtc*, %struct.intel_crtc** %11, align 8
  %130 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @intel_set_cpu_fifo_underrun_reporting(%struct.drm_i915_private* %128, i32 %131, i32 1)
  %133 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %10, align 8
  %134 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %118
  %138 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %139 = load %struct.intel_crtc*, %struct.intel_crtc** %11, align 8
  %140 = call i32 @intel_crtc_pch_transcoder(%struct.intel_crtc* %139)
  %141 = call i32 @intel_set_pch_fifo_underrun_reporting(%struct.drm_i915_private* %138, i32 %140, i32 1)
  br label %142

142:                                              ; preds = %137, %118
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %142, %102, %97, %84, %65, %56, %43, %33
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_dp* @enc_to_intel_dp(%struct.TYPE_14__*) #1

declare dso_local i32 @drm_modeset_lock(i32*, %struct.drm_modeset_acquire_ctx*) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.intel_crtc_state* @to_intel_crtc_state(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state*) #1

declare dso_local i32 @try_wait_for_completion(i32*) #1

declare dso_local i32 @intel_dp_needs_link_retrain(%struct.intel_dp*) #1

declare dso_local i32 @intel_set_cpu_fifo_underrun_reporting(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @intel_set_pch_fifo_underrun_reporting(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @intel_crtc_pch_transcoder(%struct.intel_crtc*) #1

declare dso_local i32 @intel_dp_start_link_train(%struct.intel_dp*) #1

declare dso_local i32 @intel_dp_stop_link_train(%struct.intel_dp*) #1

declare dso_local i32 @intel_wait_for_vblank(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
