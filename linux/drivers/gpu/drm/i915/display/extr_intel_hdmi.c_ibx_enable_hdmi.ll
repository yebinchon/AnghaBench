; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_ibx_enable_hdmi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_ibx_enable_hdmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_crtc_state = type { i32, i32, i64 }
%struct.drm_connector_state = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_hdmi = type { i32 }

@SDVO_ENABLE = common dso_local global i32 0, align 4
@HDMI_AUDIO_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @ibx_enable_hdmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibx_enable_hdmi(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.intel_hdmi*, align 8
  %10 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %11 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %12 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %7, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %16 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %15)
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %8, align 8
  %17 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %18 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %17, i32 0, i32 0
  %19 = call %struct.intel_hdmi* @enc_to_intel_hdmi(%struct.TYPE_2__* %18)
  store %struct.intel_hdmi* %19, %struct.intel_hdmi** %9, align 8
  %20 = load %struct.intel_hdmi*, %struct.intel_hdmi** %9, align 8
  %21 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @I915_READ(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* @SDVO_ENABLE, align 4
  %25 = load i32, i32* %10, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %10, align 4
  %27 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %28 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = load i32, i32* @HDMI_AUDIO_ENABLE, align 4
  %33 = load i32, i32* %10, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %31, %3
  %36 = load %struct.intel_hdmi*, %struct.intel_hdmi** %9, align 8
  %37 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @I915_WRITE(i32 %38, i32 %39)
  %41 = load %struct.intel_hdmi*, %struct.intel_hdmi** %9, align 8
  %42 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @POSTING_READ(i32 %43)
  %45 = load %struct.intel_hdmi*, %struct.intel_hdmi** %9, align 8
  %46 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @I915_WRITE(i32 %47, i32 %48)
  %50 = load %struct.intel_hdmi*, %struct.intel_hdmi** %9, align 8
  %51 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @POSTING_READ(i32 %52)
  %54 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %55 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sgt i32 %56, 24
  br i1 %57, label %58, label %94

58:                                               ; preds = %35
  %59 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %60 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %63, label %94

63:                                               ; preds = %58
  %64 = load %struct.intel_hdmi*, %struct.intel_hdmi** %9, align 8
  %65 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @SDVO_ENABLE, align 4
  %69 = xor i32 %68, -1
  %70 = and i32 %67, %69
  %71 = call i32 @I915_WRITE(i32 %66, i32 %70)
  %72 = load %struct.intel_hdmi*, %struct.intel_hdmi** %9, align 8
  %73 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @POSTING_READ(i32 %74)
  %76 = load %struct.intel_hdmi*, %struct.intel_hdmi** %9, align 8
  %77 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @I915_WRITE(i32 %78, i32 %79)
  %81 = load %struct.intel_hdmi*, %struct.intel_hdmi** %9, align 8
  %82 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @POSTING_READ(i32 %83)
  %85 = load %struct.intel_hdmi*, %struct.intel_hdmi** %9, align 8
  %86 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @I915_WRITE(i32 %87, i32 %88)
  %90 = load %struct.intel_hdmi*, %struct.intel_hdmi** %9, align 8
  %91 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @POSTING_READ(i32 %92)
  br label %94

94:                                               ; preds = %63, %58, %35
  %95 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %96 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %101 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %102 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %103 = call i32 @intel_enable_hdmi_audio(%struct.intel_encoder* %100, %struct.intel_crtc_state* %101, %struct.drm_connector_state* %102)
  br label %104

104:                                              ; preds = %99, %94
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local %struct.intel_hdmi* @enc_to_intel_hdmi(%struct.TYPE_2__*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @intel_enable_hdmi_audio(%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
