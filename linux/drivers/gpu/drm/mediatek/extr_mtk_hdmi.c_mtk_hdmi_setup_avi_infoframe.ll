; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_setup_avi_infoframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_setup_avi_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hdmi = type { i32, i32 }
%struct.drm_display_mode = type { i32 }
%struct.hdmi_avi_infoframe = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"Failed to get AVI infoframe from mode: %zd\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to pack AVI infoframe: %zd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_hdmi*, %struct.drm_display_mode*)* @mtk_hdmi_setup_avi_infoframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_hdmi_setup_avi_infoframe(%struct.mtk_hdmi* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_hdmi*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.hdmi_avi_infoframe, align 4
  %7 = alloca [17 x i32], align 16
  %8 = alloca i64, align 8
  store %struct.mtk_hdmi* %0, %struct.mtk_hdmi** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %9 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %10 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %9, i32 0, i32 1
  %11 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %12 = call i64 @drm_hdmi_avi_infoframe_from_display_mode(%struct.hdmi_avi_infoframe* %6, i32* %10, %struct.drm_display_mode* %11)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %17 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i64, i64* %8, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %3, align 4
  br label %40

23:                                               ; preds = %2
  %24 = getelementptr inbounds [17 x i32], [17 x i32]* %7, i64 0, i64 0
  %25 = call i64 @hdmi_avi_infoframe_pack(%struct.hdmi_avi_infoframe* %6, i32* %24, i32 68)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %30 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = load i64, i64* %8, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %40

36:                                               ; preds = %23
  %37 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %38 = getelementptr inbounds [17 x i32], [17 x i32]* %7, i64 0, i64 0
  %39 = call i32 @mtk_hdmi_hw_send_info_frame(%struct.mtk_hdmi* %37, i32* %38, i32 68)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %28, %15
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @drm_hdmi_avi_infoframe_from_display_mode(%struct.hdmi_avi_infoframe*, i32*, %struct.drm_display_mode*) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i64 @hdmi_avi_infoframe_pack(%struct.hdmi_avi_infoframe*, i32*, i32) #1

declare dso_local i32 @mtk_hdmi_hw_send_info_frame(%struct.mtk_hdmi*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
