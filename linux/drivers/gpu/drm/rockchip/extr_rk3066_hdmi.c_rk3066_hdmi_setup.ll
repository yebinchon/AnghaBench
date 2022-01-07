; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rk3066_hdmi.c_rk3066_hdmi_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rk3066_hdmi.c_rk3066_hdmi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk3066_hdmi = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i32 }
%struct.drm_display_mode = type { i32 }

@HDMI_COLORSPACE_RGB = common dso_local global i32 0, align 4
@HDMI_COLORIMETRY_ITU_601 = common dso_local global i32 0, align 4
@HDMI_COLORIMETRY_ITU_709 = common dso_local global i32 0, align 4
@HDMI_VIDEO_CTRL2 = common dso_local global i32 0, align 4
@HDMI_VIDEO_AUDIO_DISABLE_MASK = common dso_local global i32 0, align 4
@HDMI_AUDIO_DISABLE = common dso_local global i32 0, align 4
@HDMI_VIDEO_DISABLE = common dso_local global i32 0, align 4
@HDMI_SYS_POWER_MODE_B = common dso_local global i64 0, align 8
@HDMI_AV_CTRL1 = common dso_local global i32 0, align 4
@HDMI_VIDEO_DE_MASK = common dso_local global i32 0, align 4
@HDMI_VIDEO_EXTERNAL_DE = common dso_local global i32 0, align 4
@HDMI_VIDEO_CTRL1 = common dso_local global i32 0, align 4
@HDMI_VIDEO_OUTPUT_RGB444 = common dso_local global i32 0, align 4
@HDMI_VIDEO_INPUT_DATA_DEPTH_8BIT = common dso_local global i32 0, align 4
@HDMI_VIDEO_INPUT_COLOR_RGB = common dso_local global i32 0, align 4
@HDMI_DEEP_COLOR_MODE = common dso_local global i32 0, align 4
@HDMI_HDCP_CTRL = common dso_local global i32 0, align 4
@HDMI_VIDEO_MODE_MASK = common dso_local global i32 0, align 4
@HDMI_VIDEO_MODE_HDMI = common dso_local global i32 0, align 4
@HDMI_SYS_POWER_MODE_E = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rk3066_hdmi*, %struct.drm_display_mode*)* @rk3066_hdmi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk3066_hdmi_setup(%struct.rk3066_hdmi* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.rk3066_hdmi*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  store %struct.rk3066_hdmi* %0, %struct.rk3066_hdmi** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %5 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %6 = call i32 @drm_match_cea_mode(%struct.drm_display_mode* %5)
  %7 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %8 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 %6, i32* %9, align 8
  %10 = load i32, i32* @HDMI_COLORSPACE_RGB, align 4
  %11 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %12 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  store i32 %10, i32* %13, align 4
  %14 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %15 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 6
  br i1 %18, label %61, label %19

19:                                               ; preds = %2
  %20 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %21 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 7
  br i1 %24, label %61, label %25

25:                                               ; preds = %19
  %26 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %27 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 21
  br i1 %30, label %61, label %31

31:                                               ; preds = %25
  %32 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %33 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 22
  br i1 %36, label %61, label %37

37:                                               ; preds = %31
  %38 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %39 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %61, label %43

43:                                               ; preds = %37
  %44 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %45 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 3
  br i1 %48, label %61, label %49

49:                                               ; preds = %43
  %50 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %51 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 17
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %57 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 18
  br i1 %60, label %61, label %66

61:                                               ; preds = %55, %49, %43, %37, %31, %25, %19, %2
  %62 = load i32, i32* @HDMI_COLORIMETRY_ITU_601, align 4
  %63 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %64 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  store i32 %62, i32* %65, align 8
  br label %71

66:                                               ; preds = %55
  %67 = load i32, i32* @HDMI_COLORIMETRY_ITU_709, align 4
  %68 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %69 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  store i32 %67, i32* %70, align 8
  br label %71

71:                                               ; preds = %66, %61
  %72 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %73 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %74, 1000
  %76 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %77 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %79 = load i32, i32* @HDMI_VIDEO_CTRL2, align 4
  %80 = load i32, i32* @HDMI_VIDEO_AUDIO_DISABLE_MASK, align 4
  %81 = load i32, i32* @HDMI_AUDIO_DISABLE, align 4
  %82 = load i32, i32* @HDMI_VIDEO_DISABLE, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @hdmi_modb(%struct.rk3066_hdmi* %78, i32 %79, i32 %80, i32 %83)
  %85 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %86 = call i64 @rk3066_hdmi_get_power_mode(%struct.rk3066_hdmi* %85)
  %87 = load i64, i64* @HDMI_SYS_POWER_MODE_B, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %71
  %90 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %91 = load i64, i64* @HDMI_SYS_POWER_MODE_B, align 8
  %92 = call i32 @rk3066_hdmi_set_power_mode(%struct.rk3066_hdmi* %90, i64 %91)
  br label %93

93:                                               ; preds = %89, %71
  %94 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %95 = load i32, i32* @HDMI_AV_CTRL1, align 4
  %96 = load i32, i32* @HDMI_VIDEO_DE_MASK, align 4
  %97 = load i32, i32* @HDMI_VIDEO_EXTERNAL_DE, align 4
  %98 = call i32 @hdmi_modb(%struct.rk3066_hdmi* %94, i32 %95, i32 %96, i32 %97)
  %99 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %100 = load i32, i32* @HDMI_VIDEO_CTRL1, align 4
  %101 = load i32, i32* @HDMI_VIDEO_OUTPUT_RGB444, align 4
  %102 = load i32, i32* @HDMI_VIDEO_INPUT_DATA_DEPTH_8BIT, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @HDMI_VIDEO_INPUT_COLOR_RGB, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @hdmi_writeb(%struct.rk3066_hdmi* %99, i32 %100, i32 %105)
  %107 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %108 = load i32, i32* @HDMI_DEEP_COLOR_MODE, align 4
  %109 = call i32 @hdmi_writeb(%struct.rk3066_hdmi* %107, i32 %108, i32 32)
  %110 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %111 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %112 = call i32 @rk3066_hdmi_config_video_timing(%struct.rk3066_hdmi* %110, %struct.drm_display_mode* %111)
  %113 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %114 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %93
  %119 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %120 = load i32, i32* @HDMI_HDCP_CTRL, align 4
  %121 = load i32, i32* @HDMI_VIDEO_MODE_MASK, align 4
  %122 = load i32, i32* @HDMI_VIDEO_MODE_HDMI, align 4
  %123 = call i32 @hdmi_modb(%struct.rk3066_hdmi* %119, i32 %120, i32 %121, i32 %122)
  %124 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %125 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %126 = call i32 @rk3066_hdmi_config_avi(%struct.rk3066_hdmi* %124, %struct.drm_display_mode* %125)
  br label %132

127:                                              ; preds = %93
  %128 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %129 = load i32, i32* @HDMI_HDCP_CTRL, align 4
  %130 = load i32, i32* @HDMI_VIDEO_MODE_MASK, align 4
  %131 = call i32 @hdmi_modb(%struct.rk3066_hdmi* %128, i32 %129, i32 %130, i32 0)
  br label %132

132:                                              ; preds = %127, %118
  %133 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %134 = call i32 @rk3066_hdmi_config_phy(%struct.rk3066_hdmi* %133)
  %135 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %136 = load i64, i64* @HDMI_SYS_POWER_MODE_E, align 8
  %137 = call i32 @rk3066_hdmi_set_power_mode(%struct.rk3066_hdmi* %135, i64 %136)
  %138 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %139 = call i32 @rk3066_hdmi_i2c_init(%struct.rk3066_hdmi* %138)
  %140 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %141 = load i32, i32* @HDMI_VIDEO_CTRL2, align 4
  %142 = load i32, i32* @HDMI_VIDEO_AUDIO_DISABLE_MASK, align 4
  %143 = load i32, i32* @HDMI_AUDIO_DISABLE, align 4
  %144 = call i32 @hdmi_modb(%struct.rk3066_hdmi* %140, i32 %141, i32 %142, i32 %143)
  ret i32 0
}

declare dso_local i32 @drm_match_cea_mode(%struct.drm_display_mode*) #1

declare dso_local i32 @hdmi_modb(%struct.rk3066_hdmi*, i32, i32, i32) #1

declare dso_local i64 @rk3066_hdmi_get_power_mode(%struct.rk3066_hdmi*) #1

declare dso_local i32 @rk3066_hdmi_set_power_mode(%struct.rk3066_hdmi*, i64) #1

declare dso_local i32 @hdmi_writeb(%struct.rk3066_hdmi*, i32, i32) #1

declare dso_local i32 @rk3066_hdmi_config_video_timing(%struct.rk3066_hdmi*, %struct.drm_display_mode*) #1

declare dso_local i32 @rk3066_hdmi_config_avi(%struct.rk3066_hdmi*, %struct.drm_display_mode*) #1

declare dso_local i32 @rk3066_hdmi_config_phy(%struct.rk3066_hdmi*) #1

declare dso_local i32 @rk3066_hdmi_i2c_init(%struct.rk3066_hdmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
