; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_dsi.c_vc4_dsi_encoder_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_dsi.c_vc4_dsi_encoder_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }
%struct.vc4_dsi_encoder = type { %struct.vc4_dsi* }
%struct.vc4_dsi = type { i32, i64, i32, i32, i32, i32, %struct.TYPE_6__*, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.device }
%struct.device = type { i32 }
%struct.drm_printer = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Failed to runtime PM enable on DSI%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"DSI regs before:\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to set phy clock to %ld: %d\0A\00", align 1
@CTRL = common dso_local global i32 0, align 4
@DSI_CTRL_SOFT_RESET_CFG = common dso_local global i32 0, align 4
@CTRL_RESET_FIFOS = common dso_local global i32 0, align 4
@DSI_CTRL_HSDT_EOT_DISABLE = common dso_local global i32 0, align 4
@DSI_CTRL_RX_LPDT_EOT_DISABLE = common dso_local global i32 0, align 4
@STAT = common dso_local global i32 0, align 4
@DSI_PHY_AFEC0_PTATADJ = common dso_local global i32 0, align 4
@DSI_PHY_AFEC0_CTATADJ = common dso_local global i32 0, align 4
@DSI0_PHY_AFEC0_PD_DLANE1 = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO = common dso_local global i32 0, align 4
@DSI0_PHY_AFEC0_RESET = common dso_local global i32 0, align 4
@PHY_AFEC0 = common dso_local global i32 0, align 4
@PHY_AFEC1 = common dso_local global i32 0, align 4
@DSI0_PHY_AFEC1_IDR_DLANE1 = common dso_local global i32 0, align 4
@DSI0_PHY_AFEC1_IDR_DLANE0 = common dso_local global i32 0, align 4
@DSI0_PHY_AFEC1_IDR_CLANE = common dso_local global i32 0, align 4
@DSI1_PHY_AFEC0_IDR_CLANE = common dso_local global i32 0, align 4
@DSI1_PHY_AFEC0_IDR_DLANE0 = common dso_local global i32 0, align 4
@DSI1_PHY_AFEC0_IDR_DLANE1 = common dso_local global i32 0, align 4
@DSI1_PHY_AFEC0_IDR_DLANE2 = common dso_local global i32 0, align 4
@DSI1_PHY_AFEC0_IDR_DLANE3 = common dso_local global i32 0, align 4
@DSI1_PHY_AFEC0_PD_DLANE3 = common dso_local global i32 0, align 4
@DSI1_PHY_AFEC0_PD_DLANE2 = common dso_local global i32 0, align 4
@DSI1_PHY_AFEC0_PD_DLANE1 = common dso_local global i32 0, align 4
@DSI1_PHY_AFEC0_RESET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Failed to turn on DSI escape clock: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to turn on DSI PLL: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Failed to set pixel clock to %ldHz: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Failed to turn on DSI pixel clock: %d\0A\00", align 1
@HS_CLT0 = common dso_local global i32 0, align 4
@DSI_HS_CLT0_CZERO = common dso_local global i32 0, align 4
@DSI_HS_CLT0_CPRE = common dso_local global i32 0, align 4
@DSI_HS_CLT0_CPREP = common dso_local global i32 0, align 4
@HS_CLT1 = common dso_local global i32 0, align 4
@DSI_HS_CLT1_CTRAIL = common dso_local global i32 0, align 4
@DSI_HS_CLT1_CPOST = common dso_local global i32 0, align 4
@HS_CLT2 = common dso_local global i32 0, align 4
@DSI_HS_CLT2_WUP = common dso_local global i32 0, align 4
@HS_DLT3 = common dso_local global i32 0, align 4
@DSI_HS_DLT3_EXIT = common dso_local global i32 0, align 4
@DSI_HS_DLT3_ZERO = common dso_local global i32 0, align 4
@DSI_HS_DLT3_PRE = common dso_local global i32 0, align 4
@HS_DLT4 = common dso_local global i32 0, align 4
@ESC_TIME_NS = common dso_local global i32 0, align 4
@DSI_HS_DLT4_LPX = common dso_local global i32 0, align 4
@DSI_HS_DLT4_TRAIL = common dso_local global i32 0, align 4
@DSI_HS_DLT4_ANLAT = common dso_local global i32 0, align 4
@HS_DLT5 = common dso_local global i32 0, align 4
@DSI_HS_DLT5_INIT = common dso_local global i32 0, align 4
@HS_DLT6 = common dso_local global i32 0, align 4
@DSI_HS_DLT6_TA_GET = common dso_local global i32 0, align 4
@DSI_HS_DLT6_TA_SURE = common dso_local global i32 0, align 4
@DSI_HS_DLT6_TA_GO = common dso_local global i32 0, align 4
@DSI_HS_DLT6_LP_LPX = common dso_local global i32 0, align 4
@HS_DLT7 = common dso_local global i32 0, align 4
@DSI_HS_DLT7_LP_WUP = common dso_local global i32 0, align 4
@PHYC = common dso_local global i32 0, align 4
@DSI_PHYC_DLANE0_ENABLE = common dso_local global i32 0, align 4
@DSI_PHYC_DLANE1_ENABLE = common dso_local global i32 0, align 4
@DSI_PHYC_DLANE2_ENABLE = common dso_local global i32 0, align 4
@DSI_PHYC_DLANE3_ENABLE = common dso_local global i32 0, align 4
@PHYC_CLANE_ENABLE = common dso_local global i32 0, align 4
@MIPI_DSI_CLOCK_NON_CONTINUOUS = common dso_local global i32 0, align 4
@PHYC_HS_CLK_CONTINUOUS = common dso_local global i32 0, align 4
@DSI0_PHYC_ESC_CLK_LPDT = common dso_local global i32 0, align 4
@DSI1_PHYC_ESC_CLK_LPDT = common dso_local global i32 0, align 4
@DSI_CTRL_CAL_BYTE = common dso_local global i32 0, align 4
@HSTX_TO_CNT = common dso_local global i32 0, align 4
@LPRX_TO_CNT = common dso_local global i32 0, align 4
@TA_TO_CNT = common dso_local global i32 0, align 4
@PR_TO_CNT = common dso_local global i32 0, align 4
@DISP1_CTRL = common dso_local global i32 0, align 4
@DSI_DISP1_PFORMAT_32BIT_LE = common dso_local global i32 0, align 4
@DSI_DISP1_PFORMAT = common dso_local global i32 0, align 4
@DSI_DISP1_ENABLE = common dso_local global i32 0, align 4
@DSI0_CTRL_CTRL0 = common dso_local global i32 0, align 4
@DSI1_CTRL_EN = common dso_local global i32 0, align 4
@DISP0_CTRL = common dso_local global i32 0, align 4
@DSI_DISP0_PIX_CLK_DIV = common dso_local global i32 0, align 4
@DSI_DISP0_PFORMAT = common dso_local global i32 0, align 4
@DSI_DISP0_LP_STOP_PERFRAME = common dso_local global i32 0, align 4
@DSI_DISP0_LP_STOP_CTRL = common dso_local global i32 0, align 4
@DSI_DISP0_ST_END = common dso_local global i32 0, align 4
@DSI_DISP0_ENABLE = common dso_local global i32 0, align 4
@DSI_DISP0_COMMAND_MODE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"DSI regs after:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @vc4_dsi_encoder_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc4_dsi_encoder_enable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca %struct.vc4_dsi_encoder*, align 8
  %5 = alloca %struct.vc4_dsi*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.drm_printer, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.drm_printer, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %19 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %20 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store %struct.drm_display_mode* %24, %struct.drm_display_mode** %3, align 8
  %25 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %26 = call %struct.vc4_dsi_encoder* @to_vc4_dsi_encoder(%struct.drm_encoder* %25)
  store %struct.vc4_dsi_encoder* %26, %struct.vc4_dsi_encoder** %4, align 8
  %27 = load %struct.vc4_dsi_encoder*, %struct.vc4_dsi_encoder** %4, align 8
  %28 = getelementptr inbounds %struct.vc4_dsi_encoder, %struct.vc4_dsi_encoder* %27, i32 0, i32 0
  %29 = load %struct.vc4_dsi*, %struct.vc4_dsi** %28, align 8
  store %struct.vc4_dsi* %29, %struct.vc4_dsi** %5, align 8
  %30 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %31 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %30, i32 0, i32 6
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store %struct.device* %33, %struct.device** %6, align 8
  store i32 0, i32* %7, align 4
  %34 = call i32 @dsi_esc_timing(i32 60)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %36 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %37, 1000
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %11, align 8
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = call i32 @pm_runtime_get_sync(%struct.device* %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %1
  %45 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %46 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %539

49:                                               ; preds = %1
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %54 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %53, i32 0, i32 6
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = call i32 @drm_info_printer(%struct.device* %56)
  %58 = getelementptr inbounds %struct.drm_printer, %struct.drm_printer* %15, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %60 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %59, i32 0, i32 6
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = call i32 @dev_info(%struct.device* %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %64 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %65 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %64, i32 0, i32 5
  %66 = call i32 @drm_print_regset32(%struct.drm_printer* %15, i32* %65)
  br label %67

67:                                               ; preds = %52, %49
  %68 = load i64, i64* %11, align 8
  %69 = add i64 %68, 1000
  %70 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %71 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = mul i64 %69, %72
  store i64 %73, i64* %13, align 8
  %74 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %75 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 8
  %77 = load i64, i64* %13, align 8
  %78 = call i32 @clk_set_rate(i32 %76, i64 %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %67
  %82 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %83 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %82, i32 0, i32 6
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i64, i64* %13, align 8
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @dev_err(%struct.device* %85, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %86, i32 %87)
  br label %89

89:                                               ; preds = %81, %67
  %90 = load i32, i32* @CTRL, align 4
  %91 = load i32, i32* @DSI_CTRL_SOFT_RESET_CFG, align 4
  %92 = load i32, i32* @CTRL_RESET_FIFOS, align 4
  %93 = call i32 @DSI_PORT_BIT(i32 %92)
  %94 = or i32 %91, %93
  %95 = call i32 @DSI_PORT_WRITE(i32 %90, i32 %94)
  %96 = load i32, i32* @CTRL, align 4
  %97 = load i32, i32* @DSI_CTRL_HSDT_EOT_DISABLE, align 4
  %98 = load i32, i32* @DSI_CTRL_RX_LPDT_EOT_DISABLE, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @DSI_PORT_WRITE(i32 %96, i32 %99)
  %101 = load i32, i32* @STAT, align 4
  %102 = load i32, i32* @STAT, align 4
  %103 = call i32 @DSI_PORT_READ(i32 %102)
  %104 = call i32 @DSI_PORT_WRITE(i32 %101, i32 %103)
  %105 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %106 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %148

109:                                              ; preds = %89
  %110 = load i32, i32* @DSI_PHY_AFEC0_PTATADJ, align 4
  %111 = call i32 @VC4_SET_FIELD(i32 7, i32 %110)
  %112 = load i32, i32* @DSI_PHY_AFEC0_CTATADJ, align 4
  %113 = call i32 @VC4_SET_FIELD(i32 7, i32 %112)
  %114 = or i32 %111, %113
  store i32 %114, i32* %16, align 4
  %115 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %116 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %117, 2
  br i1 %118, label %119, label %123

119:                                              ; preds = %109
  %120 = load i32, i32* @DSI0_PHY_AFEC0_PD_DLANE1, align 4
  %121 = load i32, i32* %16, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %16, align 4
  br label %123

123:                                              ; preds = %119, %109
  %124 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %125 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @MIPI_DSI_MODE_VIDEO, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %123
  %131 = load i32, i32* @DSI0_PHY_AFEC0_RESET, align 4
  %132 = load i32, i32* %16, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %16, align 4
  br label %134

134:                                              ; preds = %130, %123
  %135 = load i32, i32* @PHY_AFEC0, align 4
  %136 = load i32, i32* %16, align 4
  %137 = call i32 @DSI_PORT_WRITE(i32 %135, i32 %136)
  %138 = load i32, i32* @PHY_AFEC1, align 4
  %139 = load i32, i32* @DSI0_PHY_AFEC1_IDR_DLANE1, align 4
  %140 = call i32 @VC4_SET_FIELD(i32 6, i32 %139)
  %141 = load i32, i32* @DSI0_PHY_AFEC1_IDR_DLANE0, align 4
  %142 = call i32 @VC4_SET_FIELD(i32 6, i32 %141)
  %143 = or i32 %140, %142
  %144 = load i32, i32* @DSI0_PHY_AFEC1_IDR_CLANE, align 4
  %145 = call i32 @VC4_SET_FIELD(i32 6, i32 %144)
  %146 = or i32 %143, %145
  %147 = call i32 @DSI_PORT_WRITE(i32 %138, i32 %146)
  br label %205

148:                                              ; preds = %89
  %149 = load i32, i32* @DSI_PHY_AFEC0_PTATADJ, align 4
  %150 = call i32 @VC4_SET_FIELD(i32 7, i32 %149)
  %151 = load i32, i32* @DSI_PHY_AFEC0_CTATADJ, align 4
  %152 = call i32 @VC4_SET_FIELD(i32 7, i32 %151)
  %153 = or i32 %150, %152
  %154 = load i32, i32* @DSI1_PHY_AFEC0_IDR_CLANE, align 4
  %155 = call i32 @VC4_SET_FIELD(i32 6, i32 %154)
  %156 = or i32 %153, %155
  %157 = load i32, i32* @DSI1_PHY_AFEC0_IDR_DLANE0, align 4
  %158 = call i32 @VC4_SET_FIELD(i32 6, i32 %157)
  %159 = or i32 %156, %158
  %160 = load i32, i32* @DSI1_PHY_AFEC0_IDR_DLANE1, align 4
  %161 = call i32 @VC4_SET_FIELD(i32 6, i32 %160)
  %162 = or i32 %159, %161
  %163 = load i32, i32* @DSI1_PHY_AFEC0_IDR_DLANE2, align 4
  %164 = call i32 @VC4_SET_FIELD(i32 6, i32 %163)
  %165 = or i32 %162, %164
  %166 = load i32, i32* @DSI1_PHY_AFEC0_IDR_DLANE3, align 4
  %167 = call i32 @VC4_SET_FIELD(i32 6, i32 %166)
  %168 = or i32 %165, %167
  store i32 %168, i32* %17, align 4
  %169 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %170 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = icmp slt i32 %171, 4
  br i1 %172, label %173, label %177

173:                                              ; preds = %148
  %174 = load i32, i32* @DSI1_PHY_AFEC0_PD_DLANE3, align 4
  %175 = load i32, i32* %17, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %17, align 4
  br label %177

177:                                              ; preds = %173, %148
  %178 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %179 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = icmp slt i32 %180, 3
  br i1 %181, label %182, label %186

182:                                              ; preds = %177
  %183 = load i32, i32* @DSI1_PHY_AFEC0_PD_DLANE2, align 4
  %184 = load i32, i32* %17, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %17, align 4
  br label %186

186:                                              ; preds = %182, %177
  %187 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %188 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = icmp slt i32 %189, 2
  br i1 %190, label %191, label %195

191:                                              ; preds = %186
  %192 = load i32, i32* @DSI1_PHY_AFEC0_PD_DLANE1, align 4
  %193 = load i32, i32* %17, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %17, align 4
  br label %195

195:                                              ; preds = %191, %186
  %196 = load i32, i32* @DSI1_PHY_AFEC0_RESET, align 4
  %197 = load i32, i32* %17, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %17, align 4
  %199 = load i32, i32* @PHY_AFEC0, align 4
  %200 = load i32, i32* %17, align 4
  %201 = call i32 @DSI_PORT_WRITE(i32 %199, i32 %200)
  %202 = load i32, i32* @PHY_AFEC1, align 4
  %203 = call i32 @DSI_PORT_WRITE(i32 %202, i32 0)
  %204 = call i32 @mdelay(i32 1)
  br label %205

205:                                              ; preds = %195, %134
  %206 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %207 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %206, i32 0, i32 10
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @clk_prepare_enable(i32 %208)
  store i32 %209, i32* %14, align 4
  %210 = load i32, i32* %14, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %205
  %213 = load i32, i32* %14, align 4
  %214 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %213)
  br label %539

215:                                              ; preds = %205
  %216 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %217 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %216, i32 0, i32 9
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @clk_prepare_enable(i32 %218)
  store i32 %219, i32* %14, align 4
  %220 = load i32, i32* %14, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %215
  %223 = load i32, i32* %14, align 4
  %224 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %223)
  br label %539

225:                                              ; preds = %215
  %226 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %227 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %226, i32 0, i32 9
  %228 = load i32, i32* %227, align 8
  %229 = call i64 @clk_get_rate(i32 %228)
  store i64 %229, i64* %8, align 8
  %230 = load i64, i64* %13, align 8
  %231 = udiv i64 %230, 8
  store i64 %231, i64* %12, align 8
  %232 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %233 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %232, i32 0, i32 8
  %234 = load i32, i32* %233, align 4
  %235 = load i64, i64* %12, align 8
  %236 = call i32 @clk_set_rate(i32 %234, i64 %235)
  store i32 %236, i32* %14, align 4
  %237 = load i32, i32* %14, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %225
  %240 = load %struct.device*, %struct.device** %6, align 8
  %241 = load i64, i64* %12, align 8
  %242 = load i32, i32* %14, align 4
  %243 = call i32 @dev_err(%struct.device* %240, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i64 %241, i32 %242)
  br label %244

244:                                              ; preds = %239, %225
  %245 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %246 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %245, i32 0, i32 8
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @clk_prepare_enable(i32 %247)
  store i32 %248, i32* %14, align 4
  %249 = load i32, i32* %14, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %244
  %252 = load i32, i32* %14, align 4
  %253 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %252)
  br label %539

