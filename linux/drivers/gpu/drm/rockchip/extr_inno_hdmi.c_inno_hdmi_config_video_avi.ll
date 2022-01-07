; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_inno_hdmi.c_inno_hdmi_config_video_avi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_inno_hdmi.c_inno_hdmi_config_video_avi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inno_hdmi = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.drm_display_mode = type { i32 }
%union.hdmi_infoframe = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@HDMI_COLORSPACE_YUV444 = common dso_local global i64 0, align 8
@HDMI_COLORSPACE_YUV422 = common dso_local global i64 0, align 8
@HDMI_COLORSPACE_RGB = common dso_local global i64 0, align 8
@INFOFRAME_AVI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inno_hdmi*, %struct.drm_display_mode*)* @inno_hdmi_config_video_avi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inno_hdmi_config_video_avi(%struct.inno_hdmi* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.inno_hdmi*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %union.hdmi_infoframe, align 8
  %6 = alloca i32, align 4
  store %struct.inno_hdmi* %0, %struct.inno_hdmi** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %7 = bitcast %union.hdmi_infoframe* %5 to %struct.TYPE_4__*
  %8 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %9 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %8, i32 0, i32 1
  %10 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %11 = call i32 @drm_hdmi_avi_infoframe_from_display_mode(%struct.TYPE_4__* %7, i32* %9, %struct.drm_display_mode* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %13 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @HDMI_COLORSPACE_YUV444, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i64, i64* @HDMI_COLORSPACE_YUV444, align 8
  %20 = bitcast %union.hdmi_infoframe* %5 to %struct.TYPE_4__*
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  br label %38

22:                                               ; preds = %2
  %23 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %24 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @HDMI_COLORSPACE_YUV422, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i64, i64* @HDMI_COLORSPACE_YUV422, align 8
  %31 = bitcast %union.hdmi_infoframe* %5 to %struct.TYPE_4__*
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %37

33:                                               ; preds = %22
  %34 = load i64, i64* @HDMI_COLORSPACE_RGB, align 8
  %35 = bitcast %union.hdmi_infoframe* %5 to %struct.TYPE_4__*
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %33, %29
  br label %38

38:                                               ; preds = %37, %18
  %39 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @INFOFRAME_AVI, align 4
  %42 = call i32 @inno_hdmi_upload_frame(%struct.inno_hdmi* %39, i32 %40, %union.hdmi_infoframe* %5, i32 %41, i32 0, i32 0, i32 0)
  ret i32 %42
}

declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(%struct.TYPE_4__*, i32*, %struct.drm_display_mode*) #1

declare dso_local i32 @inno_hdmi_upload_frame(%struct.inno_hdmi*, i32, %union.hdmi_infoframe*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
