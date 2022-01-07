; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_inno_hdmi.c_inno_hdmi_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_inno_hdmi.c_inno_hdmi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inno_hdmi = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i8*, i8* }
%struct.drm_display_mode = type { i32 }

@HDMI_COLORSPACE_RGB = common dso_local global i8* null, align 8
@HDMI_COLORIMETRY_ITU_601 = common dso_local global i32 0, align 4
@HDMI_COLORIMETRY_ITU_709 = common dso_local global i32 0, align 4
@HDMI_AV_MUTE = common dso_local global i32 0, align 4
@m_AUDIO_MUTE = common dso_local global i32 0, align 4
@m_VIDEO_BLACK = common dso_local global i32 0, align 4
@HDMI_HDCP_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inno_hdmi*, %struct.drm_display_mode*)* @inno_hdmi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inno_hdmi_setup(%struct.inno_hdmi* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.inno_hdmi*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  store %struct.inno_hdmi* %0, %struct.inno_hdmi** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %5 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %6 = call i32 @drm_match_cea_mode(%struct.drm_display_mode* %5)
  %7 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %8 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 %6, i32* %9, align 8
  %10 = load i8*, i8** @HDMI_COLORSPACE_RGB, align 8
  %11 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %12 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 4
  store i8* %10, i8** %13, align 8
  %14 = load i8*, i8** @HDMI_COLORSPACE_RGB, align 8
  %15 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %16 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  store i8* %14, i8** %17, align 8
  %18 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %19 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 6
  br i1 %22, label %65, label %23

23:                                               ; preds = %2
  %24 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %25 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 7
  br i1 %28, label %65, label %29

29:                                               ; preds = %23
  %30 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %31 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 21
  br i1 %34, label %65, label %35

35:                                               ; preds = %29
  %36 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %37 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 22
  br i1 %40, label %65, label %41

41:                                               ; preds = %35
  %42 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %43 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %65, label %47

47:                                               ; preds = %41
  %48 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %49 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %65, label %53

53:                                               ; preds = %47
  %54 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %55 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 17
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %61 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 18
  br i1 %64, label %65, label %70

65:                                               ; preds = %59, %53, %47, %41, %35, %29, %23, %2
  %66 = load i32, i32* @HDMI_COLORIMETRY_ITU_601, align 4
  %67 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %68 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  store i32 %66, i32* %69, align 8
  br label %75

70:                                               ; preds = %59
  %71 = load i32, i32* @HDMI_COLORIMETRY_ITU_709, align 4
  %72 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %73 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 8
  br label %75

75:                                               ; preds = %70, %65
  %76 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %77 = load i32, i32* @HDMI_AV_MUTE, align 4
  %78 = load i32, i32* @m_AUDIO_MUTE, align 4
  %79 = load i32, i32* @m_VIDEO_BLACK, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @v_AUDIO_MUTE(i32 1)
  %82 = call i32 @v_VIDEO_MUTE(i32 1)
  %83 = or i32 %81, %82
  %84 = call i32 @hdmi_modb(%struct.inno_hdmi* %76, i32 %77, i32 %80, i32 %83)
  %85 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %86 = load i32, i32* @HDMI_HDCP_CTRL, align 4
  %87 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %88 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @v_HDMI_DVI(i64 %90)
  %92 = call i32 @hdmi_writeb(%struct.inno_hdmi* %85, i32 %86, i32 %91)
  %93 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %94 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %95 = call i32 @inno_hdmi_config_video_timing(%struct.inno_hdmi* %93, %struct.drm_display_mode* %94)
  %96 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %97 = call i32 @inno_hdmi_config_video_csc(%struct.inno_hdmi* %96)
  %98 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %99 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %75
  %104 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %105 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %106 = call i32 @inno_hdmi_config_video_avi(%struct.inno_hdmi* %104, %struct.drm_display_mode* %105)
  %107 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %108 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %109 = call i32 @inno_hdmi_config_video_vsi(%struct.inno_hdmi* %107, %struct.drm_display_mode* %108)
  br label %110

110:                                              ; preds = %103, %75
  %111 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %112 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 %113, 1000
  %115 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %116 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %118 = call i32 @inno_hdmi_i2c_init(%struct.inno_hdmi* %117)
  %119 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %120 = load i32, i32* @HDMI_AV_MUTE, align 4
  %121 = load i32, i32* @m_AUDIO_MUTE, align 4
  %122 = load i32, i32* @m_VIDEO_BLACK, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @v_AUDIO_MUTE(i32 0)
  %125 = call i32 @v_VIDEO_MUTE(i32 0)
  %126 = or i32 %124, %125
  %127 = call i32 @hdmi_modb(%struct.inno_hdmi* %119, i32 %120, i32 %123, i32 %126)
  ret i32 0
}

declare dso_local i32 @drm_match_cea_mode(%struct.drm_display_mode*) #1

declare dso_local i32 @hdmi_modb(%struct.inno_hdmi*, i32, i32, i32) #1

declare dso_local i32 @v_AUDIO_MUTE(i32) #1

declare dso_local i32 @v_VIDEO_MUTE(i32) #1

declare dso_local i32 @hdmi_writeb(%struct.inno_hdmi*, i32, i32) #1

declare dso_local i32 @v_HDMI_DVI(i64) #1

declare dso_local i32 @inno_hdmi_config_video_timing(%struct.inno_hdmi*, %struct.drm_display_mode*) #1

declare dso_local i32 @inno_hdmi_config_video_csc(%struct.inno_hdmi*) #1

declare dso_local i32 @inno_hdmi_config_video_avi(%struct.inno_hdmi*, %struct.drm_display_mode*) #1

declare dso_local i32 @inno_hdmi_config_video_vsi(%struct.inno_hdmi*, %struct.drm_display_mode*) #1

declare dso_local i32 @inno_hdmi_i2c_init(%struct.inno_hdmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
