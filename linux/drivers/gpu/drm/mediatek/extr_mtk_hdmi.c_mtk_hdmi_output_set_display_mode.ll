; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_output_set_display_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_output_set_display_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hdmi = type { i32, i32 }
%struct.drm_display_mode = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Failed to set vpll: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_hdmi*, %struct.drm_display_mode*)* @mtk_hdmi_output_set_display_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_hdmi_output_set_display_mode(%struct.mtk_hdmi* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_hdmi*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca i32, align 4
  store %struct.mtk_hdmi* %0, %struct.mtk_hdmi** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %7 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %8 = call i32 @mtk_hdmi_hw_vid_black(%struct.mtk_hdmi* %7, i32 1)
  %9 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %10 = call i32 @mtk_hdmi_hw_aud_mute(%struct.mtk_hdmi* %9)
  %11 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %12 = call i32 @mtk_hdmi_hw_send_av_mute(%struct.mtk_hdmi* %11)
  %13 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %14 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @phy_power_off(i32 %15)
  %17 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %18 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %19 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 1000
  %22 = call i32 @mtk_hdmi_video_change_vpll(%struct.mtk_hdmi* %17, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %27 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %49

32:                                               ; preds = %2
  %33 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %35 = call i32 @mtk_hdmi_video_set_display_mode(%struct.mtk_hdmi* %33, %struct.drm_display_mode* %34)
  %36 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %37 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @phy_power_on(i32 %38)
  %40 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %42 = call i32 @mtk_hdmi_aud_output_config(%struct.mtk_hdmi* %40, %struct.drm_display_mode* %41)
  %43 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %44 = call i32 @mtk_hdmi_hw_vid_black(%struct.mtk_hdmi* %43, i32 0)
  %45 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %46 = call i32 @mtk_hdmi_hw_aud_unmute(%struct.mtk_hdmi* %45)
  %47 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %48 = call i32 @mtk_hdmi_hw_send_av_unmute(%struct.mtk_hdmi* %47)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %32, %25
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @mtk_hdmi_hw_vid_black(%struct.mtk_hdmi*, i32) #1

declare dso_local i32 @mtk_hdmi_hw_aud_mute(%struct.mtk_hdmi*) #1

declare dso_local i32 @mtk_hdmi_hw_send_av_mute(%struct.mtk_hdmi*) #1

declare dso_local i32 @phy_power_off(i32) #1

declare dso_local i32 @mtk_hdmi_video_change_vpll(%struct.mtk_hdmi*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mtk_hdmi_video_set_display_mode(%struct.mtk_hdmi*, %struct.drm_display_mode*) #1

declare dso_local i32 @phy_power_on(i32) #1

declare dso_local i32 @mtk_hdmi_aud_output_config(%struct.mtk_hdmi*, %struct.drm_display_mode*) #1

declare dso_local i32 @mtk_hdmi_hw_aud_unmute(%struct.mtk_hdmi*) #1

declare dso_local i32 @mtk_hdmi_hw_send_av_unmute(%struct.mtk_hdmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
