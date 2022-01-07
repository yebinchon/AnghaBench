; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_cpt_infoframes_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_cpt_infoframes_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.TYPE_6__ = type { i32 }

@VIDEO_DIP_ENABLE = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE_AVI = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE_VENDOR = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE_GAMUT = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE_SPD = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE_GCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_encoder*, %struct.intel_crtc_state*)* @cpt_infoframes_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpt_infoframes_enabled(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  %9 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %10 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.drm_i915_private* @to_i915(i32 %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %6, align 8
  %14 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %15 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_6__* @to_intel_crtc(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @TVIDEO_DIP_CTL(i32 %21)
  %23 = call i32 @I915_READ(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @VIDEO_DIP_ENABLE, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %41

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @VIDEO_DIP_ENABLE_AVI, align 4
  %32 = load i32, i32* @VIDEO_DIP_ENABLE_VENDOR, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @VIDEO_DIP_ENABLE_GAMUT, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @VIDEO_DIP_ENABLE_SPD, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @VIDEO_DIP_ENABLE_GCP, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %30, %39
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %29, %28
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.TYPE_6__* @to_intel_crtc(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @TVIDEO_DIP_CTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
