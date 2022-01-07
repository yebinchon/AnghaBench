; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_drv.c_adv7511_set_config_csc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_drv.c_adv7511_set_config_csc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv7511 = type { i32 }
%struct.drm_connector = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.adv7511_video_config = type { i32, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@HDMI_SCAN_MODE_UNDERSCAN = common dso_local global i32 0, align 4
@HDMI_COLORSPACE_RGB = common dso_local global i8* null, align 8
@ADV7511_CSC_SCALING_4 = common dso_local global i32 0, align 4
@adv7511_csc_ycbcr_to_rgb = common dso_local global i32 0, align 4
@DRM_COLOR_FORMAT_YCRCB422 = common dso_local global i32 0, align 4
@ADV7511_HDMI_CFG_MODE_HDMI = common dso_local global i32 0, align 4
@ADV7511_HDMI_CFG_MODE_DVI = common dso_local global i32 0, align 4
@ADV7511_PACKET_ENABLE_AVI_INFOFRAME = common dso_local global i32 0, align 4
@ADV7511_REG_VIDEO_INPUT_CFG1 = common dso_local global i32 0, align 4
@ADV7511_REG_HDCP_HDMI_CFG = common dso_local global i32 0, align 4
@ADV7511_HDMI_CFG_MODE_MASK = common dso_local global i32 0, align 4
@ADV7511_REG_AVI_INFOFRAME_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adv7511*, %struct.drm_connector*, i32, i32)* @adv7511_set_config_csc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adv7511_set_config_csc(%struct.adv7511* %0, %struct.drm_connector* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.adv7511*, align 8
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.adv7511_video_config, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [17 x i32], align 16
  store %struct.adv7511* %0, %struct.adv7511** %5, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = getelementptr inbounds %struct.adv7511_video_config, %struct.adv7511_video_config* %9, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.adv7511_video_config, %struct.adv7511_video_config* %9, i32 0, i32 2
  %17 = call i32 @hdmi_avi_infoframe_init(%struct.TYPE_5__* %16)
  %18 = load i32, i32* @HDMI_SCAN_MODE_UNDERSCAN, align 4
  %19 = getelementptr inbounds %struct.adv7511_video_config, %struct.adv7511_video_config* %9, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.adv7511_video_config, %struct.adv7511_video_config* %9, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = load i8*, i8** @HDMI_COLORSPACE_RGB, align 8
  %26 = ptrtoint i8* %25 to i32
  %27 = getelementptr inbounds %struct.adv7511_video_config, %struct.adv7511_video_config* %9, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %56

29:                                               ; preds = %4
  %30 = load i32, i32* @ADV7511_CSC_SCALING_4, align 4
  %31 = getelementptr inbounds %struct.adv7511_video_config, %struct.adv7511_video_config* %9, i32 0, i32 3
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @adv7511_csc_ycbcr_to_rgb, align 4
  %33 = getelementptr inbounds %struct.adv7511_video_config, %struct.adv7511_video_config* %9, i32 0, i32 4
  store i32 %32, i32* %33, align 4
  %34 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %35 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @DRM_COLOR_FORMAT_YCRCB422, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.adv7511_video_config, %struct.adv7511_video_config* %9, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.adv7511_video_config, %struct.adv7511_video_config* %9, i32 0, i32 1
  store i32 0, i32* %46, align 4
  %47 = getelementptr inbounds %struct.adv7511_video_config, %struct.adv7511_video_config* %9, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 129, i32* %48, align 4
  br label %55

49:                                               ; preds = %41, %29
  %50 = getelementptr inbounds %struct.adv7511_video_config, %struct.adv7511_video_config* %9, i32 0, i32 1
  store i32 1, i32* %50, align 4
  %51 = load i8*, i8** @HDMI_COLORSPACE_RGB, align 8
  %52 = ptrtoint i8* %51 to i32
  %53 = getelementptr inbounds %struct.adv7511_video_config, %struct.adv7511_video_config* %9, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %49, %45
  br label %56

56:                                               ; preds = %55, %23
  %57 = getelementptr inbounds %struct.adv7511_video_config, %struct.adv7511_video_config* %9, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load i32, i32* @ADV7511_HDMI_CFG_MODE_HDMI, align 4
  store i32 %61, i32* %12, align 4
  %62 = getelementptr inbounds %struct.adv7511_video_config, %struct.adv7511_video_config* %9, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %67 [
    i32 128, label %65
    i32 129, label %66
  ]

65:                                               ; preds = %60
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %68

66:                                               ; preds = %60
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %68

67:                                               ; preds = %60
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %68

68:                                               ; preds = %67, %66, %65
  br label %71

69:                                               ; preds = %56
  %70 = load i32, i32* @ADV7511_HDMI_CFG_MODE_DVI, align 4
  store i32 %70, i32* %12, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %71

71:                                               ; preds = %69, %68
  %72 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %73 = load i32, i32* @ADV7511_PACKET_ENABLE_AVI_INFOFRAME, align 4
  %74 = call i32 @adv7511_packet_disable(%struct.adv7511* %72, i32 %73)
  %75 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %76 = getelementptr inbounds %struct.adv7511_video_config, %struct.adv7511_video_config* %9, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.adv7511_video_config, %struct.adv7511_video_config* %9, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.adv7511_video_config, %struct.adv7511_video_config* %9, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @adv7511_set_colormap(%struct.adv7511* %75, i32 %77, i32 %79, i32 %81)
  %83 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %84 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @ADV7511_REG_VIDEO_INPUT_CFG1, align 4
  %87 = load i32, i32* %10, align 4
  %88 = shl i32 %87, 7
  %89 = load i32, i32* %11, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @regmap_update_bits(i32 %85, i32 %86, i32 129, i32 %90)
  %92 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %93 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @ADV7511_REG_HDCP_HDMI_CFG, align 4
  %96 = load i32, i32* @ADV7511_HDMI_CFG_MODE_MASK, align 4
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @regmap_update_bits(i32 %94, i32 %95, i32 %96, i32 %97)
  %99 = getelementptr inbounds %struct.adv7511_video_config, %struct.adv7511_video_config* %9, i32 0, i32 2
  %100 = getelementptr inbounds [17 x i32], [17 x i32]* %13, i64 0, i64 0
  %101 = call i32 @hdmi_avi_infoframe_pack(%struct.TYPE_5__* %99, i32* %100, i32 68)
  %102 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %103 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @ADV7511_REG_AVI_INFOFRAME_VERSION, align 4
  %106 = getelementptr inbounds [17 x i32], [17 x i32]* %13, i64 0, i64 0
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = call i32 @regmap_bulk_write(i32 %104, i32 %105, i32* %107, i32 67)
  %109 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %110 = load i32, i32* @ADV7511_PACKET_ENABLE_AVI_INFOFRAME, align 4
  %111 = call i32 @adv7511_packet_enable(%struct.adv7511* %109, i32 %110)
  ret void
}

declare dso_local i32 @hdmi_avi_infoframe_init(%struct.TYPE_5__*) #1

declare dso_local i32 @adv7511_packet_disable(%struct.adv7511*, i32) #1

declare dso_local i32 @adv7511_set_colormap(%struct.adv7511*, i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @hdmi_avi_infoframe_pack(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

declare dso_local i32 @adv7511_packet_enable(%struct.adv7511*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
