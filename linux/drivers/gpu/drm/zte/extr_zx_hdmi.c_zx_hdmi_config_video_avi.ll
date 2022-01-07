; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_hdmi.c_zx_hdmi_config_video_avi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_hdmi.c_zx_hdmi_config_video_avi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zx_hdmi = type { i32, i32 }
%struct.drm_display_mode = type { i32 }
%union.hdmi_infoframe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"failed to get avi infoframe: %d\0A\00", align 1
@HDMI_COLORSPACE_YUV444 = common dso_local global i32 0, align 4
@FSEL_AVI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zx_hdmi*, %struct.drm_display_mode*)* @zx_hdmi_config_video_avi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_hdmi_config_video_avi(%struct.zx_hdmi* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zx_hdmi*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %union.hdmi_infoframe, align 4
  %7 = alloca i32, align 4
  store %struct.zx_hdmi* %0, %struct.zx_hdmi** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %8 = bitcast %union.hdmi_infoframe* %6 to %struct.TYPE_2__*
  %9 = load %struct.zx_hdmi*, %struct.zx_hdmi** %4, align 8
  %10 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %9, i32 0, i32 1
  %11 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %12 = call i32 @drm_hdmi_avi_infoframe_from_display_mode(%struct.TYPE_2__* %8, i32* %10, %struct.drm_display_mode* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.zx_hdmi*, %struct.zx_hdmi** %4, align 8
  %17 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @DRM_DEV_ERROR(i32 %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %29

22:                                               ; preds = %2
  %23 = load i32, i32* @HDMI_COLORSPACE_YUV444, align 4
  %24 = bitcast %union.hdmi_infoframe* %6 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.zx_hdmi*, %struct.zx_hdmi** %4, align 8
  %27 = load i32, i32* @FSEL_AVI, align 4
  %28 = call i32 @zx_hdmi_infoframe_trans(%struct.zx_hdmi* %26, %union.hdmi_infoframe* %6, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %22, %15
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(%struct.TYPE_2__*, i32*, %struct.drm_display_mode*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @zx_hdmi_infoframe_trans(%struct.zx_hdmi*, %union.hdmi_infoframe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
