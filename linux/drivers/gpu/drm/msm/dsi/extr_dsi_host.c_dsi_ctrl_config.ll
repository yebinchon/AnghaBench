; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_ctrl_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_ctrl_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dsi_host = type { i32, i32, i32, i32, i32, %struct.msm_dsi_cfg_handler* }
%struct.msm_dsi_cfg_handler = type { i64, i64 }
%struct.msm_dsi_phy_shared_timings = type { i64, i32, i32 }

@REG_DSI_CTRL = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO_HSE = common dso_local global i32 0, align 4
@DSI_VID_CFG0_PULSE_MODE_HSA_HE = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO_HFP = common dso_local global i32 0, align 4
@DSI_VID_CFG0_HFP_POWER_STOP = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO_HBP = common dso_local global i32 0, align 4
@DSI_VID_CFG0_HBP_POWER_STOP = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO_HSA = common dso_local global i32 0, align 4
@DSI_VID_CFG0_HSA_POWER_STOP = common dso_local global i32 0, align 4
@DSI_VID_CFG0_EOF_BLLP_POWER_STOP = common dso_local global i32 0, align 4
@DSI_VID_CFG0_BLLP_POWER_STOP = common dso_local global i32 0, align 4
@REG_DSI_VID_CFG0 = common dso_local global i32 0, align 4
@SWAP_RGB = common dso_local global i32 0, align 4
@REG_DSI_VID_CFG1 = common dso_local global i32 0, align 4
@REG_DSI_CMD_CFG0 = common dso_local global i32 0, align 4
@MIPI_DCS_WRITE_MEMORY_START = common dso_local global i32 0, align 4
@MIPI_DCS_WRITE_MEMORY_CONTINUE = common dso_local global i32 0, align 4
@DSI_CMD_CFG1_INSERT_DCS_COMMAND = common dso_local global i32 0, align 4
@REG_DSI_CMD_CFG1 = common dso_local global i32 0, align 4
@REG_DSI_CMD_DMA_CTRL = common dso_local global i32 0, align 4
@DSI_CMD_DMA_CTRL_FROM_FRAME_BUFFER = common dso_local global i32 0, align 4
@DSI_CMD_DMA_CTRL_LOW_POWER = common dso_local global i32 0, align 4
@DSI_TRIG_CTRL_TE = common dso_local global i32 0, align 4
@TRIGGER_NONE = common dso_local global i32 0, align 4
@TRIGGER_SW = common dso_local global i32 0, align 4
@MSM_DSI_VER_MAJOR_6G = common dso_local global i64 0, align 8
@MSM_DSI_6G_VER_MINOR_V1_2 = common dso_local global i64 0, align 8
@DSI_TRIG_CTRL_BLOCK_DMA_WITHIN_FRAME = common dso_local global i32 0, align 4
@REG_DSI_TRIG_CTRL = common dso_local global i32 0, align 4
@REG_DSI_CLKOUT_TIMING_CTRL = common dso_local global i32 0, align 4
@MSM_DSI_6G_VER_MINOR_V1_0 = common dso_local global i64 0, align 8
@REG_DSI_T_CLK_PRE_EXTEND = common dso_local global i32 0, align 4
@DSI_T_CLK_PRE_EXTEND_INC_BY_2_BYTECLK = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_EOT_PACKET = common dso_local global i32 0, align 4
@DSI_EOT_PACKET_CTRL_TX_EOT_APPEND = common dso_local global i32 0, align 4
@REG_DSI_EOT_PACKET_CTRL = common dso_local global i32 0, align 4
@REG_DSI_ERR_INT_MASK0 = common dso_local global i32 0, align 4
@DSI_IRQ_MASK_ERROR = common dso_local global i32 0, align 4
@REG_DSI_CLK_CTRL = common dso_local global i32 0, align 4
@DSI_CLK_CTRL_ENABLE_CLKS = common dso_local global i32 0, align 4
@DSI_CTRL_CLK_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"lane number=%d\00", align 1
@DSI_CTRL_LANE0 = common dso_local global i32 0, align 4
@REG_DSI_LANE_SWAP_CTRL = common dso_local global i32 0, align 4
@MIPI_DSI_CLOCK_NON_CONTINUOUS = common dso_local global i32 0, align 4
@REG_DSI_LANE_CTRL = common dso_local global i32 0, align 4
@DSI_LANE_CTRL_CLKLN_HS_FORCE_REQUEST = common dso_local global i32 0, align 4
@DSI_CTRL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_dsi_host*, i32, %struct.msm_dsi_phy_shared_timings*)* @dsi_ctrl_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_ctrl_config(%struct.msm_dsi_host* %0, i32 %1, %struct.msm_dsi_phy_shared_timings* %2) #0 {
  %4 = alloca %struct.msm_dsi_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.msm_dsi_phy_shared_timings*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.msm_dsi_cfg_handler*, align 8
  %10 = alloca i32, align 4
  store %struct.msm_dsi_host* %0, %struct.msm_dsi_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.msm_dsi_phy_shared_timings* %2, %struct.msm_dsi_phy_shared_timings** %6, align 8
  %11 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %12 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %15 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %18 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %17, i32 0, i32 5
  %19 = load %struct.msm_dsi_cfg_handler*, %struct.msm_dsi_cfg_handler** %18, align 8
  store %struct.msm_dsi_cfg_handler* %19, %struct.msm_dsi_cfg_handler** %9, align 8
  store i32 0, i32* %10, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %24 = load i32, i32* @REG_DSI_CTRL, align 4
  %25 = call i32 @dsi_write(%struct.msm_dsi_host* %23, i32 %24, i32 0)
  br label %262

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @MIPI_DSI_MODE_VIDEO, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %98

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @MIPI_DSI_MODE_VIDEO_HSE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @DSI_VID_CFG0_PULSE_MODE_HSA_HE, align 4
  %38 = load i32, i32* %10, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %36, %31
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @MIPI_DSI_MODE_VIDEO_HFP, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @DSI_VID_CFG0_HFP_POWER_STOP, align 4
  %47 = load i32, i32* %10, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @MIPI_DSI_MODE_VIDEO_HBP, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @DSI_VID_CFG0_HBP_POWER_STOP, align 4
  %56 = load i32, i32* %10, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @MIPI_DSI_MODE_VIDEO_HSA, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @DSI_VID_CFG0_HSA_POWER_STOP, align 4
  %65 = load i32, i32* %10, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %63, %58
  %68 = load i32, i32* @DSI_VID_CFG0_EOF_BLLP_POWER_STOP, align 4
  %69 = load i32, i32* @DSI_VID_CFG0_BLLP_POWER_STOP, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* %10, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @dsi_get_traffic_mode(i32 %73)
  %75 = call i32 @DSI_VID_CFG0_TRAFFIC_MODE(i32 %74)
  %76 = load i32, i32* %10, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @dsi_get_vid_fmt(i32 %78)
  %80 = call i32 @DSI_VID_CFG0_DST_FORMAT(i32 %79)
  %81 = load i32, i32* %10, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %10, align 4
  %83 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %84 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @DSI_VID_CFG0_VIRT_CHANNEL(i32 %85)
  %87 = load i32, i32* %10, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %10, align 4
  %89 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %90 = load i32, i32* @REG_DSI_VID_CFG0, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @dsi_write(%struct.msm_dsi_host* %89, i32 %90, i32 %91)
  %93 = load i32, i32* @SWAP_RGB, align 4
  %94 = call i32 @DSI_VID_CFG1_RGB_SWAP(i32 %93)
  store i32 %94, i32* %10, align 4
  %95 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %96 = load i32, i32* @REG_DSI_VID_CFG1, align 4
  %97 = call i32 @dsi_write(%struct.msm_dsi_host* %95, i32 %96, i32 0)
  br label %122

