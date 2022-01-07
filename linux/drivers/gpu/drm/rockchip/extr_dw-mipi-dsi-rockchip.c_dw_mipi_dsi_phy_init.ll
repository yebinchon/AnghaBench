; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_dw-mipi-dsi-rockchip.c_dw_mipi_dsi_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_dw-mipi-dsi-rockchip.c_dw_mipi_dsi_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.dw_mipi_dsi_rockchip = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"failed to get parameter for %dmbps clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to enable phy_cfg_clk\0A\00", align 1
@PLL_BIAS_CUR_SEL_CAP_VCO_CONTROL = common dso_local global i32 0, align 4
@BYPASS_VCO_RANGE = common dso_local global i32 0, align 4
@VCO_IN_CAP_CON_LOW = common dso_local global i32 0, align 4
@REF_BIAS_CUR_SEL = common dso_local global i32 0, align 4
@PLL_CP_CONTROL_PLL_LOCK_BYPASS = common dso_local global i32 0, align 4
@dppa_map = common dso_local global %struct.TYPE_2__* null, align 8
@PLL_LPF_AND_CP_CONTROL = common dso_local global i32 0, align 4
@CP_PROGRAM_EN = common dso_local global i32 0, align 4
@LPF_PROGRAM_EN = common dso_local global i32 0, align 4
@HS_RX_CONTROL_OF_LANE_0 = common dso_local global i32 0, align 4
@PLL_INPUT_DIVIDER_RATIO = common dso_local global i32 0, align 4
@PLL_LOOP_DIVIDER_RATIO = common dso_local global i32 0, align 4
@LOW_PROGRAM_EN = common dso_local global i32 0, align 4
@PLL_INPUT_AND_LOOP_DIVIDER_RATIOS_CONTROL = common dso_local global i32 0, align 4
@PLL_LOOP_DIV_EN = common dso_local global i32 0, align 4
@PLL_INPUT_DIV_EN = common dso_local global i32 0, align 4
@HIGH_PROGRAM_EN = common dso_local global i32 0, align 4
@AFE_BIAS_BANDGAP_ANALOG_PROGRAMMABILITY = common dso_local global i32 0, align 4
@BIASEXTR_127_7 = common dso_local global i32 0, align 4
@BANDGAP_96_10 = common dso_local global i32 0, align 4
@BANDGAP_AND_BIAS_CONTROL = common dso_local global i32 0, align 4
@POWER_CONTROL = common dso_local global i32 0, align 4
@INTERNAL_REG_CURRENT = common dso_local global i32 0, align 4
@BIAS_BLOCK_ON = common dso_local global i32 0, align 4
@BANDGAP_ON = common dso_local global i32 0, align 4
@TERMINATION_RESISTER_CONTROL = common dso_local global i32 0, align 4
@TER_RESISTOR_LOW = common dso_local global i32 0, align 4
@TER_CAL_DONE = common dso_local global i32 0, align 4
@SETRD_MAX = common dso_local global i32 0, align 4
@TER_RESISTORS_ON = common dso_local global i32 0, align 4
@TER_RESISTOR_HIGH = common dso_local global i32 0, align 4
@LEVEL_SHIFTERS_ON = common dso_local global i32 0, align 4
@POWER_MANAGE = common dso_local global i32 0, align 4
@HS_TX_CLOCK_LANE_REQUEST_STATE_TIME_CONTROL = common dso_local global i32 0, align 4
@TLP_PROGRAM_EN = common dso_local global i32 0, align 4
@HS_TX_CLOCK_LANE_PREPARE_STATE_TIME_CONTROL = common dso_local global i32 0, align 4
@THS_PRE_PROGRAM_EN = common dso_local global i32 0, align 4
@HS_TX_CLOCK_LANE_HS_ZERO_STATE_TIME_CONTROL = common dso_local global i32 0, align 4
@THS_ZERO_PROGRAM_EN = common dso_local global i32 0, align 4
@HS_TX_CLOCK_LANE_TRAIL_STATE_TIME_CONTROL = common dso_local global i32 0, align 4
@HS_TX_CLOCK_LANE_EXIT_STATE_TIME_CONTROL = common dso_local global i32 0, align 4
@HS_TX_CLOCK_LANE_POST_TIME_CONTROL = common dso_local global i32 0, align 4
@HS_TX_DATA_LANE_REQUEST_STATE_TIME_CONTROL = common dso_local global i32 0, align 4
@HS_TX_DATA_LANE_PREPARE_STATE_TIME_CONTROL = common dso_local global i32 0, align 4
@HS_TX_DATA_LANE_HS_ZERO_STATE_TIME_CONTROL = common dso_local global i32 0, align 4
@HS_TX_DATA_LANE_TRAIL_STATE_TIME_CONTROL = common dso_local global i32 0, align 4
@HS_TX_DATA_LANE_EXIT_STATE_TIME_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @dw_mipi_dsi_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mipi_dsi_phy_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dw_mipi_dsi_rockchip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.dw_mipi_dsi_rockchip*
  store %struct.dw_mipi_dsi_rockchip* %9, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %10 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %11 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %12, 200
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %21

