; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_cdns-dsi.c_cdns_dsi_check_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_cdns-dsi.c_cdns_dsi_check_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns_dsi = type { i32, %struct.cdns_dsi_output }
%struct.cdns_dsi_output = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.phy_configure_opts_mipi_dphy }
%struct.phy_configure_opts_mipi_dphy = type { i64 }
%struct.drm_display_mode = type { i32, i32 }
%struct.cdns_dsi_cfg = type { i64, i64 }

@PHY_MODE_MIPI_DPHY = common dso_local global i32 0, align 4
@DSI_HBP_FRAME_OVERHEAD = common dso_local global i64 0, align 8
@MIPI_DSI_MODE_VIDEO_SYNC_PULSE = common dso_local global i32 0, align 4
@DSI_HSA_FRAME_OVERHEAD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdns_dsi*, %struct.drm_display_mode*, %struct.cdns_dsi_cfg*, i32)* @cdns_dsi_check_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_dsi_check_conf(%struct.cdns_dsi* %0, %struct.drm_display_mode* %1, %struct.cdns_dsi_cfg* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdns_dsi*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca %struct.cdns_dsi_cfg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cdns_dsi_output*, align 8
  %11 = alloca %struct.phy_configure_opts_mipi_dphy*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cdns_dsi* %0, %struct.cdns_dsi** %6, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %7, align 8
  store %struct.cdns_dsi_cfg* %2, %struct.cdns_dsi_cfg** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.cdns_dsi*, %struct.cdns_dsi** %6, align 8
  %16 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %15, i32 0, i32 1
  store %struct.cdns_dsi_output* %16, %struct.cdns_dsi_output** %10, align 8
  %17 = load %struct.cdns_dsi_output*, %struct.cdns_dsi_output** %10, align 8
  %18 = getelementptr inbounds %struct.cdns_dsi_output, %struct.cdns_dsi_output* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.phy_configure_opts_mipi_dphy* %19, %struct.phy_configure_opts_mipi_dphy** %11, align 8
  %20 = load %struct.cdns_dsi_output*, %struct.cdns_dsi_output** %10, align 8
  %21 = getelementptr inbounds %struct.cdns_dsi_output, %struct.cdns_dsi_output* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %13, align 4
  %25 = load %struct.cdns_dsi*, %struct.cdns_dsi** %6, align 8
  %26 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %27 = load %struct.cdns_dsi_cfg*, %struct.cdns_dsi_cfg** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @cdns_dsi_mode2cfg(%struct.cdns_dsi* %25, %struct.drm_display_mode* %26, %struct.cdns_dsi_cfg* %27, i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %5, align 4
  br label %124

34:                                               ; preds = %4
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %36 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %37, 1000
  %39 = load %struct.cdns_dsi_output*, %struct.cdns_dsi_output** %10, align 8
  %40 = getelementptr inbounds %struct.cdns_dsi_output, %struct.cdns_dsi_output* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @mipi_dsi_pixel_format_to_bpp(i32 %43)
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %11, align 8
  %47 = call i32 @phy_mipi_dphy_get_default_config(i32 %38, i32 %44, i32 %45, %struct.phy_configure_opts_mipi_dphy* %46)
  %48 = load %struct.cdns_dsi*, %struct.cdns_dsi** %6, align 8
  %49 = load %struct.cdns_dsi_cfg*, %struct.cdns_dsi_cfg** %8, align 8
  %50 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %11, align 8
  %51 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @cdns_dsi_adjust_phy_config(%struct.cdns_dsi* %48, %struct.cdns_dsi_cfg* %49, %struct.phy_configure_opts_mipi_dphy* %50, %struct.drm_display_mode* %51, i32 %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %34
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %5, align 4
  br label %124

58:                                               ; preds = %34
  %59 = load %struct.cdns_dsi*, %struct.cdns_dsi** %6, align 8
  %60 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @PHY_MODE_MIPI_DPHY, align 4
  %63 = load %struct.cdns_dsi_output*, %struct.cdns_dsi_output** %10, align 8
  %64 = getelementptr inbounds %struct.cdns_dsi_output, %struct.cdns_dsi_output* %63, i32 0, i32 1
  %65 = call i32 @phy_validate(i32 %61, i32 %62, i32 0, %struct.TYPE_4__* %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = load i32, i32* %14, align 4
  store i32 %69, i32* %5, align 4
  br label %124

70:                                               ; preds = %58
  %71 = load %struct.cdns_dsi_cfg*, %struct.cdns_dsi_cfg** %8, align 8
  %72 = getelementptr inbounds %struct.cdns_dsi_cfg, %struct.cdns_dsi_cfg* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @DSI_HBP_FRAME_OVERHEAD, align 8
  %75 = add i64 %73, %74
  store i64 %75, i64* %12, align 8
  %76 = load %struct.cdns_dsi_output*, %struct.cdns_dsi_output** %10, align 8
  %77 = getelementptr inbounds %struct.cdns_dsi_output, %struct.cdns_dsi_output* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @MIPI_DSI_MODE_VIDEO_SYNC_PULSE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %70
  %85 = load %struct.cdns_dsi_cfg*, %struct.cdns_dsi_cfg** %8, align 8
  %86 = getelementptr inbounds %struct.cdns_dsi_cfg, %struct.cdns_dsi_cfg* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @DSI_HSA_FRAME_OVERHEAD, align 8
  %89 = add nsw i64 %87, %88
  %90 = load i64, i64* %12, align 8
  %91 = add i64 %90, %89
  store i64 %91, i64* %12, align 8
  br label %92

92:                                               ; preds = %84, %70
  %93 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %11, align 8
  %94 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @mode_to_dpi_hfp(%struct.drm_display_mode* %97, i32 %98)
  %100 = mul i32 %96, %99
  %101 = load i32, i32* %13, align 4
  %102 = mul i32 %100, %101
  %103 = load i64, i64* %12, align 8
  %104 = trunc i64 %103 to i32
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %92
  %108 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %109 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  br label %115

111:                                              ; preds = %92
  %112 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %113 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  br label %115

115:                                              ; preds = %111, %107
  %116 = phi i32 [ %110, %107 ], [ %114, %111 ]
  %117 = mul i32 %104, %116
  %118 = mul i32 %117, 1000
  %119 = icmp ult i32 %102, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %5, align 4
  br label %124

123:                                              ; preds = %115
  store i32 0, i32* %5, align 4
  br label %124

124:                                              ; preds = %123, %120, %68, %56, %32
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i32 @cdns_dsi_mode2cfg(%struct.cdns_dsi*, %struct.drm_display_mode*, %struct.cdns_dsi_cfg*, i32) #1

declare dso_local i32 @phy_mipi_dphy_get_default_config(i32, i32, i32, %struct.phy_configure_opts_mipi_dphy*) #1

declare dso_local i32 @mipi_dsi_pixel_format_to_bpp(i32) #1

declare dso_local i32 @cdns_dsi_adjust_phy_config(%struct.cdns_dsi*, %struct.cdns_dsi_cfg*, %struct.phy_configure_opts_mipi_dphy*, %struct.drm_display_mode*, i32) #1

declare dso_local i32 @phy_validate(i32, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @mode_to_dpi_hfp(%struct.drm_display_mode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
