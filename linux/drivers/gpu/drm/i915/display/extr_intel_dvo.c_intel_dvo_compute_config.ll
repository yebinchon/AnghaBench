; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dvo.c_intel_dvo_compute_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dvo.c_intel_dvo_compute_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32 }
%struct.intel_crtc_state = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.intel_dvo = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_display_mode* }

@DRM_MODE_FLAG_DBLSCAN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@INTEL_OUTPUT_FORMAT_RGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_dvo_compute_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dvo_compute_config(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_encoder*, align 8
  %6 = alloca %struct.intel_crtc_state*, align 8
  %7 = alloca %struct.drm_connector_state*, align 8
  %8 = alloca %struct.intel_dvo*, align 8
  %9 = alloca %struct.drm_display_mode*, align 8
  %10 = alloca %struct.drm_display_mode*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %5, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %6, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %7, align 8
  %11 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %12 = call %struct.intel_dvo* @enc_to_dvo(%struct.intel_encoder* %11)
  store %struct.intel_dvo* %12, %struct.intel_dvo** %8, align 8
  %13 = load %struct.intel_dvo*, %struct.intel_dvo** %8, align 8
  %14 = getelementptr inbounds %struct.intel_dvo, %struct.intel_dvo* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.drm_display_mode*, %struct.drm_display_mode** %17, align 8
  store %struct.drm_display_mode* %18, %struct.drm_display_mode** %9, align 8
  %19 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %20 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store %struct.drm_display_mode* %21, %struct.drm_display_mode** %10, align 8
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %23 = icmp ne %struct.drm_display_mode* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %26 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %27 = call i32 @intel_fixed_panel_mode(%struct.drm_display_mode* %25, %struct.drm_display_mode* %26)
  br label %28

28:                                               ; preds = %24, %3
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %30 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DRM_MODE_FLAG_DBLSCAN, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %42

38:                                               ; preds = %28
  %39 = load i32, i32* @INTEL_OUTPUT_FORMAT_RGB, align 4
  %40 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %41 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %35
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.intel_dvo* @enc_to_dvo(%struct.intel_encoder*) #1

declare dso_local i32 @intel_fixed_panel_mode(%struct.drm_display_mode*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
