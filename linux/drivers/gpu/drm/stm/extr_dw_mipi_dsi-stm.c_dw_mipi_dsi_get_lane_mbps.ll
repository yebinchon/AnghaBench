; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/stm/extr_dw_mipi_dsi-stm.c_dw_mipi_dsi_get_lane_mbps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/stm/extr_dw_mipi_dsi-stm.c_dw_mipi_dsi_get_lane_mbps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32 }
%struct.dw_mipi_dsi_stm = type { i32, i32, i64, i32 }

@LANE_MIN_KBPS = common dso_local global i32 0, align 4
@LANE_MAX_KBPS = common dso_local global i32 0, align 4
@HWVER_131 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Warning max phy mbps is used\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Warning min phy mbps is used\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Warning dsi_pll_get_params(): bad params\0A\00", align 1
@DSI_WRPCR = common dso_local global i32 0, align 4
@WRPCR_NDIV = common dso_local global i32 0, align 4
@WRPCR_IDF = common dso_local global i32 0, align 4
@WRPCR_ODF = common dso_local global i32 0, align 4
@DSI_WPCR0 = common dso_local global i32 0, align 4
@WPCR0_UIX4 = common dso_local global i32 0, align 4
@DSI_WCFGR = common dso_local global i32 0, align 4
@WCFGR_DSIM = common dso_local global i32 0, align 4
@WCFGR_COLMUX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"pll_in %ukHz pll_out %ukHz lane_mbps %uMHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.drm_display_mode*, i64, i32, i32, i32*)* @dw_mipi_dsi_get_lane_mbps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mipi_dsi_get_lane_mbps(i8* %0, %struct.drm_display_mode* %1, i64 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.drm_display_mode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.dw_mipi_dsi_stm*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to %struct.dw_mipi_dsi_stm*
  store %struct.dw_mipi_dsi_stm* %23, %struct.dw_mipi_dsi_stm** %13, align 8
  %24 = load i32, i32* @LANE_MIN_KBPS, align 4
  %25 = load %struct.dw_mipi_dsi_stm*, %struct.dw_mipi_dsi_stm** %13, align 8
  %26 = getelementptr inbounds %struct.dw_mipi_dsi_stm, %struct.dw_mipi_dsi_stm* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @LANE_MAX_KBPS, align 4
  %28 = load %struct.dw_mipi_dsi_stm*, %struct.dw_mipi_dsi_stm** %13, align 8
  %29 = getelementptr inbounds %struct.dw_mipi_dsi_stm, %struct.dw_mipi_dsi_stm* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.dw_mipi_dsi_stm*, %struct.dw_mipi_dsi_stm** %13, align 8
  %31 = getelementptr inbounds %struct.dw_mipi_dsi_stm, %struct.dw_mipi_dsi_stm* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @HWVER_131, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %6
  %36 = load %struct.dw_mipi_dsi_stm*, %struct.dw_mipi_dsi_stm** %13, align 8
  %37 = getelementptr inbounds %struct.dw_mipi_dsi_stm, %struct.dw_mipi_dsi_stm* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = mul nsw i32 %38, 2
  store i32 %39, i32* %37, align 8
  %40 = load %struct.dw_mipi_dsi_stm*, %struct.dw_mipi_dsi_stm** %13, align 8
  %41 = getelementptr inbounds %struct.dw_mipi_dsi_stm, %struct.dw_mipi_dsi_stm* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %42, 2
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %35, %6
  %45 = load %struct.dw_mipi_dsi_stm*, %struct.dw_mipi_dsi_stm** %13, align 8
  %46 = getelementptr inbounds %struct.dw_mipi_dsi_stm, %struct.dw_mipi_dsi_stm* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @clk_get_rate(i32 %47)
  %49 = sdiv i32 %48, 1000
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @mipi_dsi_pixel_format_to_bpp(i32 %50)
  store i32 %51, i32* %20, align 4
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %53 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %20, align 4
  %56 = mul nsw i32 %54, %55
  %57 = load i32, i32* %10, align 4
  %58 = sdiv i32 %56, %57
  store i32 %58, i32* %18, align 4
  %59 = load i32, i32* %18, align 4
  %60 = mul i32 %59, 12
  %61 = udiv i32 %60, 10
  store i32 %61, i32* %18, align 4
  %62 = load i32, i32* %18, align 4
  %63 = load %struct.dw_mipi_dsi_stm*, %struct.dw_mipi_dsi_stm** %13, align 8
  %64 = getelementptr inbounds %struct.dw_mipi_dsi_stm, %struct.dw_mipi_dsi_stm* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ugt i32 %62, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %44
  %68 = load %struct.dw_mipi_dsi_stm*, %struct.dw_mipi_dsi_stm** %13, align 8
  %69 = getelementptr inbounds %struct.dw_mipi_dsi_stm, %struct.dw_mipi_dsi_stm* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %18, align 4
  %71 = call i32 @DRM_WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %67, %44
  %73 = load i32, i32* %18, align 4
  %74 = load %struct.dw_mipi_dsi_stm*, %struct.dw_mipi_dsi_stm** %13, align 8
  %75 = getelementptr inbounds %struct.dw_mipi_dsi_stm, %struct.dw_mipi_dsi_stm* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ult i32 %73, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = load %struct.dw_mipi_dsi_stm*, %struct.dw_mipi_dsi_stm** %13, align 8
  %80 = getelementptr inbounds %struct.dw_mipi_dsi_stm, %struct.dw_mipi_dsi_stm* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %18, align 4
  %82 = call i32 @DRM_WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %83