254:                                              ; preds = %244
  %255 = load i64, i64* %8, align 8
  %256 = call i32 @DIV_ROUND_UP(i32 500000000, i64 %255)
  store i32 %256, i32* %9, align 4
  %257 = load i32, i32* @HS_CLT0, align 4
  %258 = load i32, i32* %9, align 4
  %259 = call i32 @dsi_hs_timing(i32 %258, i32 262, i32 0)
  %260 = load i32, i32* @DSI_HS_CLT0_CZERO, align 4
  %261 = call i32 @VC4_SET_FIELD(i32 %259, i32 %260)
  %262 = load i32, i32* %9, align 4
  %263 = call i32 @dsi_hs_timing(i32 %262, i32 0, i32 8)
  %264 = load i32, i32* @DSI_HS_CLT0_CPRE, align 4
  %265 = call i32 @VC4_SET_FIELD(i32 %263, i32 %264)
  %266 = or i32 %261, %265
  %267 = load i32, i32* %9, align 4
  %268 = call i32 @dsi_hs_timing(i32 %267, i32 38, i32 0)
  %269 = load i32, i32* @DSI_HS_CLT0_CPREP, align 4
  %270 = call i32 @VC4_SET_FIELD(i32 %268, i32 %269)
  %271 = or i32 %266, %270
  %272 = call i32 @DSI_PORT_WRITE(i32 %257, i32 %271)
  %273 = load i32, i32* @HS_CLT1, align 4
  %274 = load i32, i32* %9, align 4
  %275 = call i32 @dsi_hs_timing(i32 %274, i32 60, i32 0)
  %276 = load i32, i32* @DSI_HS_CLT1_CTRAIL, align 4
  %277 = call i32 @VC4_SET_FIELD(i32 %275, i32 %276)
  %278 = load i32, i32* %9, align 4
  %279 = call i32 @dsi_hs_timing(i32 %278, i32 60, i32 52)
  %280 = load i32, i32* @DSI_HS_CLT1_CPOST, align 4
  %281 = call i32 @VC4_SET_FIELD(i32 %279, i32 %280)
  %282 = or i32 %277, %281
  %283 = call i32 @DSI_PORT_WRITE(i32 %273, i32 %282)
  %284 = load i32, i32* @HS_CLT2, align 4
  %285 = load i32, i32* %9, align 4
  %286 = call i32 @dsi_hs_timing(i32 %285, i32 1000000, i32 0)
  %287 = load i32, i32* @DSI_HS_CLT2_WUP, align 4
  %288 = call i32 @VC4_SET_FIELD(i32 %286, i32 %287)
  %289 = call i32 @DSI_PORT_WRITE(i32 %284, i32 %288)
  %290 = load i32, i32* @HS_DLT3, align 4
  %291 = load i32, i32* %9, align 4
  %292 = call i32 @dsi_hs_timing(i32 %291, i32 100, i32 0)
  %293 = load i32, i32* @DSI_HS_DLT3_EXIT, align 4
  %294 = call i32 @VC4_SET_FIELD(i32 %292, i32 %293)
  %295 = load i32, i32* %9, align 4
  %296 = call i32 @dsi_hs_timing(i32 %295, i32 105, i32 6)
  %297 = load i32, i32* @DSI_HS_DLT3_ZERO, align 4
  %298 = call i32 @VC4_SET_FIELD(i32 %296, i32 %297)
  %299 = or i32 %294, %298
  %300 = load i32, i32* %9, align 4
  %301 = call i32 @dsi_hs_timing(i32 %300, i32 40, i32 4)
  %302 = load i32, i32* @DSI_HS_DLT3_PRE, align 4
  %303 = call i32 @VC4_SET_FIELD(i32 %301, i32 %302)
  %304 = or i32 %299, %303
  %305 = call i32 @DSI_PORT_WRITE(i32 %290, i32 %304)
  %306 = load i32, i32* @HS_DLT4, align 4
  %307 = load i32, i32* %9, align 4
  %308 = load i32, i32* %10, align 4
  %309 = load i32, i32* @ESC_TIME_NS, align 4
  %310 = mul nsw i32 %308, %309
  %311 = call i32 @dsi_hs_timing(i32 %307, i32 %310, i32 0)
  %312 = load i32, i32* @DSI_HS_DLT4_LPX, align 4
  %313 = call i32 @VC4_SET_FIELD(i32 %311, i32 %312)
  %314 = load i32, i32* %9, align 4
  %315 = call i32 @dsi_hs_timing(i32 %314, i32 0, i32 8)
  %316 = load i32, i32* %9, align 4
  %317 = call i32 @dsi_hs_timing(i32 %316, i32 60, i32 4)
  %318 = call i32 @max(i32 %315, i32 %317)
  %319 = load i32, i32* @DSI_HS_DLT4_TRAIL, align 4
  %320 = call i32 @VC4_SET_FIELD(i32 %318, i32 %319)
  %321 = or i32 %313, %320
  %322 = load i32, i32* @DSI_HS_DLT4_ANLAT, align 4
  %323 = call i32 @VC4_SET_FIELD(i32 0, i32 %322)
  %324 = or i32 %321, %323
  %325 = call i32 @DSI_PORT_WRITE(i32 %306, i32 %324)
  %326 = load i32, i32* @HS_DLT5, align 4
  %327 = load i32, i32* %9, align 4
  %328 = call i32 @dsi_hs_timing(i32 %327, i32 5000000, i32 0)
  %329 = load i32, i32* @DSI_HS_DLT5_INIT, align 4
  %330 = call i32 @VC4_SET_FIELD(i32 %328, i32 %329)
  %331 = call i32 @DSI_PORT_WRITE(i32 %326, i32 %330)
  %332 = load i32, i32* @HS_DLT6, align 4
  %333 = load i32, i32* %10, align 4
  %334 = mul nsw i32 %333, 5
  %335 = load i32, i32* @DSI_HS_DLT6_TA_GET, align 4
  %336 = call i32 @VC4_SET_FIELD(i32 %334, i32 %335)
  %337 = load i32, i32* %10, align 4
  %338 = load i32, i32* @DSI_HS_DLT6_TA_SURE, align 4
  %339 = call i32 @VC4_SET_FIELD(i32 %337, i32 %338)
  %340 = or i32 %336, %339
  %341 = load i32, i32* %10, align 4
  %342 = mul nsw i32 %341, 4
  %343 = load i32, i32* @DSI_HS_DLT6_TA_GO, align 4
  %344 = call i32 @VC4_SET_FIELD(i32 %342, i32 %343)
  %345 = or i32 %340, %344
  %346 = load i32, i32* %10, align 4
  %347 = load i32, i32* @DSI_HS_DLT6_LP_LPX, align 4
  %348 = call i32 @VC4_SET_FIELD(i32 %346, i32 %347)
  %349 = or i32 %345, %348
  %350 = call i32 @DSI_PORT_WRITE(i32 %332, i32 %349)
  %351 = load i32, i32* @HS_DLT7, align 4
  %352 = call i32 @dsi_esc_timing(i32 1000000)
  %353 = load i32, i32* @DSI_HS_DLT7_LP_WUP, align 4
  %354 = call i32 @VC4_SET_FIELD(i32 %352, i32 %353)
  %355 = call i32 @DSI_PORT_WRITE(i32 %351, i32 %354)
  %356 = load i32, i32* @PHYC, align 4
  %357 = load i32, i32* @DSI_PHYC_DLANE0_ENABLE, align 4
  %358 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %359 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 8
  %361 = icmp sge i32 %360, 2
  br i1 %361, label %362, label %364