98:                                               ; preds = %26
  %99 = load i32, i32* @SWAP_RGB, align 4
  %100 = call i32 @DSI_CMD_CFG0_RGB_SWAP(i32 %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @dsi_get_cmd_fmt(i32 %101)
  %103 = call i32 @DSI_CMD_CFG0_DST_FORMAT(i32 %102)
  %104 = load i32, i32* %10, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %10, align 4
  %106 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %107 = load i32, i32* @REG_DSI_CMD_CFG0, align 4
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @dsi_write(%struct.msm_dsi_host* %106, i32 %107, i32 %108)
  %110 = load i32, i32* @MIPI_DCS_WRITE_MEMORY_START, align 4
  %111 = call i32 @DSI_CMD_CFG1_WR_MEM_START(i32 %110)
  %112 = load i32, i32* @MIPI_DCS_WRITE_MEMORY_CONTINUE, align 4
  %113 = call i32 @DSI_CMD_CFG1_WR_MEM_CONTINUE(i32 %112)
  %114 = or i32 %111, %113
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* @DSI_CMD_CFG1_INSERT_DCS_COMMAND, align 4
  %116 = load i32, i32* %10, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %10, align 4
  %118 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %119 = load i32, i32* @REG_DSI_CMD_CFG1, align 4
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @dsi_write(%struct.msm_dsi_host* %118, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %98, %67
  %123 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %124 = load i32, i32* @REG_DSI_CMD_DMA_CTRL, align 4
  %125 = load i32, i32* @DSI_CMD_DMA_CTRL_FROM_FRAME_BUFFER, align 4
  %126 = load i32, i32* @DSI_CMD_DMA_CTRL_LOW_POWER, align 4
  %127 = or i32 %125, %126
  %128 = call i32 @dsi_write(%struct.msm_dsi_host* %123, i32 %124, i32 %127)
  store i32 0, i32* %10, align 4
  %129 = load i32, i32* @DSI_TRIG_CTRL_TE, align 4
  %130 = load i32, i32* %10, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* @TRIGGER_NONE, align 4
  %133 = call i32 @DSI_TRIG_CTRL_MDP_TRIGGER(i32 %132)
  %134 = load i32, i32* %10, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* @TRIGGER_SW, align 4
  %137 = call i32 @DSI_TRIG_CTRL_DMA_TRIGGER(i32 %136)
  %138 = load i32, i32* %10, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %10, align 4
  %140 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %141 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @DSI_TRIG_CTRL_STREAM(i32 %142)
  %144 = load i32, i32* %10, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %10, align 4
  %146 = load %struct.msm_dsi_cfg_handler*, %struct.msm_dsi_cfg_handler** %9, align 8
  %147 = getelementptr inbounds %struct.msm_dsi_cfg_handler, %struct.msm_dsi_cfg_handler* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @MSM_DSI_VER_MAJOR_6G, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %161

151:                                              ; preds = %122
  %152 = load %struct.msm_dsi_cfg_handler*, %struct.msm_dsi_cfg_handler** %9, align 8
  %153 = getelementptr inbounds %struct.msm_dsi_cfg_handler, %struct.msm_dsi_cfg_handler* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @MSM_DSI_6G_VER_MINOR_V1_2, align 8
  %156 = icmp sge i64 %154, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %151
  %158 = load i32, i32* @DSI_TRIG_CTRL_BLOCK_DMA_WITHIN_FRAME, align 4
  %159 = load i32, i32* %10, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %10, align 4
  br label %161

161:                                              ; preds = %157, %151, %122
  %162 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %163 = load i32, i32* @REG_DSI_TRIG_CTRL, align 4
  %164 = load i32, i32* %10, align 4
  %165 = call i32 @dsi_write(%struct.msm_dsi_host* %162, i32 %163, i32 %164)
  %166 = load %struct.msm_dsi_phy_shared_timings*, %struct.msm_dsi_phy_shared_timings** %6, align 8
  %167 = getelementptr inbounds %struct.msm_dsi_phy_shared_timings, %struct.msm_dsi_phy_shared_timings* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @DSI_CLKOUT_TIMING_CTRL_T_CLK_POST(i32 %168)
  %170 = load %struct.msm_dsi_phy_shared_timings*, %struct.msm_dsi_phy_shared_timings** %6, align 8
  %171 = getelementptr inbounds %struct.msm_dsi_phy_shared_timings, %struct.msm_dsi_phy_shared_timings* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @DSI_CLKOUT_TIMING_CTRL_T_CLK_PRE(i32 %172)
  %174 = or i32 %169, %173
  store i32 %174, i32* %10, align 4
  %175 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %176 = load i32, i32* @REG_DSI_CLKOUT_TIMING_CTRL, align 4
  %177 = load i32, i32* %10, align 4
  %178 = call i32 @dsi_write(%struct.msm_dsi_host* %175, i32 %176, i32 %177)
  %179 = load %struct.msm_dsi_cfg_handler*, %struct.msm_dsi_cfg_handler** %9, align 8
  %180 = getelementptr inbounds %struct.msm_dsi_cfg_handler, %struct.msm_dsi_cfg_handler* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @MSM_DSI_VER_MAJOR_6G, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %200

184:                                              ; preds = %161
  %185 = load %struct.msm_dsi_cfg_handler*, %struct.msm_dsi_cfg_handler** %9, align 8
  %186 = getelementptr inbounds %struct.msm_dsi_cfg_handler, %struct.msm_dsi_cfg_handler* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @MSM_DSI_6G_VER_MINOR_V1_0, align 8
  %189 = icmp sgt i64 %187, %188
  br i1 %189, label %190, label %200

190:                                              ; preds = %184
  %191 = load %struct.msm_dsi_phy_shared_timings*, %struct.msm_dsi_phy_shared_timings** %6, align 8
  %192 = getelementptr inbounds %struct.msm_dsi_phy_shared_timings, %struct.msm_dsi_phy_shared_timings* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %190
  %196 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %197 = load i32, i32* @REG_DSI_T_CLK_PRE_EXTEND, align 4
  %198 = load i32, i32* @DSI_T_CLK_PRE_EXTEND_INC_BY_2_BYTECLK, align 4
  %199 = call i32 @dsi_write(%struct.msm_dsi_host* %196, i32 %197, i32 %198)
  br label %200

200:                                              ; preds = %195, %190, %184, %161
  store i32 0, i32* %10, align 4
  %201 = load i32, i32* %7, align 4
  %202 = load i32, i32* @MIPI_DSI_MODE_EOT_PACKET, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %209, label %205

205:                                              ; preds = %200
  %206 = load i32, i32* @DSI_EOT_PACKET_CTRL_TX_EOT_APPEND, align 4
  %207 = load i32, i32* %10, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %10, align 4
  br label %209

209:                                              ; preds = %205, %200
  %210 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %211 = load i32, i32* @REG_DSI_EOT_PACKET_CTRL, align 4
  %212 = load i32, i32* %10, align 4
  %213 = call i32 @dsi_write(%struct.msm_dsi_host* %210, i32 %211, i32 %212)
  %214 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %215 = load i32, i32* @REG_DSI_ERR_INT_MASK0, align 4
  %216 = call i32 @dsi_write(%struct.msm_dsi_host* %214, i32 %215, i32 335495136)
  %217 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %218 = load i32, i32* @DSI_IRQ_MASK_ERROR, align 4
  %219 = call i32 @dsi_intr_ctrl(%struct.msm_dsi_host* %217, i32 %218, i32 1)
  %220 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %221 = load i32, i32* @REG_DSI_CLK_CTRL, align 4
  %222 = load i32, i32* @DSI_CLK_CTRL_ENABLE_CLKS, align 4
  %223 = call i32 @dsi_write(%struct.msm_dsi_host* %220, i32 %221, i32 %222)
  %224 = load i32, i32* @DSI_CTRL_CLK_EN, align 4
  store i32 %224, i32* %10, align 4
  %225 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %226 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %227)
  %229 = load i32, i32* @DSI_CTRL_LANE0, align 4
  %230 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %231 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = shl i32 %229, %232
  %234 = load i32, i32* @DSI_CTRL_LANE0, align 4
  %235 = sub nsw i32 %233, %234
  %236 = load i32, i32* %10, align 4
  %237 = or i32 %236, %235
  store i32 %237, i32* %10, align 4
  %238 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %239 = load i32, i32* @REG_DSI_LANE_SWAP_CTRL, align 4
  %240 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %241 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @DSI_LANE_SWAP_CTRL_DLN_SWAP_SEL(i32 %242)
  %244 = call i32 @dsi_write(%struct.msm_dsi_host* %238, i32 %239, i32 %243)
  %245 = load i32, i32* %7, align 4
  %246 = load i32, i32* @MIPI_DSI_CLOCK_NON_CONTINUOUS, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %254, label %249

249:                                              ; preds = %209
  %250 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %251 = load i32, i32* @REG_DSI_LANE_CTRL, align 4
  %252 = load i32, i32* @DSI_LANE_CTRL_CLKLN_HS_FORCE_REQUEST, align 4
  %253 = call i32 @dsi_write(%struct.msm_dsi_host* %250, i32 %251, i32 %252)
  br label %254

254:                                              ; preds = %249, %209
  %255 = load i32, i32* @DSI_CTRL_ENABLE, align 4
  %256 = load i32, i32* %10, align 4
  %257 = or i32 %256, %255
  store i32 %257, i32* %10, align 4
  %258 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %4, align 8
  %259 = load i32, i32* @REG_DSI_CTRL, align 4
  %260 = load i32, i32* %10, align 4
  %261 = call i32 @dsi_write(%struct.msm_dsi_host* %258, i32 %259, i32 %260)
  br label %262

262:                                              ; preds = %254, %22
  ret void
}

