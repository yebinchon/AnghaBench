; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_hw_msic_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_hw_msic_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hdmi = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32 }

@GRL_CFG4 = common dso_local global i32 0, align 4
@CFG4_MHL_MODE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@GRL_CFG2 = common dso_local global i32 0, align 4
@CFG2_MHL_DE_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_hdmi*, %struct.drm_display_mode*)* @mtk_hdmi_hw_msic_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_hdmi_hw_msic_setting(%struct.mtk_hdmi* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.mtk_hdmi*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  store %struct.mtk_hdmi* %0, %struct.mtk_hdmi** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %5 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %6 = load i32, i32* @GRL_CFG4, align 4
  %7 = load i32, i32* @CFG4_MHL_MODE, align 4
  %8 = call i32 @mtk_hdmi_clear_bits(%struct.mtk_hdmi* %5, i32 %6, i32 %7)
  %9 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %10 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %17 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 74250
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %22 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1080
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %27 = load i32, i32* @GRL_CFG2, align 4
  %28 = load i32, i32* @CFG2_MHL_DE_SEL, align 4
  %29 = call i32 @mtk_hdmi_clear_bits(%struct.mtk_hdmi* %26, i32 %27, i32 %28)
  br label %35

30:                                               ; preds = %20, %15, %2
  %31 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %32 = load i32, i32* @GRL_CFG2, align 4
  %33 = load i32, i32* @CFG2_MHL_DE_SEL, align 4
  %34 = call i32 @mtk_hdmi_set_bits(%struct.mtk_hdmi* %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %30, %25
  ret void
}

declare dso_local i32 @mtk_hdmi_clear_bits(%struct.mtk_hdmi*, i32, i32) #1

declare dso_local i32 @mtk_hdmi_set_bits(%struct.mtk_hdmi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