362:                                              ; preds = %254
  %363 = load i32, i32* @DSI_PHYC_DLANE1_ENABLE, align 4
  br label %365

364:                                              ; preds = %254
  br label %365

365:                                              ; preds = %364, %362
  %366 = phi i32 [ %363, %362 ], [ 0, %364 ]
  %367 = or i32 %357, %366
  %368 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %369 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %368, i32 0, i32 2
  %370 = load i32, i32* %369, align 8
  %371 = icmp sge i32 %370, 3
  br i1 %371, label %372, label %374

372:                                              ; preds = %365
  %373 = load i32, i32* @DSI_PHYC_DLANE2_ENABLE, align 4
  br label %375

374:                                              ; preds = %365
  br label %375

375:                                              ; preds = %374, %372
  %376 = phi i32 [ %373, %372 ], [ 0, %374 ]
  %377 = or i32 %367, %376
  %378 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %379 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %378, i32 0, i32 2
  %380 = load i32, i32* %379, align 8
  %381 = icmp sge i32 %380, 4
  br i1 %381, label %382, label %384

382:                                              ; preds = %375
  %383 = load i32, i32* @DSI_PHYC_DLANE3_ENABLE, align 4
  br label %385

384:                                              ; preds = %375
  br label %385

385:                                              ; preds = %384, %382
  %386 = phi i32 [ %383, %382 ], [ 0, %384 ]
  %387 = or i32 %377, %386
  %388 = load i32, i32* @PHYC_CLANE_ENABLE, align 4
  %389 = call i32 @DSI_PORT_BIT(i32 %388)
  %390 = or i32 %387, %389
  %391 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %392 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %391, i32 0, i32 3
  %393 = load i32, i32* %392, align 4
  %394 = load i32, i32* @MIPI_DSI_CLOCK_NON_CONTINUOUS, align 4
  %395 = and i32 %393, %394
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %398

