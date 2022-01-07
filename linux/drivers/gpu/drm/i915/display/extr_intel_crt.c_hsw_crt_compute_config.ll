; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_crt.c_hsw_crt_compute_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_crt.c_hsw_crt_compute_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.intel_crtc_state = type { i32, i32, i32, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32, i32 }
%struct.drm_connector_state = type { i32 }
%struct.drm_i915_private = type { i32 }

@DRM_MODE_FLAG_DBLSCAN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@INTEL_OUTPUT_FORMAT_RGB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"LPT only supports 24bpp\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @hsw_crt_compute_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsw_crt_compute_config(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_encoder*, align 8
  %6 = alloca %struct.intel_crtc_state*, align 8
  %7 = alloca %struct.drm_connector_state*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.drm_display_mode*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %5, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %6, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %7, align 8
  %10 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %11 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.drm_i915_private* @to_i915(i32 %13)
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %8, align 8
  %15 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %16 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.drm_display_mode* %17, %struct.drm_display_mode** %9, align 8
  %18 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %19 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @DRM_MODE_FLAG_DBLSCAN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %69

27:                                               ; preds = %3
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %29 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 4096
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %35, 4096
  br i1 %36, label %37, label %40

37:                                               ; preds = %32, %27
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %69

40:                                               ; preds = %32
  %41 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %42 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load i32, i32* @INTEL_OUTPUT_FORMAT_RGB, align 4
  %44 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %45 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %47 = call i64 @HAS_PCH_LPT(%struct.drm_i915_private* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %40
  %50 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %51 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %56 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %57, 24
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %69

63:                                               ; preds = %54, %49
  %64 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %65 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %64, i32 0, i32 1
  store i32 24, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %40
  %67 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %68 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %67, i32 0, i32 2
  store i32 270000, i32* %68, align 8
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %66, %59, %37, %24
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @HAS_PCH_LPT(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
