; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_detect_hdmi_audio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_detect_hdmi_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.psb_intel_sdvo = type { i32 }
%struct.edid = type { i32 }

@DRM_EDID_INPUT_DIGITAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @psb_intel_sdvo_detect_hdmi_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psb_intel_sdvo_detect_hdmi_audio(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.psb_intel_sdvo*, align 8
  %5 = alloca %struct.edid*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %8 = call %struct.psb_intel_sdvo* @intel_attached_sdvo(%struct.drm_connector* %7)
  store %struct.psb_intel_sdvo* %8, %struct.psb_intel_sdvo** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %4, align 8
  %10 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

14:                                               ; preds = %1
  %15 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %16 = call %struct.edid* @psb_intel_sdvo_get_edid(%struct.drm_connector* %15)
  store %struct.edid* %16, %struct.edid** %5, align 8
  %17 = load %struct.edid*, %struct.edid** %5, align 8
  %18 = icmp ne %struct.edid* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load %struct.edid*, %struct.edid** %5, align 8
  %21 = getelementptr inbounds %struct.edid, %struct.edid* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DRM_EDID_INPUT_DIGITAL, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.edid*, %struct.edid** %5, align 8
  %28 = call i32 @drm_detect_monitor_audio(%struct.edid* %27)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %26, %19, %14
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %13
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.psb_intel_sdvo* @intel_attached_sdvo(%struct.drm_connector*) #1

declare dso_local %struct.edid* @psb_intel_sdvo_get_edid(%struct.drm_connector*) #1

declare dso_local i32 @drm_detect_monitor_audio(%struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
