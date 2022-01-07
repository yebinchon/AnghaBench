; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_hsw_infoframes_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_hsw_infoframes_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_crtc_state = type { i32 }
%struct.drm_i915_private = type { i32 }

@VIDEO_DIP_ENABLE_VSC_HSW = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE_AVI_HSW = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE_GCP_HSW = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE_VS_HSW = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE_GMP_HSW = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE_SPD_HSW = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE_DRM_GLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_encoder*, %struct.intel_crtc_state*)* @hsw_infoframes_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsw_infoframes_enabled(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %8 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %9 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.drm_i915_private* @to_i915(i32 %11)
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %5, align 8
  %13 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %14 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @HSW_TVIDEO_DIP_CTL(i32 %15)
  %17 = call i32 @I915_READ(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @VIDEO_DIP_ENABLE_VSC_HSW, align 4
  %19 = load i32, i32* @VIDEO_DIP_ENABLE_AVI_HSW, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @VIDEO_DIP_ENABLE_GCP_HSW, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @VIDEO_DIP_ENABLE_VS_HSW, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @VIDEO_DIP_ENABLE_GMP_HSW, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @VIDEO_DIP_ENABLE_SPD_HSW, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %7, align 4
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %30 = call i32 @INTEL_GEN(%struct.drm_i915_private* %29)
  %31 = icmp sge i32 %30, 10
  br i1 %31, label %36, label %32

32:                                               ; preds = %2
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %34 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32, %2
  %37 = load i32, i32* @VIDEO_DIP_ENABLE_DRM_GLK, align 4
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %41, %42
  ret i32 %43
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @HSW_TVIDEO_DIP_CTL(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
