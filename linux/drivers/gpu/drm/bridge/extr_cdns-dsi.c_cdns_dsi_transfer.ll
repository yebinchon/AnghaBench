; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_cdns-dsi.c_cdns_dsi_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_cdns-dsi.c_cdns_dsi_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_host = type { i32 }
%struct.mipi_dsi_msg = type { i32*, i32, i32*, i32, i32, i32, i32 }
%struct.cdns_dsi = type { i32, i32, i64, i32 }
%struct.mipi_dsi_packet = type { i32 }

@WRITE_COMPLETED = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@MIPI_DSI_MSG_USE_LPM = common dso_local global i32 0, align 4
@CMD_LP_EN = common dso_local global i32 0, align 4
@CMD_LONG = common dso_local global i32 0, align 4
@READ_CMD = common dso_local global i32 0, align 4
@READ_COMPLETED_WITH_ERR = common dso_local global i32 0, align 4
@READ_COMPLETED = common dso_local global i32 0, align 4
@READ_EN = common dso_local global i32 0, align 4
@BTA_EN = common dso_local global i32 0, align 4
@MIPI_DSI_MSG_REQ_ACK = common dso_local global i32 0, align 4
@BTA_REQ = common dso_local global i32 0, align 4
@ACK_WITH_ERR_RCVD = common dso_local global i32 0, align 4
@ACK_RCVD = common dso_local global i32 0, align 4
@MCTL_MAIN_DATA_CTL = common dso_local global i64 0, align 8
@DIRECT_CMD_MAIN_SETTINGS = common dso_local global i64 0, align 8
@DIRECT_CMD_WRDATA = common dso_local global i64 0, align 8
@DIRECT_CMD_STS_CLR = common dso_local global i64 0, align 8
@DIRECT_CMD_STS_CTL = common dso_local global i64 0, align 8
@DIRECT_CMD_SEND = common dso_local global i64 0, align 8
@DIRECT_CMD_STS = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@DIRECT_CMD_RDDATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_host*, %struct.mipi_dsi_msg*)* @cdns_dsi_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_dsi_transfer(%struct.mipi_dsi_host* %0, %struct.mipi_dsi_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mipi_dsi_host*, align 8
  %5 = alloca %struct.mipi_dsi_msg*, align 8
  %6 = alloca %struct.cdns_dsi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mipi_dsi_packet, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store %struct.mipi_dsi_host* %0, %struct.mipi_dsi_host** %4, align 8
  store %struct.mipi_dsi_msg* %1, %struct.mipi_dsi_msg** %5, align 8
  %21 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %4, align 8
  %22 = call %struct.cdns_dsi* @to_cdns_dsi(%struct.mipi_dsi_host* %21)
  store %struct.cdns_dsi* %22, %struct.cdns_dsi** %6, align 8
  %23 = load i32, i32* @WRITE_COMPLETED, align 4
  store i32 %23, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %24 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %4, align 8
  %25 = getelementptr inbounds %struct.mipi_dsi_host, %struct.mipi_dsi_host* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pm_runtime_get_sync(i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %3, align 4
  br label %349

32:                                               ; preds = %2
  %33 = load %struct.cdns_dsi*, %struct.cdns_dsi** %6, align 8
  %34 = call i32 @cdns_dsi_init_link(%struct.cdns_dsi* %33)
  %35 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %36 = call i32 @mipi_dsi_create_packet(%struct.mipi_dsi_packet* %12, %struct.mipi_dsi_msg* %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %343

40:                                               ; preds = %32
  %41 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %42 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %47 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  br label %50

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %45
  %51 = phi i32 [ %48, %45 ], [ 0, %49 ]
  store i32 %51, i32* %15, align 4
  %52 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %53 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %58 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  br label %61

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60, %56
  %62 = phi i32 [ %59, %56 ], [ 0, %60 ]
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i32, i32* %15, align 4
  %67 = icmp sgt i32 %66, 2
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* @ENOTSUPP, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %13, align 4
  br label %343

71:                                               ; preds = %65, %61
  %72 = load i32, i32* %15, align 4
  %73 = load %struct.cdns_dsi*, %struct.cdns_dsi** %6, align 8
  %74 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp sgt i32 %72, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* @ENOTSUPP, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %13, align 4
  br label %343

80:                                               ; preds = %71
  %81 = load i32, i32* %16, align 4
  %82 = load %struct.cdns_dsi*, %struct.cdns_dsi** %6, align 8
  %83 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp sgt i32 %81, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i32, i32* @ENOTSUPP, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %13, align 4
  br label %343

89:                                               ; preds = %80
  %90 = load i32, i32* %15, align 4
  %91 = call i32 @CMD_SIZE(i32 %90)
  %92 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %93 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @CMD_VCHAN_ID(i32 %94)
  %96 = or i32 %91, %95
  %97 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %98 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @CMD_DATATYPE(i32 %99)
  %101 = or i32 %96, %100
  store i32 %101, i32* %7, align 4
  %102 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %103 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @MIPI_DSI_MSG_USE_LPM, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %89
  %109 = load i32, i32* @CMD_LP_EN, align 4
  %110 = load i32, i32* %7, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %108, %89
  %113 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %114 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @mipi_dsi_packet_format_is_long(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load i32, i32* @CMD_LONG, align 4
  %120 = load i32, i32* %7, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %118, %112
  %123 = load i32, i32* %16, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %122
  %126 = load i32, i32* @READ_CMD, align 4
  %127 = load i32, i32* %7, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* @READ_COMPLETED_WITH_ERR, align 4
  %130 = load i32, i32* @READ_COMPLETED, align 4
  %131 = or i32 %129, %130
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* @READ_EN, align 4
  %133 = load i32, i32* @BTA_EN, align 4
  %134 = or i32 %132, %133
  store i32 %134, i32* %11, align 4
  br label %151

135:                                              ; preds = %122
  %136 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %137 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @MIPI_DSI_MSG_REQ_ACK, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %135
  %143 = load i32, i32* @BTA_REQ, align 4
  %144 = load i32, i32* %7, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* @ACK_WITH_ERR_RCVD, align 4
  %147 = load i32, i32* @ACK_RCVD, align 4
  %148 = or i32 %146, %147
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* @BTA_EN, align 4
  store i32 %149, i32* %11, align 4
  br label %150

150:                                              ; preds = %142, %135
  br label %151

151:                                              ; preds = %150, %125
  %152 = load %struct.cdns_dsi*, %struct.cdns_dsi** %6, align 8
  %153 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @MCTL_MAIN_DATA_CTL, align 8
  %156 = add nsw i64 %154, %155
  %157 = call i32 @readl(i64 %156)
  %158 = load i32, i32* %11, align 4
  %159 = or i32 %157, %158
  %160 = load %struct.cdns_dsi*, %struct.cdns_dsi** %6, align 8
  %161 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @MCTL_MAIN_DATA_CTL, align 8
  %164 = add nsw i64 %162, %163
  %165 = call i32 @writel(i32 %159, i64 %164)
  %166 = load i32, i32* %7, align 4
  %167 = load %struct.cdns_dsi*, %struct.cdns_dsi** %6, align 8
  %168 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @DIRECT_CMD_MAIN_SETTINGS, align 8
  %171 = add nsw i64 %169, %170
  %172 = call i32 @writel(i32 %166, i64 %171)
  store i32 0, i32* %14, align 4
  br label %173

173:                                              ; preds = %216, %151
  %174 = load i32, i32* %14, align 4
  %175 = load i32, i32* %15, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %219

177:                                              ; preds = %173
  %178 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %179 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  store i32* %180, i32** %17, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %18, align 4
  br label %181

181:                                              ; preds = %205, %177
  %182 = load i32, i32* %18, align 4
  %183 = icmp slt i32 %182, 4
  br i1 %183, label %184, label %190

184:                                              ; preds = %181
  %185 = load i32, i32* %18, align 4
  %186 = load i32, i32* %14, align 4
  %187 = add nsw i32 %185, %186
  %188 = load i32, i32* %15, align 4
  %189 = icmp slt i32 %187, %188
  br label %190

190:                                              ; preds = %184, %181
  %191 = phi i1 [ false, %181 ], [ %189, %184 ]
  br i1 %191, label %192, label %208

192:                                              ; preds = %190
  %193 = load i32*, i32** %17, align 8
  %194 = load i32, i32* %14, align 4
  %195 = load i32, i32* %18, align 4
  %196 = add nsw i32 %194, %195
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %193, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %18, align 4
  %201 = mul nsw i32 8, %200
  %202 = shl i32 %199, %201
  %203 = load i32, i32* %9, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %9, align 4
  br label %205

205:                                              ; preds = %192
  %206 = load i32, i32* %18, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %18, align 4
  br label %181

208:                                              ; preds = %190
  %209 = load i32, i32* %9, align 4
  %210 = load %struct.cdns_dsi*, %struct.cdns_dsi** %6, align 8
  %211 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @DIRECT_CMD_WRDATA, align 8
  %214 = add nsw i64 %212, %213
  %215 = call i32 @writel(i32 %209, i64 %214)
  br label %216

216:                                              ; preds = %208
  %217 = load i32, i32* %14, align 4
  %218 = add nsw i32 %217, 4
  store i32 %218, i32* %14, align 4
  br label %173

219:                                              ; preds = %173
  %220 = load i32, i32* %10, align 4
  %221 = load %struct.cdns_dsi*, %struct.cdns_dsi** %6, align 8
  %222 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %221, i32 0, i32 2
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @DIRECT_CMD_STS_CLR, align 8
  %225 = add nsw i64 %223, %224
  %226 = call i32 @writel(i32 %220, i64 %225)
  %227 = load i32, i32* %10, align 4
  %228 = load %struct.cdns_dsi*, %struct.cdns_dsi** %6, align 8
  %229 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @DIRECT_CMD_STS_CTL, align 8
  %232 = add nsw i64 %230, %231
  %233 = call i32 @writel(i32 %227, i64 %232)
  %234 = load %struct.cdns_dsi*, %struct.cdns_dsi** %6, align 8
  %235 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %234, i32 0, i32 3
  %236 = call i32 @reinit_completion(i32* %235)
  %237 = load %struct.cdns_dsi*, %struct.cdns_dsi** %6, align 8
  %238 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %237, i32 0, i32 2
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @DIRECT_CMD_SEND, align 8
  %241 = add nsw i64 %239, %240
  %242 = call i32 @writel(i32 0, i64 %241)
  %243 = load %struct.cdns_dsi*, %struct.cdns_dsi** %6, align 8
  %244 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %243, i32 0, i32 3
  %245 = call i32 @msecs_to_jiffies(i32 1000)
  %246 = call i32 @wait_for_completion_timeout(i32* %244, i32 %245)
  %247 = load %struct.cdns_dsi*, %struct.cdns_dsi** %6, align 8
  %248 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @DIRECT_CMD_STS, align 8
  %251 = add nsw i64 %249, %250
  %252 = call i32 @readl(i64 %251)
  store i32 %252, i32* %8, align 4
  %253 = load i32, i32* %10, align 4
  %254 = load %struct.cdns_dsi*, %struct.cdns_dsi** %6, align 8
  %255 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %254, i32 0, i32 2
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @DIRECT_CMD_STS_CLR, align 8
  %258 = add nsw i64 %256, %257
  %259 = call i32 @writel(i32 %253, i64 %258)
  %260 = load %struct.cdns_dsi*, %struct.cdns_dsi** %6, align 8
  %261 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %260, i32 0, i32 2
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @DIRECT_CMD_STS_CTL, align 8
  %264 = add nsw i64 %262, %263
  %265 = call i32 @writel(i32 0, i64 %264)
  %266 = load %struct.cdns_dsi*, %struct.cdns_dsi** %6, align 8
  %267 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %266, i32 0, i32 2
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @MCTL_MAIN_DATA_CTL, align 8
  %270 = add nsw i64 %268, %269
  %271 = call i32 @readl(i64 %270)
  %272 = load i32, i32* %11, align 4
  %273 = xor i32 %272, -1
  %274 = and i32 %271, %273
  %275 = load %struct.cdns_dsi*, %struct.cdns_dsi** %6, align 8
  %276 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %275, i32 0, i32 2
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @MCTL_MAIN_DATA_CTL, align 8
  %279 = add nsw i64 %277, %278
  %280 = call i32 @writel(i32 %274, i64 %279)
  %281 = load i32, i32* %8, align 4
  %282 = load i32, i32* %10, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %288, label %285

285:                                              ; preds = %219
  %286 = load i32, i32* @ETIMEDOUT, align 4
  %287 = sub nsw i32 0, %286
  store i32 %287, i32* %13, align 4
  br label %343

288:                                              ; preds = %219
  %289 = load i32, i32* %8, align 4
  %290 = load i32, i32* @READ_COMPLETED_WITH_ERR, align 4
  %291 = load i32, i32* @ACK_WITH_ERR_RCVD, align 4
  %292 = or i32 %290, %291
  %293 = and i32 %289, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %298

295:                                              ; preds = %288
  %296 = load i32, i32* @EIO, align 4
  %297 = sub nsw i32 0, %296
  store i32 %297, i32* %13, align 4
  br label %343

298:                                              ; preds = %288
  store i32 0, i32* %14, align 4
  br label %299

299:                                              ; preds = %339, %298
  %300 = load i32, i32* %14, align 4
  %301 = load i32, i32* %16, align 4
  %302 = icmp slt i32 %300, %301
  br i1 %302, label %303, label %342

303:                                              ; preds = %299
  %304 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %305 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %304, i32 0, i32 2
  %306 = load i32*, i32** %305, align 8
  store i32* %306, i32** %19, align 8
  %307 = load %struct.cdns_dsi*, %struct.cdns_dsi** %6, align 8
  %308 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %307, i32 0, i32 2
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* @DIRECT_CMD_RDDATA, align 8
  %311 = add nsw i64 %309, %310
  %312 = call i32 @readl(i64 %311)
  store i32 %312, i32* %9, align 4
  store i32 0, i32* %20, align 4
  br label %313

313:                                              ; preds = %335, %303
  %314 = load i32, i32* %20, align 4
  %315 = icmp slt i32 %314, 4
  br i1 %315, label %316, label %322

316:                                              ; preds = %313
  %317 = load i32, i32* %20, align 4
  %318 = load i32, i32* %14, align 4
  %319 = add nsw i32 %317, %318
  %320 = load i32, i32* %16, align 4
  %321 = icmp slt i32 %319, %320
  br label %322

322:                                              ; preds = %316, %313
  %323 = phi i1 [ false, %313 ], [ %321, %316 ]
  br i1 %323, label %324, label %338

324:                                              ; preds = %322
  %325 = load i32, i32* %9, align 4
  %326 = load i32, i32* %20, align 4
  %327 = mul nsw i32 8, %326
  %328 = ashr i32 %325, %327
  %329 = load i32*, i32** %19, align 8
  %330 = load i32, i32* %14, align 4
  %331 = load i32, i32* %20, align 4
  %332 = add nsw i32 %330, %331
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %329, i64 %333
  store i32 %328, i32* %334, align 4
  br label %335

335:                                              ; preds = %324
  %336 = load i32, i32* %20, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %20, align 4
  br label %313

338:                                              ; preds = %322
  br label %339

339:                                              ; preds = %338
  %340 = load i32, i32* %14, align 4
  %341 = add nsw i32 %340, 4
  store i32 %341, i32* %14, align 4
  br label %299

342:                                              ; preds = %299
  br label %343

343:                                              ; preds = %342, %295, %285, %86, %77, %68, %39
  %344 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %4, align 8
  %345 = getelementptr inbounds %struct.mipi_dsi_host, %struct.mipi_dsi_host* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = call i32 @pm_runtime_put(i32 %346)
  %348 = load i32, i32* %13, align 4
  store i32 %348, i32* %3, align 4
  br label %349

349:                                              ; preds = %343, %30
  %350 = load i32, i32* %3, align 4
  ret i32 %350
}

declare dso_local %struct.cdns_dsi* @to_cdns_dsi(%struct.mipi_dsi_host*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @cdns_dsi_init_link(%struct.cdns_dsi*) #1

declare dso_local i32 @mipi_dsi_create_packet(%struct.mipi_dsi_packet*, %struct.mipi_dsi_msg*) #1

declare dso_local i32 @CMD_SIZE(i32) #1

declare dso_local i32 @CMD_VCHAN_ID(i32) #1

declare dso_local i32 @CMD_DATATYPE(i32) #1

declare dso_local i64 @mipi_dsi_packet_format_is_long(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