declare dso_local i32 @dsi_write(%struct.msm_dsi_host*, i32, i32) #1

declare dso_local i32 @DSI_VID_CFG0_TRAFFIC_MODE(i32) #1

declare dso_local i32 @dsi_get_traffic_mode(i32) #1

declare dso_local i32 @DSI_VID_CFG0_DST_FORMAT(i32) #1

declare dso_local i32 @dsi_get_vid_fmt(i32) #1

declare dso_local i32 @DSI_VID_CFG0_VIRT_CHANNEL(i32) #1

declare dso_local i32 @DSI_VID_CFG1_RGB_SWAP(i32) #1

declare dso_local i32 @DSI_CMD_CFG0_RGB_SWAP(i32) #1

declare dso_local i32 @DSI_CMD_CFG0_DST_FORMAT(i32) #1

declare dso_local i32 @dsi_get_cmd_fmt(i32) #1

declare dso_local i32 @DSI_CMD_CFG1_WR_MEM_START(i32) #1

declare dso_local i32 @DSI_CMD_CFG1_WR_MEM_CONTINUE(i32) #1

declare dso_local i32 @DSI_TRIG_CTRL_MDP_TRIGGER(i32) #1

declare dso_local i32 @DSI_TRIG_CTRL_DMA_TRIGGER(i32) #1

declare dso_local i32 @DSI_TRIG_CTRL_STREAM(i32) #1

declare dso_local i32 @DSI_CLKOUT_TIMING_CTRL_T_CLK_POST(i32) #1

declare dso_local i32 @DSI_CLKOUT_TIMING_CTRL_T_CLK_PRE(i32) #1

declare dso_local i32 @dsi_intr_ctrl(%struct.msm_dsi_host*, i32, i32) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @DSI_LANE_SWAP_CTRL_DLN_SWAP_SEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