397:                                              ; preds = %385
  br label %401

398:                                              ; preds = %385
  %399 = load i32, i32* @PHYC_HS_CLK_CONTINUOUS, align 4
  %400 = call i32 @DSI_PORT_BIT(i32 %399)
  br label %401

401:                                              ; preds = %398, %397
  %402 = phi i32 [ 0, %397 ], [ %400, %398 ]
  %403 = or i32 %390, %402
  %404 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %405 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %408, label %413

408:                                              ; preds = %401
  %409 = load i32, i32* %10, align 4
  %410 = sub nsw i32 %409, 1
  %411 = load i32, i32* @DSI0_PHYC_ESC_CLK_LPDT, align 4
  %412 = call i32 @VC4_SET_FIELD(i32 %410, i32 %411)
  br label %418

413:                                              ; preds = %401
  %414 = load i32, i32* %10, align 4
  %415 = sub nsw i32 %414, 1
  %416 = load i32, i32* @DSI1_PHYC_ESC_CLK_LPDT, align 4
  %417 = call i32 @VC4_SET_FIELD(i32 %415, i32 %416)
  br label %418

418:                                              ; preds = %413, %408
  %419 = phi i32 [ %412, %408 ], [ %417, %413 ]
  %420 = or i32 %403, %419
  %421 = call i32 @DSI_PORT_WRITE(i32 %356, i32 %420)
  %422 = load i32, i32* @CTRL, align 4
  %423 = load i32, i32* @CTRL, align 4
  %424 = call i32 @DSI_PORT_READ(i32 %423)
  %425 = load i32, i32* @DSI_CTRL_CAL_BYTE, align 4
  %426 = or i32 %424, %425
  %427 = call i32 @DSI_PORT_WRITE(i32 %422, i32 %426)
  %428 = load i32, i32* @HSTX_TO_CNT, align 4
  %429 = call i32 @DSI_PORT_WRITE(i32 %428, i32 0)
  %430 = load i32, i32* @LPRX_TO_CNT, align 4
  %431 = call i32 @DSI_PORT_WRITE(i32 %430, i32 16777215)
  %432 = load i32, i32* @TA_TO_CNT, align 4
  %433 = call i32 @DSI_PORT_WRITE(i32 %432, i32 100000)
  %434 = load i32, i32* @PR_TO_CNT, align 4
  %435 = call i32 @DSI_PORT_WRITE(i32 %434, i32 100000)
  %436 = load i32, i32* @DISP1_CTRL, align 4
  %437 = load i32, i32* @DSI_DISP1_PFORMAT_32BIT_LE, align 4
  %438 = load i32, i32* @DSI_DISP1_PFORMAT, align 4
  %439 = call i32 @VC4_SET_FIELD(i32 %437, i32 %438)
  %440 = load i32, i32* @DSI_DISP1_ENABLE, align 4
  %441 = or i32 %439, %440
  %442 = call i32 @DSI_PORT_WRITE(i32 %436, i32 %441)
  %443 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %444 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 8
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %447, label %454

