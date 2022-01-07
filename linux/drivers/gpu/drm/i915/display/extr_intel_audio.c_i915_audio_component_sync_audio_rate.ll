; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_audio.c_i915_audio_component_sync_audio_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_audio.c_i915_audio_component_sync_audio_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.drm_i915_private = type { i32, %struct.i915_audio_component* }
%struct.i915_audio_component = type { i32* }
%struct.intel_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_crtc = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Not valid for port %c\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i32)* @i915_audio_component_sync_audio_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_audio_component_sync_audio_rate(%struct.device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_i915_private*, align 8
  %11 = alloca %struct.i915_audio_component*, align 8
  %12 = alloca %struct.intel_encoder*, align 8
  %13 = alloca %struct.intel_crtc*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.drm_i915_private* @kdev_to_i915(%struct.device* %16)
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %10, align 8
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %19 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %18, i32 0, i32 1
  %20 = load %struct.i915_audio_component*, %struct.i915_audio_component** %19, align 8
  store %struct.i915_audio_component* %20, %struct.i915_audio_component** %11, align 8
  store i32 0, i32* %15, align 4
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %22 = call i32 @HAS_DDI(%struct.drm_i915_private* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %75

25:                                               ; preds = %4
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = call i64 @i915_audio_component_get_power(%struct.device* %26)
  store i64 %27, i64* %14, align 8
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %29 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call %struct.intel_encoder* @get_saved_enc(%struct.drm_i915_private* %31, i32 %32, i32 %33)
  store %struct.intel_encoder* %34, %struct.intel_encoder** %12, align 8
  %35 = load %struct.intel_encoder*, %struct.intel_encoder** %12, align 8
  %36 = icmp ne %struct.intel_encoder* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %25
  %38 = load %struct.intel_encoder*, %struct.intel_encoder** %12, align 8
  %39 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %37, %25
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @port_name(i32 %44)
  %46 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %15, align 4
  br label %67

49:                                               ; preds = %37
  %50 = load %struct.intel_encoder*, %struct.intel_encoder** %12, align 8
  %51 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.intel_crtc* @to_intel_crtc(i32 %53)
  store %struct.intel_crtc* %54, %struct.intel_crtc** %13, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.i915_audio_component*, %struct.i915_audio_component** %11, align 8
  %57 = getelementptr inbounds %struct.i915_audio_component, %struct.i915_audio_component* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %55, i32* %61, align 4
  %62 = load %struct.intel_encoder*, %struct.intel_encoder** %12, align 8
  %63 = load %struct.intel_crtc*, %struct.intel_crtc** %13, align 8
  %64 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @hsw_audio_config_update(%struct.intel_encoder* %62, i32 %65)
  br label %67

67:                                               ; preds = %49, %43
  %68 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %69 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load %struct.device*, %struct.device** %6, align 8
  %72 = load i64, i64* %14, align 8
  %73 = call i32 @i915_audio_component_put_power(%struct.device* %71, i64 %72)
  %74 = load i32, i32* %15, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %67, %24
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.drm_i915_private* @kdev_to_i915(%struct.device*) #1

declare dso_local i32 @HAS_DDI(%struct.drm_i915_private*) #1

declare dso_local i64 @i915_audio_component_get_power(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.intel_encoder* @get_saved_enc(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @port_name(i32) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local i32 @hsw_audio_config_update(%struct.intel_encoder*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @i915_audio_component_put_power(%struct.device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
