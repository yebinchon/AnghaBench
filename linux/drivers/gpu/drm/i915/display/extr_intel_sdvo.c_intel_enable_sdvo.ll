; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_enable_sdvo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_enable_sdvo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_crtc_state = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_sdvo = type { i32, i32 }
%struct.intel_crtc = type { i32 }

@SDVO_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"First %s output reported failure to sync\0A\00", align 1
@DRM_MODE_DPMS_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_enable_sdvo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_enable_sdvo(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.intel_sdvo*, align 8
  %10 = alloca %struct.intel_crtc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %16 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %17 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.drm_device*, %struct.drm_device** %18, align 8
  store %struct.drm_device* %19, %struct.drm_device** %7, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %21 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %20)
  store %struct.drm_i915_private* %21, %struct.drm_i915_private** %8, align 8
  %22 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %23 = call %struct.intel_sdvo* @to_sdvo(%struct.intel_encoder* %22)
  store %struct.intel_sdvo* %23, %struct.intel_sdvo** %9, align 8
  %24 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %25 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.intel_crtc* @to_intel_crtc(i32 %27)
  store %struct.intel_crtc* %28, %struct.intel_crtc** %10, align 8
  %29 = load %struct.intel_sdvo*, %struct.intel_sdvo** %9, align 8
  %30 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @I915_READ(i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* @SDVO_ENABLE, align 4
  %34 = load i32, i32* %11, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %11, align 4
  %36 = load %struct.intel_sdvo*, %struct.intel_sdvo** %9, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @intel_sdvo_write_sdvox(%struct.intel_sdvo* %36, i32 %37)
  store i32 0, i32* %14, align 4
  br label %39

39:                                               ; preds = %48, %3
  %40 = load i32, i32* %14, align 4
  %41 = icmp slt i32 %40, 2
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %44 = load %struct.intel_crtc*, %struct.intel_crtc** %10, align 8
  %45 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @intel_wait_for_vblank(%struct.drm_i915_private* %43, i32 %46)
  br label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %14, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %14, align 4
  br label %39

51:                                               ; preds = %39
  %52 = load %struct.intel_sdvo*, %struct.intel_sdvo** %9, align 8
  %53 = call i32 @intel_sdvo_get_trained_inputs(%struct.intel_sdvo* %52, i32* %12, i32* %13)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = load %struct.intel_sdvo*, %struct.intel_sdvo** %9, align 8
  %61 = call i32 @SDVO_NAME(%struct.intel_sdvo* %60)
  %62 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %59, %56, %51
  %64 = load %struct.intel_sdvo*, %struct.intel_sdvo** %9, align 8
  %65 = load %struct.intel_sdvo*, %struct.intel_sdvo** %9, align 8
  %66 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @intel_sdvo_set_active_outputs(%struct.intel_sdvo* %64, i32 %67)
  %69 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %70 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %63
  %74 = load %struct.intel_sdvo*, %struct.intel_sdvo** %9, align 8
  %75 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %76 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %77 = call i32 @intel_sdvo_enable_audio(%struct.intel_sdvo* %74, %struct.intel_crtc_state* %75, %struct.drm_connector_state* %76)
  br label %78

78:                                               ; preds = %73, %63
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local %struct.intel_sdvo* @to_sdvo(%struct.intel_encoder*) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @intel_sdvo_write_sdvox(%struct.intel_sdvo*, i32) #1

declare dso_local i32 @intel_wait_for_vblank(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_sdvo_get_trained_inputs(%struct.intel_sdvo*, i32*, i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @SDVO_NAME(%struct.intel_sdvo*) #1

declare dso_local i32 @intel_sdvo_set_active_outputs(%struct.intel_sdvo*, i32) #1

declare dso_local i32 @intel_sdvo_enable_audio(%struct.intel_sdvo*, %struct.intel_crtc_state*, %struct.drm_connector_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
