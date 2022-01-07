; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_ti-sn65dsi86.c_ti_sn_bridge_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_ti-sn65dsi86.c_ti_sn_bridge_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32 }
%struct.ti_sn_bridge = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SN_DSI_LANES_REG = common dso_local global i32 0, align 4
@CHA_DSI_LANES_MASK = common dso_local global i32 0, align 4
@SN_SSC_CONFIG_REG = common dso_local global i32 0, align 4
@DP_NUM_LANES_MASK = common dso_local global i32 0, align 4
@SN_PLL_ENABLE_REG = common dso_local global i32 0, align 4
@SN_DPPLL_SRC_REG = common dso_local global i32 0, align 4
@DPPLL_SRC_DP_PLL_LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"DP_PLL_LOCK polling failed (%d)\0A\00", align 1
@DP_EDP_CONFIGURATION_SET = common dso_local global i32 0, align 4
@DP_ALTERNATE_SCRAMBLER_RESET_ENABLE = common dso_local global i32 0, align 4
@SN_ML_TX_MODE_REG = common dso_local global i32 0, align 4
@ML_TX_MAIN_LINK_OFF = common dso_local global i32 0, align 4
@ML_TX_NORMAL_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Training complete polling failed (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Link training failed, link is off\0A\00", align 1
@SN_ENH_FRAME_REG = common dso_local global i32 0, align 4
@VSTREAM_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*)* @ti_sn_bridge_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_sn_bridge_enable(%struct.drm_bridge* %0) #0 {
  %2 = alloca %struct.drm_bridge*, align 8
  %3 = alloca %struct.ti_sn_bridge*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %2, align 8
  %6 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %7 = call %struct.ti_sn_bridge* @bridge_to_ti_sn_bridge(%struct.drm_bridge* %6)
  store %struct.ti_sn_bridge* %7, %struct.ti_sn_bridge** %3, align 8
  %8 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %3, align 8
  %9 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 4, %12
  %14 = call i32 @CHA_DSI_LANES(i64 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %3, align 8
  %16 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SN_DSI_LANES_REG, align 4
  %19 = load i32, i32* @CHA_DSI_LANES_MASK, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @regmap_update_bits(i32 %17, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %3, align 8
  %23 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %26, 1
  %28 = call i32 @DP_NUM_LANES(i64 %27)
  store i32 %28, i32* %4, align 4
  %29 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %3, align 8
  %30 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SN_SSC_CONFIG_REG, align 4
  %33 = load i32, i32* @DP_NUM_LANES_MASK, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @regmap_update_bits(i32 %31, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %3, align 8
  %37 = call i32 @ti_sn_bridge_set_dsi_dp_rate(%struct.ti_sn_bridge* %36)
  %38 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %3, align 8
  %39 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SN_PLL_ENABLE_REG, align 4
  %42 = call i32 @regmap_write(i32 %40, i32 %41, i32 1)
  %43 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %3, align 8
  %44 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SN_DPPLL_SRC_REG, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @DPPLL_SRC_DP_PLL_LOCK, align 4
  %50 = and i32 %48, %49
  %51 = call i32 @regmap_read_poll_timeout(i32 %45, i32 %46, i32 %47, i32 %50, i32 1000, i32 50000)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %1
  %55 = load i32, i32* %5, align 4
  %56 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %110

57:                                               ; preds = %1
  %58 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %3, align 8
  %59 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %58, i32 0, i32 2
  %60 = load i32, i32* @DP_EDP_CONFIGURATION_SET, align 4
  %61 = load i32, i32* @DP_ALTERNATE_SCRAMBLER_RESET_ENABLE, align 4
  %62 = call i32 @drm_dp_dpcd_writeb(i32* %59, i32 %60, i32 %61)
  %63 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %3, align 8
  %64 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SN_ML_TX_MODE_REG, align 4
  %67 = call i32 @regmap_write(i32 %65, i32 %66, i32 10)
  %68 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %3, align 8
  %69 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @SN_ML_TX_MODE_REG, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @ML_TX_MAIN_LINK_OFF, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %57
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @ML_TX_NORMAL_MODE, align 4
  %79 = icmp eq i32 %77, %78
  br label %80

80:                                               ; preds = %76, %57
  %81 = phi i1 [ true, %57 ], [ %79, %76 ]
  %82 = zext i1 %81 to i32
  %83 = call i32 @regmap_read_poll_timeout(i32 %70, i32 %71, i32 %72, i32 %82, i32 1000, i32 500000)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i32, i32* %5, align 4
  %88 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  br label %110

89:                                               ; preds = %80
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @ML_TX_MAIN_LINK_OFF, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %110

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %95
  %97 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %3, align 8
  %98 = call i32 @ti_sn_bridge_set_video_timings(%struct.ti_sn_bridge* %97)
  %99 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %3, align 8
  %100 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @SN_ENH_FRAME_REG, align 4
  %103 = load i32, i32* @VSTREAM_ENABLE, align 4
  %104 = load i32, i32* @VSTREAM_ENABLE, align 4
  %105 = call i32 @regmap_update_bits(i32 %101, i32 %102, i32 %103, i32 %104)
  %106 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %3, align 8
  %107 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @drm_panel_enable(i32 %108)
  br label %110

110:                                              ; preds = %96, %93, %86, %54
  ret void
}

declare dso_local %struct.ti_sn_bridge* @bridge_to_ti_sn_bridge(%struct.drm_bridge*) #1

declare dso_local i32 @CHA_DSI_LANES(i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @DP_NUM_LANES(i64) #1

declare dso_local i32 @ti_sn_bridge_set_dsi_dp_rate(%struct.ti_sn_bridge*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_read_poll_timeout(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @drm_dp_dpcd_writeb(i32*, i32, i32) #1

declare dso_local i32 @ti_sn_bridge_set_video_timings(%struct.ti_sn_bridge*) #1

declare dso_local i32 @drm_panel_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
