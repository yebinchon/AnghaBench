; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_dsi.c_vc4_dsi_host_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_dsi.c_vc4_dsi_host_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_host = type { i32 }
%struct.mipi_dsi_msg = type { i32, i32, i32*, i32 }
%struct.vc4_dsi = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mipi_dsi_packet = type { i32*, i32, i32* }

@DSI_TXPKT1H_BC_DT = common dso_local global i32 0, align 4
@DSI_TXPKT1H_BC_PARAM = common dso_local global i32 0, align 4
@DSI_PIX_FIFO_WIDTH = common dso_local global i32 0, align 4
@DSI_PIX_FIFO_DEPTH = common dso_local global i32 0, align 4
@DSI_TXPKT1H_BC_CMDFIFO = common dso_local global i32 0, align 4
@DSI_TXPKT1C_CMD_CTRL_RX = common dso_local global i32 0, align 4
@DSI_TXPKT1C_CMD_CTRL = common dso_local global i32 0, align 4
@DSI_TXPKT1C_CMD_CTRL_TX = common dso_local global i32 0, align 4
@TXPKT_CMD_FIFO = common dso_local global i32 0, align 4
@TXPKT_PIX_FIFO = common dso_local global i32 0, align 4
@MIPI_DSI_MSG_USE_LPM = common dso_local global i32 0, align 4
@DSI_TXPKT1C_CMD_MODE_LP = common dso_local global i32 0, align 4
@DSI_TXPKT1C_CMD_TYPE_LONG = common dso_local global i32 0, align 4
@DSI_TXPKT1C_CMD_REPEAT = common dso_local global i32 0, align 4
@DSI_TXPKT1C_CMD_EN = common dso_local global i32 0, align 4
@DSI_TXPKT1C_DISPLAY_NO_SECONDARY = common dso_local global i32 0, align 4
@DSI_TXPKT1C_DISPLAY_NO = common dso_local global i32 0, align 4
@DSI_TXPKT1C_DISPLAY_NO_SHORT = common dso_local global i32 0, align 4
@INT_STAT = common dso_local global i32 0, align 4
@DSI1_INT_TXPKT1_DONE = common dso_local global i32 0, align 4
@DSI1_INT_PHY_DIR_RTF = common dso_local global i32 0, align 4
@INT_EN = common dso_local global i32 0, align 4
@DSI1_INTERRUPTS_ALWAYS_ENABLED = common dso_local global i32 0, align 4
@TXPKT1H = common dso_local global i32 0, align 4
@TXPKT1C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"transfer interrupt wait timeout\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"instat: 0x%08x\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@RXPKT1H = common dso_local global i32 0, align 4
@DSI_RXPKT1H_PKT_TYPE_LONG = common dso_local global i32 0, align 4
@DSI_RXPKT1H_BC_PARAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"DSI returned %db, expecting %db\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@DSI1_RXPKT_FIFO = common dso_local global i32 0, align 4
@DSI_RXPKT1H_SHORT_0 = common dso_local global i32 0, align 4
@DSI_RXPKT1H_SHORT_1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"DSI transfer failed, resetting: %d\0A\00", align 1
@CTRL = common dso_local global i32 0, align 4
@CTRL_RESET_FIFOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_host*, %struct.mipi_dsi_msg*)* @vc4_dsi_host_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_dsi_host_transfer(%struct.mipi_dsi_host* %0, %struct.mipi_dsi_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mipi_dsi_host*, align 8
  %5 = alloca %struct.mipi_dsi_msg*, align 8
  %6 = alloca %struct.vc4_dsi*, align 8
  %7 = alloca %struct.mipi_dsi_packet, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.mipi_dsi_host* %0, %struct.mipi_dsi_host** %4, align 8
  store %struct.mipi_dsi_msg* %1, %struct.mipi_dsi_msg** %5, align 8
  %19 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %4, align 8
  %20 = call %struct.vc4_dsi* @host_to_dsi(%struct.mipi_dsi_host* %19)
  store %struct.vc4_dsi* %20, %struct.vc4_dsi** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %21 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %22 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @mipi_dsi_packet_format_is_long(i32 %23)
  store i32 %24, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %25 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %26 = call i32 @mipi_dsi_create_packet(%struct.mipi_dsi_packet* %7, %struct.mipi_dsi_msg* %25)
  %27 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %7, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DSI_TXPKT1H_BC_DT, align 4
  %32 = call i32 @VC4_SET_FIELD(i32 %30, i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %8, align 4
  %35 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %7, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %7, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 8
  %44 = or i32 %38, %43
  %45 = load i32, i32* @DSI_TXPKT1H_BC_PARAM, align 4
  %46 = call i32 @VC4_SET_FIELD(i32 %44, i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %80

51:                                               ; preds = %2
  %52 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %7, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp sle i32 %53, 16
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %7, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %69

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %7, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @DSI_PIX_FIFO_WIDTH, align 4
  %62 = srem i32 %60, %61
  store i32 %62, i32* %13, align 4
  %63 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %7, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sub nsw i32 %64, %65
  %67 = load i32, i32* @DSI_PIX_FIFO_WIDTH, align 4
  %68 = sdiv i32 %66, %67
  store i32 %68, i32* %14, align 4
  br label %69

69:                                               ; preds = %58, %55
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* @DSI_PIX_FIFO_DEPTH, align 4
  %72 = icmp sge i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @WARN_ON_ONCE(i32 %73)
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @DSI_TXPKT1H_BC_CMDFIFO, align 4
  %77 = call i32 @VC4_SET_FIELD(i32 %75, i32 %76)
  %78 = load i32, i32* %8, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %69, %2
  %81 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %82 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load i32, i32* @DSI_TXPKT1C_CMD_CTRL_RX, align 4
  %87 = load i32, i32* @DSI_TXPKT1C_CMD_CTRL, align 4
  %88 = call i32 @VC4_SET_FIELD(i32 %86, i32 %87)
  %89 = load i32, i32* %9, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %9, align 4
  br label %97

91:                                               ; preds = %80
  %92 = load i32, i32* @DSI_TXPKT1C_CMD_CTRL_TX, align 4
  %93 = load i32, i32* @DSI_TXPKT1C_CMD_CTRL, align 4
  %94 = call i32 @VC4_SET_FIELD(i32 %92, i32 %93)
  %95 = load i32, i32* %9, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %91, %85
  store i32 0, i32* %10, align 4
  br label %98

98:                                               ; preds = %111, %97
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %98
  %103 = load i32, i32* @TXPKT_CMD_FIFO, align 4
  %104 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %7, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @DSI_PORT_WRITE(i32 %103, i32 %109)
  br label %111

111:                                              ; preds = %102
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %98

114:                                              ; preds = %98
  store i32 0, i32* %10, align 4
  br label %115

115:                                              ; preds = %149, %114
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %14, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %152

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %7, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %10, align 4
  %126 = mul nsw i32 %125, 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  store i32* %128, i32** %15, align 8
  %129 = load i32, i32* @TXPKT_PIX_FIFO, align 4
  %130 = load i32*, i32** %15, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %15, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  %135 = load i32, i32* %134, align 4
  %136 = shl i32 %135, 8
  %137 = or i32 %132, %136
  %138 = load i32*, i32** %15, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 2
  %140 = load i32, i32* %139, align 4
  %141 = shl i32 %140, 16
  %142 = or i32 %137, %141
  %143 = load i32*, i32** %15, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 3
  %145 = load i32, i32* %144, align 4
  %146 = shl i32 %145, 24
  %147 = or i32 %142, %146
  %148 = call i32 @DSI_PORT_WRITE(i32 %129, i32 %147)
  br label %149

149:                                              ; preds = %119
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %10, align 4
  br label %115

152:                                              ; preds = %115
  %153 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %154 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @MIPI_DSI_MSG_USE_LPM, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %152
  %160 = load i32, i32* @DSI_TXPKT1C_CMD_MODE_LP, align 4
  %161 = load i32, i32* %9, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %9, align 4
  br label %163

163:                                              ; preds = %159, %152
  %164 = load i32, i32* %12, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %163
  %167 = load i32, i32* @DSI_TXPKT1C_CMD_TYPE_LONG, align 4
  %168 = load i32, i32* %9, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %9, align 4
  br label %170

170:                                              ; preds = %166, %163
  %171 = load i32, i32* @DSI_TXPKT1C_CMD_REPEAT, align 4
  %172 = call i32 @VC4_SET_FIELD(i32 1, i32 %171)
  %173 = load i32, i32* %9, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* @DSI_TXPKT1C_CMD_EN, align 4
  %176 = load i32, i32* %9, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %9, align 4
  %178 = load i32, i32* %14, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %170
  %181 = load i32, i32* @DSI_TXPKT1C_DISPLAY_NO_SECONDARY, align 4
  %182 = load i32, i32* @DSI_TXPKT1C_DISPLAY_NO, align 4
  %183 = call i32 @VC4_SET_FIELD(i32 %181, i32 %182)
  %184 = load i32, i32* %9, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %9, align 4
  br label %192

186:                                              ; preds = %170
  %187 = load i32, i32* @DSI_TXPKT1C_DISPLAY_NO_SHORT, align 4
  %188 = load i32, i32* @DSI_TXPKT1C_DISPLAY_NO, align 4
  %189 = call i32 @VC4_SET_FIELD(i32 %187, i32 %188)
  %190 = load i32, i32* %9, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %9, align 4
  br label %192

192:                                              ; preds = %186, %180
  %193 = load %struct.vc4_dsi*, %struct.vc4_dsi** %6, align 8
  %194 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %193, i32 0, i32 0
  store i32 0, i32* %194, align 8
  %195 = load %struct.vc4_dsi*, %struct.vc4_dsi** %6, align 8
  %196 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %195, i32 0, i32 2
  %197 = call i32 @reinit_completion(i32* %196)
  %198 = load i32, i32* @INT_STAT, align 4
  %199 = load i32, i32* @DSI1_INT_TXPKT1_DONE, align 4
  %200 = load i32, i32* @DSI1_INT_PHY_DIR_RTF, align 4
  %201 = or i32 %199, %200
  %202 = call i32 @DSI_PORT_WRITE(i32 %198, i32 %201)
  %203 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %204 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %192
  %208 = load i32, i32* @INT_EN, align 4
  %209 = load i32, i32* @DSI1_INTERRUPTS_ALWAYS_ENABLED, align 4
  %210 = load i32, i32* @DSI1_INT_PHY_DIR_RTF, align 4
  %211 = or i32 %209, %210
  %212 = call i32 @DSI_PORT_WRITE(i32 %208, i32 %211)
  br label %219

213:                                              ; preds = %192
  %214 = load i32, i32* @INT_EN, align 4
  %215 = load i32, i32* @DSI1_INTERRUPTS_ALWAYS_ENABLED, align 4
  %216 = load i32, i32* @DSI1_INT_TXPKT1_DONE, align 4
  %217 = or i32 %215, %216
  %218 = call i32 @DSI_PORT_WRITE(i32 %214, i32 %217)
  br label %219

219:                                              ; preds = %213, %207
  %220 = load i32, i32* @TXPKT1H, align 4
  %221 = load i32, i32* %8, align 4
  %222 = call i32 @DSI_PORT_WRITE(i32 %220, i32 %221)
  %223 = load i32, i32* @TXPKT1C, align 4
  %224 = load i32, i32* %9, align 4
  %225 = call i32 @DSI_PORT_WRITE(i32 %223, i32 %224)
  %226 = load %struct.vc4_dsi*, %struct.vc4_dsi** %6, align 8
  %227 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %226, i32 0, i32 2
  %228 = call i32 @msecs_to_jiffies(i32 1000)
  %229 = call i32 @wait_for_completion_timeout(i32* %227, i32 %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %246, label %231

231:                                              ; preds = %219
  %232 = load %struct.vc4_dsi*, %struct.vc4_dsi** %6, align 8
  %233 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %232, i32 0, i32 1
  %234 = load %struct.TYPE_2__*, %struct.TYPE_2__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 0
  %236 = call i32 (i32*, i8*, ...) @dev_err(i32* %235, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %237 = load %struct.vc4_dsi*, %struct.vc4_dsi** %6, align 8
  %238 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %237, i32 0, i32 1
  %239 = load %struct.TYPE_2__*, %struct.TYPE_2__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 0
  %241 = load i32, i32* @INT_STAT, align 4
  %242 = call i32 @DSI_PORT_READ(i32 %241)
  %243 = call i32 (i32*, i8*, ...) @dev_err(i32* %240, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %242)
  %244 = load i32, i32* @ETIMEDOUT, align 4
  %245 = sub nsw i32 0, %244
  store i32 %245, i32* %11, align 4
  br label %250

246:                                              ; preds = %219
  %247 = load %struct.vc4_dsi*, %struct.vc4_dsi** %6, align 8
  %248 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  store i32 %249, i32* %11, align 4
  br label %250

250:                                              ; preds = %246, %231
  %251 = load i32, i32* @INT_EN, align 4
  %252 = load i32, i32* @DSI1_INTERRUPTS_ALWAYS_ENABLED, align 4
  %253 = call i32 @DSI_PORT_WRITE(i32 %251, i32 %252)
  %254 = load i32, i32* %11, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %250
  br label %330

257:                                              ; preds = %250
  %258 = load i32, i32* %11, align 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %328

260:                                              ; preds = %257
  %261 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %262 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %328

265:                                              ; preds = %260
  %266 = load i32, i32* @RXPKT1H, align 4
  %267 = call i32 @DSI_PORT_READ(i32 %266)
  store i32 %267, i32* %16, align 4
  %268 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %269 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %268, i32 0, i32 2
  %270 = load i32*, i32** %269, align 8
  store i32* %270, i32** %17, align 8
  %271 = load i32, i32* %16, align 4
  %272 = load i32, i32* @DSI_RXPKT1H_PKT_TYPE_LONG, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %310

275:                                              ; preds = %265
  %276 = load i32, i32* %16, align 4
  %277 = load i32, i32* @DSI_RXPKT1H_BC_PARAM, align 4
  %278 = call i32 @VC4_GET_FIELD(i32 %276, i32 %277)
  store i32 %278, i32* %18, align 4
  %279 = load i32, i32* %18, align 4
  %280 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %281 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = icmp ne i32 %279, %282
  br i1 %283, label %284, label %292

284:                                              ; preds = %275
  %285 = load i32, i32* %18, align 4
  %286 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %287 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %285, i32 %288)
  %290 = load i32, i32* @ENXIO, align 4
  %291 = sub nsw i32 0, %290
  store i32 %291, i32* %11, align 4
  br label %330

292:                                              ; preds = %275
  store i32 0, i32* %10, align 4
  br label %293

293:                                              ; preds = %306, %292
  %294 = load i32, i32* %10, align 4
  %295 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %296 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = icmp slt i32 %294, %297
  br i1 %298, label %299, label %309

299:                                              ; preds = %293
  %300 = load i32, i32* @DSI1_RXPKT_FIFO, align 4
  %301 = call i32 @DSI_READ(i32 %300)
  %302 = load i32*, i32** %17, align 8
  %303 = load i32, i32* %10, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %302, i64 %304
  store i32 %301, i32* %305, align 4
  br label %306

306:                                              ; preds = %299
  %307 = load i32, i32* %10, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %10, align 4
  br label %293

309:                                              ; preds = %293
  br label %327

310:                                              ; preds = %265
  %311 = load i32, i32* %16, align 4
  %312 = load i32, i32* @DSI_RXPKT1H_SHORT_0, align 4
  %313 = call i32 @VC4_GET_FIELD(i32 %311, i32 %312)
  %314 = load i32*, i32** %17, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 0
  store i32 %313, i32* %315, align 4
  %316 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %317 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = icmp sgt i32 %318, 1
  br i1 %319, label %320, label %326

320:                                              ; preds = %310
  %321 = load i32, i32* %16, align 4
  %322 = load i32, i32* @DSI_RXPKT1H_SHORT_1, align 4
  %323 = call i32 @VC4_GET_FIELD(i32 %321, i32 %322)
  %324 = load i32*, i32** %17, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 1
  store i32 %323, i32* %325, align 4
  br label %326

326:                                              ; preds = %320, %310
  br label %327

327:                                              ; preds = %326, %309
  br label %328

328:                                              ; preds = %327, %260, %257
  %329 = load i32, i32* %11, align 4
  store i32 %329, i32* %3, align 4
  br label %354

330:                                              ; preds = %284, %256
  %331 = load i32, i32* %11, align 4
  %332 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %331)
  %333 = load i32, i32* @TXPKT1C, align 4
  %334 = load i32, i32* @TXPKT1C, align 4
  %335 = call i32 @DSI_PORT_READ(i32 %334)
  %336 = load i32, i32* @DSI_TXPKT1C_CMD_EN, align 4
  %337 = xor i32 %336, -1
  %338 = and i32 %335, %337
  %339 = call i32 @DSI_PORT_WRITE(i32 %333, i32 %338)
  %340 = call i32 @udelay(i32 1)
  %341 = load i32, i32* @CTRL, align 4
  %342 = load i32, i32* @CTRL, align 4
  %343 = call i32 @DSI_PORT_READ(i32 %342)
  %344 = load i32, i32* @CTRL_RESET_FIFOS, align 4
  %345 = call i32 @DSI_PORT_BIT(i32 %344)
  %346 = or i32 %343, %345
  %347 = call i32 @DSI_PORT_WRITE(i32 %341, i32 %346)
  %348 = load i32, i32* @TXPKT1C, align 4
  %349 = call i32 @DSI_PORT_WRITE(i32 %348, i32 0)
  %350 = load i32, i32* @INT_EN, align 4
  %351 = load i32, i32* @DSI1_INTERRUPTS_ALWAYS_ENABLED, align 4
  %352 = call i32 @DSI_PORT_WRITE(i32 %350, i32 %351)
  %353 = load i32, i32* %11, align 4
  store i32 %353, i32* %3, align 4
  br label %354

354:                                              ; preds = %330, %328
  %355 = load i32, i32* %3, align 4
  ret i32 %355
}

declare dso_local %struct.vc4_dsi* @host_to_dsi(%struct.mipi_dsi_host*) #1

declare dso_local i32 @mipi_dsi_packet_format_is_long(i32) #1

declare dso_local i32 @mipi_dsi_create_packet(%struct.mipi_dsi_packet*, %struct.mipi_dsi_msg*) #1

declare dso_local i32 @VC4_SET_FIELD(i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @DSI_PORT_WRITE(i32, i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @DSI_PORT_READ(i32) #1

declare dso_local i32 @VC4_GET_FIELD(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, ...) #1

declare dso_local i32 @DSI_READ(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DSI_PORT_BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
