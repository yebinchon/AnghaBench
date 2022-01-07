; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_phy_8996.c_pll_calculate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_phy_8996.c_pll_calculate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_8996_phy_pll_reg_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32 }
%struct.hdmi_8996_post_divider = type { i32, i32, i32, i32 }

@HDMI_HIGH_FREQ_BIT_CLK_THRESHOLD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"VCO freq: %llu\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"fdata: %llu\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"pix_clk: %lu\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"tmds clk: %llu\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"HSCLK_SEL: %d\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"DEC_START: %llu\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"DIV_FRAC_START: %llu\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"PLL_CPCTRL: %u\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"PLL_RCTRL: %u\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"PLL_CCTRL: %u\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"INTEGLOOP_GAIN: %u\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"TX_BAND: %d\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"PLL_CMP: %u\00", align 1
@HDMI_DIG_FREQ_BIT_CLK_THRESHOLD = common dso_local global i32 0, align 4
@HDMI_CORECLK_DIV = common dso_local global i32 0, align 4
@HDMI_NUM_TX_CHANNEL = common dso_local global i32 0, align 4
@HDMI_MID_FREQ_BIT_CLK_THRESHOLD = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [28 x i8] c"com_svs_mode_clk_sel = 0x%x\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"com_hsclk_sel = 0x%x\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"com_lock_cmp_en = 0x%x\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"com_pll_cctrl_mode0 = 0x%x\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"com_pll_rctrl_mode0 = 0x%x\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"com_cp_ctrl_mode0 = 0x%x\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"com_dec_start_mode0 = 0x%x\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"com_div_frac_start1_mode0 = 0x%x\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"com_div_frac_start2_mode0 = 0x%x\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"com_div_frac_start3_mode0 = 0x%x\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"com_integloop_gain0_mode0 = 0x%x\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"com_integloop_gain1_mode0 = 0x%x\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"com_lock_cmp1_mode0 = 0x%x\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"com_lock_cmp2_mode0 = 0x%x\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"com_lock_cmp3_mode0 = 0x%x\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"com_core_clk_en = 0x%x\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"com_coreclk_div = 0x%x\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"phy_mode = 0x%x\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"tx_l0_lane_mode = 0x%x\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"tx_l2_lane_mode = 0x%x\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"tx_l%d_tx_band = 0x%x\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"tx_l%d_tx_drv_lvl = 0x%x\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"tx_l%d_tx_emp_post1_lvl = 0x%x\00", align 1
@.str.36 = private unnamed_addr constant [26 x i8] c"tx_l%d_vmode_ctrl1 = 0x%x\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"tx_l%d_vmode_ctrl2 = 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.hdmi_8996_phy_pll_reg_cfg*)* @pll_calculate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pll_calculate(i64 %0, i64 %1, %struct.hdmi_8996_phy_pll_reg_cfg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hdmi_8996_phy_pll_reg_cfg*, align 8
  %8 = alloca %struct.hdmi_8996_post_divider, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.hdmi_8996_phy_pll_reg_cfg* %2, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %23 = load i64, i64* %5, align 8
  %24 = trunc i64 %23 to i32
  %25 = mul nsw i32 %24, 10
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @HDMI_HIGH_FREQ_BIT_CLK_THRESHOLD, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = load i64, i64* %5, align 8
  %31 = lshr i64 %30, 2
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %10, align 4
  br label %36

33:                                               ; preds = %3
  %34 = load i64, i64* %5, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %33, %29
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @pll_get_post_div(%struct.hdmi_8996_post_divider* %8, i32 %37)
  store i32 %38, i32* %22, align 4
  %39 = load i32, i32* %22, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %22, align 4
  store i32 %42, i32* %4, align 4
  br label %532

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.hdmi_8996_post_divider, %struct.hdmi_8996_post_divider* %8, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %11, align 4
  %46 = load i64, i64* %6, align 8
  %47 = mul i64 4, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @do_div(i32 %49, i32 %50)
  %52 = getelementptr inbounds %struct.hdmi_8996_post_divider, %struct.hdmi_8996_post_divider* %8, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %53, 1048576
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @do_div(i32 %55, i32 %56)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %11, align 4
  %59 = mul nsw i32 %58, 1048576
  %60 = load i32, i32* %12, align 4
  %61 = sub nsw i32 %60, %59
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %14, align 4
  %64 = ashr i32 %63, 1
  %65 = icmp sgt i32 %62, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %43
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %66, %43
  %70 = load i32, i32* %12, align 4
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @pll_get_cpctrl(i32 %70, i64 %71, i32 0)
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @pll_get_rctrl(i32 %73, i32 0)
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @pll_get_cctrl(i32 %75, i32 0)
  store i32 %76, i32* %18, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @pll_get_integloop_gain(i32 %77, i32 %78, i64 %79, i32 0)
  store i32 %80, i32* %19, align 4
  %81 = getelementptr inbounds %struct.hdmi_8996_post_divider, %struct.hdmi_8996_post_divider* %8, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = getelementptr inbounds %struct.hdmi_8996_post_divider, %struct.hdmi_8996_post_divider* %8, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @do_div(i32 %83, i32 %85)
  %87 = load i32, i32* %13, align 4
  %88 = load i64, i64* %6, align 8
  %89 = call i32 @pll_get_pll_cmp(i32 %87, i64 %88)
  store i32 %89, i32* %20, align 4
  %90 = getelementptr inbounds %struct.hdmi_8996_post_divider, %struct.hdmi_8996_post_divider* %8, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* %13, align 4
  %94 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = load i64, i64* %5, align 8
  %96 = trunc i64 %95 to i32
  %97 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %10, align 4
  %99 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = getelementptr inbounds %struct.hdmi_8996_post_divider, %struct.hdmi_8996_post_divider* %8, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %11, align 4
  %104 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %12, align 4
  %106 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %16, align 4
  %108 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %17, align 4
  %110 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* %18, align 4
  %112 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %19, align 4
  %114 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %113)
  %115 = getelementptr inbounds %struct.hdmi_8996_post_divider, %struct.hdmi_8996_post_divider* %8, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* %20, align 4
  %119 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @HDMI_DIG_FREQ_BIT_CLK_THRESHOLD, align 4
  %122 = icmp sgt i32 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %69
  %124 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %125 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %124, i32 0, i32 0
  store i32 1, i32* %125, align 8
  br label %129

