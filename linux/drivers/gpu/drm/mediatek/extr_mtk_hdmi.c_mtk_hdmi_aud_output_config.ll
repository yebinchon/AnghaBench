; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_aud_output_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_aud_output_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hdmi = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_display_mode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_hdmi*, %struct.drm_display_mode*)* @mtk_hdmi_aud_output_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_hdmi_aud_output_config(%struct.mtk_hdmi* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.mtk_hdmi*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  store %struct.mtk_hdmi* %0, %struct.mtk_hdmi** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %5 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %6 = call i32 @mtk_hdmi_hw_aud_mute(%struct.mtk_hdmi* %5)
  %7 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %8 = call i32 @mtk_hdmi_aud_enable_packet(%struct.mtk_hdmi* %7, i32 0)
  %9 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %10 = call i32 @mtk_hdmi_aud_set_input(%struct.mtk_hdmi* %9)
  %11 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %12 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %13 = call i32 @mtk_hdmi_aud_set_src(%struct.mtk_hdmi* %11, %struct.drm_display_mode* %12)
  %14 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %15 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %16 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mtk_hdmi_hw_aud_set_channel_status(%struct.mtk_hdmi* %14, i32 %20)
  %22 = call i32 @usleep_range(i32 50, i32 100)
  %23 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %24 = call i32 @mtk_hdmi_aud_on_off_hw_ncts(%struct.mtk_hdmi* %23, i32 1)
  %25 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %26 = call i32 @mtk_hdmi_aud_enable_packet(%struct.mtk_hdmi* %25, i32 1)
  %27 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %28 = call i32 @mtk_hdmi_hw_aud_unmute(%struct.mtk_hdmi* %27)
  ret i32 0
}

declare dso_local i32 @mtk_hdmi_hw_aud_mute(%struct.mtk_hdmi*) #1

declare dso_local i32 @mtk_hdmi_aud_enable_packet(%struct.mtk_hdmi*, i32) #1

declare dso_local i32 @mtk_hdmi_aud_set_input(%struct.mtk_hdmi*) #1

declare dso_local i32 @mtk_hdmi_aud_set_src(%struct.mtk_hdmi*, %struct.drm_display_mode*) #1

declare dso_local i32 @mtk_hdmi_hw_aud_set_channel_status(%struct.mtk_hdmi*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @mtk_hdmi_aud_on_off_hw_ncts(%struct.mtk_hdmi*, i32) #1

declare dso_local i32 @mtk_hdmi_hw_aud_unmute(%struct.mtk_hdmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
