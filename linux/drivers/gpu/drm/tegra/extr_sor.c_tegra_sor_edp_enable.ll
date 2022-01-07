; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_edp_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_edp_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }
%struct.tegra_output = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.tegra_dc = type { i32 }
%struct.tegra_sor = type { i32, i32, %struct.TYPE_9__*, i32, i32*, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.tegra_sor_config = type { i32 }
%struct.tegra_sor_state = type { i32 }
%struct.drm_dp_link = type { i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"failed to enable DP: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to probe eDP link: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"failed to set safe parent clock: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"failed to compute configuration: %d\0A\00", align 1
@SOR_CLK_CNTRL = common dso_local global i32 0, align 4
@SOR_CLK_CNTRL_DP_CLK_SEL_MASK = common dso_local global i32 0, align 4
@SOR_CLK_CNTRL_DP_CLK_SEL_SINGLE_DPCLK = common dso_local global i32 0, align 4
@SOR_PLL2_BANDGAP_POWERDOWN = common dso_local global i32 0, align 4
@SOR_PLL3_PLL_VDD_MODE_3V3 = common dso_local global i32 0, align 4
@SOR_PLL0_VCOCAP_RST = common dso_local global i32 0, align 4
@SOR_PLL0_PLLREG_LEVEL_V45 = common dso_local global i32 0, align 4
@SOR_PLL0_RESISTOR_EXT = common dso_local global i32 0, align 4
@SOR_PLL2_SEQ_PLLCAPPD = common dso_local global i32 0, align 4
@SOR_PLL2_SEQ_PLLCAPPD_ENFORCE = common dso_local global i32 0, align 4
@SOR_PLL2_LVDS_ENABLE = common dso_local global i32 0, align 4
@SOR_PLL1_TERM_COMPOUT = common dso_local global i32 0, align 4
@SOR_PLL1_TMDS_TERM = common dso_local global i32 0, align 4
@SOR_PLL2_POWERDOWN_OVERRIDE = common dso_local global i32 0, align 4
@SOR_PLL2_PORT_POWERDOWN = common dso_local global i32 0, align 4
@SOR_CLK_CNTRL_DP_LINK_SPEED_MASK = common dso_local global i32 0, align 4
@SOR_CLK_CNTRL_DP_LINK_SPEED_G1_62 = common dso_local global i32 0, align 4
@SOR_PLL0_VCOPD = common dso_local global i32 0, align 4
@SOR_PLL0_PWR = common dso_local global i32 0, align 4
@SOR_DP_PADCTL_PAD_CAL_PD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"failed to power on I/O pad: %d\0A\00", align 1
@SOR_XBAR_POL = common dso_local global i32 0, align 4
@SOR_XBAR_CTRL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"failed to set parent clock: %d\0A\00", align 1
@SOR_DP_PADCTL_PD_TXD_3 = common dso_local global i32 0, align 4
@SOR_DP_PADCTL_PD_TXD_2 = common dso_local global i32 0, align 4
@SOR_DP_PADCTL_PD_TXD_1 = common dso_local global i32 0, align 4
@SOR_DP_PADCTL_PD_TXD_0 = common dso_local global i32 0, align 4
@SOR_DP_LINKCTL0 = common dso_local global i32 0, align 4
@SOR_DP_LINKCTL_LANE_COUNT_MASK = common dso_local global i32 0, align 4
@SOR_LANE_SEQ_CTL_TRIGGER = common dso_local global i32 0, align 4
@SOR_LANE_SEQ_CTL_SEQUENCE_DOWN = common dso_local global i32 0, align 4
@SOR_LANE_SEQ_CTL_POWER_STATE_UP = common dso_local global i32 0, align 4
@SOR_LANE_SEQ_CTL = common dso_local global i32 0, align 4
@SOR_DP_LINKCTL_ENABLE = common dso_local global i32 0, align 4
@SOR_DP_LINKCTL_ENHANCED_FRAME = common dso_local global i32 0, align 4
@SOR_DP_TPG_CHANNEL_CODING = common dso_local global i64 0, align 8
@SOR_DP_TPG_SCRAMBLER_GALIOS = common dso_local global i64 0, align 8
@SOR_DP_TPG_PATTERN_NONE = common dso_local global i64 0, align 8
@SOR_DP_TPG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"failed to power up eDP link: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"failed to configure eDP link: %d\0A\00", align 1
@DP_LINK_CAP_ENHANCED_FRAMING = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"DP fast link training failed: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"fast link training succeeded\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"failed to power up SOR: %d\0A\00", align 1
@SOR_CSTM_LVDS = common dso_local global i32 0, align 4
@SOR_CSTM_LINK_ACT_A = common dso_local global i32 0, align 4
@SOR_CSTM_LINK_ACT_B = common dso_local global i32 0, align 4
@SOR_CSTM_UPPER = common dso_local global i32 0, align 4
@SOR_CSTM = common dso_local global i32 0, align 4
@SOR_STATE1 = common dso_local global i32 0, align 4
@SOR_STATE_ASY_PROTOCOL_MASK = common dso_local global i32 0, align 4
@SOR_STATE_ASY_PROTOCOL_DP_A = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"failed to setup PWM: %d\0A\00", align 1
@DC_DISP_DISP_WIN_OPTIONS = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [26 x i8] c"failed to attach SOR: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"failed to enable DC: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @tegra_sor_edp_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_sor_edp_enable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca %struct.tegra_output*, align 8
  %5 = alloca %struct.tegra_dc*, align 8
  %6 = alloca %struct.tegra_sor*, align 8
  %7 = alloca %struct.tegra_sor_config, align 4
  %8 = alloca %struct.tegra_sor_state*, align 8
  %9 = alloca %struct.drm_dp_link, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %17 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %18 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store %struct.drm_display_mode* %22, %struct.drm_display_mode** %3, align 8
  %23 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %24 = call %struct.tegra_output* @encoder_to_output(%struct.drm_encoder* %23)
  store %struct.tegra_output* %24, %struct.tegra_output** %4, align 8
  %25 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %26 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = call %struct.tegra_dc* @to_tegra_dc(%struct.TYPE_10__* %27)
  store %struct.tegra_dc* %28, %struct.tegra_dc** %5, align 8
  %29 = load %struct.tegra_output*, %struct.tegra_output** %4, align 8
  %30 = call %struct.tegra_sor* @to_sor(%struct.tegra_output* %29)
  store %struct.tegra_sor* %30, %struct.tegra_sor** %6, align 8
  store i32 0, i32* %13, align 4
  %31 = load %struct.tegra_output*, %struct.tegra_output** %4, align 8
  %32 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.tegra_sor_state* @to_sor_state(i32 %34)
  store %struct.tegra_sor_state* %35, %struct.tegra_sor_state** %8, align 8
  %36 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %37 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @pm_runtime_get_sync(i32 %38)
  %40 = load %struct.tegra_output*, %struct.tegra_output** %4, align 8
  %41 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %1
  %45 = load %struct.tegra_output*, %struct.tegra_output** %4, align 8
  %46 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @drm_panel_prepare(i64 %47)
  br label %49

49:                                               ; preds = %44, %1
  %50 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %51 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @drm_dp_aux_enable(i32 %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %58 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %56, %49
  %63 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %64 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @drm_dp_link_probe(i32 %65, %struct.drm_dp_link* %9)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %71 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  br label %911

75:                                               ; preds = %62
  %76 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %77 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %78 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @tegra_sor_set_parent_clock(%struct.tegra_sor* %76, i32 %79)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %75
  %84 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %85 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @dev_err(i32 %86, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %83, %75
  %90 = call i32 @memset(%struct.tegra_sor_config* %7, i32 0, i32 4)
  %91 = load %struct.tegra_sor_state*, %struct.tegra_sor_state** %8, align 8
  %92 = getelementptr inbounds %struct.tegra_sor_state, %struct.tegra_sor_state* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %93, 3
  %95 = getelementptr inbounds %struct.tegra_sor_config, %struct.tegra_sor_config* %7, i32 0, i32 0
  store i32 %94, i32* %95, align 4
  %96 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %97 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %98 = call i32 @tegra_sor_compute_config(%struct.tegra_sor* %96, %struct.drm_display_mode* %97, %struct.tegra_sor_config* %7, %struct.drm_dp_link* %9)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %89
  %102 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %103 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @dev_err(i32 %104, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %101, %89
  %108 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %109 = load i32, i32* @SOR_CLK_CNTRL, align 4
  %110 = call i32 @tegra_sor_readl(%struct.tegra_sor* %108, i32 %109)
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* @SOR_CLK_CNTRL_DP_CLK_SEL_MASK, align 4
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %14, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* @SOR_CLK_CNTRL_DP_CLK_SEL_SINGLE_DPCLK, align 4
  %116 = load i32, i32* %14, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %14, align 4
  %118 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* @SOR_CLK_CNTRL, align 4
  %121 = call i32 @tegra_sor_writel(%struct.tegra_sor* %118, i32 %119, i32 %120)
  %122 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %123 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %124 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %123, i32 0, i32 2
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @tegra_sor_readl(%struct.tegra_sor* %122, i32 %129)
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* @SOR_PLL2_BANDGAP_POWERDOWN, align 4
  %132 = xor i32 %131, -1
  %133 = load i32, i32* %14, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %14, align 4
  %135 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %136 = load i32, i32* %14, align 4
  %137 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %138 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %137, i32 0, i32 2
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @tegra_sor_writel(%struct.tegra_sor* %135, i32 %136, i32 %143)
  %145 = call i32 @usleep_range(i32 20, i32 100)
  %146 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %147 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %148 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %147, i32 0, i32 2
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @tegra_sor_readl(%struct.tegra_sor* %146, i32 %153)
  store i32 %154, i32* %14, align 4
  %155 = load i32, i32* @SOR_PLL3_PLL_VDD_MODE_3V3, align 4
  %156 = load i32, i32* %14, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %14, align 4
  %158 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %159 = load i32, i32* %14, align 4
  %160 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %161 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %160, i32 0, i32 2
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @tegra_sor_writel(%struct.tegra_sor* %158, i32 %159, i32 %166)
  %168 = call i32 @SOR_PLL0_ICHPMP(i32 15)
  %169 = load i32, i32* @SOR_PLL0_VCOCAP_RST, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* @SOR_PLL0_PLLREG_LEVEL_V45, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* @SOR_PLL0_RESISTOR_EXT, align 4
  %174 = or i32 %172, %173
  store i32 %174, i32* %14, align 4
  %175 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %176 = load i32, i32* %14, align 4
  %177 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %178 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %177, i32 0, i32 2
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @tegra_sor_writel(%struct.tegra_sor* %175, i32 %176, i32 %183)
  %185 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %186 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %187 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %186, i32 0, i32 2
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @tegra_sor_readl(%struct.tegra_sor* %185, i32 %192)
  store i32 %193, i32* %14, align 4
  %194 = load i32, i32* @SOR_PLL2_SEQ_PLLCAPPD, align 4
  %195 = load i32, i32* %14, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %14, align 4
  %197 = load i32, i32* @SOR_PLL2_SEQ_PLLCAPPD_ENFORCE, align 4
  %198 = xor i32 %197, -1
  %199 = load i32, i32* %14, align 4
  %200 = and i32 %199, %198
  store i32 %200, i32* %14, align 4
  %201 = load i32, i32* @SOR_PLL2_LVDS_ENABLE, align 4
  %202 = load i32, i32* %14, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %14, align 4
  %204 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %205 = load i32, i32* %14, align 4
  %206 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %207 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %206, i32 0, i32 2
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @tegra_sor_writel(%struct.tegra_sor* %204, i32 %205, i32 %212)
  %214 = load i32, i32* @SOR_PLL1_TERM_COMPOUT, align 4
  %215 = load i32, i32* @SOR_PLL1_TMDS_TERM, align 4
  %216 = or i32 %214, %215
  store i32 %216, i32* %14, align 4
  %217 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %218 = load i32, i32* %14, align 4
  %219 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %220 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %219, i32 0, i32 2
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @tegra_sor_writel(%struct.tegra_sor* %217, i32 %218, i32 %225)
  br label %227

227:                                              ; preds = %107, %242
  %228 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %229 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %230 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %229, i32 0, i32 2
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @tegra_sor_readl(%struct.tegra_sor* %228, i32 %235)
  store i32 %236, i32* %14, align 4
  %237 = load i32, i32* %14, align 4
  %238 = load i32, i32* @SOR_PLL2_SEQ_PLLCAPPD_ENFORCE, align 4
  %239 = and i32 %237, %238
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %227
  br label %244

242:                                              ; preds = %227
  %243 = call i32 @usleep_range(i32 250, i32 1000)
  br label %227

244:                                              ; preds = %241
  %245 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %246 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %247 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %246, i32 0, i32 2
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @tegra_sor_readl(%struct.tegra_sor* %245, i32 %252)
  store i32 %253, i32* %14, align 4
  %254 = load i32, i32* @SOR_PLL2_POWERDOWN_OVERRIDE, align 4
  %255 = xor i32 %254, -1
  %256 = load i32, i32* %14, align 4
  %257 = and i32 %256, %255
  store i32 %257, i32* %14, align 4
  %258 = load i32, i32* @SOR_PLL2_PORT_POWERDOWN, align 4
  %259 = xor i32 %258, -1
  %260 = load i32, i32* %14, align 4
  %261 = and i32 %260, %259
  store i32 %261, i32* %14, align 4
  %262 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %263 = load i32, i32* %14, align 4
  %264 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %265 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %264, i32 0, i32 2
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 0
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @tegra_sor_writel(%struct.tegra_sor* %262, i32 %263, i32 %270)
  %272 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %273 = load i32, i32* @SOR_CLK_CNTRL, align 4
  %274 = call i32 @tegra_sor_readl(%struct.tegra_sor* %272, i32 %273)
  store i32 %274, i32* %14, align 4
  %275 = load i32, i32* @SOR_CLK_CNTRL_DP_LINK_SPEED_MASK, align 4
  %276 = xor i32 %275, -1
  %277 = load i32, i32* %14, align 4
  %278 = and i32 %277, %276
  store i32 %278, i32* %14, align 4
  %279 = load i32, i32* @SOR_CLK_CNTRL_DP_LINK_SPEED_G1_62, align 4
  %280 = load i32, i32* %14, align 4
  %281 = or i32 %280, %279
  store i32 %281, i32* %14, align 4
  %282 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %283 = load i32, i32* %14, align 4
  %284 = load i32, i32* @SOR_CLK_CNTRL, align 4
  %285 = call i32 @tegra_sor_writel(%struct.tegra_sor* %282, i32 %283, i32 %284)
  %286 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %287 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %288 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %287, i32 0, i32 2
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 0
  %291 = load %struct.TYPE_8__*, %struct.TYPE_8__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @tegra_sor_readl(%struct.tegra_sor* %286, i32 %293)
  store i32 %294, i32* %14, align 4
  %295 = load i32, i32* @SOR_PLL2_SEQ_PLLCAPPD_ENFORCE, align 4
  %296 = load i32, i32* @SOR_PLL2_PORT_POWERDOWN, align 4
  %297 = or i32 %295, %296
  %298 = load i32, i32* @SOR_PLL2_BANDGAP_POWERDOWN, align 4
  %299 = or i32 %297, %298
  %300 = load i32, i32* %14, align 4
  %301 = or i32 %300, %299
  store i32 %301, i32* %14, align 4
  %302 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %303 = load i32, i32* %14, align 4
  %304 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %305 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %304, i32 0, i32 2
  %306 = load %struct.TYPE_9__*, %struct.TYPE_9__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 0
  %308 = load %struct.TYPE_8__*, %struct.TYPE_8__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @tegra_sor_writel(%struct.tegra_sor* %302, i32 %303, i32 %310)
  %312 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %313 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %314 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %313, i32 0, i32 2
  %315 = load %struct.TYPE_9__*, %struct.TYPE_9__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %315, i32 0, i32 0
  %317 = load %struct.TYPE_8__*, %struct.TYPE_8__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 4
  %320 = call i32 @tegra_sor_readl(%struct.tegra_sor* %312, i32 %319)
  store i32 %320, i32* %14, align 4
  %321 = load i32, i32* @SOR_PLL0_VCOPD, align 4
  %322 = load i32, i32* @SOR_PLL0_PWR, align 4
  %323 = or i32 %321, %322
  %324 = load i32, i32* %14, align 4
  %325 = or i32 %324, %323
  store i32 %325, i32* %14, align 4
  %326 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %327 = load i32, i32* %14, align 4
  %328 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %329 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %328, i32 0, i32 2
  %330 = load %struct.TYPE_9__*, %struct.TYPE_9__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %330, i32 0, i32 0
  %332 = load %struct.TYPE_8__*, %struct.TYPE_8__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @tegra_sor_writel(%struct.tegra_sor* %326, i32 %327, i32 %334)
  %336 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %337 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %338 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %337, i32 0, i32 2
  %339 = load %struct.TYPE_9__*, %struct.TYPE_9__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %339, i32 0, i32 0
  %341 = load %struct.TYPE_8__*, %struct.TYPE_8__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = call i32 @tegra_sor_readl(%struct.tegra_sor* %336, i32 %343)
  store i32 %344, i32* %14, align 4
  %345 = load i32, i32* @SOR_DP_PADCTL_PAD_CAL_PD, align 4
  %346 = xor i32 %345, -1
  %347 = load i32, i32* %14, align 4
  %348 = and i32 %347, %346
  store i32 %348, i32* %14, align 4
  %349 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %350 = load i32, i32* %14, align 4
  %351 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %352 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %351, i32 0, i32 2
  %353 = load %struct.TYPE_9__*, %struct.TYPE_9__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %353, i32 0, i32 0
  %355 = load %struct.TYPE_8__*, %struct.TYPE_8__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  %358 = call i32 @tegra_sor_writel(%struct.tegra_sor* %349, i32 %350, i32 %357)
  %359 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %360 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %359, i32 0, i32 5
  %361 = load i32, i32* %360, align 8
  %362 = call i32 @tegra_io_pad_power_enable(i32 %361)
  store i32 %362, i32* %13, align 4
  %363 = load i32, i32* %13, align 4
  %364 = icmp slt i32 %363, 0
  br i1 %364, label %365, label %371

365:                                              ; preds = %244
  %366 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %367 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* %13, align 4
  %370 = call i32 @dev_err(i32 %368, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %369)
  br label %371

371:                                              ; preds = %365, %244
  %372 = call i32 @usleep_range(i32 5, i32 100)
  %373 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %374 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %375 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %374, i32 0, i32 2
  %376 = load %struct.TYPE_9__*, %struct.TYPE_9__** %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %376, i32 0, i32 0
  %378 = load %struct.TYPE_8__*, %struct.TYPE_8__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 4
  %381 = call i32 @tegra_sor_readl(%struct.tegra_sor* %373, i32 %380)
  store i32 %381, i32* %14, align 4
  %382 = load i32, i32* @SOR_PLL2_BANDGAP_POWERDOWN, align 4
  %383 = xor i32 %382, -1
  %384 = load i32, i32* %14, align 4
  %385 = and i32 %384, %383
  store i32 %385, i32* %14, align 4
  %386 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %387 = load i32, i32* %14, align 4
  %388 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %389 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %388, i32 0, i32 2
  %390 = load %struct.TYPE_9__*, %struct.TYPE_9__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %390, i32 0, i32 0
  %392 = load %struct.TYPE_8__*, %struct.TYPE_8__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = call i32 @tegra_sor_writel(%struct.tegra_sor* %386, i32 %387, i32 %394)
  %396 = call i32 @usleep_range(i32 20, i32 100)
  %397 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %398 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %399 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %398, i32 0, i32 2
  %400 = load %struct.TYPE_9__*, %struct.TYPE_9__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %400, i32 0, i32 0
  %402 = load %struct.TYPE_8__*, %struct.TYPE_8__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %402, i32 0, i32 2
  %404 = load i32, i32* %403, align 4
  %405 = call i32 @tegra_sor_readl(%struct.tegra_sor* %397, i32 %404)
  store i32 %405, i32* %14, align 4
  %406 = load i32, i32* @SOR_PLL0_VCOPD, align 4
  %407 = xor i32 %406, -1
  %408 = load i32, i32* %14, align 4
  %409 = and i32 %408, %407
  store i32 %409, i32* %14, align 4
  %410 = load i32, i32* @SOR_PLL0_PWR, align 4
  %411 = xor i32 %410, -1
  %412 = load i32, i32* %14, align 4
  %413 = and i32 %412, %411
  store i32 %413, i32* %14, align 4
  %414 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %415 = load i32, i32* %14, align 4
  %416 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %417 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %416, i32 0, i32 2
  %418 = load %struct.TYPE_9__*, %struct.TYPE_9__** %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %418, i32 0, i32 0
  %420 = load %struct.TYPE_8__*, %struct.TYPE_8__** %419, align 8
  %421 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %420, i32 0, i32 2
  %422 = load i32, i32* %421, align 4
  %423 = call i32 @tegra_sor_writel(%struct.tegra_sor* %414, i32 %415, i32 %422)
  %424 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %425 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %426 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %425, i32 0, i32 2
  %427 = load %struct.TYPE_9__*, %struct.TYPE_9__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %427, i32 0, i32 0
  %429 = load %struct.TYPE_8__*, %struct.TYPE_8__** %428, align 8
  %430 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 4
  %432 = call i32 @tegra_sor_readl(%struct.tegra_sor* %424, i32 %431)
  store i32 %432, i32* %14, align 4
  %433 = load i32, i32* @SOR_PLL2_SEQ_PLLCAPPD_ENFORCE, align 4
  %434 = xor i32 %433, -1
  %435 = load i32, i32* %14, align 4
  %436 = and i32 %435, %434
  store i32 %436, i32* %14, align 4
  %437 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %438 = load i32, i32* %14, align 4
  %439 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %440 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %439, i32 0, i32 2
  %441 = load %struct.TYPE_9__*, %struct.TYPE_9__** %440, align 8
  %442 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %441, i32 0, i32 0
  %443 = load %struct.TYPE_8__*, %struct.TYPE_8__** %442, align 8
  %444 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %443, i32 0, i32 1
  %445 = load i32, i32* %444, align 4
  %446 = call i32 @tegra_sor_writel(%struct.tegra_sor* %437, i32 %438, i32 %445)
  %447 = call i32 @usleep_range(i32 200, i32 1000)
  %448 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %449 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %450 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %449, i32 0, i32 2
  %451 = load %struct.TYPE_9__*, %struct.TYPE_9__** %450, align 8
  %452 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %451, i32 0, i32 0
  %453 = load %struct.TYPE_8__*, %struct.TYPE_8__** %452, align 8
  %454 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %453, i32 0, i32 1
  %455 = load i32, i32* %454, align 4
  %456 = call i32 @tegra_sor_readl(%struct.tegra_sor* %448, i32 %455)
  store i32 %456, i32* %14, align 4
  %457 = load i32, i32* @SOR_PLL2_PORT_POWERDOWN, align 4
  %458 = xor i32 %457, -1
  %459 = load i32, i32* %14, align 4
  %460 = and i32 %459, %458
  store i32 %460, i32* %14, align 4
  %461 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %462 = load i32, i32* %14, align 4
  %463 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %464 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %463, i32 0, i32 2
  %465 = load %struct.TYPE_9__*, %struct.TYPE_9__** %464, align 8
  %466 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %465, i32 0, i32 0
  %467 = load %struct.TYPE_8__*, %struct.TYPE_8__** %466, align 8
  %468 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %467, i32 0, i32 1
  %469 = load i32, i32* %468, align 4
  %470 = call i32 @tegra_sor_writel(%struct.tegra_sor* %461, i32 %462, i32 %469)
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %471

471:                                              ; preds = %490, %371
  %472 = load i32, i32* %12, align 4
  %473 = icmp ult i32 %472, 5
  br i1 %473, label %474, label %493

474:                                              ; preds = %471
  %475 = load i32, i32* %12, align 4
  %476 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %477 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %476, i32 0, i32 4
  %478 = load i32*, i32** %477, align 8
  %479 = load i32, i32* %12, align 4
  %480 = zext i32 %479 to i64
  %481 = getelementptr inbounds i32, i32* %478, i64 %480
  %482 = load i32, i32* %481, align 4
  %483 = call i32 @SOR_XBAR_CTRL_LINK0_XSEL(i32 %475, i32 %482)
  %484 = load i32, i32* %12, align 4
  %485 = load i32, i32* %12, align 4
  %486 = call i32 @SOR_XBAR_CTRL_LINK1_XSEL(i32 %484, i32 %485)
  %487 = or i32 %483, %486
  %488 = load i32, i32* %14, align 4
  %489 = or i32 %488, %487
  store i32 %489, i32* %14, align 4
  br label %490

490:                                              ; preds = %474
  %491 = load i32, i32* %12, align 4
  %492 = add i32 %491, 1
  store i32 %492, i32* %12, align 4
  br label %471

493:                                              ; preds = %471
  %494 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %495 = load i32, i32* @SOR_XBAR_POL, align 4
  %496 = call i32 @tegra_sor_writel(%struct.tegra_sor* %494, i32 0, i32 %495)
  %497 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %498 = load i32, i32* %14, align 4
  %499 = load i32, i32* @SOR_XBAR_CTRL, align 4
  %500 = call i32 @tegra_sor_writel(%struct.tegra_sor* %497, i32 %498, i32 %499)
  %501 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %502 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %503 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %502, i32 0, i32 3
  %504 = load i32, i32* %503, align 8
  %505 = call i32 @tegra_sor_set_parent_clock(%struct.tegra_sor* %501, i32 %504)
  store i32 %505, i32* %13, align 4
  %506 = load i32, i32* %13, align 4
  %507 = icmp slt i32 %506, 0
  br i1 %507, label %508, label %514

508:                                              ; preds = %493
  %509 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %510 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %509, i32 0, i32 0
  %511 = load i32, i32* %510, align 8
  %512 = load i32, i32* %13, align 4
  %513 = call i32 @dev_err(i32 %511, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %512)
  br label %514

514:                                              ; preds = %508, %493
  %515 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %516 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %517 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %516, i32 0, i32 2
  %518 = load %struct.TYPE_9__*, %struct.TYPE_9__** %517, align 8
  %519 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %518, i32 0, i32 0
  %520 = load %struct.TYPE_8__*, %struct.TYPE_8__** %519, align 8
  %521 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 4
  %523 = call i32 @tegra_sor_readl(%struct.tegra_sor* %515, i32 %522)
  store i32 %523, i32* %14, align 4
  %524 = getelementptr inbounds %struct.drm_dp_link, %struct.drm_dp_link* %9, i32 0, i32 0
  %525 = load i32, i32* %524, align 4
  %526 = icmp sle i32 %525, 2
  br i1 %526, label %527, label %534

527:                                              ; preds = %514
  %528 = load i32, i32* @SOR_DP_PADCTL_PD_TXD_3, align 4
  %529 = load i32, i32* @SOR_DP_PADCTL_PD_TXD_2, align 4
  %530 = or i32 %528, %529
  %531 = xor i32 %530, -1
  %532 = load i32, i32* %14, align 4
  %533 = and i32 %532, %531
  store i32 %533, i32* %14, align 4
  br label %540

534:                                              ; preds = %514
  %535 = load i32, i32* @SOR_DP_PADCTL_PD_TXD_3, align 4
  %536 = load i32, i32* @SOR_DP_PADCTL_PD_TXD_2, align 4
  %537 = or i32 %535, %536
  %538 = load i32, i32* %14, align 4
  %539 = or i32 %538, %537
  store i32 %539, i32* %14, align 4
  br label %540

540:                                              ; preds = %534, %527
  %541 = getelementptr inbounds %struct.drm_dp_link, %struct.drm_dp_link* %9, i32 0, i32 0
  %542 = load i32, i32* %541, align 4
  %543 = icmp sle i32 %542, 1
  br i1 %543, label %544, label %549

544:                                              ; preds = %540
  %545 = load i32, i32* @SOR_DP_PADCTL_PD_TXD_1, align 4
  %546 = xor i32 %545, -1
  %547 = load i32, i32* %14, align 4
  %548 = and i32 %547, %546
  store i32 %548, i32* %14, align 4
  br label %553

549:                                              ; preds = %540
  %550 = load i32, i32* @SOR_DP_PADCTL_PD_TXD_1, align 4
  %551 = load i32, i32* %14, align 4
  %552 = or i32 %551, %550
  store i32 %552, i32* %14, align 4
  br label %553

553:                                              ; preds = %549, %544
  %554 = getelementptr inbounds %struct.drm_dp_link, %struct.drm_dp_link* %9, i32 0, i32 0
  %555 = load i32, i32* %554, align 4
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %557, label %562

557:                                              ; preds = %553
  %558 = load i32, i32* @SOR_DP_PADCTL_PD_TXD_0, align 4
  %559 = xor i32 %558, -1
  %560 = load i32, i32* %14, align 4
  %561 = and i32 %560, %559
  store i32 %561, i32* %14, align 4
  br label %566

562:                                              ; preds = %553
  %563 = load i32, i32* @SOR_DP_PADCTL_PD_TXD_0, align 4
  %564 = load i32, i32* %14, align 4
  %565 = or i32 %564, %563
  store i32 %565, i32* %14, align 4
  br label %566

566:                                              ; preds = %562, %557
  %567 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %568 = load i32, i32* %14, align 4
  %569 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %570 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %569, i32 0, i32 2
  %571 = load %struct.TYPE_9__*, %struct.TYPE_9__** %570, align 8
  %572 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %571, i32 0, i32 0
  %573 = load %struct.TYPE_8__*, %struct.TYPE_8__** %572, align 8
  %574 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %573, i32 0, i32 0
  %575 = load i32, i32* %574, align 4
  %576 = call i32 @tegra_sor_writel(%struct.tegra_sor* %567, i32 %568, i32 %575)
  %577 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %578 = load i32, i32* @SOR_DP_LINKCTL0, align 4
  %579 = call i32 @tegra_sor_readl(%struct.tegra_sor* %577, i32 %578)
  store i32 %579, i32* %14, align 4
  %580 = load i32, i32* @SOR_DP_LINKCTL_LANE_COUNT_MASK, align 4
  %581 = xor i32 %580, -1
  %582 = load i32, i32* %14, align 4
  %583 = and i32 %582, %581
  store i32 %583, i32* %14, align 4
  %584 = getelementptr inbounds %struct.drm_dp_link, %struct.drm_dp_link* %9, i32 0, i32 0
  %585 = load i32, i32* %584, align 4
  %586 = call i32 @SOR_DP_LINKCTL_LANE_COUNT(i32 %585)
  %587 = load i32, i32* %14, align 4
  %588 = or i32 %587, %586
  store i32 %588, i32* %14, align 4
  %589 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %590 = load i32, i32* %14, align 4
  %591 = load i32, i32* @SOR_DP_LINKCTL0, align 4
  %592 = call i32 @tegra_sor_writel(%struct.tegra_sor* %589, i32 %590, i32 %591)
  %593 = load i32, i32* @SOR_LANE_SEQ_CTL_TRIGGER, align 4
  %594 = load i32, i32* @SOR_LANE_SEQ_CTL_SEQUENCE_DOWN, align 4
  %595 = or i32 %593, %594
  %596 = load i32, i32* @SOR_LANE_SEQ_CTL_POWER_STATE_UP, align 4
  %597 = or i32 %595, %596
  store i32 %597, i32* %14, align 4
  %598 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %599 = load i32, i32* %14, align 4
  %600 = load i32, i32* @SOR_LANE_SEQ_CTL, align 4
  %601 = call i32 @tegra_sor_writel(%struct.tegra_sor* %598, i32 %599, i32 %600)
  br label %602

602:                                              ; preds = %566, %611
  %603 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %604 = load i32, i32* @SOR_LANE_SEQ_CTL, align 4
  %605 = call i32 @tegra_sor_readl(%struct.tegra_sor* %603, i32 %604)
  store i32 %605, i32* %14, align 4
  %606 = load i32, i32* %14, align 4
  %607 = load i32, i32* @SOR_LANE_SEQ_CTL_TRIGGER, align 4
  %608 = and i32 %606, %607
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %610, label %611

610:                                              ; preds = %602
  br label %613

611:                                              ; preds = %602
  %612 = call i32 @usleep_range(i32 250, i32 1000)
  br label %602

613:                                              ; preds = %610
  %614 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %615 = load i32, i32* @SOR_CLK_CNTRL, align 4
  %616 = call i32 @tegra_sor_readl(%struct.tegra_sor* %614, i32 %615)
  store i32 %616, i32* %14, align 4
  %617 = load i32, i32* @SOR_CLK_CNTRL_DP_LINK_SPEED_MASK, align 4
  %618 = xor i32 %617, -1
  %619 = load i32, i32* %14, align 4
  %620 = and i32 %619, %618
  store i32 %620, i32* %14, align 4
  %621 = getelementptr inbounds %struct.drm_dp_link, %struct.drm_dp_link* %9, i32 0, i32 2
  %622 = load i32, i32* %621, align 4
  %623 = call i32 @drm_dp_link_rate_to_bw_code(i32 %622)
  %624 = shl i32 %623, 2
  %625 = load i32, i32* %14, align 4
  %626 = or i32 %625, %624
  store i32 %626, i32* %14, align 4
  %627 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %628 = load i32, i32* %14, align 4
  %629 = load i32, i32* @SOR_CLK_CNTRL, align 4
  %630 = call i32 @tegra_sor_writel(%struct.tegra_sor* %627, i32 %628, i32 %629)
  %631 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %632 = call i32 @tegra_sor_apply_config(%struct.tegra_sor* %631, %struct.tegra_sor_config* %7)
  %633 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %634 = load i32, i32* @SOR_DP_LINKCTL0, align 4
  %635 = call i32 @tegra_sor_readl(%struct.tegra_sor* %633, i32 %634)
  store i32 %635, i32* %14, align 4
  %636 = load i32, i32* @SOR_DP_LINKCTL_ENABLE, align 4
  %637 = load i32, i32* %14, align 4
  %638 = or i32 %637, %636
  store i32 %638, i32* %14, align 4
  %639 = load i32, i32* @SOR_DP_LINKCTL_ENHANCED_FRAME, align 4
  %640 = load i32, i32* %14, align 4
  %641 = or i32 %640, %639
  store i32 %641, i32* %14, align 4
  %642 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %643 = load i32, i32* %14, align 4
  %644 = load i32, i32* @SOR_DP_LINKCTL0, align 4
  %645 = call i32 @tegra_sor_writel(%struct.tegra_sor* %642, i32 %643, i32 %644)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %646

646:                                              ; preds = %661, %613
  %647 = load i32, i32* %12, align 4
  %648 = icmp ult i32 %647, 4
  br i1 %648, label %649, label %664

649:                                              ; preds = %646
  %650 = load i64, i64* @SOR_DP_TPG_CHANNEL_CODING, align 8
  %651 = load i64, i64* @SOR_DP_TPG_SCRAMBLER_GALIOS, align 8
  %652 = or i64 %650, %651
  %653 = load i64, i64* @SOR_DP_TPG_PATTERN_NONE, align 8
  %654 = or i64 %652, %653
  store i64 %654, i64* %15, align 8
  %655 = load i32, i32* %14, align 4
  %656 = shl i32 %655, 8
  %657 = sext i32 %656 to i64
  %658 = load i64, i64* %15, align 8
  %659 = or i64 %657, %658
  %660 = trunc i64 %659 to i32
  store i32 %660, i32* %14, align 4
  br label %661

661:                                              ; preds = %649
  %662 = load i32, i32* %12, align 4
  %663 = add i32 %662, 1
  store i32 %663, i32* %12, align 4
  br label %646

664:                                              ; preds = %646
  %665 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %666 = load i32, i32* %14, align 4
  %667 = load i32, i32* @SOR_DP_TPG, align 4
  %668 = call i32 @tegra_sor_writel(%struct.tegra_sor* %665, i32 %666, i32 %667)
  %669 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %670 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %671 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %670, i32 0, i32 2
  %672 = load %struct.TYPE_9__*, %struct.TYPE_9__** %671, align 8
  %673 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %672, i32 0, i32 0
  %674 = load %struct.TYPE_8__*, %struct.TYPE_8__** %673, align 8
  %675 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %674, i32 0, i32 0
  %676 = load i32, i32* %675, align 4
  %677 = call i32 @tegra_sor_readl(%struct.tegra_sor* %669, i32 %676)
  store i32 %677, i32* %14, align 4
  %678 = load i32, i32* @SOR_DP_PADCTL_PAD_CAL_PD, align 4
  %679 = load i32, i32* %14, align 4
  %680 = or i32 %679, %678
  store i32 %680, i32* %14, align 4
  %681 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %682 = load i32, i32* %14, align 4
  %683 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %684 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %683, i32 0, i32 2
  %685 = load %struct.TYPE_9__*, %struct.TYPE_9__** %684, align 8
  %686 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %685, i32 0, i32 0
  %687 = load %struct.TYPE_8__*, %struct.TYPE_8__** %686, align 8
  %688 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %687, i32 0, i32 0
  %689 = load i32, i32* %688, align 4
  %690 = call i32 @tegra_sor_writel(%struct.tegra_sor* %681, i32 %682, i32 %689)
  %691 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %692 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %691, i32 0, i32 1
  %693 = load i32, i32* %692, align 4
  %694 = call i32 @drm_dp_link_probe(i32 %693, %struct.drm_dp_link* %9)
  store i32 %694, i32* %13, align 4
  %695 = load i32, i32* %13, align 4
  %696 = icmp slt i32 %695, 0
  br i1 %696, label %697, label %703

697:                                              ; preds = %664
  %698 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %699 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %698, i32 0, i32 0
  %700 = load i32, i32* %699, align 8
  %701 = load i32, i32* %13, align 4
  %702 = call i32 @dev_err(i32 %700, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %701)
  br label %703

703:                                              ; preds = %697, %664
  %704 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %705 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %704, i32 0, i32 1
  %706 = load i32, i32* %705, align 4
  %707 = call i32 @drm_dp_link_power_up(i32 %706, %struct.drm_dp_link* %9)
  store i32 %707, i32* %13, align 4
  %708 = load i32, i32* %13, align 4
  %709 = icmp slt i32 %708, 0
  br i1 %709, label %710, label %716

710:                                              ; preds = %703
  %711 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %712 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %711, i32 0, i32 0
  %713 = load i32, i32* %712, align 8
  %714 = load i32, i32* %13, align 4
  %715 = call i32 @dev_err(i32 %713, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %714)
  br label %716

716:                                              ; preds = %710, %703
  %717 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %718 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %717, i32 0, i32 1
  %719 = load i32, i32* %718, align 4
  %720 = call i32 @drm_dp_link_configure(i32 %719, %struct.drm_dp_link* %9)
  store i32 %720, i32* %13, align 4
  %721 = load i32, i32* %13, align 4
  %722 = icmp slt i32 %721, 0
  br i1 %722, label %723, label %729

723:                                              ; preds = %716
  %724 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %725 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %724, i32 0, i32 0
  %726 = load i32, i32* %725, align 8
  %727 = load i32, i32* %13, align 4
  %728 = call i32 @dev_err(i32 %726, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %727)
  br label %729

729:                                              ; preds = %723, %716
  %730 = getelementptr inbounds %struct.drm_dp_link, %struct.drm_dp_link* %9, i32 0, i32 2
  %731 = load i32, i32* %730, align 4
  %732 = call i32 @drm_dp_link_rate_to_bw_code(i32 %731)
  store i32 %732, i32* %10, align 4
  %733 = getelementptr inbounds %struct.drm_dp_link, %struct.drm_dp_link* %9, i32 0, i32 0
  %734 = load i32, i32* %733, align 4
  store i32 %734, i32* %11, align 4
  %735 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %736 = load i32, i32* @SOR_CLK_CNTRL, align 4
  %737 = call i32 @tegra_sor_readl(%struct.tegra_sor* %735, i32 %736)
  store i32 %737, i32* %14, align 4
  %738 = load i32, i32* @SOR_CLK_CNTRL_DP_LINK_SPEED_MASK, align 4
  %739 = xor i32 %738, -1
  %740 = load i32, i32* %14, align 4
  %741 = and i32 %740, %739
  store i32 %741, i32* %14, align 4
  %742 = load i32, i32* %10, align 4
  %743 = call i32 @SOR_CLK_CNTRL_DP_LINK_SPEED(i32 %742)
  %744 = load i32, i32* %14, align 4
  %745 = or i32 %744, %743
  store i32 %745, i32* %14, align 4
  %746 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %747 = load i32, i32* %14, align 4
  %748 = load i32, i32* @SOR_CLK_CNTRL, align 4
  %749 = call i32 @tegra_sor_writel(%struct.tegra_sor* %746, i32 %747, i32 %748)
  %750 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %751 = load i32, i32* @SOR_DP_LINKCTL0, align 4
  %752 = call i32 @tegra_sor_readl(%struct.tegra_sor* %750, i32 %751)
  store i32 %752, i32* %14, align 4
  %753 = load i32, i32* @SOR_DP_LINKCTL_LANE_COUNT_MASK, align 4
  %754 = xor i32 %753, -1
  %755 = load i32, i32* %14, align 4
  %756 = and i32 %755, %754
  store i32 %756, i32* %14, align 4
  %757 = load i32, i32* %11, align 4
  %758 = call i32 @SOR_DP_LINKCTL_LANE_COUNT(i32 %757)
  %759 = load i32, i32* %14, align 4
  %760 = or i32 %759, %758
  store i32 %760, i32* %14, align 4
  %761 = getelementptr inbounds %struct.drm_dp_link, %struct.drm_dp_link* %9, i32 0, i32 1
  %762 = load i32, i32* %761, align 4
  %763 = load i32, i32* @DP_LINK_CAP_ENHANCED_FRAMING, align 4
  %764 = and i32 %762, %763
  %765 = icmp ne i32 %764, 0
  br i1 %765, label %766, label %770

766:                                              ; preds = %729
  %767 = load i32, i32* @SOR_DP_LINKCTL_ENHANCED_FRAME, align 4
  %768 = load i32, i32* %14, align 4
  %769 = or i32 %768, %767
  store i32 %769, i32* %14, align 4
  br label %770

770:                                              ; preds = %766, %729
  %771 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %772 = load i32, i32* %14, align 4
  %773 = load i32, i32* @SOR_DP_LINKCTL0, align 4
  %774 = call i32 @tegra_sor_writel(%struct.tegra_sor* %771, i32 %772, i32 %773)
  store i32 0, i32* %12, align 4
  br label %775

775:                                              ; preds = %792, %770
  %776 = load i32, i32* %12, align 4
  %777 = getelementptr inbounds %struct.drm_dp_link, %struct.drm_dp_link* %9, i32 0, i32 0
  %778 = load i32, i32* %777, align 4
  %779 = icmp ult i32 %776, %778
  br i1 %779, label %780, label %795

780:                                              ; preds = %775
  %781 = load i64, i64* @SOR_DP_TPG_CHANNEL_CODING, align 8
  %782 = load i64, i64* @SOR_DP_TPG_SCRAMBLER_GALIOS, align 8
  %783 = or i64 %781, %782
  %784 = load i64, i64* @SOR_DP_TPG_PATTERN_NONE, align 8
  %785 = or i64 %783, %784
  store i64 %785, i64* %16, align 8
  %786 = load i32, i32* %14, align 4
  %787 = shl i32 %786, 8
  %788 = sext i32 %787 to i64
  %789 = load i64, i64* %16, align 8
  %790 = or i64 %788, %789
  %791 = trunc i64 %790 to i32
  store i32 %791, i32* %14, align 4
  br label %792

792:                                              ; preds = %780
  %793 = load i32, i32* %12, align 4
  %794 = add i32 %793, 1
  store i32 %794, i32* %12, align 4
  br label %775

795:                                              ; preds = %775
  %796 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %797 = load i32, i32* %14, align 4
  %798 = load i32, i32* @SOR_DP_TPG, align 4
  %799 = call i32 @tegra_sor_writel(%struct.tegra_sor* %796, i32 %797, i32 %798)
  %800 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %801 = call i32 @tegra_sor_dp_train_fast(%struct.tegra_sor* %800, %struct.drm_dp_link* %9)
  store i32 %801, i32* %13, align 4
  %802 = load i32, i32* %13, align 4
  %803 = icmp slt i32 %802, 0
  br i1 %803, label %804, label %810

804:                                              ; preds = %795
  %805 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %806 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %805, i32 0, i32 0
  %807 = load i32, i32* %806, align 8
  %808 = load i32, i32* %13, align 4
  %809 = call i32 @dev_err(i32 %807, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %808)
  br label %810

810:                                              ; preds = %804, %795
  %811 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %812 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %811, i32 0, i32 0
  %813 = load i32, i32* %812, align 8
  %814 = call i32 @dev_dbg(i32 %813, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  %815 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %816 = call i32 @tegra_sor_power_up(%struct.tegra_sor* %815, i32 250)
  store i32 %816, i32* %13, align 4
  %817 = load i32, i32* %13, align 4
  %818 = icmp slt i32 %817, 0
  br i1 %818, label %819, label %825

819:                                              ; preds = %810
  %820 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %821 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %820, i32 0, i32 0
  %822 = load i32, i32* %821, align 8
  %823 = load i32, i32* %13, align 4
  %824 = call i32 @dev_err(i32 %822, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %823)
  br label %825

825:                                              ; preds = %819, %810
  %826 = load i32, i32* @SOR_CSTM_LVDS, align 4
  %827 = load i32, i32* @SOR_CSTM_LINK_ACT_A, align 4
  %828 = or i32 %826, %827
  %829 = load i32, i32* @SOR_CSTM_LINK_ACT_B, align 4
  %830 = or i32 %828, %829
  %831 = load i32, i32* @SOR_CSTM_UPPER, align 4
  %832 = or i32 %830, %831
  store i32 %832, i32* %14, align 4
  %833 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %834 = load i32, i32* %14, align 4
  %835 = load i32, i32* @SOR_CSTM, align 4
  %836 = call i32 @tegra_sor_writel(%struct.tegra_sor* %833, i32 %834, i32 %835)
  %837 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %838 = load i32, i32* @SOR_STATE1, align 4
  %839 = call i32 @tegra_sor_readl(%struct.tegra_sor* %837, i32 %838)
  store i32 %839, i32* %14, align 4
  %840 = load i32, i32* @SOR_STATE_ASY_PROTOCOL_MASK, align 4
  %841 = xor i32 %840, -1
  %842 = load i32, i32* %14, align 4
  %843 = and i32 %842, %841
  store i32 %843, i32* %14, align 4
  %844 = load i32, i32* @SOR_STATE_ASY_PROTOCOL_DP_A, align 4
  %845 = load i32, i32* %14, align 4
  %846 = or i32 %845, %844
  store i32 %846, i32* %14, align 4
  %847 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %848 = load i32, i32* %14, align 4
  %849 = load i32, i32* @SOR_STATE1, align 4
  %850 = call i32 @tegra_sor_writel(%struct.tegra_sor* %847, i32 %848, i32 %849)
  %851 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %852 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %853 = load %struct.tegra_sor_state*, %struct.tegra_sor_state** %8, align 8
  %854 = call i32 @tegra_sor_mode_set(%struct.tegra_sor* %851, %struct.drm_display_mode* %852, %struct.tegra_sor_state* %853)
  %855 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %856 = call i32 @tegra_sor_setup_pwm(%struct.tegra_sor* %855, i32 250)
  store i32 %856, i32* %13, align 4
  %857 = load i32, i32* %13, align 4
  %858 = icmp slt i32 %857, 0
  br i1 %858, label %859, label %865

859:                                              ; preds = %825
  %860 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %861 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %860, i32 0, i32 0
  %862 = load i32, i32* %861, align 8
  %863 = load i32, i32* %13, align 4
  %864 = call i32 @dev_err(i32 %862, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %863)
  br label %865

865:                                              ; preds = %859, %825
  %866 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %867 = call i32 @tegra_sor_update(%struct.tegra_sor* %866)
  %868 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %869 = load i32, i32* @DC_DISP_DISP_WIN_OPTIONS, align 4
  %870 = call i32 @tegra_dc_readl(%struct.tegra_dc* %868, i32 %869)
  store i32 %870, i32* %14, align 4
  %871 = call i32 @SOR_ENABLE(i32 0)
  %872 = load i32, i32* %14, align 4
  %873 = or i32 %872, %871
  store i32 %873, i32* %14, align 4
  %874 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %875 = load i32, i32* %14, align 4
  %876 = load i32, i32* @DC_DISP_DISP_WIN_OPTIONS, align 4
  %877 = call i32 @tegra_dc_writel(%struct.tegra_dc* %874, i32 %875, i32 %876)
  %878 = load %struct.tegra_dc*, %struct.tegra_dc** %5, align 8
  %879 = call i32 @tegra_dc_commit(%struct.tegra_dc* %878)
  %880 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %881 = call i32 @tegra_sor_attach(%struct.tegra_sor* %880)
  store i32 %881, i32* %13, align 4
  %882 = load i32, i32* %13, align 4
  %883 = icmp slt i32 %882, 0
  br i1 %883, label %884, label %890

884:                                              ; preds = %865
  %885 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %886 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %885, i32 0, i32 0
  %887 = load i32, i32* %886, align 8
  %888 = load i32, i32* %13, align 4
  %889 = call i32 @dev_err(i32 %887, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %888)
  br label %890

890:                                              ; preds = %884, %865
  %891 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %892 = call i32 @tegra_sor_wakeup(%struct.tegra_sor* %891)
  store i32 %892, i32* %13, align 4
  %893 = load i32, i32* %13, align 4
  %894 = icmp slt i32 %893, 0
  br i1 %894, label %895, label %901

895:                                              ; preds = %890
  %896 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %897 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %896, i32 0, i32 0
  %898 = load i32, i32* %897, align 8
  %899 = load i32, i32* %13, align 4
  %900 = call i32 @dev_err(i32 %898, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32 %899)
  br label %901

901:                                              ; preds = %895, %890
  %902 = load %struct.tegra_output*, %struct.tegra_output** %4, align 8
  %903 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %902, i32 0, i32 0
  %904 = load i64, i64* %903, align 8
  %905 = icmp ne i64 %904, 0
  br i1 %905, label %906, label %911

906:                                              ; preds = %901
  %907 = load %struct.tegra_output*, %struct.tegra_output** %4, align 8
  %908 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %907, i32 0, i32 0
  %909 = load i64, i64* %908, align 8
  %910 = call i32 @drm_panel_enable(i64 %909)
  br label %911

911:                                              ; preds = %69, %906, %901
  ret void
}

declare dso_local %struct.tegra_output* @encoder_to_output(%struct.drm_encoder*) #1

declare dso_local %struct.tegra_dc* @to_tegra_dc(%struct.TYPE_10__*) #1

declare dso_local %struct.tegra_sor* @to_sor(%struct.tegra_output*) #1

declare dso_local %struct.tegra_sor_state* @to_sor_state(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @drm_panel_prepare(i64) #1

declare dso_local i32 @drm_dp_aux_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @drm_dp_link_probe(i32, %struct.drm_dp_link*) #1

declare dso_local i32 @tegra_sor_set_parent_clock(%struct.tegra_sor*, i32) #1

declare dso_local i32 @memset(%struct.tegra_sor_config*, i32, i32) #1

declare dso_local i32 @tegra_sor_compute_config(%struct.tegra_sor*, %struct.drm_display_mode*, %struct.tegra_sor_config*, %struct.drm_dp_link*) #1

declare dso_local i32 @tegra_sor_readl(%struct.tegra_sor*, i32) #1

declare dso_local i32 @tegra_sor_writel(%struct.tegra_sor*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @SOR_PLL0_ICHPMP(i32) #1

declare dso_local i32 @tegra_io_pad_power_enable(i32) #1

declare dso_local i32 @SOR_XBAR_CTRL_LINK0_XSEL(i32, i32) #1

declare dso_local i32 @SOR_XBAR_CTRL_LINK1_XSEL(i32, i32) #1

declare dso_local i32 @SOR_DP_LINKCTL_LANE_COUNT(i32) #1

declare dso_local i32 @drm_dp_link_rate_to_bw_code(i32) #1

declare dso_local i32 @tegra_sor_apply_config(%struct.tegra_sor*, %struct.tegra_sor_config*) #1

declare dso_local i32 @drm_dp_link_power_up(i32, %struct.drm_dp_link*) #1

declare dso_local i32 @drm_dp_link_configure(i32, %struct.drm_dp_link*) #1

declare dso_local i32 @SOR_CLK_CNTRL_DP_LINK_SPEED(i32) #1

declare dso_local i32 @tegra_sor_dp_train_fast(%struct.tegra_sor*, %struct.drm_dp_link*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @tegra_sor_power_up(%struct.tegra_sor*, i32) #1

declare dso_local i32 @tegra_sor_mode_set(%struct.tegra_sor*, %struct.drm_display_mode*, %struct.tegra_sor_state*) #1

declare dso_local i32 @tegra_sor_setup_pwm(%struct.tegra_sor*, i32) #1

declare dso_local i32 @tegra_sor_update(%struct.tegra_sor*) #1

declare dso_local i32 @tegra_dc_readl(%struct.tegra_dc*, i32) #1

declare dso_local i32 @SOR_ENABLE(i32) #1

declare dso_local i32 @tegra_dc_writel(%struct.tegra_dc*, i32, i32) #1

declare dso_local i32 @tegra_dc_commit(%struct.tegra_dc*) #1

declare dso_local i32 @tegra_sor_attach(%struct.tegra_sor*) #1

declare dso_local i32 @tegra_sor_wakeup(%struct.tegra_sor*) #1

declare dso_local i32 @drm_panel_enable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