126:                                              ; preds = %69
  %127 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %128 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %127, i32 0, i32 0
  store i32 2, i32* %128, align 8
  br label %129

129:                                              ; preds = %126, %123
  %130 = getelementptr inbounds %struct.hdmi_8996_post_divider, %struct.hdmi_8996_post_divider* %8, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = or i32 32, %131
  %133 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %134 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* %18, align 4
  %136 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %137 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  %138 = load i32, i32* %17, align 4
  %139 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %140 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* %16, align 4
  %142 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %143 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %142, i32 0, i32 4
  store i32 %141, i32* %143, align 8
  %144 = load i32, i32* %11, align 4
  %145 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %146 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %145, i32 0, i32 5
  store i32 %144, i32* %146, align 4
  %147 = load i32, i32* %12, align 4
  %148 = and i32 %147, 255
  %149 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %150 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %149, i32 0, i32 6
  store i32 %148, i32* %150, align 8
  %151 = load i32, i32* %12, align 4
  %152 = and i32 %151, 65280
  %153 = ashr i32 %152, 8
  %154 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %155 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %154, i32 0, i32 7
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* %12, align 4
  %157 = and i32 %156, 983040
  %158 = ashr i32 %157, 16
  %159 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %160 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %159, i32 0, i32 8
  store i32 %158, i32* %160, align 8
  %161 = load i32, i32* %19, align 4
  %162 = and i32 %161, 255
  %163 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %164 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %163, i32 0, i32 9
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* %19, align 4
  %166 = and i32 %165, 3840
  %167 = ashr i32 %166, 8
  %168 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %169 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %168, i32 0, i32 10
  store i32 %167, i32* %169, align 8
  %170 = load i32, i32* %20, align 4
  %171 = and i32 %170, 255
  %172 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %173 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %172, i32 0, i32 11
  store i32 %171, i32* %173, align 4
  %174 = load i32, i32* %20, align 4
  %175 = and i32 %174, 65280
  %176 = ashr i32 %175, 8
  %177 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %178 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %177, i32 0, i32 12
  store i32 %176, i32* %178, align 8
  %179 = load i32, i32* %20, align 4
  %180 = and i32 %179, 196608
  %181 = ashr i32 %180, 16
  %182 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %183 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %182, i32 0, i32 13
  store i32 %181, i32* %183, align 4
  %184 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %185 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %184, i32 0, i32 14
  store i32 0, i32* %185, align 8
  %186 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %187 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %186, i32 0, i32 15
  store i32 44, i32* %187, align 4
  %188 = load i32, i32* @HDMI_CORECLK_DIV, align 4
  %189 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %190 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %189, i32 0, i32 25
  store i32 %188, i32* %190, align 8
  %191 = load i32, i32* %9, align 4
  %192 = load i32, i32* @HDMI_HIGH_FREQ_BIT_CLK_THRESHOLD, align 4
  %193 = icmp sgt i32 %191, %192
  %194 = zext i1 %193 to i64
  %195 = select i1 %193, i32 16, i32 0
  %196 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %197 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %196, i32 0, i32 16
  store i32 %195, i32* %197, align 8
  %198 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %199 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %198, i32 0, i32 17
  store i32 0, i32* %199, align 4
  %200 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %201 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %200, i32 0, i32 18
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 2
  store i32 67, i32* %203, align 4
  %204 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %205 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %204, i32 0, i32 18
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 0
  store i32 67, i32* %207, align 4
  %208 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %209 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %208, i32 0, i32 19
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 2
  store i32 12, i32* %211, align 4
  %212 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %213 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %212, i32 0, i32 19
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 1
  store i32 12, i32* %215, align 4
  %216 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %217 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %216, i32 0, i32 19
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 0
  store i32 12, i32* %219, align 4
  %220 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %221 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %220, i32 0, i32 19
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 3
  store i32 3, i32* %223, align 4
  store i32 0, i32* %21, align 4
  br label %224

