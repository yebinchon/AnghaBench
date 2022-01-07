; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_cdns-dsi.c_cdns_dsi_adjust_phy_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_cdns-dsi.c_cdns_dsi_adjust_phy_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns_dsi = type { %struct.cdns_dsi_output }
%struct.cdns_dsi_output = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cdns_dsi_cfg = type { i64, i64, i64, i64, i64 }
%struct.phy_configure_opts_mipi_dphy = type { i64 }
%struct.drm_display_mode = type { i32, i32, i64, i64 }

@DSI_HBP_FRAME_OVERHEAD = common dso_local global i64 0, align 8
@MIPI_DSI_MODE_VIDEO_SYNC_PULSE = common dso_local global i32 0, align 4
@DSI_HSA_FRAME_OVERHEAD = common dso_local global i64 0, align 8
@DSI_HFP_FRAME_OVERHEAD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdns_dsi*, %struct.cdns_dsi_cfg*, %struct.phy_configure_opts_mipi_dphy*, %struct.drm_display_mode*, i32)* @cdns_dsi_adjust_phy_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_dsi_adjust_phy_config(%struct.cdns_dsi* %0, %struct.cdns_dsi_cfg* %1, %struct.phy_configure_opts_mipi_dphy* %2, %struct.drm_display_mode* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdns_dsi*, align 8
  %8 = alloca %struct.cdns_dsi_cfg*, align 8
  %9 = alloca %struct.phy_configure_opts_mipi_dphy*, align 8
  %10 = alloca %struct.drm_display_mode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cdns_dsi_output*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.cdns_dsi* %0, %struct.cdns_dsi** %7, align 8
  store %struct.cdns_dsi_cfg* %1, %struct.cdns_dsi_cfg** %8, align 8
  store %struct.phy_configure_opts_mipi_dphy* %2, %struct.phy_configure_opts_mipi_dphy** %9, align 8
  store %struct.drm_display_mode* %3, %struct.drm_display_mode** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load %struct.cdns_dsi*, %struct.cdns_dsi** %7, align 8
  %21 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %20, i32 0, i32 0
  store %struct.cdns_dsi_output* %21, %struct.cdns_dsi_output** %12, align 8
  %22 = load %struct.cdns_dsi_output*, %struct.cdns_dsi_output** %12, align 8
  %23 = getelementptr inbounds %struct.cdns_dsi_output, %struct.cdns_dsi_output* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %19, align 4
  %27 = load %struct.cdns_dsi_cfg*, %struct.cdns_dsi_cfg** %8, align 8
  %28 = getelementptr inbounds %struct.cdns_dsi_cfg, %struct.cdns_dsi_cfg* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DSI_HBP_FRAME_OVERHEAD, align 8
  %31 = add i64 %29, %30
  store i64 %31, i64* %15, align 8
  %32 = load %struct.cdns_dsi_output*, %struct.cdns_dsi_output** %12, align 8
  %33 = getelementptr inbounds %struct.cdns_dsi_output, %struct.cdns_dsi_output* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MIPI_DSI_MODE_VIDEO_SYNC_PULSE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %5
  %41 = load %struct.cdns_dsi_cfg*, %struct.cdns_dsi_cfg** %8, align 8
  %42 = getelementptr inbounds %struct.cdns_dsi_cfg, %struct.cdns_dsi_cfg* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DSI_HSA_FRAME_OVERHEAD, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i64, i64* %15, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %15, align 8
  br label %48

48:                                               ; preds = %40, %5
  %49 = load %struct.cdns_dsi_cfg*, %struct.cdns_dsi_cfg** %8, align 8
  %50 = getelementptr inbounds %struct.cdns_dsi_cfg, %struct.cdns_dsi_cfg* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %15, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %15, align 8
  %54 = load %struct.cdns_dsi_cfg*, %struct.cdns_dsi_cfg** %8, align 8
  %55 = getelementptr inbounds %struct.cdns_dsi_cfg, %struct.cdns_dsi_cfg* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @DSI_HFP_FRAME_OVERHEAD, align 8
  %58 = add nsw i64 %56, %57
  %59 = load i64, i64* %15, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %15, align 8
  %61 = load i64, i64* %15, align 8
  store i64 %61, i64* %14, align 8
  %62 = load i64, i64* %15, align 8
  %63 = load i32, i32* %19, align 4
  %64 = zext i32 %63 to i64
  %65 = urem i64 %62, %64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %48
  %68 = load i32, i32* %19, align 4
  %69 = zext i32 %68 to i64
  %70 = load i64, i64* %15, align 8
  %71 = load i32, i32* %19, align 4
  %72 = zext i32 %71 to i64
  %73 = urem i64 %70, %72
  %74 = sub i64 %69, %73
  %75 = load i64, i64* %14, align 8
  %76 = add i64 %75, %74
  store i64 %76, i64* %14, align 8
  br label %77

77:                                               ; preds = %67, %48
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %82 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  br label %88

84:                                               ; preds = %77
  %85 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %86 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  br label %88

88:                                               ; preds = %84, %80
  %89 = phi i32 [ %83, %80 ], [ %87, %84 ]
  %90 = mul nsw i32 %89, 1000
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %17, align 8
  %92 = load i64, i64* %17, align 8
  %93 = load i64, i64* %14, align 8
  %94 = mul i64 %92, %93
  store i64 %94, i64* %13, align 8
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %88
  %98 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %99 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  br label %105

101:                                              ; preds = %88
  %102 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %103 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  br label %105

105:                                              ; preds = %101, %97
  %106 = phi i64 [ %100, %97 ], [ %104, %101 ]
  store i64 %106, i64* %16, align 8
  %107 = load i64, i64* %13, align 8
  %108 = load i32, i32* %19, align 4
  %109 = zext i32 %108 to i64
  %110 = load i64, i64* %16, align 8
  %111 = mul i64 %109, %110
  %112 = trunc i64 %111 to i32
  %113 = call i64 @do_div(i64 %107, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %105
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %6, align 4
  br label %139

118:                                              ; preds = %105
  %119 = load i64, i64* %13, align 8
  %120 = mul i64 %119, 8
  %121 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %9, align 8
  %122 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  %123 = load i64, i64* %14, align 8
  %124 = load i64, i64* %15, align 8
  %125 = sub i64 %123, %124
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %18, align 4
  %127 = load i32, i32* %18, align 4
  %128 = zext i32 %127 to i64
  %129 = load %struct.cdns_dsi_cfg*, %struct.cdns_dsi_cfg** %8, align 8
  %130 = getelementptr inbounds %struct.cdns_dsi_cfg, %struct.cdns_dsi_cfg* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %131, %128
  store i64 %132, i64* %130, align 8
  %133 = load i64, i64* %15, align 8
  %134 = load i32, i32* %18, align 4
  %135 = zext i32 %134 to i64
  %136 = add i64 %133, %135
  %137 = load %struct.cdns_dsi_cfg*, %struct.cdns_dsi_cfg** %8, align 8
  %138 = getelementptr inbounds %struct.cdns_dsi_cfg, %struct.cdns_dsi_cfg* %137, i32 0, i32 1
  store i64 %136, i64* %138, align 8
  store i32 0, i32* %6, align 4
  br label %139

139:                                              ; preds = %118, %115
  %140 = load i32, i32* %6, align 4
  ret i32 %140
}

declare dso_local i64 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
