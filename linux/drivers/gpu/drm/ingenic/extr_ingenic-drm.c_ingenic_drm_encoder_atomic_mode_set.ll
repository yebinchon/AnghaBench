; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ingenic/extr_ingenic-drm.c_ingenic_drm_encoder_atomic_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ingenic/extr_ingenic-drm.c_ingenic_drm_encoder_atomic_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_crtc_state = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }
%struct.drm_connector_state = type { %struct.drm_connector* }
%struct.drm_connector = type { i64, %struct.drm_display_info }
%struct.drm_display_info = type { i32, i32* }
%struct.ingenic_drm = type { i32, i32 }

@DRM_BUS_FLAG_SHARP_SIGNALS = common dso_local global i32 0, align 4
@JZ_LCD_CFG_MODE_SPECIAL_TFT_1 = common dso_local global i32 0, align 4
@JZ_LCD_CFG_REV_POLARITY = common dso_local global i32 0, align 4
@JZ_LCD_CFG_PS_DISABLE = common dso_local global i32 0, align 4
@JZ_LCD_CFG_CLS_DISABLE = common dso_local global i32 0, align 4
@JZ_LCD_CFG_SPL_DISABLE = common dso_local global i32 0, align 4
@JZ_LCD_CFG_REV_DISABLE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@JZ_LCD_CFG_HSYNC_ACTIVE_LOW = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@JZ_LCD_CFG_VSYNC_ACTIVE_LOW = common dso_local global i32 0, align 4
@DRM_BUS_FLAG_DE_LOW = common dso_local global i32 0, align 4
@JZ_LCD_CFG_DE_ACTIVE_LOW = common dso_local global i32 0, align 4
@DRM_BUS_FLAG_PIXDATA_NEGEDGE = common dso_local global i32 0, align 4
@JZ_LCD_CFG_PCLK_FALLING_EDGE = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_TV = common dso_local global i64 0, align 8
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@JZ_LCD_CFG_MODE_TV_OUT_I = common dso_local global i32 0, align 4
@JZ_LCD_CFG_MODE_TV_OUT_P = common dso_local global i32 0, align 4
@JZ_LCD_CFG_MODE_GENERIC_16BIT = common dso_local global i32 0, align 4
@JZ_LCD_CFG_MODE_GENERIC_18BIT = common dso_local global i32 0, align 4
@JZ_LCD_CFG_MODE_GENERIC_24BIT = common dso_local global i32 0, align 4
@JZ_LCD_CFG_MODE_8BIT_SERIAL = common dso_local global i32 0, align 4
@JZ_REG_LCD_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_crtc_state*, %struct.drm_connector_state*)* @ingenic_drm_encoder_atomic_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ingenic_drm_encoder_atomic_mode_set(%struct.drm_encoder* %0, %struct.drm_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_crtc_state*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.ingenic_drm*, align 8
  %8 = alloca %struct.drm_display_mode*, align 8
  %9 = alloca %struct.drm_connector*, align 8
  %10 = alloca %struct.drm_display_info*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %5, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %6, align 8
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %13 = call %struct.ingenic_drm* @drm_encoder_get_priv(%struct.drm_encoder* %12)
  store %struct.ingenic_drm* %13, %struct.ingenic_drm** %7, align 8
  %14 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %15 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %14, i32 0, i32 0
  store %struct.drm_display_mode* %15, %struct.drm_display_mode** %8, align 8
  %16 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %17 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %16, i32 0, i32 0
  %18 = load %struct.drm_connector*, %struct.drm_connector** %17, align 8
  store %struct.drm_connector* %18, %struct.drm_connector** %9, align 8
  %19 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %20 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %19, i32 0, i32 1
  store %struct.drm_display_info* %20, %struct.drm_display_info** %10, align 8
  %21 = load %struct.drm_display_info*, %struct.drm_display_info** %10, align 8
  %22 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DRM_BUS_FLAG_SHARP_SIGNALS, align 4
  %25 = and i32 %23, %24
  %26 = load %struct.ingenic_drm*, %struct.ingenic_drm** %7, align 8
  %27 = getelementptr inbounds %struct.ingenic_drm, %struct.ingenic_drm* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ingenic_drm*, %struct.ingenic_drm** %7, align 8
  %29 = getelementptr inbounds %struct.ingenic_drm, %struct.ingenic_drm* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %3
  %33 = load i32, i32* @JZ_LCD_CFG_MODE_SPECIAL_TFT_1, align 4
  %34 = load i32, i32* @JZ_LCD_CFG_REV_POLARITY, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %11, align 4
  br label %44

36:                                               ; preds = %3
  %37 = load i32, i32* @JZ_LCD_CFG_PS_DISABLE, align 4
  %38 = load i32, i32* @JZ_LCD_CFG_CLS_DISABLE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @JZ_LCD_CFG_SPL_DISABLE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @JZ_LCD_CFG_REV_DISABLE, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %36, %32
  %45 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %46 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32, i32* @JZ_LCD_CFG_HSYNC_ACTIVE_LOW, align 4
  %53 = load i32, i32* %11, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %51, %44
  %56 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %57 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load i32, i32* @JZ_LCD_CFG_VSYNC_ACTIVE_LOW, align 4
  %64 = load i32, i32* %11, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %62, %55
  %67 = load %struct.drm_display_info*, %struct.drm_display_info** %10, align 8
  %68 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @DRM_BUS_FLAG_DE_LOW, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load i32, i32* @JZ_LCD_CFG_DE_ACTIVE_LOW, align 4
  %75 = load i32, i32* %11, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %73, %66
  %78 = load %struct.drm_display_info*, %struct.drm_display_info** %10, align 8
  %79 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @DRM_BUS_FLAG_PIXDATA_NEGEDGE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load i32, i32* @JZ_LCD_CFG_PCLK_FALLING_EDGE, align 4
  %86 = load i32, i32* %11, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %84, %77
  %89 = load %struct.ingenic_drm*, %struct.ingenic_drm** %7, align 8
  %90 = getelementptr inbounds %struct.ingenic_drm, %struct.ingenic_drm* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %139, label %93

93:                                               ; preds = %88
  %94 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %95 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @DRM_MODE_CONNECTOR_TV, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %115

99:                                               ; preds = %93
  %100 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %101 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = load i32, i32* @JZ_LCD_CFG_MODE_TV_OUT_I, align 4
  %108 = load i32, i32* %11, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %11, align 4
  br label %114

110:                                              ; preds = %99
  %111 = load i32, i32* @JZ_LCD_CFG_MODE_TV_OUT_P, align 4
  %112 = load i32, i32* %11, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %11, align 4
  br label %114

114:                                              ; preds = %110, %106
  br label %138

115:                                              ; preds = %93
  %116 = load %struct.drm_display_info*, %struct.drm_display_info** %10, align 8
  %117 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %118, align 4
  switch i32 %119, label %136 [
    i32 131, label %120
    i32 130, label %124
    i32 129, label %128
    i32 128, label %132
  ]

120:                                              ; preds = %115
  %121 = load i32, i32* @JZ_LCD_CFG_MODE_GENERIC_16BIT, align 4
  %122 = load i32, i32* %11, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %11, align 4
  br label %137

124:                                              ; preds = %115
  %125 = load i32, i32* @JZ_LCD_CFG_MODE_GENERIC_18BIT, align 4
  %126 = load i32, i32* %11, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %11, align 4
  br label %137

128:                                              ; preds = %115
  %129 = load i32, i32* @JZ_LCD_CFG_MODE_GENERIC_24BIT, align 4
  %130 = load i32, i32* %11, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %11, align 4
  br label %137

132:                                              ; preds = %115
  %133 = load i32, i32* @JZ_LCD_CFG_MODE_8BIT_SERIAL, align 4
  %134 = load i32, i32* %11, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %11, align 4
  br label %137

136:                                              ; preds = %115
  br label %137

137:                                              ; preds = %136, %132, %128, %124, %120
  br label %138

138:                                              ; preds = %137, %114
  br label %139

139:                                              ; preds = %138, %88
  %140 = load %struct.ingenic_drm*, %struct.ingenic_drm** %7, align 8
  %141 = getelementptr inbounds %struct.ingenic_drm, %struct.ingenic_drm* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @JZ_REG_LCD_CFG, align 4
  %144 = load i32, i32* %11, align 4
  %145 = call i32 @regmap_write(i32 %142, i32 %143, i32 %144)
  ret void
}

declare dso_local %struct.ingenic_drm* @drm_encoder_get_priv(%struct.drm_encoder*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