224:                                              ; preds = %238, %129
  %225 = load i32, i32* %21, align 4
  %226 = load i32, i32* @HDMI_NUM_TX_CHANNEL, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %241

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.hdmi_8996_post_divider, %struct.hdmi_8996_post_divider* %8, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %230, 4
  %232 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %233 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %232, i32 0, i32 20
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %21, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  store i32 %231, i32* %237, align 4
  br label %238

238:                                              ; preds = %228
  %239 = load i32, i32* %21, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %21, align 4
  br label %224

241:                                              ; preds = %224
  %242 = load i32, i32* %9, align 4
  %243 = load i32, i32* @HDMI_HIGH_FREQ_BIT_CLK_THRESHOLD, align 4
  %244 = icmp sgt i32 %242, %243
  br i1 %244, label %245, label %310

245:                                              ; preds = %241
  %246 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %247 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %246, i32 0, i32 21
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 2
  store i32 37, i32* %249, align 4
  %250 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %251 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %250, i32 0, i32 21
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 1
  store i32 37, i32* %253, align 4
  %254 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %255 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %254, i32 0, i32 21
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 0
  store i32 37, i32* %257, align 4
  %258 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %259 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %258, i32 0, i32 21
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 3
  store i32 34, i32* %261, align 4
  %262 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %263 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %262, i32 0, i32 22
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 2
  store i32 35, i32* %265, align 4
  %266 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %267 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %266, i32 0, i32 22
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 1
  store i32 35, i32* %269, align 4
  %270 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %271 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %270, i32 0, i32 22
  %272 = load i32*, i32** %271, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 0
  store i32 35, i32* %273, align 4
  %274 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %275 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %274, i32 0, i32 22
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 3
  store i32 39, i32* %277, align 4
  %278 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %279 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %278, i32 0, i32 23
  %280 = load i32*, i32** %279, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 3
  store i32 0, i32* %281, align 4
  %282 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %283 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %282, i32 0, i32 23
  %284 = load i32*, i32** %283, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 2
  store i32 0, i32* %285, align 4
  %286 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %287 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %286, i32 0, i32 23
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 1
  store i32 0, i32* %289, align 4
  %290 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %291 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %290, i32 0, i32 23
  %292 = load i32*, i32** %291, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 0
  store i32 0, i32* %293, align 4
  %294 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %295 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %294, i32 0, i32 24
  %296 = load i32*, i32** %295, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 2
  store i32 13, i32* %297, align 4
  %298 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %299 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %298, i32 0, i32 24
  %300 = load i32*, i32** %299, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 1
  store i32 13, i32* %301, align 4
  %302 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %303 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %302, i32 0, i32 24
  %304 = load i32*, i32** %303, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 0
  store i32 13, i32* %305, align 4
  %306 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %307 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %306, i32 0, i32 24
  %308 = load i32*, i32** %307, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 3
  store i32 0, i32* %309, align 4
  br label %393

310:                                              ; preds = %241
  %311 = load i32, i32* %9, align 4
  %312 = load i32, i32* @HDMI_MID_FREQ_BIT_CLK_THRESHOLD, align 4
  %313 = icmp sgt i32 %311, %312
  br i1 %313, label %314, label %358

314:                                              ; preds = %310
  store i32 0, i32* %21, align 4
  br label %315

315:                                              ; preds = %338, %314
  %316 = load i32, i32* %21, align 4
  %317 = load i32, i32* @HDMI_NUM_TX_CHANNEL, align 4
  %318 = icmp slt i32 %316, %317
  br i1 %318, label %319, label %341

