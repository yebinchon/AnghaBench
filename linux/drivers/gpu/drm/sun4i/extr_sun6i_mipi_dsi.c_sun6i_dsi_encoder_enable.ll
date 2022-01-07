; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun6i_mipi_dsi.c_sun6i_dsi_encoder_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun6i_mipi_dsi.c_sun6i_dsi_encoder_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }
%struct.sun6i_dsi = type { i32, i32, i32, i32, %struct.mipi_dsi_device* }
%struct.mipi_dsi_device = type { i32, i32 }
%union.phy_configure_opts = type { %struct.phy_configure_opts_mipi_dphy }
%struct.phy_configure_opts_mipi_dphy = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Enabling DSI output\0A\00", align 1
@SUN6I_DSI_BASIC_CTL1_REG = common dso_local global i32 0, align 4
@SUN6I_DSI_BASIC_CTL1_VIDEO_FILL = common dso_local global i32 0, align 4
@SUN6I_DSI_BASIC_CTL1_VIDEO_PRECISION = common dso_local global i32 0, align 4
@SUN6I_DSI_BASIC_CTL1_VIDEO_MODE = common dso_local global i32 0, align 4
@PHY_MODE_MIPI_DPHY = common dso_local global i32 0, align 4
@DSI_START_HSC = common dso_local global i32 0, align 4
@DSI_START_HSD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @sun6i_dsi_encoder_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun6i_dsi_encoder_enable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca %struct.sun6i_dsi*, align 8
  %5 = alloca %struct.mipi_dsi_device*, align 8
  %6 = alloca %union.phy_configure_opts, align 4
  %7 = alloca %struct.phy_configure_opts_mipi_dphy*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %10 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.drm_display_mode* %14, %struct.drm_display_mode** %3, align 8
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %16 = call %struct.sun6i_dsi* @encoder_to_sun6i_dsi(%struct.drm_encoder* %15)
  store %struct.sun6i_dsi* %16, %struct.sun6i_dsi** %4, align 8
  %17 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %4, align 8
  %18 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %17, i32 0, i32 4
  %19 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %18, align 8
  store %struct.mipi_dsi_device* %19, %struct.mipi_dsi_device** %5, align 8
  %20 = bitcast %union.phy_configure_opts* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 4, i1 false)
  %21 = bitcast %union.phy_configure_opts* %6 to %struct.phy_configure_opts_mipi_dphy*
  store %struct.phy_configure_opts_mipi_dphy* %21, %struct.phy_configure_opts_mipi_dphy** %7, align 8
  %22 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %4, align 8
  %24 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pm_runtime_get_sync(i32 %25)
  %27 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %4, align 8
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %29 = call i32 @sun6i_dsi_get_video_start_delay(%struct.sun6i_dsi* %27, %struct.drm_display_mode* %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %4, align 8
  %31 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SUN6I_DSI_BASIC_CTL1_REG, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @SUN6I_DSI_BASIC_CTL1_VIDEO_ST_DELAY(i32 %34)
  %36 = load i32, i32* @SUN6I_DSI_BASIC_CTL1_VIDEO_FILL, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @SUN6I_DSI_BASIC_CTL1_VIDEO_PRECISION, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @SUN6I_DSI_BASIC_CTL1_VIDEO_MODE, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @regmap_write(i32 %32, i32 %33, i32 %41)
  %43 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %4, align 8
  %44 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %45 = call i32 @sun6i_dsi_setup_burst(%struct.sun6i_dsi* %43, %struct.drm_display_mode* %44)
  %46 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %4, align 8
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %48 = call i32 @sun6i_dsi_setup_inst_loop(%struct.sun6i_dsi* %46, %struct.drm_display_mode* %47)
  %49 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %4, align 8
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %51 = call i32 @sun6i_dsi_setup_format(%struct.sun6i_dsi* %49, %struct.drm_display_mode* %50)
  %52 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %4, align 8
  %53 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %54 = call i32 @sun6i_dsi_setup_timings(%struct.sun6i_dsi* %52, %struct.drm_display_mode* %53)
  %55 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %4, align 8
  %56 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @phy_init(i32 %57)
  %59 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %60 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %61, 1000
  %63 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %64 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @mipi_dsi_pixel_format_to_bpp(i32 %65)
  %67 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %68 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %7, align 8
  %71 = call i32 @phy_mipi_dphy_get_default_config(i32 %62, i32 %66, i32 %69, %struct.phy_configure_opts_mipi_dphy* %70)
  %72 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %4, align 8
  %73 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @PHY_MODE_MIPI_DPHY, align 4
  %76 = call i32 @phy_set_mode(i32 %74, i32 %75)
  %77 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %4, align 8
  %78 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @phy_configure(i32 %79, %union.phy_configure_opts* %6)
  %81 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %4, align 8
  %82 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @phy_power_on(i32 %83)
  %85 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %4, align 8
  %86 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @IS_ERR(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %1
  %91 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %4, align 8
  %92 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @drm_panel_prepare(i32 %93)
  br label %95

95:                                               ; preds = %90, %1
  %96 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %4, align 8
  %97 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @IS_ERR(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %95
  %102 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %4, align 8
  %103 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @drm_panel_enable(i32 %104)
  br label %106

106:                                              ; preds = %101, %95
  %107 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %4, align 8
  %108 = load i32, i32* @DSI_START_HSC, align 4
  %109 = call i32 @sun6i_dsi_start(%struct.sun6i_dsi* %107, i32 %108)
  %110 = call i32 @udelay(i32 1000)
  %111 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %4, align 8
  %112 = load i32, i32* @DSI_START_HSD, align 4
  %113 = call i32 @sun6i_dsi_start(%struct.sun6i_dsi* %111, i32 %112)
  ret void
}

declare dso_local %struct.sun6i_dsi* @encoder_to_sun6i_dsi(%struct.drm_encoder*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @sun6i_dsi_get_video_start_delay(%struct.sun6i_dsi*, %struct.drm_display_mode*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @SUN6I_DSI_BASIC_CTL1_VIDEO_ST_DELAY(i32) #1

declare dso_local i32 @sun6i_dsi_setup_burst(%struct.sun6i_dsi*, %struct.drm_display_mode*) #1

declare dso_local i32 @sun6i_dsi_setup_inst_loop(%struct.sun6i_dsi*, %struct.drm_display_mode*) #1

declare dso_local i32 @sun6i_dsi_setup_format(%struct.sun6i_dsi*, %struct.drm_display_mode*) #1

declare dso_local i32 @sun6i_dsi_setup_timings(%struct.sun6i_dsi*, %struct.drm_display_mode*) #1

declare dso_local i32 @phy_init(i32) #1

declare dso_local i32 @phy_mipi_dphy_get_default_config(i32, i32, i32, %struct.phy_configure_opts_mipi_dphy*) #1

declare dso_local i32 @mipi_dsi_pixel_format_to_bpp(i32) #1

declare dso_local i32 @phy_set_mode(i32, i32) #1

declare dso_local i32 @phy_configure(i32, %union.phy_configure_opts*) #1

declare dso_local i32 @phy_power_on(i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @drm_panel_prepare(i32) #1

declare dso_local i32 @drm_panel_enable(i32) #1

declare dso_local i32 @sun6i_dsi_start(%struct.sun6i_dsi*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
