; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_hdmi_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_hdmi_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32 }
%struct.tegra_output = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.tegra_dc = type { %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.tegra_sor_hdmi_settings = type { i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tegra_sor = type { i32, i32, %struct.TYPE_10__*, i32, i32, i32, i32*, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.tegra_sor_state = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"failed to set safe parent clock: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to power on I/O pad: %d\0A\00", align 1
@SOR_PLL2_BANDGAP_POWERDOWN = common dso_local global i32 0, align 4
@SOR_PLL3_PLL_VDD_MODE_3V3 = common dso_local global i32 0, align 4
@SOR_PLL0_VCOPD = common dso_local global i32 0, align 4
@SOR_PLL0_PWR = common dso_local global i32 0, align 4
@SOR_PLL2_SEQ_PLLCAPPD_ENFORCE = common dso_local global i32 0, align 4
@SOR_PLL2_POWERDOWN_OVERRIDE = common dso_local global i32 0, align 4
@SOR_PLL2_PORT_POWERDOWN = common dso_local global i32 0, align 4
@SOR_DP_PADCTL_PD_TXD_3 = common dso_local global i32 0, align 4
@SOR_DP_PADCTL_PD_TXD_0 = common dso_local global i32 0, align 4
@SOR_DP_PADCTL_PD_TXD_1 = common dso_local global i32 0, align 4
@SOR_DP_PADCTL_PD_TXD_2 = common dso_local global i32 0, align 4
@SOR_LANE_SEQ_CTL = common dso_local global i64 0, align 8
@SOR_LANE_SEQ_CTL_STATE_BUSY = common dso_local global i32 0, align 4
@SOR_LANE_SEQ_CTL_TRIGGER = common dso_local global i32 0, align 4
@SOR_LANE_SEQ_CTL_SEQUENCE_DOWN = common dso_local global i32 0, align 4
@SOR_LANE_SEQ_CTL_POWER_STATE_UP = common dso_local global i32 0, align 4
@SOR_CLK_CNTRL = common dso_local global i64 0, align 8
@SOR_CLK_CNTRL_DP_LINK_SPEED_MASK = common dso_local global i32 0, align 4
@SOR_CLK_CNTRL_DP_CLK_SEL_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"setting 2.7 GHz link speed\0A\00", align 1
@SOR_CLK_CNTRL_DP_LINK_SPEED_G2_70 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"setting 5.4 GHz link speed\0A\00", align 1
@SOR_CLK_CNTRL_DP_LINK_SPEED_G5_40 = common dso_local global i32 0, align 4
@SOR_CLK_CNTRL_DP_CLK_SEL_SINGLE_PCLK = common dso_local global i32 0, align 4
@SOR_DP_LINKCTL0 = common dso_local global i64 0, align 8
@SOR_DP_LINKCTL_LANE_COUNT_MASK = common dso_local global i32 0, align 4
@SOR_DP_SPARE0 = common dso_local global i64 0, align 8
@SOR_DP_SPARE_DISP_VIDEO_PREAMBLE = common dso_local global i32 0, align 4
@SOR_DP_SPARE_PANEL_INTERNAL = common dso_local global i32 0, align 4
@SOR_DP_SPARE_SEQ_ENABLE = common dso_local global i32 0, align 4
@SOR_DP_SPARE_MACRO_SOR_CLK = common dso_local global i32 0, align 4
@SOR_SEQ_CTL = common dso_local global i64 0, align 8
@SOR_SEQ_INST_DRIVE_PWM_OUT_LO = common dso_local global i32 0, align 4
@SOR_SEQ_INST_HALT = common dso_local global i32 0, align 4
@SOR_SEQ_INST_WAIT_VSYNC = common dso_local global i32 0, align 4
@SOR_REFCLK = common dso_local global i64 0, align 8
@SOR_XBAR_POL = common dso_local global i64 0, align 8
@SOR_XBAR_CTRL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"failed to set parent clock: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"failed to set pad clock: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"setting clock to %lu Hz, mode: %lu Hz\0A\00", align 1
@SOR_INPUT_CONTROL_ARM_VIDEO_RANGE_LIMITED = common dso_local global i32 0, align 4
@SOR_INPUT_CONTROL = common dso_local global i64 0, align 8
@SOR_REKEY = common dso_local global i32 0, align 4
@SOR_HDMI_CTRL_ENABLE = common dso_local global i32 0, align 4
@SOR_HDMI_CTRL_AUDIO_LAYOUT = common dso_local global i32 0, align 4
@SOR_HDMI_CTRL = common dso_local global i64 0, align 8
@PULSE_LAST_END_A = common dso_local global i32 0, align 4
@PULSE_QUAL_VACTIVE = common dso_local global i32 0, align 4
@PULSE_POLARITY_HIGH = common dso_local global i32 0, align 4
@PULSE_MODE_NORMAL = common dso_local global i32 0, align 4
@DC_DISP_H_PULSE2_CONTROL = common dso_local global i32 0, align 4
@DC_DISP_H_PULSE2_POSITION_A = common dso_local global i32 0, align 4
@DC_DISP_DISP_SIGNAL_OPTIONS0 = common dso_local global i32 0, align 4
@H_PULSE2_ENABLE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"failed to setup AVI infoframe: %d\0A\00", align 1
@SOR_STATE1 = common dso_local global i64 0, align 8
@SOR_STATE_ASY_PROTOCOL_MASK = common dso_local global i32 0, align 4
@SOR_STATE_ASY_PROTOCOL_SINGLE_TMDS_A = common dso_local global i32 0, align 4
@SOR_DP_PADCTL_PAD_CAL_PD = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"no settings for pixel clock %d Hz\0A\00", align 1
@SOR_PLL0_ICHPMP_MASK = common dso_local global i32 0, align 4
@SOR_PLL0_FILTER_MASK = common dso_local global i32 0, align 4
@SOR_PLL0_VCOCAP_MASK = common dso_local global i32 0, align 4
@SOR_PLL1_LOADADJ_MASK = common dso_local global i32 0, align 4
@SOR_PLL1_TMDS_TERMADJ_MASK = common dso_local global i32 0, align 4
@SOR_PLL1_TMDS_TERM = common dso_local global i32 0, align 4
@SOR_PLL3_BG_TEMP_COEF_MASK = common dso_local global i32 0, align 4
@SOR_PLL3_BG_VREF_LEVEL_MASK = common dso_local global i32 0, align 4
@SOR_PLL3_AVDD10_LEVEL_MASK = common dso_local global i32 0, align 4
@SOR_PLL3_AVDD14_LEVEL_MASK = common dso_local global i32 0, align 4
@SOR_LANE_DRIVE_CURRENT0 = common dso_local global i64 0, align 8
@SOR_LANE_PREEMPHASIS0 = common dso_local global i64 0, align 8
@SOR_DP_PADCTL_TX_PU_MASK = common dso_local global i32 0, align 4
@SOR_DP_PADCTL_TX_PU_ENABLE = common dso_local global i32 0, align 4
@SOR_DP_PADCTL_SPAREPLL_MASK = common dso_local global i32 0, align 4
@DC_DISP_DISP_TIMING_OPTIONS = common dso_local global i32 0, align 4
@DC_DISP_DISP_COLOR_CONTROL = common dso_local global i32 0, align 4
@DITHER_CONTROL_MASK = common dso_local global i32 0, align 4
@BASE_COLOR_SIZE_MASK = common dso_local global i32 0, align 4
@BASE_COLOR_SIZE_666 = common dso_local global i32 0, align 4
@BASE_COLOR_SIZE_888 = common dso_local global i32 0, align 4
@BASE_COLOR_SIZE_101010 = common dso_local global i32 0, align 4
@BASE_COLOR_SIZE_121212 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"%u bits-per-color not supported\0A\00", align 1
@SOR_STATE_ASY_OWNER_MASK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [28 x i8] c"failed to power up SOR: %d\0A\00", align 1
@SOR_HEAD_STATE_RANGECOMPRESS_MASK = common dso_local global i32 0, align 4
@SOR_HEAD_STATE_DYNRANGE_MASK = common dso_local global i32 0, align 4
@SOR_HEAD_STATE_COLORSPACE_MASK = common dso_local global i32 0, align 4
@SOR_HEAD_STATE_COLORSPACE_RGB = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [26 x i8] c"failed to attach SOR: %d\0A\00", align 1
@DC_DISP_DISP_WIN_OPTIONS = common dso_local global i32 0, align 4
@SOR1_TIMING_CYA = common dso_local global i32 0, align 4
@PROTOCOL_MASK = common dso_local global i32 0, align 4
@PROTOCOL_SINGLE_TMDS_A = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [26 x i8] c"failed to wakeup SOR: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @tegra_sor_hdmi_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_sor_hdmi_enable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.tegra_output*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tegra_dc*, align 8
  %8 = alloca %struct.tegra_sor_hdmi_settings*, align 8
  %9 = alloca %struct.tegra_sor*, align 8
  %10 = alloca %struct.tegra_sor_state*, align 8
  %11 = alloca %struct.drm_display_mode*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %19 = call %struct.tegra_output* @encoder_to_output(%struct.drm_encoder* %18)
  store %struct.tegra_output* %19, %struct.tegra_output** %3, align 8
  store i32 1, i32* %4, align 4
  %20 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %21 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %20, i32 0, i32 0
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = call %struct.tegra_dc* @to_tegra_dc(%struct.TYPE_12__* %22)
  store %struct.tegra_dc* %23, %struct.tegra_dc** %7, align 8
  %24 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %25 = call %struct.tegra_sor* @to_sor(%struct.tegra_output* %24)
  store %struct.tegra_sor* %25, %struct.tegra_sor** %9, align 8
  %26 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %27 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.tegra_sor_state* @to_sor_state(i32 %29)
  store %struct.tegra_sor_state* %30, %struct.tegra_sor_state** %10, align 8
  %31 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %32 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %31, i32 0, i32 0
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store %struct.drm_display_mode* %36, %struct.drm_display_mode** %11, align 8
  %37 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %38 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %39, 1000
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %13, align 8
  %42 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %43 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pm_runtime_get_sync(i32 %44)
  %46 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %47 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %48 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @tegra_sor_set_parent_clock(%struct.tegra_sor* %46, i32 %49)
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %17, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %1
  %54 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %55 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %17, align 4
  %58 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %1188

59:                                               ; preds = %1
  %60 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %61 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @clk_get_rate(i32 %62)
  %64 = sdiv i32 %63, 1000000
  %65 = mul nsw i32 %64, 4
  store i32 %65, i32* %14, align 4
  %66 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %67 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @tegra_io_pad_power_enable(i32 %68)
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %17, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %59
  %73 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %74 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %17, align 4
  %77 = call i32 @dev_err(i32 %75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %72, %59
  %79 = call i32 @usleep_range(i32 20, i32 100)
  %80 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %81 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %82 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %81, i32 0, i32 2
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 6
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @tegra_sor_readl(%struct.tegra_sor* %80, i64 %87)
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* @SOR_PLL2_BANDGAP_POWERDOWN, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %16, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %16, align 4
  %93 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %94 = load i32, i32* %16, align 4
  %95 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %96 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %95, i32 0, i32 2
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 6
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @tegra_sor_writel(%struct.tegra_sor* %93, i32 %94, i64 %101)
  %103 = call i32 @usleep_range(i32 20, i32 100)
  %104 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %105 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %106 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %105, i32 0, i32 2
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @tegra_sor_readl(%struct.tegra_sor* %104, i64 %111)
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* @SOR_PLL3_PLL_VDD_MODE_3V3, align 4
  %114 = xor i32 %113, -1
  %115 = load i32, i32* %16, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %16, align 4
  %117 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %118 = load i32, i32* %16, align 4
  %119 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %120 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %119, i32 0, i32 2
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @tegra_sor_writel(%struct.tegra_sor* %117, i32 %118, i64 %125)
  %127 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %128 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %129 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %128, i32 0, i32 2
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 5
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @tegra_sor_readl(%struct.tegra_sor* %127, i64 %134)
  store i32 %135, i32* %16, align 4
  %136 = load i32, i32* @SOR_PLL0_VCOPD, align 4
  %137 = xor i32 %136, -1
  %138 = load i32, i32* %16, align 4
  %139 = and i32 %138, %137
  store i32 %139, i32* %16, align 4
  %140 = load i32, i32* @SOR_PLL0_PWR, align 4
  %141 = xor i32 %140, -1
  %142 = load i32, i32* %16, align 4
  %143 = and i32 %142, %141
  store i32 %143, i32* %16, align 4
  %144 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %145 = load i32, i32* %16, align 4
  %146 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %147 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %146, i32 0, i32 2
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 5
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @tegra_sor_writel(%struct.tegra_sor* %144, i32 %145, i64 %152)
  %154 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %155 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %156 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %155, i32 0, i32 2
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 6
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @tegra_sor_readl(%struct.tegra_sor* %154, i64 %161)
  store i32 %162, i32* %16, align 4
  %163 = load i32, i32* @SOR_PLL2_SEQ_PLLCAPPD_ENFORCE, align 4
  %164 = xor i32 %163, -1
  %165 = load i32, i32* %16, align 4
  %166 = and i32 %165, %164
  store i32 %166, i32* %16, align 4
  %167 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %168 = load i32, i32* %16, align 4
  %169 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %170 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %169, i32 0, i32 2
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 6
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @tegra_sor_writel(%struct.tegra_sor* %167, i32 %168, i64 %175)
  %177 = call i32 @usleep_range(i32 200, i32 400)
  %178 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %179 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %180 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %179, i32 0, i32 2
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 6
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @tegra_sor_readl(%struct.tegra_sor* %178, i64 %185)
  store i32 %186, i32* %16, align 4
  %187 = load i32, i32* @SOR_PLL2_POWERDOWN_OVERRIDE, align 4
  %188 = xor i32 %187, -1
  %189 = load i32, i32* %16, align 4
  %190 = and i32 %189, %188
  store i32 %190, i32* %16, align 4
  %191 = load i32, i32* @SOR_PLL2_PORT_POWERDOWN, align 4
  %192 = xor i32 %191, -1
  %193 = load i32, i32* %16, align 4
  %194 = and i32 %193, %192
  store i32 %194, i32* %16, align 4
  %195 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %196 = load i32, i32* %16, align 4
  %197 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %198 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %197, i32 0, i32 2
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 6
  %203 = load i64, i64* %202, align 8
  %204 = call i32 @tegra_sor_writel(%struct.tegra_sor* %195, i32 %196, i64 %203)
  %205 = call i32 @usleep_range(i32 20, i32 100)
  %206 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %207 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %208 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %207, i32 0, i32 2
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = call i32 @tegra_sor_readl(%struct.tegra_sor* %206, i64 %213)
  store i32 %214, i32* %16, align 4
  %215 = load i32, i32* @SOR_DP_PADCTL_PD_TXD_3, align 4
  %216 = load i32, i32* @SOR_DP_PADCTL_PD_TXD_0, align 4
  %217 = or i32 %215, %216
  %218 = load i32, i32* @SOR_DP_PADCTL_PD_TXD_1, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* @SOR_DP_PADCTL_PD_TXD_2, align 4
  %221 = or i32 %219, %220
  %222 = load i32, i32* %16, align 4
  %223 = or i32 %222, %221
  store i32 %223, i32* %16, align 4
  %224 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %225 = load i32, i32* %16, align 4
  %226 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %227 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %226, i32 0, i32 2
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 1
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = call i32 @tegra_sor_writel(%struct.tegra_sor* %224, i32 %225, i64 %232)
  br label %234

234:                                              ; preds = %78, %243
  %235 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %236 = load i64, i64* @SOR_LANE_SEQ_CTL, align 8
  %237 = call i32 @tegra_sor_readl(%struct.tegra_sor* %235, i64 %236)
  store i32 %237, i32* %16, align 4
  %238 = load i32, i32* %16, align 4
  %239 = load i32, i32* @SOR_LANE_SEQ_CTL_STATE_BUSY, align 4
  %240 = and i32 %238, %239
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %234
  br label %245

243:                                              ; preds = %234
  %244 = call i32 @usleep_range(i32 250, i32 1000)
  br label %234

245:                                              ; preds = %242
  %246 = load i32, i32* @SOR_LANE_SEQ_CTL_TRIGGER, align 4
  %247 = load i32, i32* @SOR_LANE_SEQ_CTL_SEQUENCE_DOWN, align 4
  %248 = or i32 %246, %247
  %249 = load i32, i32* @SOR_LANE_SEQ_CTL_POWER_STATE_UP, align 4
  %250 = or i32 %248, %249
  %251 = call i32 @SOR_LANE_SEQ_CTL_DELAY(i32 5)
  %252 = or i32 %250, %251
  store i32 %252, i32* %16, align 4
  %253 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %254 = load i32, i32* %16, align 4
  %255 = load i64, i64* @SOR_LANE_SEQ_CTL, align 8
  %256 = call i32 @tegra_sor_writel(%struct.tegra_sor* %253, i32 %254, i64 %255)
  br label %257

257:                                              ; preds = %245, %266
  %258 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %259 = load i64, i64* @SOR_LANE_SEQ_CTL, align 8
  %260 = call i32 @tegra_sor_readl(%struct.tegra_sor* %258, i64 %259)
  store i32 %260, i32* %16, align 4
  %261 = load i32, i32* %16, align 4
  %262 = load i32, i32* @SOR_LANE_SEQ_CTL_TRIGGER, align 4
  %263 = and i32 %261, %262
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %257
  br label %268

266:                                              ; preds = %257
  %267 = call i32 @usleep_range(i32 250, i32 1000)
  br label %257

268:                                              ; preds = %265
  %269 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %270 = load i64, i64* @SOR_CLK_CNTRL, align 8
  %271 = call i32 @tegra_sor_readl(%struct.tegra_sor* %269, i64 %270)
  store i32 %271, i32* %16, align 4
  %272 = load i32, i32* @SOR_CLK_CNTRL_DP_LINK_SPEED_MASK, align 4
  %273 = xor i32 %272, -1
  %274 = load i32, i32* %16, align 4
  %275 = and i32 %274, %273
  store i32 %275, i32* %16, align 4
  %276 = load i32, i32* @SOR_CLK_CNTRL_DP_CLK_SEL_MASK, align 4
  %277 = xor i32 %276, -1
  %278 = load i32, i32* %16, align 4
  %279 = and i32 %278, %277
  store i32 %279, i32* %16, align 4
  %280 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %281 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = icmp slt i32 %282, 340000
  br i1 %283, label %284, label %289

284:                                              ; preds = %268
  %285 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %286 = load i32, i32* @SOR_CLK_CNTRL_DP_LINK_SPEED_G2_70, align 4
  %287 = load i32, i32* %16, align 4
  %288 = or i32 %287, %286
  store i32 %288, i32* %16, align 4
  br label %294

289:                                              ; preds = %268
  %290 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %291 = load i32, i32* @SOR_CLK_CNTRL_DP_LINK_SPEED_G5_40, align 4
  %292 = load i32, i32* %16, align 4
  %293 = or i32 %292, %291
  store i32 %293, i32* %16, align 4
  br label %294

294:                                              ; preds = %289, %284
  %295 = load i32, i32* @SOR_CLK_CNTRL_DP_CLK_SEL_SINGLE_PCLK, align 4
  %296 = load i32, i32* %16, align 4
  %297 = or i32 %296, %295
  store i32 %297, i32* %16, align 4
  %298 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %299 = load i32, i32* %16, align 4
  %300 = load i64, i64* @SOR_CLK_CNTRL, align 8
  %301 = call i32 @tegra_sor_writel(%struct.tegra_sor* %298, i32 %299, i64 %300)
  %302 = call i32 @usleep_range(i32 250, i32 1000)
  %303 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %304 = load i64, i64* @SOR_DP_LINKCTL0, align 8
  %305 = call i32 @tegra_sor_readl(%struct.tegra_sor* %303, i64 %304)
  store i32 %305, i32* %16, align 4
  %306 = load i32, i32* @SOR_DP_LINKCTL_LANE_COUNT_MASK, align 4
  %307 = xor i32 %306, -1
  %308 = load i32, i32* %16, align 4
  %309 = and i32 %308, %307
  store i32 %309, i32* %16, align 4
  %310 = call i32 @SOR_DP_LINKCTL_LANE_COUNT(i32 4)
  %311 = load i32, i32* %16, align 4
  %312 = or i32 %311, %310
  store i32 %312, i32* %16, align 4
  %313 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %314 = load i32, i32* %16, align 4
  %315 = load i64, i64* @SOR_DP_LINKCTL0, align 8
  %316 = call i32 @tegra_sor_writel(%struct.tegra_sor* %313, i32 %314, i64 %315)
  %317 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %318 = load i64, i64* @SOR_DP_SPARE0, align 8
  %319 = call i32 @tegra_sor_readl(%struct.tegra_sor* %317, i64 %318)
  store i32 %319, i32* %16, align 4
  %320 = load i32, i32* @SOR_DP_SPARE_DISP_VIDEO_PREAMBLE, align 4
  %321 = xor i32 %320, -1
  %322 = load i32, i32* %16, align 4
  %323 = and i32 %322, %321
  store i32 %323, i32* %16, align 4
  %324 = load i32, i32* @SOR_DP_SPARE_PANEL_INTERNAL, align 4
  %325 = xor i32 %324, -1
  %326 = load i32, i32* %16, align 4
  %327 = and i32 %326, %325
  store i32 %327, i32* %16, align 4
  %328 = load i32, i32* @SOR_DP_SPARE_SEQ_ENABLE, align 4
  %329 = xor i32 %328, -1
  %330 = load i32, i32* %16, align 4
  %331 = and i32 %330, %329
  store i32 %331, i32* %16, align 4
  %332 = load i32, i32* @SOR_DP_SPARE_MACRO_SOR_CLK, align 4
  %333 = xor i32 %332, -1
  %334 = load i32, i32* %16, align 4
  %335 = and i32 %334, %333
  store i32 %335, i32* %16, align 4
  %336 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %337 = load i32, i32* %16, align 4
  %338 = load i64, i64* @SOR_DP_SPARE0, align 8
  %339 = call i32 @tegra_sor_writel(%struct.tegra_sor* %336, i32 %337, i64 %338)
  %340 = call i32 @SOR_SEQ_CTL_PU_PC(i32 0)
  %341 = call i32 @SOR_SEQ_CTL_PU_PC_ALT(i32 0)
  %342 = or i32 %340, %341
  %343 = call i32 @SOR_SEQ_CTL_PD_PC(i32 8)
  %344 = or i32 %342, %343
  %345 = call i32 @SOR_SEQ_CTL_PD_PC_ALT(i32 8)
  %346 = or i32 %344, %345
  store i32 %346, i32* %16, align 4
  %347 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %348 = load i32, i32* %16, align 4
  %349 = load i64, i64* @SOR_SEQ_CTL, align 8
  %350 = call i32 @tegra_sor_writel(%struct.tegra_sor* %347, i32 %348, i64 %349)
  %351 = load i32, i32* @SOR_SEQ_INST_DRIVE_PWM_OUT_LO, align 4
  %352 = load i32, i32* @SOR_SEQ_INST_HALT, align 4
  %353 = or i32 %351, %352
  %354 = load i32, i32* @SOR_SEQ_INST_WAIT_VSYNC, align 4
  %355 = or i32 %353, %354
  %356 = call i32 @SOR_SEQ_INST_WAIT(i32 1)
  %357 = or i32 %355, %356
  store i32 %357, i32* %16, align 4
  %358 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %359 = load i32, i32* %16, align 4
  %360 = call i64 @SOR_SEQ_INST(i32 0)
  %361 = call i32 @tegra_sor_writel(%struct.tegra_sor* %358, i32 %359, i64 %360)
  %362 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %363 = load i32, i32* %16, align 4
  %364 = call i64 @SOR_SEQ_INST(i32 8)
  %365 = call i32 @tegra_sor_writel(%struct.tegra_sor* %362, i32 %363, i64 %364)
  %366 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %367 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %366, i32 0, i32 2
  %368 = load %struct.TYPE_10__*, %struct.TYPE_10__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %382, label %372

372:                                              ; preds = %294
  %373 = load i32, i32* %14, align 4
  %374 = call i32 @SOR_REFCLK_DIV_INT(i32 %373)
  %375 = load i32, i32* %14, align 4
  %376 = call i32 @SOR_REFCLK_DIV_FRAC(i32 %375)
  %377 = or i32 %374, %376
  store i32 %377, i32* %16, align 4
  %378 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %379 = load i32, i32* %16, align 4
  %380 = load i64, i64* @SOR_REFCLK, align 8
  %381 = call i32 @tegra_sor_writel(%struct.tegra_sor* %378, i32 %379, i64 %380)
  br label %382

382:                                              ; preds = %372, %294
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %383

383:                                              ; preds = %402, %382
  %384 = load i32, i32* %15, align 4
  %385 = icmp ult i32 %384, 5
  br i1 %385, label %386, label %405

386:                                              ; preds = %383
  %387 = load i32, i32* %15, align 4
  %388 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %389 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %388, i32 0, i32 6
  %390 = load i32*, i32** %389, align 8
  %391 = load i32, i32* %15, align 4
  %392 = zext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %390, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = call i32 @SOR_XBAR_CTRL_LINK0_XSEL(i32 %387, i32 %394)
  %396 = load i32, i32* %15, align 4
  %397 = load i32, i32* %15, align 4
  %398 = call i32 @SOR_XBAR_CTRL_LINK1_XSEL(i32 %396, i32 %397)
  %399 = or i32 %395, %398
  %400 = load i32, i32* %16, align 4
  %401 = or i32 %400, %399
  store i32 %401, i32* %16, align 4
  br label %402

402:                                              ; preds = %386
  %403 = load i32, i32* %15, align 4
  %404 = add i32 %403, 1
  store i32 %404, i32* %15, align 4
  br label %383

405:                                              ; preds = %383
  %406 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %407 = load i64, i64* @SOR_XBAR_POL, align 8
  %408 = call i32 @tegra_sor_writel(%struct.tegra_sor* %406, i32 0, i64 %407)
  %409 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %410 = load i32, i32* %16, align 4
  %411 = load i64, i64* @SOR_XBAR_CTRL, align 8
  %412 = call i32 @tegra_sor_writel(%struct.tegra_sor* %409, i32 %410, i64 %411)
  %413 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %414 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %413, i32 0, i32 3
  %415 = load i32, i32* %414, align 8
  %416 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %417 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %416, i32 0, i32 4
  %418 = load i32, i32* %417, align 4
  %419 = call i32 @clk_set_parent(i32 %415, i32 %418)
  store i32 %419, i32* %17, align 4
  %420 = load i32, i32* %17, align 4
  %421 = icmp slt i32 %420, 0
  br i1 %421, label %422, label %428

422:                                              ; preds = %405
  %423 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %424 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %423, i32 0, i32 1
  %425 = load i32, i32* %424, align 4
  %426 = load i32, i32* %17, align 4
  %427 = call i32 @dev_err(i32 %425, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %426)
  br label %1188

428:                                              ; preds = %405
  %429 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %430 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %431 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %430, i32 0, i32 5
  %432 = load i32, i32* %431, align 8
  %433 = call i32 @tegra_sor_set_parent_clock(%struct.tegra_sor* %429, i32 %432)
  store i32 %433, i32* %17, align 4
  %434 = load i32, i32* %17, align 4
  %435 = icmp slt i32 %434, 0
  br i1 %435, label %436, label %442

436:                                              ; preds = %428
  %437 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %438 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %437, i32 0, i32 1
  %439 = load i32, i32* %438, align 4
  %440 = load i32, i32* %17, align 4
  %441 = call i32 @dev_err(i32 %439, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %440)
  br label %1188

442:                                              ; preds = %428
  %443 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %444 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %443, i32 0, i32 4
  %445 = load i32, i32* %444, align 4
  %446 = call i32 @clk_get_rate(i32 %445)
  %447 = sext i32 %446 to i64
  store i64 %447, i64* %12, align 8
  %448 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %449 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 4
  %451 = icmp sge i32 %450, 340000
  br i1 %451, label %452, label %455

452:                                              ; preds = %442
  %453 = load i64, i64* %12, align 8
  %454 = udiv i64 %453, 2
  store i64 %454, i64* %12, align 8
  br label %455

455:                                              ; preds = %452, %442
  %456 = load i64, i64* %12, align 8
  %457 = load i64, i64* %13, align 8
  %458 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i64 %456, i64 %457)
  %459 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %460 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %459, i32 0, i32 3
  %461 = load i32, i32* %460, align 8
  %462 = load i64, i64* %12, align 8
  %463 = call i32 @clk_set_rate(i32 %461, i64 %462)
  %464 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %465 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %464, i32 0, i32 2
  %466 = load %struct.TYPE_10__*, %struct.TYPE_10__** %465, align 8
  %467 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 8
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %488, label %470

470:                                              ; preds = %455
  %471 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %472 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %471, i32 0, i32 1
  %473 = load i64, i64* %472, align 8
  %474 = call i32 @SOR_INPUT_CONTROL_HDMI_SRC_SELECT(i64 %473)
  store i32 %474, i32* %16, align 4
  %475 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %476 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 4
  %478 = icmp slt i32 %477, 75000
  br i1 %478, label %479, label %483

479:                                              ; preds = %470
  %480 = load i32, i32* @SOR_INPUT_CONTROL_ARM_VIDEO_RANGE_LIMITED, align 4
  %481 = load i32, i32* %16, align 4
  %482 = or i32 %481, %480
  store i32 %482, i32* %16, align 4
  br label %483

483:                                              ; preds = %479, %470
  %484 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %485 = load i32, i32* %16, align 4
  %486 = load i64, i64* @SOR_INPUT_CONTROL, align 8
  %487 = call i32 @tegra_sor_writel(%struct.tegra_sor* %484, i32 %485, i64 %486)
  br label %488

488:                                              ; preds = %483, %455
  %489 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %490 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %489, i32 0, i32 1
  %491 = load i32, i32* %490, align 4
  %492 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %493 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %492, i32 0, i32 2
  %494 = load i32, i32* %493, align 4
  %495 = sub nsw i32 %491, %494
  %496 = load i32, i32* @SOR_REKEY, align 4
  %497 = sub nsw i32 %495, %496
  %498 = sub nsw i32 %497, 18
  %499 = sdiv i32 %498, 32
  store i32 %499, i32* %6, align 4
  %500 = load i32, i32* @SOR_HDMI_CTRL_ENABLE, align 4
  %501 = load i32, i32* %6, align 4
  %502 = call i32 @SOR_HDMI_CTRL_MAX_AC_PACKET(i32 %501)
  %503 = or i32 %500, %502
  %504 = load i32, i32* @SOR_HDMI_CTRL_AUDIO_LAYOUT, align 4
  %505 = or i32 %503, %504
  %506 = load i32, i32* @SOR_REKEY, align 4
  %507 = call i32 @SOR_HDMI_CTRL_REKEY(i32 %506)
  %508 = or i32 %505, %507
  store i32 %508, i32* %16, align 4
  %509 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %510 = load i32, i32* %16, align 4
  %511 = load i64, i64* @SOR_HDMI_CTRL, align 8
  %512 = call i32 @tegra_sor_writel(%struct.tegra_sor* %509, i32 %510, i64 %511)
  %513 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %514 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %513, i32 0, i32 0
  %515 = load %struct.TYPE_11__*, %struct.TYPE_11__** %514, align 8
  %516 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %515, i32 0, i32 0
  %517 = load i64, i64* %516, align 8
  %518 = icmp ne i64 %517, 0
  br i1 %518, label %569, label %519

519:                                              ; preds = %488
  %520 = load i32, i32* %4, align 4
  %521 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %522 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %521, i32 0, i32 3
  %523 = load i32, i32* %522, align 4
  %524 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %525 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %524, i32 0, i32 4
  %526 = load i32, i32* %525, align 4
  %527 = sub i32 %523, %526
  %528 = add i32 %520, %527
  %529 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %530 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %529, i32 0, i32 1
  %531 = load i32, i32* %530, align 4
  %532 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %533 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %532, i32 0, i32 3
  %534 = load i32, i32* %533, align 4
  %535 = sub i32 %531, %534
  %536 = add i32 %528, %535
  %537 = sub i32 %536, 10
  store i32 %537, i32* %5, align 4
  %538 = load i32, i32* @PULSE_LAST_END_A, align 4
  %539 = load i32, i32* @PULSE_QUAL_VACTIVE, align 4
  %540 = or i32 %538, %539
  %541 = load i32, i32* @PULSE_POLARITY_HIGH, align 4
  %542 = or i32 %540, %541
  %543 = load i32, i32* @PULSE_MODE_NORMAL, align 4
  %544 = or i32 %542, %543
  store i32 %544, i32* %16, align 4
  %545 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %546 = load i32, i32* %16, align 4
  %547 = load i32, i32* @DC_DISP_H_PULSE2_CONTROL, align 4
  %548 = call i32 @tegra_dc_writel(%struct.tegra_dc* %545, i32 %546, i32 %547)
  %549 = load i32, i32* %5, align 4
  %550 = add i32 %549, 8
  %551 = call i32 @PULSE_END(i32 %550)
  %552 = load i32, i32* %5, align 4
  %553 = call i32 @PULSE_START(i32 %552)
  %554 = or i32 %551, %553
  store i32 %554, i32* %16, align 4
  %555 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %556 = load i32, i32* %16, align 4
  %557 = load i32, i32* @DC_DISP_H_PULSE2_POSITION_A, align 4
  %558 = call i32 @tegra_dc_writel(%struct.tegra_dc* %555, i32 %556, i32 %557)
  %559 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %560 = load i32, i32* @DC_DISP_DISP_SIGNAL_OPTIONS0, align 4
  %561 = call i32 @tegra_dc_readl(%struct.tegra_dc* %559, i32 %560)
  store i32 %561, i32* %16, align 4
  %562 = load i32, i32* @H_PULSE2_ENABLE, align 4
  %563 = load i32, i32* %16, align 4
  %564 = or i32 %563, %562
  store i32 %564, i32* %16, align 4
  %565 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %566 = load i32, i32* %16, align 4
  %567 = load i32, i32* @DC_DISP_DISP_SIGNAL_OPTIONS0, align 4
  %568 = call i32 @tegra_dc_writel(%struct.tegra_dc* %565, i32 %566, i32 %567)
  br label %569

569:                                              ; preds = %519, %488
  %570 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %571 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %572 = call i32 @tegra_sor_hdmi_setup_avi_infoframe(%struct.tegra_sor* %570, %struct.drm_display_mode* %571)
  store i32 %572, i32* %17, align 4
  %573 = load i32, i32* %17, align 4
  %574 = icmp slt i32 %573, 0
  br i1 %574, label %575, label %581

575:                                              ; preds = %569
  %576 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %577 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %576, i32 0, i32 1
  %578 = load i32, i32* %577, align 4
  %579 = load i32, i32* %17, align 4
  %580 = call i32 @dev_err(i32 %578, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %579)
  br label %581

581:                                              ; preds = %575, %569
  %582 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %583 = call i32 @tegra_sor_hdmi_disable_audio_infoframe(%struct.tegra_sor* %582)
  %584 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %585 = load i64, i64* @SOR_STATE1, align 8
  %586 = call i32 @tegra_sor_readl(%struct.tegra_sor* %584, i64 %585)
  store i32 %586, i32* %16, align 4
  %587 = load i32, i32* @SOR_STATE_ASY_PROTOCOL_MASK, align 4
  %588 = xor i32 %587, -1
  %589 = load i32, i32* %16, align 4
  %590 = and i32 %589, %588
  store i32 %590, i32* %16, align 4
  %591 = load i32, i32* @SOR_STATE_ASY_PROTOCOL_SINGLE_TMDS_A, align 4
  %592 = load i32, i32* %16, align 4
  %593 = or i32 %592, %591
  store i32 %593, i32* %16, align 4
  %594 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %595 = load i32, i32* %16, align 4
  %596 = load i64, i64* @SOR_STATE1, align 8
  %597 = call i32 @tegra_sor_writel(%struct.tegra_sor* %594, i32 %595, i64 %596)
  %598 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %599 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %600 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %599, i32 0, i32 2
  %601 = load %struct.TYPE_10__*, %struct.TYPE_10__** %600, align 8
  %602 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %601, i32 0, i32 1
  %603 = load %struct.TYPE_9__*, %struct.TYPE_9__** %602, align 8
  %604 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %603, i32 0, i32 1
  %605 = load i64, i64* %604, align 8
  %606 = call i32 @tegra_sor_readl(%struct.tegra_sor* %598, i64 %605)
  store i32 %606, i32* %16, align 4
  %607 = load i32, i32* @SOR_DP_PADCTL_PAD_CAL_PD, align 4
  %608 = xor i32 %607, -1
  %609 = load i32, i32* %16, align 4
  %610 = and i32 %609, %608
  store i32 %610, i32* %16, align 4
  %611 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %612 = load i32, i32* %16, align 4
  %613 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %614 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %613, i32 0, i32 2
  %615 = load %struct.TYPE_10__*, %struct.TYPE_10__** %614, align 8
  %616 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %615, i32 0, i32 1
  %617 = load %struct.TYPE_9__*, %struct.TYPE_9__** %616, align 8
  %618 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %617, i32 0, i32 1
  %619 = load i64, i64* %618, align 8
  %620 = call i32 @tegra_sor_writel(%struct.tegra_sor* %611, i32 %612, i64 %619)
  %621 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %622 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %623 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %622, i32 0, i32 0
  %624 = load i32, i32* %623, align 4
  %625 = mul nsw i32 %624, 1000
  %626 = call %struct.tegra_sor_hdmi_settings* @tegra_sor_hdmi_find_settings(%struct.tegra_sor* %621, i32 %625)
  store %struct.tegra_sor_hdmi_settings* %626, %struct.tegra_sor_hdmi_settings** %8, align 8
  %627 = load %struct.tegra_sor_hdmi_settings*, %struct.tegra_sor_hdmi_settings** %8, align 8
  %628 = icmp ne %struct.tegra_sor_hdmi_settings* %627, null
  br i1 %628, label %638, label %629

629:                                              ; preds = %581
  %630 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %631 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %630, i32 0, i32 1
  %632 = load i32, i32* %631, align 4
  %633 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %634 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %633, i32 0, i32 0
  %635 = load i32, i32* %634, align 4
  %636 = mul nsw i32 %635, 1000
  %637 = call i32 @dev_err(i32 %632, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %636)
  br label %1188

638:                                              ; preds = %581
  %639 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %640 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %641 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %640, i32 0, i32 2
  %642 = load %struct.TYPE_10__*, %struct.TYPE_10__** %641, align 8
  %643 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %642, i32 0, i32 1
  %644 = load %struct.TYPE_9__*, %struct.TYPE_9__** %643, align 8
  %645 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %644, i32 0, i32 5
  %646 = load i64, i64* %645, align 8
  %647 = call i32 @tegra_sor_readl(%struct.tegra_sor* %639, i64 %646)
  store i32 %647, i32* %16, align 4
  %648 = load i32, i32* @SOR_PLL0_ICHPMP_MASK, align 4
  %649 = xor i32 %648, -1
  %650 = load i32, i32* %16, align 4
  %651 = and i32 %650, %649
  store i32 %651, i32* %16, align 4
  %652 = load i32, i32* @SOR_PLL0_FILTER_MASK, align 4
  %653 = xor i32 %652, -1
  %654 = load i32, i32* %16, align 4
  %655 = and i32 %654, %653
  store i32 %655, i32* %16, align 4
  %656 = load i32, i32* @SOR_PLL0_VCOCAP_MASK, align 4
  %657 = xor i32 %656, -1
  %658 = load i32, i32* %16, align 4
  %659 = and i32 %658, %657
  store i32 %659, i32* %16, align 4
  %660 = load %struct.tegra_sor_hdmi_settings*, %struct.tegra_sor_hdmi_settings** %8, align 8
  %661 = getelementptr inbounds %struct.tegra_sor_hdmi_settings, %struct.tegra_sor_hdmi_settings* %660, i32 0, i32 12
  %662 = load i32, i32* %661, align 8
  %663 = call i32 @SOR_PLL0_ICHPMP(i32 %662)
  %664 = load i32, i32* %16, align 4
  %665 = or i32 %664, %663
  store i32 %665, i32* %16, align 4
  %666 = load %struct.tegra_sor_hdmi_settings*, %struct.tegra_sor_hdmi_settings** %8, align 8
  %667 = getelementptr inbounds %struct.tegra_sor_hdmi_settings, %struct.tegra_sor_hdmi_settings* %666, i32 0, i32 11
  %668 = load i32, i32* %667, align 4
  %669 = call i32 @SOR_PLL0_FILTER(i32 %668)
  %670 = load i32, i32* %16, align 4
  %671 = or i32 %670, %669
  store i32 %671, i32* %16, align 4
  %672 = load %struct.tegra_sor_hdmi_settings*, %struct.tegra_sor_hdmi_settings** %8, align 8
  %673 = getelementptr inbounds %struct.tegra_sor_hdmi_settings, %struct.tegra_sor_hdmi_settings* %672, i32 0, i32 10
  %674 = load i32, i32* %673, align 8
  %675 = call i32 @SOR_PLL0_VCOCAP(i32 %674)
  %676 = load i32, i32* %16, align 4
  %677 = or i32 %676, %675
  store i32 %677, i32* %16, align 4
  %678 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %679 = load i32, i32* %16, align 4
  %680 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %681 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %680, i32 0, i32 2
  %682 = load %struct.TYPE_10__*, %struct.TYPE_10__** %681, align 8
  %683 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %682, i32 0, i32 1
  %684 = load %struct.TYPE_9__*, %struct.TYPE_9__** %683, align 8
  %685 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %684, i32 0, i32 5
  %686 = load i64, i64* %685, align 8
  %687 = call i32 @tegra_sor_writel(%struct.tegra_sor* %678, i32 %679, i64 %686)
  %688 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %689 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %690 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %689, i32 0, i32 2
  %691 = load %struct.TYPE_10__*, %struct.TYPE_10__** %690, align 8
  %692 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %691, i32 0, i32 1
  %693 = load %struct.TYPE_9__*, %struct.TYPE_9__** %692, align 8
  %694 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %693, i32 0, i32 4
  %695 = load i64, i64* %694, align 8
  %696 = call i32 @tegra_sor_readl(%struct.tegra_sor* %688, i64 %695)
  store i32 %696, i32* %16, align 4
  %697 = load i32, i32* @SOR_PLL1_LOADADJ_MASK, align 4
  %698 = xor i32 %697, -1
  %699 = load i32, i32* %16, align 4
  %700 = and i32 %699, %698
  store i32 %700, i32* %16, align 4
  %701 = load i32, i32* @SOR_PLL1_TMDS_TERMADJ_MASK, align 4
  %702 = xor i32 %701, -1
  %703 = load i32, i32* %16, align 4
  %704 = and i32 %703, %702
  store i32 %704, i32* %16, align 4
  %705 = load %struct.tegra_sor_hdmi_settings*, %struct.tegra_sor_hdmi_settings** %8, align 8
  %706 = getelementptr inbounds %struct.tegra_sor_hdmi_settings, %struct.tegra_sor_hdmi_settings* %705, i32 0, i32 9
  %707 = load i32, i32* %706, align 4
  %708 = call i32 @SOR_PLL1_LOADADJ(i32 %707)
  %709 = load i32, i32* %16, align 4
  %710 = or i32 %709, %708
  store i32 %710, i32* %16, align 4
  %711 = load %struct.tegra_sor_hdmi_settings*, %struct.tegra_sor_hdmi_settings** %8, align 8
  %712 = getelementptr inbounds %struct.tegra_sor_hdmi_settings, %struct.tegra_sor_hdmi_settings* %711, i32 0, i32 8
  %713 = load i32, i32* %712, align 8
  %714 = call i32 @SOR_PLL1_TMDS_TERMADJ(i32 %713)
  %715 = load i32, i32* %16, align 4
  %716 = or i32 %715, %714
  store i32 %716, i32* %16, align 4
  %717 = load i32, i32* @SOR_PLL1_TMDS_TERM, align 4
  %718 = load i32, i32* %16, align 4
  %719 = or i32 %718, %717
  store i32 %719, i32* %16, align 4
  %720 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %721 = load i32, i32* %16, align 4
  %722 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %723 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %722, i32 0, i32 2
  %724 = load %struct.TYPE_10__*, %struct.TYPE_10__** %723, align 8
  %725 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %724, i32 0, i32 1
  %726 = load %struct.TYPE_9__*, %struct.TYPE_9__** %725, align 8
  %727 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %726, i32 0, i32 4
  %728 = load i64, i64* %727, align 8
  %729 = call i32 @tegra_sor_writel(%struct.tegra_sor* %720, i32 %721, i64 %728)
  %730 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %731 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %732 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %731, i32 0, i32 2
  %733 = load %struct.TYPE_10__*, %struct.TYPE_10__** %732, align 8
  %734 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %733, i32 0, i32 1
  %735 = load %struct.TYPE_9__*, %struct.TYPE_9__** %734, align 8
  %736 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %735, i32 0, i32 3
  %737 = load i64, i64* %736, align 8
  %738 = call i32 @tegra_sor_readl(%struct.tegra_sor* %730, i64 %737)
  store i32 %738, i32* %16, align 4
  %739 = load i32, i32* @SOR_PLL3_BG_TEMP_COEF_MASK, align 4
  %740 = xor i32 %739, -1
  %741 = load i32, i32* %16, align 4
  %742 = and i32 %741, %740
  store i32 %742, i32* %16, align 4
  %743 = load i32, i32* @SOR_PLL3_BG_VREF_LEVEL_MASK, align 4
  %744 = xor i32 %743, -1
  %745 = load i32, i32* %16, align 4
  %746 = and i32 %745, %744
  store i32 %746, i32* %16, align 4
  %747 = load i32, i32* @SOR_PLL3_AVDD10_LEVEL_MASK, align 4
  %748 = xor i32 %747, -1
  %749 = load i32, i32* %16, align 4
  %750 = and i32 %749, %748
  store i32 %750, i32* %16, align 4
  %751 = load i32, i32* @SOR_PLL3_AVDD14_LEVEL_MASK, align 4
  %752 = xor i32 %751, -1
  %753 = load i32, i32* %16, align 4
  %754 = and i32 %753, %752
  store i32 %754, i32* %16, align 4
  %755 = load %struct.tegra_sor_hdmi_settings*, %struct.tegra_sor_hdmi_settings** %8, align 8
  %756 = getelementptr inbounds %struct.tegra_sor_hdmi_settings, %struct.tegra_sor_hdmi_settings* %755, i32 0, i32 7
  %757 = load i32, i32* %756, align 4
  %758 = call i32 @SOR_PLL3_BG_TEMP_COEF(i32 %757)
  %759 = load i32, i32* %16, align 4
  %760 = or i32 %759, %758
  store i32 %760, i32* %16, align 4
  %761 = load %struct.tegra_sor_hdmi_settings*, %struct.tegra_sor_hdmi_settings** %8, align 8
  %762 = getelementptr inbounds %struct.tegra_sor_hdmi_settings, %struct.tegra_sor_hdmi_settings* %761, i32 0, i32 6
  %763 = load i32, i32* %762, align 8
  %764 = call i32 @SOR_PLL3_BG_VREF_LEVEL(i32 %763)
  %765 = load i32, i32* %16, align 4
  %766 = or i32 %765, %764
  store i32 %766, i32* %16, align 4
  %767 = load %struct.tegra_sor_hdmi_settings*, %struct.tegra_sor_hdmi_settings** %8, align 8
  %768 = getelementptr inbounds %struct.tegra_sor_hdmi_settings, %struct.tegra_sor_hdmi_settings* %767, i32 0, i32 5
  %769 = load i32, i32* %768, align 4
  %770 = call i32 @SOR_PLL3_AVDD10_LEVEL(i32 %769)
  %771 = load i32, i32* %16, align 4
  %772 = or i32 %771, %770
  store i32 %772, i32* %16, align 4
  %773 = load %struct.tegra_sor_hdmi_settings*, %struct.tegra_sor_hdmi_settings** %8, align 8
  %774 = getelementptr inbounds %struct.tegra_sor_hdmi_settings, %struct.tegra_sor_hdmi_settings* %773, i32 0, i32 4
  %775 = load i32, i32* %774, align 8
  %776 = call i32 @SOR_PLL3_AVDD14_LEVEL(i32 %775)
  %777 = load i32, i32* %16, align 4
  %778 = or i32 %777, %776
  store i32 %778, i32* %16, align 4
  %779 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %780 = load i32, i32* %16, align 4
  %781 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %782 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %781, i32 0, i32 2
  %783 = load %struct.TYPE_10__*, %struct.TYPE_10__** %782, align 8
  %784 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %783, i32 0, i32 1
  %785 = load %struct.TYPE_9__*, %struct.TYPE_9__** %784, align 8
  %786 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %785, i32 0, i32 3
  %787 = load i64, i64* %786, align 8
  %788 = call i32 @tegra_sor_writel(%struct.tegra_sor* %779, i32 %780, i64 %787)
  %789 = load %struct.tegra_sor_hdmi_settings*, %struct.tegra_sor_hdmi_settings** %8, align 8
  %790 = getelementptr inbounds %struct.tegra_sor_hdmi_settings, %struct.tegra_sor_hdmi_settings* %789, i32 0, i32 0
  %791 = load i32*, i32** %790, align 8
  %792 = getelementptr inbounds i32, i32* %791, i64 3
  %793 = load i32, i32* %792, align 4
  %794 = shl i32 %793, 24
  %795 = load %struct.tegra_sor_hdmi_settings*, %struct.tegra_sor_hdmi_settings** %8, align 8
  %796 = getelementptr inbounds %struct.tegra_sor_hdmi_settings, %struct.tegra_sor_hdmi_settings* %795, i32 0, i32 0
  %797 = load i32*, i32** %796, align 8
  %798 = getelementptr inbounds i32, i32* %797, i64 2
  %799 = load i32, i32* %798, align 4
  %800 = shl i32 %799, 16
  %801 = or i32 %794, %800
  %802 = load %struct.tegra_sor_hdmi_settings*, %struct.tegra_sor_hdmi_settings** %8, align 8
  %803 = getelementptr inbounds %struct.tegra_sor_hdmi_settings, %struct.tegra_sor_hdmi_settings* %802, i32 0, i32 0
  %804 = load i32*, i32** %803, align 8
  %805 = getelementptr inbounds i32, i32* %804, i64 1
  %806 = load i32, i32* %805, align 4
  %807 = shl i32 %806, 8
  %808 = or i32 %801, %807
  %809 = load %struct.tegra_sor_hdmi_settings*, %struct.tegra_sor_hdmi_settings** %8, align 8
  %810 = getelementptr inbounds %struct.tegra_sor_hdmi_settings, %struct.tegra_sor_hdmi_settings* %809, i32 0, i32 0
  %811 = load i32*, i32** %810, align 8
  %812 = getelementptr inbounds i32, i32* %811, i64 0
  %813 = load i32, i32* %812, align 4
  %814 = shl i32 %813, 0
  %815 = or i32 %808, %814
  store i32 %815, i32* %16, align 4
  %816 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %817 = load i32, i32* %16, align 4
  %818 = load i64, i64* @SOR_LANE_DRIVE_CURRENT0, align 8
  %819 = call i32 @tegra_sor_writel(%struct.tegra_sor* %816, i32 %817, i64 %818)
  %820 = load %struct.tegra_sor_hdmi_settings*, %struct.tegra_sor_hdmi_settings** %8, align 8
  %821 = getelementptr inbounds %struct.tegra_sor_hdmi_settings, %struct.tegra_sor_hdmi_settings* %820, i32 0, i32 1
  %822 = load i32*, i32** %821, align 8
  %823 = getelementptr inbounds i32, i32* %822, i64 3
  %824 = load i32, i32* %823, align 4
  %825 = shl i32 %824, 24
  %826 = load %struct.tegra_sor_hdmi_settings*, %struct.tegra_sor_hdmi_settings** %8, align 8
  %827 = getelementptr inbounds %struct.tegra_sor_hdmi_settings, %struct.tegra_sor_hdmi_settings* %826, i32 0, i32 1
  %828 = load i32*, i32** %827, align 8
  %829 = getelementptr inbounds i32, i32* %828, i64 2
  %830 = load i32, i32* %829, align 4
  %831 = shl i32 %830, 16
  %832 = or i32 %825, %831
  %833 = load %struct.tegra_sor_hdmi_settings*, %struct.tegra_sor_hdmi_settings** %8, align 8
  %834 = getelementptr inbounds %struct.tegra_sor_hdmi_settings, %struct.tegra_sor_hdmi_settings* %833, i32 0, i32 1
  %835 = load i32*, i32** %834, align 8
  %836 = getelementptr inbounds i32, i32* %835, i64 1
  %837 = load i32, i32* %836, align 4
  %838 = shl i32 %837, 8
  %839 = or i32 %832, %838
  %840 = load %struct.tegra_sor_hdmi_settings*, %struct.tegra_sor_hdmi_settings** %8, align 8
  %841 = getelementptr inbounds %struct.tegra_sor_hdmi_settings, %struct.tegra_sor_hdmi_settings* %840, i32 0, i32 1
  %842 = load i32*, i32** %841, align 8
  %843 = getelementptr inbounds i32, i32* %842, i64 0
  %844 = load i32, i32* %843, align 4
  %845 = shl i32 %844, 0
  %846 = or i32 %839, %845
  store i32 %846, i32* %16, align 4
  %847 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %848 = load i32, i32* %16, align 4
  %849 = load i64, i64* @SOR_LANE_PREEMPHASIS0, align 8
  %850 = call i32 @tegra_sor_writel(%struct.tegra_sor* %847, i32 %848, i64 %849)
  %851 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %852 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %853 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %852, i32 0, i32 2
  %854 = load %struct.TYPE_10__*, %struct.TYPE_10__** %853, align 8
  %855 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %854, i32 0, i32 1
  %856 = load %struct.TYPE_9__*, %struct.TYPE_9__** %855, align 8
  %857 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %856, i32 0, i32 1
  %858 = load i64, i64* %857, align 8
  %859 = call i32 @tegra_sor_readl(%struct.tegra_sor* %851, i64 %858)
  store i32 %859, i32* %16, align 4
  %860 = load i32, i32* @SOR_DP_PADCTL_TX_PU_MASK, align 4
  %861 = xor i32 %860, -1
  %862 = load i32, i32* %16, align 4
  %863 = and i32 %862, %861
  store i32 %863, i32* %16, align 4
  %864 = load i32, i32* @SOR_DP_PADCTL_TX_PU_ENABLE, align 4
  %865 = load i32, i32* %16, align 4
  %866 = or i32 %865, %864
  store i32 %866, i32* %16, align 4
  %867 = load %struct.tegra_sor_hdmi_settings*, %struct.tegra_sor_hdmi_settings** %8, align 8
  %868 = getelementptr inbounds %struct.tegra_sor_hdmi_settings, %struct.tegra_sor_hdmi_settings* %867, i32 0, i32 3
  %869 = load i32, i32* %868, align 4
  %870 = call i32 @SOR_DP_PADCTL_TX_PU(i32 %869)
  %871 = load i32, i32* %16, align 4
  %872 = or i32 %871, %870
  store i32 %872, i32* %16, align 4
  %873 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %874 = load i32, i32* %16, align 4
  %875 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %876 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %875, i32 0, i32 2
  %877 = load %struct.TYPE_10__*, %struct.TYPE_10__** %876, align 8
  %878 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %877, i32 0, i32 1
  %879 = load %struct.TYPE_9__*, %struct.TYPE_9__** %878, align 8
  %880 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %879, i32 0, i32 1
  %881 = load i64, i64* %880, align 8
  %882 = call i32 @tegra_sor_writel(%struct.tegra_sor* %873, i32 %874, i64 %881)
  %883 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %884 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %885 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %884, i32 0, i32 2
  %886 = load %struct.TYPE_10__*, %struct.TYPE_10__** %885, align 8
  %887 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %886, i32 0, i32 1
  %888 = load %struct.TYPE_9__*, %struct.TYPE_9__** %887, align 8
  %889 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %888, i32 0, i32 2
  %890 = load i64, i64* %889, align 8
  %891 = call i32 @tegra_sor_readl(%struct.tegra_sor* %883, i64 %890)
  store i32 %891, i32* %16, align 4
  %892 = load i32, i32* @SOR_DP_PADCTL_SPAREPLL_MASK, align 4
  %893 = xor i32 %892, -1
  %894 = load i32, i32* %16, align 4
  %895 = and i32 %894, %893
  store i32 %895, i32* %16, align 4
  %896 = load %struct.tegra_sor_hdmi_settings*, %struct.tegra_sor_hdmi_settings** %8, align 8
  %897 = getelementptr inbounds %struct.tegra_sor_hdmi_settings, %struct.tegra_sor_hdmi_settings* %896, i32 0, i32 2
  %898 = load i32, i32* %897, align 8
  %899 = call i32 @SOR_DP_PADCTL_SPAREPLL(i32 %898)
  %900 = load i32, i32* %16, align 4
  %901 = or i32 %900, %899
  store i32 %901, i32* %16, align 4
  %902 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %903 = load i32, i32* %16, align 4
  %904 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %905 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %904, i32 0, i32 2
  %906 = load %struct.TYPE_10__*, %struct.TYPE_10__** %905, align 8
  %907 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %906, i32 0, i32 1
  %908 = load %struct.TYPE_9__*, %struct.TYPE_9__** %907, align 8
  %909 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %908, i32 0, i32 2
  %910 = load i64, i64* %909, align 8
  %911 = call i32 @tegra_sor_writel(%struct.tegra_sor* %902, i32 %903, i64 %910)
  %912 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %913 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %914 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %913, i32 0, i32 2
  %915 = load %struct.TYPE_10__*, %struct.TYPE_10__** %914, align 8
  %916 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %915, i32 0, i32 1
  %917 = load %struct.TYPE_9__*, %struct.TYPE_9__** %916, align 8
  %918 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %917, i32 0, i32 1
  %919 = load i64, i64* %918, align 8
  %920 = call i32 @tegra_sor_readl(%struct.tegra_sor* %912, i64 %919)
  store i32 %920, i32* %16, align 4
  %921 = load i32, i32* @SOR_DP_PADCTL_PAD_CAL_PD, align 4
  %922 = load i32, i32* %16, align 4
  %923 = or i32 %922, %921
  store i32 %923, i32* %16, align 4
  %924 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %925 = load i32, i32* %16, align 4
  %926 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %927 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %926, i32 0, i32 2
  %928 = load %struct.TYPE_10__*, %struct.TYPE_10__** %927, align 8
  %929 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %928, i32 0, i32 1
  %930 = load %struct.TYPE_9__*, %struct.TYPE_9__** %929, align 8
  %931 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %930, i32 0, i32 1
  %932 = load i64, i64* %931, align 8
  %933 = call i32 @tegra_sor_writel(%struct.tegra_sor* %924, i32 %925, i64 %932)
  %934 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %935 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %934, i32 0, i32 0
  %936 = load %struct.TYPE_11__*, %struct.TYPE_11__** %935, align 8
  %937 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %936, i32 0, i32 0
  %938 = load i64, i64* %937, align 8
  %939 = icmp ne i64 %938, 0
  br i1 %939, label %946, label %940

940:                                              ; preds = %638
  %941 = call i32 @VSYNC_H_POSITION(i32 1)
  store i32 %941, i32* %16, align 4
  %942 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %943 = load i32, i32* %16, align 4
  %944 = load i32, i32* @DC_DISP_DISP_TIMING_OPTIONS, align 4
  %945 = call i32 @tegra_dc_writel(%struct.tegra_dc* %942, i32 %943, i32 %944)
  br label %946

946:                                              ; preds = %940, %638
  %947 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %948 = load i32, i32* @DC_DISP_DISP_COLOR_CONTROL, align 4
  %949 = call i32 @tegra_dc_readl(%struct.tegra_dc* %947, i32 %948)
  store i32 %949, i32* %16, align 4
  %950 = load i32, i32* @DITHER_CONTROL_MASK, align 4
  %951 = xor i32 %950, -1
  %952 = load i32, i32* %16, align 4
  %953 = and i32 %952, %951
  store i32 %953, i32* %16, align 4
  %954 = load i32, i32* @BASE_COLOR_SIZE_MASK, align 4
  %955 = xor i32 %954, -1
  %956 = load i32, i32* %16, align 4
  %957 = and i32 %956, %955
  store i32 %957, i32* %16, align 4
  %958 = load %struct.tegra_sor_state*, %struct.tegra_sor_state** %10, align 8
  %959 = getelementptr inbounds %struct.tegra_sor_state, %struct.tegra_sor_state* %958, i32 0, i32 0
  %960 = load i32, i32* %959, align 4
  switch i32 %960, label %977 [
    i32 6, label %961
    i32 8, label %965
    i32 10, label %969
    i32 12, label %973
  ]

961:                                              ; preds = %946
  %962 = load i32, i32* @BASE_COLOR_SIZE_666, align 4
  %963 = load i32, i32* %16, align 4
  %964 = or i32 %963, %962
  store i32 %964, i32* %16, align 4
  br label %985

965:                                              ; preds = %946
  %966 = load i32, i32* @BASE_COLOR_SIZE_888, align 4
  %967 = load i32, i32* %16, align 4
  %968 = or i32 %967, %966
  store i32 %968, i32* %16, align 4
  br label %985

969:                                              ; preds = %946
  %970 = load i32, i32* @BASE_COLOR_SIZE_101010, align 4
  %971 = load i32, i32* %16, align 4
  %972 = or i32 %971, %970
  store i32 %972, i32* %16, align 4
  br label %985

973:                                              ; preds = %946
  %974 = load i32, i32* @BASE_COLOR_SIZE_121212, align 4
  %975 = load i32, i32* %16, align 4
  %976 = or i32 %975, %974
  store i32 %976, i32* %16, align 4
  br label %985

977:                                              ; preds = %946
  %978 = load %struct.tegra_sor_state*, %struct.tegra_sor_state** %10, align 8
  %979 = getelementptr inbounds %struct.tegra_sor_state, %struct.tegra_sor_state* %978, i32 0, i32 0
  %980 = load i32, i32* %979, align 4
  %981 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %980)
  %982 = load i32, i32* @BASE_COLOR_SIZE_888, align 4
  %983 = load i32, i32* %16, align 4
  %984 = or i32 %983, %982
  store i32 %984, i32* %16, align 4
  br label %985

985:                                              ; preds = %977, %973, %969, %965, %961
  %986 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %987 = load i32, i32* %16, align 4
  %988 = load i32, i32* @DC_DISP_DISP_COLOR_CONTROL, align 4
  %989 = call i32 @tegra_dc_writel(%struct.tegra_dc* %986, i32 %987, i32 %988)
  %990 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %991 = load i64, i64* @SOR_STATE1, align 8
  %992 = call i32 @tegra_sor_readl(%struct.tegra_sor* %990, i64 %991)
  store i32 %992, i32* %16, align 4
  %993 = load i32, i32* @SOR_STATE_ASY_OWNER_MASK, align 4
  %994 = xor i32 %993, -1
  %995 = load i32, i32* %16, align 4
  %996 = and i32 %995, %994
  store i32 %996, i32* %16, align 4
  %997 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %998 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %997, i32 0, i32 1
  %999 = load i64, i64* %998, align 8
  %1000 = add nsw i64 1, %999
  %1001 = call i32 @SOR_STATE_ASY_OWNER(i64 %1000)
  %1002 = load i32, i32* %16, align 4
  %1003 = or i32 %1002, %1001
  store i32 %1003, i32* %16, align 4
  %1004 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %1005 = load i32, i32* %16, align 4
  %1006 = load i64, i64* @SOR_STATE1, align 8
  %1007 = call i32 @tegra_sor_writel(%struct.tegra_sor* %1004, i32 %1005, i64 %1006)
  %1008 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %1009 = call i32 @tegra_sor_power_up(%struct.tegra_sor* %1008, i32 250)
  store i32 %1009, i32* %17, align 4
  %1010 = load i32, i32* %17, align 4
  %1011 = icmp slt i32 %1010, 0
  br i1 %1011, label %1012, label %1018

1012:                                             ; preds = %985
  %1013 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %1014 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %1013, i32 0, i32 1
  %1015 = load i32, i32* %1014, align 4
  %1016 = load i32, i32* %17, align 4
  %1017 = call i32 @dev_err(i32 %1015, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %1016)
  br label %1018

1018:                                             ; preds = %1012, %985
  %1019 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %1020 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %1021 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %1020, i32 0, i32 2
  %1022 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1021, align 8
  %1023 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1022, i32 0, i32 1
  %1024 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1023, align 8
  %1025 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1024, i32 0, i32 0
  %1026 = load i64, i64* %1025, align 8
  %1027 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %1028 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %1027, i32 0, i32 1
  %1029 = load i64, i64* %1028, align 8
  %1030 = add nsw i64 %1026, %1029
  %1031 = call i32 @tegra_sor_readl(%struct.tegra_sor* %1019, i64 %1030)
  store i32 %1031, i32* %16, align 4
  %1032 = load i32, i32* @SOR_HEAD_STATE_RANGECOMPRESS_MASK, align 4
  %1033 = xor i32 %1032, -1
  %1034 = load i32, i32* %16, align 4
  %1035 = and i32 %1034, %1033
  store i32 %1035, i32* %16, align 4
  %1036 = load i32, i32* @SOR_HEAD_STATE_DYNRANGE_MASK, align 4
  %1037 = xor i32 %1036, -1
  %1038 = load i32, i32* %16, align 4
  %1039 = and i32 %1038, %1037
  store i32 %1039, i32* %16, align 4
  %1040 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %1041 = load i32, i32* %16, align 4
  %1042 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %1043 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %1042, i32 0, i32 2
  %1044 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1043, align 8
  %1045 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1044, i32 0, i32 1
  %1046 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1045, align 8
  %1047 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1046, i32 0, i32 0
  %1048 = load i64, i64* %1047, align 8
  %1049 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %1050 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %1049, i32 0, i32 1
  %1051 = load i64, i64* %1050, align 8
  %1052 = add nsw i64 %1048, %1051
  %1053 = call i32 @tegra_sor_writel(%struct.tegra_sor* %1040, i32 %1041, i64 %1052)
  %1054 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %1055 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %1056 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %1055, i32 0, i32 2
  %1057 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1056, align 8
  %1058 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1057, i32 0, i32 1
  %1059 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1058, align 8
  %1060 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1059, i32 0, i32 0
  %1061 = load i64, i64* %1060, align 8
  %1062 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %1063 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %1062, i32 0, i32 1
  %1064 = load i64, i64* %1063, align 8
  %1065 = add nsw i64 %1061, %1064
  %1066 = call i32 @tegra_sor_readl(%struct.tegra_sor* %1054, i64 %1065)
  store i32 %1066, i32* %16, align 4
  %1067 = load i32, i32* @SOR_HEAD_STATE_COLORSPACE_MASK, align 4
  %1068 = xor i32 %1067, -1
  %1069 = load i32, i32* %16, align 4
  %1070 = and i32 %1069, %1068
  store i32 %1070, i32* %16, align 4
  %1071 = load i32, i32* @SOR_HEAD_STATE_COLORSPACE_RGB, align 4
  %1072 = load i32, i32* %16, align 4
  %1073 = or i32 %1072, %1071
  store i32 %1073, i32* %16, align 4
  %1074 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %1075 = load i32, i32* %16, align 4
  %1076 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %1077 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %1076, i32 0, i32 2
  %1078 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1077, align 8
  %1079 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1078, i32 0, i32 1
  %1080 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1079, align 8
  %1081 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1080, i32 0, i32 0
  %1082 = load i64, i64* %1081, align 8
  %1083 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %1084 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %1083, i32 0, i32 1
  %1085 = load i64, i64* %1084, align 8
  %1086 = add nsw i64 %1082, %1085
  %1087 = call i32 @tegra_sor_writel(%struct.tegra_sor* %1074, i32 %1075, i64 %1086)
  %1088 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %1089 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %1090 = load %struct.tegra_sor_state*, %struct.tegra_sor_state** %10, align 8
  %1091 = call i32 @tegra_sor_mode_set(%struct.tegra_sor* %1088, %struct.drm_display_mode* %1089, %struct.tegra_sor_state* %1090)
  %1092 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %1093 = call i32 @tegra_sor_update(%struct.tegra_sor* %1092)
  %1094 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %1095 = load i64, i64* @SOR_DP_SPARE0, align 8
  %1096 = call i32 @tegra_sor_readl(%struct.tegra_sor* %1094, i64 %1095)
  store i32 %1096, i32* %16, align 4
  %1097 = load i32, i32* @SOR_DP_SPARE_DISP_VIDEO_PREAMBLE, align 4
  %1098 = xor i32 %1097, -1
  %1099 = load i32, i32* %16, align 4
  %1100 = and i32 %1099, %1098
  store i32 %1100, i32* %16, align 4
  %1101 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %1102 = load i32, i32* %16, align 4
  %1103 = load i64, i64* @SOR_DP_SPARE0, align 8
  %1104 = call i32 @tegra_sor_writel(%struct.tegra_sor* %1101, i32 %1102, i64 %1103)
  %1105 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %1106 = call i32 @tegra_sor_attach(%struct.tegra_sor* %1105)
  store i32 %1106, i32* %17, align 4
  %1107 = load i32, i32* %17, align 4
  %1108 = icmp slt i32 %1107, 0
  br i1 %1108, label %1109, label %1115

1109:                                             ; preds = %1018
  %1110 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %1111 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %1110, i32 0, i32 1
  %1112 = load i32, i32* %1111, align 4
  %1113 = load i32, i32* %17, align 4
  %1114 = call i32 @dev_err(i32 %1112, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i32 %1113)
  br label %1115

1115:                                             ; preds = %1109, %1018
  %1116 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %1117 = load i32, i32* @DC_DISP_DISP_WIN_OPTIONS, align 4
  %1118 = call i32 @tegra_dc_readl(%struct.tegra_dc* %1116, i32 %1117)
  store i32 %1118, i32* %16, align 4
  %1119 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %1120 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %1119, i32 0, i32 2
  %1121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1120, align 8
  %1122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1121, i32 0, i32 0
  %1123 = load i32, i32* %1122, align 8
  %1124 = icmp ne i32 %1123, 0
  br i1 %1124, label %1131, label %1125

1125:                                             ; preds = %1115
  %1126 = call i32 @SOR_ENABLE(i32 1)
  %1127 = load i32, i32* @SOR1_TIMING_CYA, align 4
  %1128 = or i32 %1126, %1127
  %1129 = load i32, i32* %16, align 4
  %1130 = or i32 %1129, %1128
  store i32 %1130, i32* %16, align 4
  br label %1138

1131:                                             ; preds = %1115
  %1132 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %1133 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %1132, i32 0, i32 0
  %1134 = load i32, i32* %1133, align 8
  %1135 = call i32 @SOR_ENABLE(i32 %1134)
  %1136 = load i32, i32* %16, align 4
  %1137 = or i32 %1136, %1135
  store i32 %1137, i32* %16, align 4
  br label %1138

1138:                                             ; preds = %1131, %1125
  %1139 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %1140 = load i32, i32* %16, align 4
  %1141 = load i32, i32* @DC_DISP_DISP_WIN_OPTIONS, align 4
  %1142 = call i32 @tegra_dc_writel(%struct.tegra_dc* %1139, i32 %1140, i32 %1141)
  %1143 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %1144 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %1143, i32 0, i32 0
  %1145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1144, align 8
  %1146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1145, i32 0, i32 0
  %1147 = load i64, i64* %1146, align 8
  %1148 = icmp ne i64 %1147, 0
  br i1 %1148, label %1149, label %1170

1149:                                             ; preds = %1138
  %1150 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %1151 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %1152 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %1151, i32 0, i32 0
  %1153 = load i32, i32* %1152, align 8
  %1154 = call i32 @DC_DISP_CORE_SOR_SET_CONTROL(i32 %1153)
  %1155 = call i32 @tegra_dc_readl(%struct.tegra_dc* %1150, i32 %1154)
  store i32 %1155, i32* %16, align 4
  %1156 = load i32, i32* @PROTOCOL_MASK, align 4
  %1157 = xor i32 %1156, -1
  %1158 = load i32, i32* %16, align 4
  %1159 = and i32 %1158, %1157
  store i32 %1159, i32* %16, align 4
  %1160 = load i32, i32* @PROTOCOL_SINGLE_TMDS_A, align 4
  %1161 = load i32, i32* %16, align 4
  %1162 = or i32 %1161, %1160
  store i32 %1162, i32* %16, align 4
  %1163 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %1164 = load i32, i32* %16, align 4
  %1165 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %1166 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %1165, i32 0, i32 0
  %1167 = load i32, i32* %1166, align 8
  %1168 = call i32 @DC_DISP_CORE_SOR_SET_CONTROL(i32 %1167)
  %1169 = call i32 @tegra_dc_writel(%struct.tegra_dc* %1163, i32 %1164, i32 %1168)
  br label %1170

1170:                                             ; preds = %1149, %1138
  %1171 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %1172 = call i32 @tegra_dc_commit(%struct.tegra_dc* %1171)
  %1173 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %1174 = call i32 @tegra_sor_wakeup(%struct.tegra_sor* %1173)
  store i32 %1174, i32* %17, align 4
  %1175 = load i32, i32* %17, align 4
  %1176 = icmp slt i32 %1175, 0
  br i1 %1176, label %1177, label %1183

1177:                                             ; preds = %1170
  %1178 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %1179 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %1178, i32 0, i32 1
  %1180 = load i32, i32* %1179, align 4
  %1181 = load i32, i32* %17, align 4
  %1182 = call i32 @dev_err(i32 %1180, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %1181)
  br label %1183

1183:                                             ; preds = %1177, %1170
  %1184 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %1185 = call i32 @tegra_sor_hdmi_scdc_start(%struct.tegra_sor* %1184)
  %1186 = load %struct.tegra_sor*, %struct.tegra_sor** %9, align 8
  %1187 = call i32 @tegra_sor_audio_prepare(%struct.tegra_sor* %1186)
  br label %1188

1188:                                             ; preds = %1183, %629, %436, %422, %53
  ret void
}

declare dso_local %struct.tegra_output* @encoder_to_output(%struct.drm_encoder*) #1

declare dso_local %struct.tegra_dc* @to_tegra_dc(%struct.TYPE_12__*) #1

declare dso_local %struct.tegra_sor* @to_sor(%struct.tegra_output*) #1

declare dso_local %struct.tegra_sor_state* @to_sor_state(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @tegra_sor_set_parent_clock(%struct.tegra_sor*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @tegra_io_pad_power_enable(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @tegra_sor_readl(%struct.tegra_sor*, i64) #1

declare dso_local i32 @tegra_sor_writel(%struct.tegra_sor*, i32, i64) #1

declare dso_local i32 @SOR_LANE_SEQ_CTL_DELAY(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @SOR_DP_LINKCTL_LANE_COUNT(i32) #1

declare dso_local i32 @SOR_SEQ_CTL_PU_PC(i32) #1

declare dso_local i32 @SOR_SEQ_CTL_PU_PC_ALT(i32) #1

declare dso_local i32 @SOR_SEQ_CTL_PD_PC(i32) #1

declare dso_local i32 @SOR_SEQ_CTL_PD_PC_ALT(i32) #1

declare dso_local i32 @SOR_SEQ_INST_WAIT(i32) #1

declare dso_local i64 @SOR_SEQ_INST(i32) #1

declare dso_local i32 @SOR_REFCLK_DIV_INT(i32) #1

declare dso_local i32 @SOR_REFCLK_DIV_FRAC(i32) #1

declare dso_local i32 @SOR_XBAR_CTRL_LINK0_XSEL(i32, i32) #1

declare dso_local i32 @SOR_XBAR_CTRL_LINK1_XSEL(i32, i32) #1

declare dso_local i32 @clk_set_parent(i32, i32) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i32 @SOR_INPUT_CONTROL_HDMI_SRC_SELECT(i64) #1

declare dso_local i32 @SOR_HDMI_CTRL_MAX_AC_PACKET(i32) #1

declare dso_local i32 @SOR_HDMI_CTRL_REKEY(i32) #1

declare dso_local i32 @tegra_dc_writel(%struct.tegra_dc*, i32, i32) #1

declare dso_local i32 @PULSE_END(i32) #1

declare dso_local i32 @PULSE_START(i32) #1

declare dso_local i32 @tegra_dc_readl(%struct.tegra_dc*, i32) #1

declare dso_local i32 @tegra_sor_hdmi_setup_avi_infoframe(%struct.tegra_sor*, %struct.drm_display_mode*) #1

declare dso_local i32 @tegra_sor_hdmi_disable_audio_infoframe(%struct.tegra_sor*) #1

declare dso_local %struct.tegra_sor_hdmi_settings* @tegra_sor_hdmi_find_settings(%struct.tegra_sor*, i32) #1

declare dso_local i32 @SOR_PLL0_ICHPMP(i32) #1

declare dso_local i32 @SOR_PLL0_FILTER(i32) #1

declare dso_local i32 @SOR_PLL0_VCOCAP(i32) #1

declare dso_local i32 @SOR_PLL1_LOADADJ(i32) #1

declare dso_local i32 @SOR_PLL1_TMDS_TERMADJ(i32) #1

declare dso_local i32 @SOR_PLL3_BG_TEMP_COEF(i32) #1

declare dso_local i32 @SOR_PLL3_BG_VREF_LEVEL(i32) #1

declare dso_local i32 @SOR_PLL3_AVDD10_LEVEL(i32) #1

declare dso_local i32 @SOR_PLL3_AVDD14_LEVEL(i32) #1

declare dso_local i32 @SOR_DP_PADCTL_TX_PU(i32) #1

declare dso_local i32 @SOR_DP_PADCTL_SPAREPLL(i32) #1

declare dso_local i32 @VSYNC_H_POSITION(i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @SOR_STATE_ASY_OWNER(i64) #1

declare dso_local i32 @tegra_sor_power_up(%struct.tegra_sor*, i32) #1

declare dso_local i32 @tegra_sor_mode_set(%struct.tegra_sor*, %struct.drm_display_mode*, %struct.tegra_sor_state*) #1

declare dso_local i32 @tegra_sor_update(%struct.tegra_sor*) #1

declare dso_local i32 @tegra_sor_attach(%struct.tegra_sor*) #1

declare dso_local i32 @SOR_ENABLE(i32) #1

declare dso_local i32 @DC_DISP_CORE_SOR_SET_CONTROL(i32) #1

declare dso_local i32 @tegra_dc_commit(%struct.tegra_dc*) #1

declare dso_local i32 @tegra_sor_wakeup(%struct.tegra_sor*) #1

declare dso_local i32 @tegra_sor_hdmi_scdc_start(%struct.tegra_sor*) #1

declare dso_local i32 @tegra_sor_audio_prepare(%struct.tegra_sor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