83:                                               ; preds = %78, %72
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %84 = load %struct.dw_mipi_dsi_stm*, %struct.dw_mipi_dsi_stm** %13, align 8
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* %18, align 4
  %87 = call i32 @dsi_pll_get_params(%struct.dw_mipi_dsi_stm* %84, i32 %85, i32 %86, i32* %14, i32* %15, i32* %16)
  store i32 %87, i32* %19, align 4
  %88 = load i32, i32* %19, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = call i32 @DRM_WARN(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %83
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %16, align 4
  %97 = call i32 @dsi_pll_get_clkout_khz(i32 %93, i32 %94, i32 %95, i32 %96)
  store i32 %97, i32* %18, align 4
  %98 = load %struct.dw_mipi_dsi_stm*, %struct.dw_mipi_dsi_stm** %13, align 8
  %99 = load i32, i32* @DSI_WRPCR, align 4
  %100 = load i32, i32* @WRPCR_NDIV, align 4
  %101 = load i32, i32* @WRPCR_IDF, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @WRPCR_ODF, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* %15, align 4
  %106 = shl i32 %105, 2
  %107 = load i32, i32* %14, align 4
  %108 = shl i32 %107, 11
  %109 = or i32 %106, %108
  %110 = load i32, i32* %16, align 4
  %111 = call i32 @ffs(i32 %110)
  %112 = sub nsw i32 %111, 1
  %113 = shl i32 %112, 16
  %114 = or i32 %109, %113
  %115 = call i32 @dsi_update_bits(%struct.dw_mipi_dsi_stm* %98, i32 %99, i32 %104, i32 %114)
  %116 = load i32, i32* %18, align 4
  %117 = udiv i32 4000000, %116
  store i32 %117, i32* %21, align 4
  %118 = load %struct.dw_mipi_dsi_stm*, %struct.dw_mipi_dsi_stm** %13, align 8
  %119 = load i32, i32* @DSI_WPCR0, align 4
  %120 = load i32, i32* @WPCR0_UIX4, align 4
  %121 = load i32, i32* %21, align 4
  %122 = call i32 @dsi_update_bits(%struct.dw_mipi_dsi_stm* %118, i32 %119, i32 %120, i32 %121)
  %123 = load %struct.dw_mipi_dsi_stm*, %struct.dw_mipi_dsi_stm** %13, align 8
  %124 = load i32, i32* @DSI_WCFGR, align 4
  %125 = load i32, i32* @WCFGR_DSIM, align 4
  %126 = call i32 @dsi_clear(%struct.dw_mipi_dsi_stm* %123, i32 %124, i32 %125)
  %127 = load %struct.dw_mipi_dsi_stm*, %struct.dw_mipi_dsi_stm** %13, align 8
  %128 = load i32, i32* @DSI_WCFGR, align 4
  %129 = load i32, i32* @WCFGR_COLMUX, align 4
  %130 = load i32, i32* %11, align 4
  %131 = call i32 @dsi_color_from_mipi(i32 %130)
  %132 = shl i32 %131, 1
  %133 = call i32 @dsi_update_bits(%struct.dw_mipi_dsi_stm* %127, i32 %128, i32 %129, i32 %132)
  %134 = load i32, i32* %18, align 4
  %135 = udiv i32 %134, 1000
  %136 = load i32*, i32** %12, align 8
  store i32 %135, i32* %136, align 4
  %137 = load i32, i32* %17, align 4
  %138 = load i32, i32* %18, align 4
  %139 = load i32*, i32** %12, align 8
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %137, i32 %138, i32 %140)
  ret i32 0
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @mipi_dsi_pixel_format_to_bpp(i32) #1

declare dso_local i32 @DRM_WARN(i8*) #1

declare dso_local i32 @dsi_pll_get_params(%struct.dw_mipi_dsi_stm*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @dsi_pll_get_clkout_khz(i32, i32, i32, i32) #1

declare dso_local i32 @dsi_update_bits(%struct.dw_mipi_dsi_stm*, i32, i32, i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @dsi_clear(%struct.dw_mipi_dsi_stm*, i32, i32) #1

declare dso_local i32 @dsi_color_from_mipi(i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
