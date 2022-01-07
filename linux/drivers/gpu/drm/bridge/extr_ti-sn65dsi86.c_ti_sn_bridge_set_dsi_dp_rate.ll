; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_ti-sn65dsi86.c_ti_sn_bridge_set_dsi_dp_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_ti-sn65dsi86.c_ti_sn_bridge_set_dsi_dp_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sn_bridge = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }

@MIN_DSI_CLK_FREQ_MHZ = common dso_local global i32 0, align 4
@SN_DSIA_CLK_FREQ_REG = common dso_local global i32 0, align 4
@DP_CLK_FUDGE_NUM = common dso_local global i32 0, align 4
@DP_CLK_FUDGE_DEN = common dso_local global i32 0, align 4
@ti_sn_bridge_dp_rate_lut = common dso_local global i32* null, align 8
@SN_DATARATE_CONFIG_REG = common dso_local global i32 0, align 4
@DP_DATARATE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_sn_bridge*)* @ti_sn_bridge_set_dsi_dp_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_sn_bridge_set_dsi_dp_rate(%struct.ti_sn_bridge* %0) #0 {
  %2 = alloca %struct.ti_sn_bridge*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_display_mode*, align 8
  store %struct.ti_sn_bridge* %0, %struct.ti_sn_bridge** %2, align 8
  %9 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %2, align 8
  %10 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store %struct.drm_display_mode* %17, %struct.drm_display_mode** %8, align 8
  %18 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %19 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %20, 1000
  %22 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %2, align 8
  %23 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %22, i32 0, i32 1
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @mipi_dsi_pixel_format_to_bpp(i32 %26)
  %28 = mul nsw i32 %21, %27
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %2, align 8
  %31 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %30, i32 0, i32 1
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %34, 2
  %36 = udiv i32 %29, %35
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* @MIN_DSI_CLK_FREQ_MHZ, align 4
  %38 = sdiv i32 %37, 5
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @MIN_DSI_CLK_FREQ_MHZ, align 4
  %41 = sub i32 %39, %40
  %42 = udiv i32 %41, 5
  %43 = and i32 %42, 255
  %44 = add i32 %38, %43
  store i32 %44, i32* %6, align 4
  %45 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %2, align 8
  %46 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @SN_DSIA_CLK_FREQ_REG, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @regmap_write(i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %2, align 8
  %53 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %52, i32 0, i32 1
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = udiv i32 %51, %56
  %58 = load i32, i32* @DP_CLK_FUDGE_NUM, align 4
  %59 = mul i32 %57, %58
  %60 = load i32, i32* @DP_CLK_FUDGE_DEN, align 4
  %61 = udiv i32 %59, %60
  store i32 %61, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %78, %1
  %63 = load i32, i32* %7, align 4
  %64 = load i32*, i32** @ti_sn_bridge_dp_rate_lut, align 8
  %65 = call i32 @ARRAY_SIZE(i32* %64)
  %66 = sub nsw i32 %65, 1
  %67 = icmp ult i32 %63, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %62
  %69 = load i32*, i32** @ti_sn_bridge_dp_rate_lut, align 8
  %70 = load i32, i32* %7, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp ugt i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %81

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %7, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %62

81:                                               ; preds = %76, %62
  %82 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %2, align 8
  %83 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @SN_DATARATE_CONFIG_REG, align 4
  %86 = load i32, i32* @DP_DATARATE_MASK, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @DP_DATARATE(i32 %87)
  %89 = call i32 @regmap_update_bits(i32 %84, i32 %85, i32 %86, i32 %88)
  ret void
}

declare dso_local i32 @mipi_dsi_pixel_format_to_bpp(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @DP_DATARATE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