319:                                              ; preds = %315
  %320 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %321 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %320, i32 0, i32 21
  %322 = load i32*, i32** %321, align 8
  %323 = load i32, i32* %21, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %322, i64 %324
  store i32 37, i32* %325, align 4
  %326 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %327 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %326, i32 0, i32 22
  %328 = load i32*, i32** %327, align 8
  %329 = load i32, i32* %21, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  store i32 35, i32* %331, align 4
  %332 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %333 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %332, i32 0, i32 23
  %334 = load i32*, i32** %333, align 8
  %335 = load i32, i32* %21, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %334, i64 %336
  store i32 0, i32* %337, align 4
  br label %338

338:                                              ; preds = %319
  %339 = load i32, i32* %21, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %21, align 4
  br label %315

341:                                              ; preds = %315
  %342 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %343 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %342, i32 0, i32 24
  %344 = load i32*, i32** %343, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 2
  store i32 13, i32* %345, align 4
  %346 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %347 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %346, i32 0, i32 24
  %348 = load i32*, i32** %347, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 1
  store i32 13, i32* %349, align 4
  %350 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %351 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %350, i32 0, i32 24
  %352 = load i32*, i32** %351, align 8
  %353 = getelementptr inbounds i32, i32* %352, i64 0
  store i32 13, i32* %353, align 4
  %354 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %355 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %354, i32 0, i32 24
  %356 = load i32*, i32** %355, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 3
  store i32 0, i32* %357, align 4
  br label %392

358:                                              ; preds = %310
  store i32 0, i32* %21, align 4
  br label %359

359:                                              ; preds = %388, %358
  %360 = load i32, i32* %21, align 4
  %361 = load i32, i32* @HDMI_NUM_TX_CHANNEL, align 4
  %362 = icmp slt i32 %360, %361
  br i1 %362, label %363, label %391

363:                                              ; preds = %359
  %364 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %365 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %364, i32 0, i32 21
  %366 = load i32*, i32** %365, align 8
  %367 = load i32, i32* %21, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %366, i64 %368
  store i32 32, i32* %369, align 4
  %370 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %371 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %370, i32 0, i32 22
  %372 = load i32*, i32** %371, align 8
  %373 = load i32, i32* %21, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %372, i64 %374
  store i32 32, i32* %375, align 4
  %376 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %377 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %376, i32 0, i32 23
  %378 = load i32*, i32** %377, align 8
  %379 = load i32, i32* %21, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %378, i64 %380
  store i32 0, i32* %381, align 4
  %382 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %383 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %382, i32 0, i32 24
  %384 = load i32*, i32** %383, align 8
  %385 = load i32, i32* %21, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32, i32* %384, i64 %386
  store i32 14, i32* %387, align 4
  br label %388

388:                                              ; preds = %363
  %389 = load i32, i32* %21, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %21, align 4
  br label %359

391:                                              ; preds = %359
  br label %392

392:                                              ; preds = %391, %341
  br label %393

393:                                              ; preds = %392, %245
  %394 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %395 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i32 %396)
  %398 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %399 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 %400)
  %402 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %403 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %402, i32 0, i32 14
  %404 = load i32, i32* %403, align 8
  %405 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %404)
  %406 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %407 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %406, i32 0, i32 2
  %408 = load i32, i32* %407, align 8
  %409 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i32 %408)
  %410 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %411 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %410, i32 0, i32 3
  %412 = load i32, i32* %411, align 4
  %413 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0), i32 %412)
  %414 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %415 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %414, i32 0, i32 4
  %416 = load i32, i32* %415, align 8
  %417 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i32 %416)
  %418 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %419 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %418, i32 0, i32 5
  %420 = load i32, i32* %419, align 4
  %421 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0), i32 %420)
  %422 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %423 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %422, i32 0, i32 6
  %424 = load i32, i32* %423, align 8
  %425 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i32 %424)
  %426 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %427 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %426, i32 0, i32 7
  %428 = load i32, i32* %427, align 4
  %429 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0), i32 %428)
  %430 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %431 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %430, i32 0, i32 8
  %432 = load i32, i32* %431, align 8
  %433 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i64 0, i64 0), i32 %432)
  %434 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %435 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %434, i32 0, i32 9
  %436 = load i32, i32* %435, align 4
  %437 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i64 0, i64 0), i32 %436)
  %438 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %439 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %438, i32 0, i32 10
  %440 = load i32, i32* %439, align 8
  %441 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i64 0, i64 0), i32 %440)
  %442 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %443 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %442, i32 0, i32 11
  %444 = load i32, i32* %443, align 4
  %445 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i64 0, i64 0), i32 %444)
  %446 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %447 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %446, i32 0, i32 12
  %448 = load i32, i32* %447, align 8
  %449 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0), i32 %448)
  %450 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %451 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %450, i32 0, i32 13
  %452 = load i32, i32* %451, align 4
  %453 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i32 %452)
  %454 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %455 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %454, i32 0, i32 15
  %456 = load i32, i32* %455, align 4
  %457 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0), i32 %456)
  %458 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %459 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %458, i32 0, i32 25
  %460 = load i32, i32* %459, align 8
  %461 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 %460)
  %462 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %463 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %462, i32 0, i32 16
  %464 = load i32, i32* %463, align 8
  %465 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0), i32 %464)
  %466 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %467 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %466, i32 0, i32 18
  %468 = load i32*, i32** %467, align 8
  %469 = getelementptr inbounds i32, i32* %468, i64 0
  %470 = load i32, i32* %469, align 4
  %471 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0), i32 %470)
  %472 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %473 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %472, i32 0, i32 18
  %474 = load i32*, i32** %473, align 8
  %475 = getelementptr inbounds i32, i32* %474, i64 2
  %476 = load i32, i32* %475, align 4
  %477 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i64 0, i64 0), i32 %476)
  store i32 0, i32* %21, align 4
  br label %478