447:                                              ; preds = %418
  %448 = load i32, i32* @CTRL, align 4
  %449 = load i32, i32* @CTRL, align 4
  %450 = call i32 @DSI_PORT_READ(i32 %449)
  %451 = load i32, i32* @DSI0_CTRL_CTRL0, align 4
  %452 = or i32 %450, %451
  %453 = call i32 @DSI_PORT_WRITE(i32 %448, i32 %452)
  br label %461

454:                                              ; preds = %418
  %455 = load i32, i32* @CTRL, align 4
  %456 = load i32, i32* @CTRL, align 4
  %457 = call i32 @DSI_PORT_READ(i32 %456)
  %458 = load i32, i32* @DSI1_CTRL_EN, align 4
  %459 = or i32 %457, %458
  %460 = call i32 @DSI_PORT_WRITE(i32 %455, i32 %459)
  br label %461

461:                                              ; preds = %454, %447
  %462 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %463 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %462, i32 0, i32 0
  %464 = load i32, i32* %463, align 8
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %466, label %467

466:                                              ; preds = %461
  br label %475

467:                                              ; preds = %461
  %468 = load i32, i32* @PHY_AFEC0, align 4
  %469 = load i32, i32* @PHY_AFEC0, align 4
  %470 = call i32 @DSI_PORT_READ(i32 %469)
  %471 = load i32, i32* @DSI1_PHY_AFEC0_RESET, align 4
  %472 = xor i32 %471, -1
  %473 = and i32 %470, %472
  %474 = call i32 @DSI_PORT_WRITE(i32 %468, i32 %473)
  br label %475

