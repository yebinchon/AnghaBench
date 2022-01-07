; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_inno_hdmi.c_inno_hdmi_config_video_vsi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_inno_hdmi.c_inno_hdmi_config_video_vsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inno_hdmi = type { i32 }
%struct.drm_display_mode = type { i32 }
%union.hdmi_infoframe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@INFOFRAME_VSI = common dso_local global i32 0, align 4
@m_PACKET_VSI_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inno_hdmi*, %struct.drm_display_mode*)* @inno_hdmi_config_video_vsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inno_hdmi_config_video_vsi(%struct.inno_hdmi* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.inno_hdmi*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %union.hdmi_infoframe, align 4
  %6 = alloca i32, align 4
  store %struct.inno_hdmi* %0, %struct.inno_hdmi** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %7 = bitcast %union.hdmi_infoframe* %5 to %struct.TYPE_2__*
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %10 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %9, i32 0, i32 0
  %11 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %12 = call i32 @drm_hdmi_vendor_infoframe_from_display_mode(i32* %8, i32* %10, %struct.drm_display_mode* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @INFOFRAME_VSI, align 4
  %16 = load i32, i32* @m_PACKET_VSI_EN, align 4
  %17 = call i32 @v_PACKET_VSI_EN(i32 0)
  %18 = call i32 @v_PACKET_VSI_EN(i32 1)
  %19 = call i32 @inno_hdmi_upload_frame(%struct.inno_hdmi* %13, i32 %14, %union.hdmi_infoframe* %5, i32 %15, i32 %16, i32 %17, i32 %18)
  ret i32 %19
}

declare dso_local i32 @drm_hdmi_vendor_infoframe_from_display_mode(i32*, i32*, %struct.drm_display_mode*) #1

declare dso_local i32 @inno_hdmi_upload_frame(%struct.inno_hdmi*, i32, %union.hdmi_infoframe*, i32, i32, i32, i32) #1

declare dso_local i32 @v_PACKET_VSI_EN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