478:                                              ; preds = %528, %393
  %479 = load i32, i32* %21, align 4
  %480 = load i32, i32* @HDMI_NUM_TX_CHANNEL, align 4
  %481 = icmp slt i32 %479, %480
  br i1 %481, label %482, label %531

482:                                              ; preds = %478
  %483 = load i32, i32* %21, align 4
  %484 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %485 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %484, i32 0, i32 20
  %486 = load i32*, i32** %485, align 8
  %487 = load i32, i32* %21, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds i32, i32* %486, i64 %488
  %490 = load i32, i32* %489, align 4
  %491 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i64 0, i64 0), i32 %483, i32 %490)
  %492 = load i32, i32* %21, align 4
  %493 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %494 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %493, i32 0, i32 21
  %495 = load i32*, i32** %494, align 8
  %496 = load i32, i32* %21, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds i32, i32* %495, i64 %497
  %499 = load i32, i32* %498, align 4
  %500 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i32 %492, i32 %499)
  %501 = load i32, i32* %21, align 4
  %502 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %503 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %502, i32 0, i32 22
  %504 = load i32*, i32** %503, align 8
  %505 = load i32, i32* %21, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds i32, i32* %504, i64 %506
  %508 = load i32, i32* %507, align 4
  %509 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i64 0, i64 0), i32 %501, i32 %508)
  %510 = load i32, i32* %21, align 4
  %511 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %512 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %511, i32 0, i32 23
  %513 = load i32*, i32** %512, align 8
  %514 = load i32, i32* %21, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds i32, i32* %513, i64 %515
  %517 = load i32, i32* %516, align 4
  %518 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.36, i64 0, i64 0), i32 %510, i32 %517)
  %519 = load i32, i32* %21, align 4
  %520 = load %struct.hdmi_8996_phy_pll_reg_cfg*, %struct.hdmi_8996_phy_pll_reg_cfg** %7, align 8
  %521 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, %struct.hdmi_8996_phy_pll_reg_cfg* %520, i32 0, i32 24
  %522 = load i32*, i32** %521, align 8
  %523 = load i32, i32* %21, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds i32, i32* %522, i64 %524
  %526 = load i32, i32* %525, align 4
  %527 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i64 0, i64 0), i32 %519, i32 %526)
  br label %528

528:                                              ; preds = %482
  %529 = load i32, i32* %21, align 4
  %530 = add nsw i32 %529, 1
  store i32 %530, i32* %21, align 4
  br label %478

531:                                              ; preds = %478
  store i32 0, i32* %4, align 4
  br label %532

532:                                              ; preds = %531, %41
  %533 = load i32, i32* %4, align 4
  ret i32 %533
}

declare dso_local i32 @pll_get_post_div(%struct.hdmi_8996_post_divider*, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @pll_get_cpctrl(i32, i64, i32) #1

declare dso_local i32 @pll_get_rctrl(i32, i32) #1

declare dso_local i32 @pll_get_cctrl(i32, i32) #1

declare dso_local i32 @pll_get_integloop_gain(i32, i32, i64, i32) #1

declare dso_local i32 @pll_get_pll_cmp(i32, i64) #1

declare dso_local i32 @DBG(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