15:                                               ; preds = %1
  %16 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %17 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 100
  %20 = sdiv i32 %19, 200
  br label %21

21:                                               ; preds = %15, %14
  %22 = phi i32 [ 0, %14 ], [ %20, %15 ]
  store i32 %22, i32* %7, align 4
  %23 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %24 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @max_mbps_to_parameter(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %31 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %34 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %32, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %266

38:                                               ; preds = %21
  %39 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %40 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @clk_prepare_enable(i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %47 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %266

51:                                               ; preds = %38
  %52 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %53 = load i32, i32* @PLL_BIAS_CUR_SEL_CAP_VCO_CONTROL, align 4
  %54 = load i32, i32* @BYPASS_VCO_RANGE, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @VCO_RANGE_CON_SEL(i32 %55)
  %57 = or i32 %54, %56
  %58 = load i32, i32* @VCO_IN_CAP_CON_LOW, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @REF_BIAS_CUR_SEL, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @dw_mipi_dsi_phy_write(%struct.dw_mipi_dsi_rockchip* %52, i32 %53, i32 %61)
  %63 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %64 = load i32, i32* @PLL_CP_CONTROL_PLL_LOCK_BYPASS, align 4
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dppa_map, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @CP_CURRENT_SEL(i32 %70)
  %72 = call i32 @dw_mipi_dsi_phy_write(%struct.dw_mipi_dsi_rockchip* %63, i32 %64, i32 %71)
  %73 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %74 = load i32, i32* @PLL_LPF_AND_CP_CONTROL, align 4
  %75 = load i32, i32* @CP_PROGRAM_EN, align 4
  %76 = load i32, i32* @LPF_PROGRAM_EN, align 4
  %77 = or i32 %75, %76
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dppa_map, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @LPF_RESISTORS_SEL(i32 %83)
  %85 = or i32 %77, %84
  %86 = call i32 @dw_mipi_dsi_phy_write(%struct.dw_mipi_dsi_rockchip* %73, i32 %74, i32 %85)
  %87 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %88 = load i32, i32* @HS_RX_CONTROL_OF_LANE_0, align 4
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dppa_map, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @HSFREQRANGE_SEL(i32 %94)
  %96 = call i32 @dw_mipi_dsi_phy_write(%struct.dw_mipi_dsi_rockchip* %87, i32 %88, i32 %95)
  %97 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %98 = load i32, i32* @PLL_INPUT_DIVIDER_RATIO, align 4
  %99 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %100 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @INPUT_DIVIDER(i32 %101)
  %103 = call i32 @dw_mipi_dsi_phy_write(%struct.dw_mipi_dsi_rockchip* %97, i32 %98, i32 %102)
  %104 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %105 = load i32, i32* @PLL_LOOP_DIVIDER_RATIO, align 4
  %106 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %107 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @LOOP_DIV_LOW_SEL(i32 %108)
  %110 = load i32, i32* @LOW_PROGRAM_EN, align 4
  %111 = or i32 %109, %110
  %112 = call i32 @dw_mipi_dsi_phy_write(%struct.dw_mipi_dsi_rockchip* %104, i32 %105, i32 %111)
  %113 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %114 = load i32, i32* @PLL_INPUT_AND_LOOP_DIVIDER_RATIOS_CONTROL, align 4
  %115 = load i32, i32* @PLL_LOOP_DIV_EN, align 4
  %116 = load i32, i32* @PLL_INPUT_DIV_EN, align 4
  %117 = or i32 %115, %116
  %118 = call i32 @dw_mipi_dsi_phy_write(%struct.dw_mipi_dsi_rockchip* %113, i32 %114, i32 %117)
  %119 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %120 = load i32, i32* @PLL_LOOP_DIVIDER_RATIO, align 4
  %121 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %122 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @LOOP_DIV_HIGH_SEL(i32 %123)
  %125 = load i32, i32* @HIGH_PROGRAM_EN, align 4
  %126 = or i32 %124, %125
  %127 = call i32 @dw_mipi_dsi_phy_write(%struct.dw_mipi_dsi_rockchip* %119, i32 %120, i32 %126)
  %128 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %129 = load i32, i32* @PLL_INPUT_AND_LOOP_DIVIDER_RATIOS_CONTROL, align 4
  %130 = load i32, i32* @PLL_LOOP_DIV_EN, align 4
  %131 = load i32, i32* @PLL_INPUT_DIV_EN, align 4
  %132 = or i32 %130, %131
  %133 = call i32 @dw_mipi_dsi_phy_write(%struct.dw_mipi_dsi_rockchip* %128, i32 %129, i32 %132)
  %134 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %135 = load i32, i32* @AFE_BIAS_BANDGAP_ANALOG_PROGRAMMABILITY, align 4
  %136 = load i32, i32* @LOW_PROGRAM_EN, align 4
  %137 = load i32, i32* @BIASEXTR_127_7, align 4
  %138 = call i32 @BIASEXTR_SEL(i32 %137)
  %139 = or i32 %136, %138
  %140 = call i32 @dw_mipi_dsi_phy_write(%struct.dw_mipi_dsi_rockchip* %134, i32 %135, i32 %139)
  %141 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %142 = load i32, i32* @AFE_BIAS_BANDGAP_ANALOG_PROGRAMMABILITY, align 4
  %143 = load i32, i32* @HIGH_PROGRAM_EN, align 4
  %144 = load i32, i32* @BANDGAP_96_10, align 4
  %145 = call i32 @BANDGAP_SEL(i32 %144)
  %146 = or i32 %143, %145
  %147 = call i32 @dw_mipi_dsi_phy_write(%struct.dw_mipi_dsi_rockchip* %141, i32 %142, i32 %146)
  %148 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %149 = load i32, i32* @BANDGAP_AND_BIAS_CONTROL, align 4
  %150 = load i32, i32* @POWER_CONTROL, align 4
  %151 = load i32, i32* @INTERNAL_REG_CURRENT, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @BIAS_BLOCK_ON, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @BANDGAP_ON, align 4
  %156 = or i32 %154, %155
  %157 = call i32 @dw_mipi_dsi_phy_write(%struct.dw_mipi_dsi_rockchip* %148, i32 %149, i32 %156)
  %158 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %159 = load i32, i32* @TERMINATION_RESISTER_CONTROL, align 4
  %160 = load i32, i32* @TER_RESISTOR_LOW, align 4
  %161 = load i32, i32* @TER_CAL_DONE, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @SETRD_MAX, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @TER_RESISTORS_ON, align 4
  %166 = or i32 %164, %165
  %167 = call i32 @dw_mipi_dsi_phy_write(%struct.dw_mipi_dsi_rockchip* %158, i32 %159, i32 %166)
  %168 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %169 = load i32, i32* @TERMINATION_RESISTER_CONTROL, align 4
  %170 = load i32, i32* @TER_RESISTOR_HIGH, align 4
  %171 = load i32, i32* @LEVEL_SHIFTERS_ON, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* @SETRD_MAX, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* @POWER_MANAGE, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @TER_RESISTORS_ON, align 4
  %178 = or i32 %176, %177
  %179 = call i32 @dw_mipi_dsi_phy_write(%struct.dw_mipi_dsi_rockchip* %168, i32 %169, i32 %178)
  %180 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %181 = load i32, i32* @HS_TX_CLOCK_LANE_REQUEST_STATE_TIME_CONTROL, align 4
  %182 = load i32, i32* @TLP_PROGRAM_EN, align 4
  %183 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %184 = call i32 @ns2bc(%struct.dw_mipi_dsi_rockchip* %183, i32 500)
  %185 = or i32 %182, %184
  %186 = call i32 @dw_mipi_dsi_phy_write(%struct.dw_mipi_dsi_rockchip* %180, i32 %181, i32 %185)
  %187 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %188 = load i32, i32* @HS_TX_CLOCK_LANE_PREPARE_STATE_TIME_CONTROL, align 4
  %189 = load i32, i32* @THS_PRE_PROGRAM_EN, align 4
  %190 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %191 = call i32 @ns2ui(%struct.dw_mipi_dsi_rockchip* %190, i32 40)
  %192 = or i32 %189, %191
  %193 = call i32 @dw_mipi_dsi_phy_write(%struct.dw_mipi_dsi_rockchip* %187, i32 %188, i32 %192)
  %194 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %195 = load i32, i32* @HS_TX_CLOCK_LANE_HS_ZERO_STATE_TIME_CONTROL, align 4
  %196 = load i32, i32* @THS_ZERO_PROGRAM_EN, align 4
  %197 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %198 = call i32 @ns2bc(%struct.dw_mipi_dsi_rockchip* %197, i32 300)
  %199 = or i32 %196, %198
  %200 = call i32 @dw_mipi_dsi_phy_write(%struct.dw_mipi_dsi_rockchip* %194, i32 %195, i32 %199)
  %201 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %202 = load i32, i32* @HS_TX_CLOCK_LANE_TRAIL_STATE_TIME_CONTROL, align 4
  %203 = load i32, i32* @THS_PRE_PROGRAM_EN, align 4
  %204 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %205 = call i32 @ns2ui(%struct.dw_mipi_dsi_rockchip* %204, i32 100)
  %206 = or i32 %203, %205
  %207 = call i32 @dw_mipi_dsi_phy_write(%struct.dw_mipi_dsi_rockchip* %201, i32 %202, i32 %206)
  %208 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %209 = load i32, i32* @HS_TX_CLOCK_LANE_EXIT_STATE_TIME_CONTROL, align 4
  %210 = call i32 @BIT(i32 5)
  %211 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %212 = call i32 @ns2bc(%struct.dw_mipi_dsi_rockchip* %211, i32 100)
  %213 = or i32 %210, %212
  %214 = call i32 @dw_mipi_dsi_phy_write(%struct.dw_mipi_dsi_rockchip* %208, i32 %209, i32 %213)
  %215 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %216 = load i32, i32* @HS_TX_CLOCK_LANE_POST_TIME_CONTROL, align 4
  %217 = call i32 @BIT(i32 5)
  %218 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %219 = call i32 @ns2bc(%struct.dw_mipi_dsi_rockchip* %218, i32 60)
  %220 = add nsw i32 %219, 7
  %221 = or i32 %217, %220
  %222 = call i32 @dw_mipi_dsi_phy_write(%struct.dw_mipi_dsi_rockchip* %215, i32 %216, i32 %221)
  %223 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %224 = load i32, i32* @HS_TX_DATA_LANE_REQUEST_STATE_TIME_CONTROL, align 4
  %225 = load i32, i32* @TLP_PROGRAM_EN, align 4
  %226 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %227 = call i32 @ns2bc(%struct.dw_mipi_dsi_rockchip* %226, i32 500)
  %228 = or i32 %225, %227
  %229 = call i32 @dw_mipi_dsi_phy_write(%struct.dw_mipi_dsi_rockchip* %223, i32 %224, i32 %228)
  %230 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %231 = load i32, i32* @HS_TX_DATA_LANE_PREPARE_STATE_TIME_CONTROL, align 4
  %232 = load i32, i32* @THS_PRE_PROGRAM_EN, align 4
  %233 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %234 = call i32 @ns2ui(%struct.dw_mipi_dsi_rockchip* %233, i32 50)
  %235 = add nsw i32 %234, 20
  %236 = or i32 %232, %235
  %237 = call i32 @dw_mipi_dsi_phy_write(%struct.dw_mipi_dsi_rockchip* %230, i32 %231, i32 %236)
  %238 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %239 = load i32, i32* @HS_TX_DATA_LANE_HS_ZERO_STATE_TIME_CONTROL, align 4
  %240 = load i32, i32* @THS_ZERO_PROGRAM_EN, align 4
  %241 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %242 = call i32 @ns2bc(%struct.dw_mipi_dsi_rockchip* %241, i32 140)
  %243 = add nsw i32 %242, 2
  %244 = or i32 %240, %243
  %245 = call i32 @dw_mipi_dsi_phy_write(%struct.dw_mipi_dsi_rockchip* %238, i32 %239, i32 %244)
  %246 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %247 = load i32, i32* @HS_TX_DATA_LANE_TRAIL_STATE_TIME_CONTROL, align 4
  %248 = load i32, i32* @THS_PRE_PROGRAM_EN, align 4
  %249 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %250 = call i32 @ns2ui(%struct.dw_mipi_dsi_rockchip* %249, i32 60)
  %251 = add nsw i32 %250, 8
  %252 = or i32 %248, %251
  %253 = call i32 @dw_mipi_dsi_phy_write(%struct.dw_mipi_dsi_rockchip* %246, i32 %247, i32 %252)
  %254 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %255 = load i32, i32* @HS_TX_DATA_LANE_EXIT_STATE_TIME_CONTROL, align 4
  %256 = call i32 @BIT(i32 5)
  %257 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %258 = call i32 @ns2bc(%struct.dw_mipi_dsi_rockchip* %257, i32 100)
  %259 = or i32 %256, %258
  %260 = call i32 @dw_mipi_dsi_phy_write(%struct.dw_mipi_dsi_rockchip* %254, i32 %255, i32 %259)
  %261 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %4, align 8
  %262 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @clk_disable_unprepare(i32 %263)
  %265 = load i32, i32* %5, align 4
  store i32 %265, i32* %2, align 4
  br label %266

266:                                              ; preds = %51, %45, %29
  %267 = load i32, i32* %2, align 4
  ret i32 %267
}

declare dso_local i32 @max_mbps_to_parameter(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, ...) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dw_mipi_dsi_phy_write(%struct.dw_mipi_dsi_rockchip*, i32, i32) #1

declare dso_local i32 @VCO_RANGE_CON_SEL(i32) #1

declare dso_local i32 @CP_CURRENT_SEL(i32) #1

declare dso_local i32 @LPF_RESISTORS_SEL(i32) #1

declare dso_local i32 @HSFREQRANGE_SEL(i32) #1

declare dso_local i32 @INPUT_DIVIDER(i32) #1

declare dso_local i32 @LOOP_DIV_LOW_SEL(i32) #1

declare dso_local i32 @LOOP_DIV_HIGH_SEL(i32) #1

declare dso_local i32 @BIASEXTR_SEL(i32) #1

declare dso_local i32 @BANDGAP_SEL(i32) #1

declare dso_local i32 @ns2bc(%struct.dw_mipi_dsi_rockchip*, i32) #1

declare dso_local i32 @ns2ui(%struct.dw_mipi_dsi_rockchip*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