475:                                              ; preds = %467, %466
  %476 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %477 = call i32 @vc4_dsi_ulps(%struct.vc4_dsi* %476, i32 0)
  %478 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %479 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %478, i32 0, i32 7
  %480 = load i32, i32* %479, align 8
  %481 = call i32 @drm_bridge_pre_enable(i32 %480)
  %482 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %483 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %482, i32 0, i32 3
  %484 = load i32, i32* %483, align 4
  %485 = load i32, i32* @MIPI_DSI_MODE_VIDEO, align 4
  %486 = and i32 %484, %485
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %511

488:                                              ; preds = %475
  %489 = load i32, i32* @DISP0_CTRL, align 4
  %490 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %491 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %490, i32 0, i32 1
  %492 = load i64, i64* %491, align 8
  %493 = trunc i64 %492 to i32
  %494 = load i32, i32* @DSI_DISP0_PIX_CLK_DIV, align 4
  %495 = call i32 @VC4_SET_FIELD(i32 %493, i32 %494)
  %496 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %497 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %496, i32 0, i32 4
  %498 = load i32, i32* %497, align 8
  %499 = load i32, i32* @DSI_DISP0_PFORMAT, align 4
  %500 = call i32 @VC4_SET_FIELD(i32 %498, i32 %499)
  %501 = or i32 %495, %500
  %502 = load i32, i32* @DSI_DISP0_LP_STOP_PERFRAME, align 4
  %503 = load i32, i32* @DSI_DISP0_LP_STOP_CTRL, align 4
  %504 = call i32 @VC4_SET_FIELD(i32 %502, i32 %503)
  %505 = or i32 %501, %504
  %506 = load i32, i32* @DSI_DISP0_ST_END, align 4
  %507 = or i32 %505, %506
  %508 = load i32, i32* @DSI_DISP0_ENABLE, align 4
  %509 = or i32 %507, %508
  %510 = call i32 @DSI_PORT_WRITE(i32 %489, i32 %509)
  br label %517

511:                                              ; preds = %475
  %512 = load i32, i32* @DISP0_CTRL, align 4
  %513 = load i32, i32* @DSI_DISP0_COMMAND_MODE, align 4
  %514 = load i32, i32* @DSI_DISP0_ENABLE, align 4
  %515 = or i32 %513, %514
  %516 = call i32 @DSI_PORT_WRITE(i32 %512, i32 %515)
  br label %517

517:                                              ; preds = %511, %488
  %518 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %519 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %518, i32 0, i32 7
  %520 = load i32, i32* %519, align 8
  %521 = call i32 @drm_bridge_enable(i32 %520)
  %522 = load i32, i32* %7, align 4
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %524, label %539

524:                                              ; preds = %517
  %525 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %526 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %525, i32 0, i32 6
  %527 = load %struct.TYPE_6__*, %struct.TYPE_6__** %526, align 8
  %528 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %527, i32 0, i32 0
  %529 = call i32 @drm_info_printer(%struct.device* %528)
  %530 = getelementptr inbounds %struct.drm_printer, %struct.drm_printer* %18, i32 0, i32 0
  store i32 %529, i32* %530, align 4
  %531 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %532 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %531, i32 0, i32 6
  %533 = load %struct.TYPE_6__*, %struct.TYPE_6__** %532, align 8
  %534 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %533, i32 0, i32 0
  %535 = call i32 @dev_info(%struct.device* %534, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %536 = load %struct.vc4_dsi*, %struct.vc4_dsi** %5, align 8
  %537 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %536, i32 0, i32 5
  %538 = call i32 @drm_print_regset32(%struct.drm_printer* %18, i32* %537)
  br label %539

539:                                              ; preds = %44, %212, %222, %251, %524, %517
  ret void
}

declare dso_local %struct.vc4_dsi_encoder* @to_vc4_dsi_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @dsi_esc_timing(i32) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @drm_info_printer(%struct.device*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @drm_print_regset32(%struct.drm_printer*, i32*) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, i32) #1

declare dso_local i32 @DSI_PORT_WRITE(i32, i32) #1

declare dso_local i32 @DSI_PORT_BIT(i32) #1

declare dso_local i32 @DSI_PORT_READ(i32) #1

declare dso_local i32 @VC4_SET_FIELD(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i64) #1

declare dso_local i32 @dsi_hs_timing(i32, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @vc4_dsi_ulps(%struct.vc4_dsi*, i32) #1

declare dso_local i32 @drm_bridge_pre_enable(i32) #1

declare dso_local i32 @drm_bridge_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
