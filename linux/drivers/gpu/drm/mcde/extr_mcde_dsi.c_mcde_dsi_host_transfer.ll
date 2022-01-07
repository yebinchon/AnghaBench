; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_dsi.c_mcde_dsi_host_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_dsi.c_mcde_dsi_host_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_host = type { i32 }
%struct.mipi_dsi_msg = type { i32*, i64, i64, i64, i32*, i32 }
%struct.mcde_dsi = type { i64, i32 }

@.str = private unnamed_addr constant [43 x i8] c"dunno how to write more than 16 bytes yet\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"dunno how to read more than 4 bytes yet\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"message to channel %d, write %zd bytes read %zd bytes\0A\00", align 1
@DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_NAT_READ = common dso_local global i64 0, align 8
@DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_NAT_WRITE = common dso_local global i64 0, align 8
@DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_LONGNOTSHORT = common dso_local global i64 0, align 8
@DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_ID_SHIFT = common dso_local global i64 0, align 8
@DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_SIZE_SHIFT = common dso_local global i64 0, align 8
@DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_LP_EN = common dso_local global i64 0, align 8
@DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_SHIFT = common dso_local global i64 0, align 8
@DSI_DIRECT_CMD_MAIN_SETTINGS = common dso_local global i64 0, align 8
@DSI_DIRECT_CMD_WRDAT0 = common dso_local global i64 0, align 8
@DSI_DIRECT_CMD_WRDAT1 = common dso_local global i64 0, align 8
@DSI_DIRECT_CMD_WRDAT2 = common dso_local global i64 0, align 8
@DSI_DIRECT_CMD_WRDAT3 = common dso_local global i64 0, align 8
@DSI_DIRECT_CMD_STS_CLR = common dso_local global i64 0, align 8
@DSI_CMD_MODE_STS_CLR = common dso_local global i64 0, align 8
@DSI_DIRECT_CMD_SEND = common dso_local global i64 0, align 8
@DSI_DIRECT_CMD_STS = common dso_local global i64 0, align 8
@DSI_DIRECT_CMD_STS_READ_COMPLETED = common dso_local global i64 0, align 8
@DSI_DIRECT_CMD_STS_READ_COMPLETED_WITH_ERR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"DSI read timeout!\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@DSI_DIRECT_CMD_STS_WRITE_COMPLETED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"DSI write timeout!\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"read completed with error\0A\00", align 1
@DSI_DIRECT_CMD_RD_INIT = common dso_local global i64 0, align 8
@DSI_DIRECT_CMD_STS_ACKNOWLEDGE_WITH_ERR_RECEIVED = common dso_local global i64 0, align 8
@DSI_DIRECT_CMD_STS_ACK_VAL_SHIFT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [33 x i8] c"error during transmission: %04x\0A\00", align 1
@DSI_DIRECT_CMD_RD_PROPERTY = common dso_local global i64 0, align 8
@DSI_DIRECT_CMD_RD_PROPERTY_RD_SIZE_MASK = common dso_local global i64 0, align 8
@DSI_DIRECT_CMD_RDDAT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [34 x i8] c"read error, requested %zd got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_host*, %struct.mipi_dsi_msg*)* @mcde_dsi_host_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcde_dsi_host_transfer(%struct.mipi_dsi_host* %0, %struct.mipi_dsi_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mipi_dsi_host*, align 8
  %5 = alloca %struct.mipi_dsi_msg*, align 8
  %6 = alloca %struct.mcde_dsi*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  store %struct.mipi_dsi_host* %0, %struct.mipi_dsi_host** %4, align 8
  store %struct.mipi_dsi_msg* %1, %struct.mipi_dsi_msg** %5, align 8
  %18 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %4, align 8
  %19 = call %struct.mcde_dsi* @host_to_mcde_dsi(%struct.mipi_dsi_host* %18)
  store %struct.mcde_dsi* %19, %struct.mcde_dsi** %6, align 8
  store i64 10, i64* %7, align 8
  %20 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %21 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %8, align 8
  %23 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %24 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %10, align 8
  %26 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %27 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %10, align 8
  %30 = icmp ugt i64 %29, 16
  br i1 %30, label %31, label %38

31:                                               ; preds = %2
  %32 = load %struct.mcde_dsi*, %struct.mcde_dsi** %6, align 8
  %33 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i32, i8*, ...) @dev_err(i32 %34, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %477

38:                                               ; preds = %2
  %39 = load i64, i64* %11, align 8
  %40 = icmp ugt i64 %39, 4
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load %struct.mcde_dsi*, %struct.mcde_dsi** %6, align 8
  %43 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i32, i8*, ...) @dev_err(i32 %44, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %477

48:                                               ; preds = %38
  %49 = load %struct.mcde_dsi*, %struct.mcde_dsi** %6, align 8
  %50 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %53 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %11, align 8
  %57 = call i32 @dev_dbg(i32 %51, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %54, i64 %55, i64 %56)
  %58 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %59 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @MCDE_DSI_HOST_IS_READ(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %48
  %64 = load i64, i64* @DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_NAT_READ, align 8
  store i64 %64, i64* %12, align 8
  br label %67

65:                                               ; preds = %48
  %66 = load i64, i64* @DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_NAT_WRITE, align 8
  store i64 %66, i64* %12, align 8
  br label %67

67:                                               ; preds = %65, %63
  %68 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %69 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @mipi_dsi_packet_format_is_long(i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i64, i64* @DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_LONGNOTSHORT, align 8
  %75 = load i64, i64* %12, align 8
  %76 = or i64 %75, %74
  store i64 %76, i64* %12, align 8
  br label %77

77:                                               ; preds = %73, %67
  %78 = load i64, i64* @DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_ID_SHIFT, align 8
  %79 = trunc i64 %78 to i32
  %80 = shl i32 0, %79
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* %12, align 8
  %83 = or i64 %82, %81
  store i64 %83, i64* %12, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* @DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_SIZE_SHIFT, align 8
  %86 = shl i64 %84, %85
  %87 = load i64, i64* %12, align 8
  %88 = or i64 %87, %86
  store i64 %88, i64* %12, align 8
  %89 = load i64, i64* @DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_LP_EN, align 8
  %90 = load i64, i64* %12, align 8
  %91 = or i64 %90, %89
  store i64 %91, i64* %12, align 8
  %92 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %93 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_SHIFT, align 8
  %96 = shl i64 %94, %95
  %97 = load i64, i64* %12, align 8
  %98 = or i64 %97, %96
  store i64 %98, i64* %12, align 8
  %99 = load i64, i64* %12, align 8
  %100 = trunc i64 %99 to i32
  %101 = load %struct.mcde_dsi*, %struct.mcde_dsi** %6, align 8
  %102 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @DSI_DIRECT_CMD_MAIN_SETTINGS, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @writel(i32 %100, i64 %105)
  %107 = load i64, i64* %10, align 8
  %108 = icmp ugt i64 %107, 0
  br i1 %108, label %109, label %137

109:                                              ; preds = %77
  store i64 0, i64* %12, align 8
  store i32 0, i32* %14, align 4
  br label %110

110:                                              ; preds = %133, %109
  %111 = load i32, i32* %14, align 4
  %112 = icmp slt i32 %111, 4
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load i32, i32* %14, align 4
  %115 = sext i32 %114 to i64
  %116 = load i64, i64* %10, align 8
  %117 = icmp ult i64 %115, %116
  br label %118

118:                                              ; preds = %113, %110
  %119 = phi i1 [ false, %110 ], [ %117, %113 ]
  br i1 %119, label %120, label %136

120:                                              ; preds = %118
  %121 = load i32*, i32** %8, align 8
  %122 = load i32, i32* %14, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %14, align 4
  %127 = and i32 %126, 3
  %128 = mul nsw i32 %127, 8
  %129 = shl i32 %125, %128
  %130 = sext i32 %129 to i64
  %131 = load i64, i64* %12, align 8
  %132 = or i64 %131, %130
  store i64 %132, i64* %12, align 8
  br label %133

133:                                              ; preds = %120
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %14, align 4
  br label %110

136:                                              ; preds = %118
  br label %137

137:                                              ; preds = %136, %77
  %138 = load i64, i64* %12, align 8
  %139 = trunc i64 %138 to i32
  %140 = load %struct.mcde_dsi*, %struct.mcde_dsi** %6, align 8
  %141 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @DSI_DIRECT_CMD_WRDAT0, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i32 @writel(i32 %139, i64 %144)
  %146 = load i64, i64* %10, align 8
  %147 = icmp ugt i64 %146, 4
  br i1 %147, label %148, label %186

148:                                              ; preds = %137
  store i64 0, i64* %12, align 8
  store i32 0, i32* %14, align 4
  br label %149

149:                                              ; preds = %174, %148
  %150 = load i32, i32* %14, align 4
  %151 = icmp slt i32 %150, 4
  br i1 %151, label %152, label %158

152:                                              ; preds = %149
  %153 = load i32, i32* %14, align 4
  %154 = add nsw i32 %153, 4
  %155 = sext i32 %154 to i64
  %156 = load i64, i64* %10, align 8
  %157 = icmp ult i64 %155, %156
  br label %158

158:                                              ; preds = %152, %149
  %159 = phi i1 [ false, %149 ], [ %157, %152 ]
  br i1 %159, label %160, label %177

160:                                              ; preds = %158
  %161 = load i32*, i32** %8, align 8
  %162 = load i32, i32* %14, align 4
  %163 = add nsw i32 %162, 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %14, align 4
  %168 = and i32 %167, 3
  %169 = mul nsw i32 %168, 8
  %170 = shl i32 %166, %169
  %171 = sext i32 %170 to i64
  %172 = load i64, i64* %12, align 8
  %173 = or i64 %172, %171
  store i64 %173, i64* %12, align 8
  br label %174

174:                                              ; preds = %160
  %175 = load i32, i32* %14, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %14, align 4
  br label %149

177:                                              ; preds = %158
  %178 = load i64, i64* %12, align 8
  %179 = trunc i64 %178 to i32
  %180 = load %struct.mcde_dsi*, %struct.mcde_dsi** %6, align 8
  %181 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @DSI_DIRECT_CMD_WRDAT1, align 8
  %184 = add nsw i64 %182, %183
  %185 = call i32 @writel(i32 %179, i64 %184)
  br label %186

186:                                              ; preds = %177, %137
  %187 = load i64, i64* %10, align 8
  %188 = icmp ugt i64 %187, 8
  br i1 %188, label %189, label %227

189:                                              ; preds = %186
  store i64 0, i64* %12, align 8
  store i32 0, i32* %14, align 4
  br label %190

190:                                              ; preds = %215, %189
  %191 = load i32, i32* %14, align 4
  %192 = icmp slt i32 %191, 4
  br i1 %192, label %193, label %199

193:                                              ; preds = %190
  %194 = load i32, i32* %14, align 4
  %195 = add nsw i32 %194, 8
  %196 = sext i32 %195 to i64
  %197 = load i64, i64* %10, align 8
  %198 = icmp ult i64 %196, %197
  br label %199

199:                                              ; preds = %193, %190
  %200 = phi i1 [ false, %190 ], [ %198, %193 ]
  br i1 %200, label %201, label %218

201:                                              ; preds = %199
  %202 = load i32*, i32** %8, align 8
  %203 = load i32, i32* %14, align 4
  %204 = add nsw i32 %203, 8
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %202, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %14, align 4
  %209 = and i32 %208, 3
  %210 = mul nsw i32 %209, 8
  %211 = shl i32 %207, %210
  %212 = sext i32 %211 to i64
  %213 = load i64, i64* %12, align 8
  %214 = or i64 %213, %212
  store i64 %214, i64* %12, align 8
  br label %215

215:                                              ; preds = %201
  %216 = load i32, i32* %14, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %14, align 4
  br label %190

218:                                              ; preds = %199
  %219 = load i64, i64* %12, align 8
  %220 = trunc i64 %219 to i32
  %221 = load %struct.mcde_dsi*, %struct.mcde_dsi** %6, align 8
  %222 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @DSI_DIRECT_CMD_WRDAT2, align 8
  %225 = add nsw i64 %223, %224
  %226 = call i32 @writel(i32 %220, i64 %225)
  br label %227

227:                                              ; preds = %218, %186
  %228 = load i64, i64* %10, align 8
  %229 = icmp ugt i64 %228, 12
  br i1 %229, label %230, label %268

230:                                              ; preds = %227
  store i64 0, i64* %12, align 8
  store i32 0, i32* %14, align 4
  br label %231

231:                                              ; preds = %256, %230
  %232 = load i32, i32* %14, align 4
  %233 = icmp slt i32 %232, 4
  br i1 %233, label %234, label %240

234:                                              ; preds = %231
  %235 = load i32, i32* %14, align 4
  %236 = add nsw i32 %235, 12
  %237 = sext i32 %236 to i64
  %238 = load i64, i64* %10, align 8
  %239 = icmp ult i64 %237, %238
  br label %240

240:                                              ; preds = %234, %231
  %241 = phi i1 [ false, %231 ], [ %239, %234 ]
  br i1 %241, label %242, label %259

242:                                              ; preds = %240
  %243 = load i32*, i32** %8, align 8
  %244 = load i32, i32* %14, align 4
  %245 = add nsw i32 %244, 12
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %243, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %14, align 4
  %250 = and i32 %249, 3
  %251 = mul nsw i32 %250, 8
  %252 = shl i32 %248, %251
  %253 = sext i32 %252 to i64
  %254 = load i64, i64* %12, align 8
  %255 = or i64 %254, %253
  store i64 %255, i64* %12, align 8
  br label %256

256:                                              ; preds = %242
  %257 = load i32, i32* %14, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %14, align 4
  br label %231

259:                                              ; preds = %240
  %260 = load i64, i64* %12, align 8
  %261 = trunc i64 %260 to i32
  %262 = load %struct.mcde_dsi*, %struct.mcde_dsi** %6, align 8
  %263 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @DSI_DIRECT_CMD_WRDAT3, align 8
  %266 = add nsw i64 %264, %265
  %267 = call i32 @writel(i32 %261, i64 %266)
  br label %268

268:                                              ; preds = %259, %227
  %269 = load %struct.mcde_dsi*, %struct.mcde_dsi** %6, align 8
  %270 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @DSI_DIRECT_CMD_STS_CLR, align 8
  %273 = add nsw i64 %271, %272
  %274 = call i32 @writel(i32 -1, i64 %273)
  %275 = load %struct.mcde_dsi*, %struct.mcde_dsi** %6, align 8
  %276 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @DSI_CMD_MODE_STS_CLR, align 8
  %279 = add nsw i64 %277, %278
  %280 = call i32 @writel(i32 -1, i64 %279)
  %281 = load %struct.mcde_dsi*, %struct.mcde_dsi** %6, align 8
  %282 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @DSI_DIRECT_CMD_SEND, align 8
  %285 = add nsw i64 %283, %284
  %286 = call i32 @writel(i32 1, i64 %285)
  store i64 100000, i64* %9, align 8
  %287 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %288 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %287, i32 0, i32 3
  %289 = load i64, i64* %288, align 8
  %290 = call i64 @MCDE_DSI_HOST_IS_READ(i64 %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %324

292:                                              ; preds = %268
  br label %293

293:                                              ; preds = %311, %292
  %294 = load %struct.mcde_dsi*, %struct.mcde_dsi** %6, align 8
  %295 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* @DSI_DIRECT_CMD_STS, align 8
  %298 = add nsw i64 %296, %297
  %299 = call i64 @readl(i64 %298)
  %300 = load i64, i64* @DSI_DIRECT_CMD_STS_READ_COMPLETED, align 8
  %301 = load i64, i64* @DSI_DIRECT_CMD_STS_READ_COMPLETED_WITH_ERR, align 8
  %302 = or i64 %300, %301
  %303 = and i64 %299, %302
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %309, label %305

305:                                              ; preds = %293
  %306 = load i64, i64* %9, align 8
  %307 = add i64 %306, -1
  store i64 %307, i64* %9, align 8
  %308 = icmp ne i64 %307, 0
  br label %309

309:                                              ; preds = %305, %293
  %310 = phi i1 [ false, %293 ], [ %308, %305 ]
  br i1 %310, label %311, label %313

311:                                              ; preds = %309
  %312 = call i32 @usleep_range(i64 10, i64 15)
  br label %293

313:                                              ; preds = %309
  %314 = load i64, i64* %9, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %323, label %316

316:                                              ; preds = %313
  %317 = load %struct.mcde_dsi*, %struct.mcde_dsi** %6, align 8
  %318 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 8
  %320 = call i32 (i32, i8*, ...) @dev_err(i32 %319, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %321 = load i32, i32* @ETIME, align 4
  %322 = sub nsw i32 0, %321
  store i32 %322, i32* %3, align 4
  br label %477

323:                                              ; preds = %313
  br label %354

324:                                              ; preds = %268
  br label %325

325:                                              ; preds = %341, %324
  %326 = load %struct.mcde_dsi*, %struct.mcde_dsi** %6, align 8
  %327 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = load i64, i64* @DSI_DIRECT_CMD_STS, align 8
  %330 = add nsw i64 %328, %329
  %331 = call i64 @readl(i64 %330)
  %332 = load i64, i64* @DSI_DIRECT_CMD_STS_WRITE_COMPLETED, align 8
  %333 = and i64 %331, %332
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %339, label %335

335:                                              ; preds = %325
  %336 = load i64, i64* %9, align 8
  %337 = add i64 %336, -1
  store i64 %337, i64* %9, align 8
  %338 = icmp ne i64 %337, 0
  br label %339

339:                                              ; preds = %335, %325
  %340 = phi i1 [ false, %325 ], [ %338, %335 ]
  br i1 %340, label %341, label %343

341:                                              ; preds = %339
  %342 = call i32 @usleep_range(i64 10, i64 15)
  br label %325

343:                                              ; preds = %339
  %344 = load i64, i64* %9, align 8
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %353, label %346

346:                                              ; preds = %343
  %347 = load %struct.mcde_dsi*, %struct.mcde_dsi** %6, align 8
  %348 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 8
  %350 = call i32 (i32, i8*, ...) @dev_err(i32 %349, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %351 = load i32, i32* @ETIME, align 4
  %352 = sub nsw i32 0, %351
  store i32 %352, i32* %3, align 4
  br label %477

353:                                              ; preds = %343
  br label %354

354:                                              ; preds = %353, %323
  %355 = load %struct.mcde_dsi*, %struct.mcde_dsi** %6, align 8
  %356 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = load i64, i64* @DSI_DIRECT_CMD_STS, align 8
  %359 = add nsw i64 %357, %358
  %360 = call i64 @readl(i64 %359)
  store i64 %360, i64* %12, align 8
  %361 = load i64, i64* %12, align 8
  %362 = load i64, i64* @DSI_DIRECT_CMD_STS_READ_COMPLETED_WITH_ERR, align 8
  %363 = and i64 %361, %362
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %378

365:                                              ; preds = %354
  %366 = load %struct.mcde_dsi*, %struct.mcde_dsi** %6, align 8
  %367 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 8
  %369 = call i32 (i32, i8*, ...) @dev_err(i32 %368, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %370 = load %struct.mcde_dsi*, %struct.mcde_dsi** %6, align 8
  %371 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = load i64, i64* @DSI_DIRECT_CMD_RD_INIT, align 8
  %374 = add nsw i64 %372, %373
  %375 = call i32 @writel(i32 1, i64 %374)
  %376 = load i32, i32* @EIO, align 4
  %377 = sub nsw i32 0, %376
  store i32 %377, i32* %3, align 4
  br label %477

378:                                              ; preds = %354
  %379 = load i64, i64* %12, align 8
  %380 = load i64, i64* @DSI_DIRECT_CMD_STS_ACKNOWLEDGE_WITH_ERR_RECEIVED, align 8
  %381 = and i64 %379, %380
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %394

383:                                              ; preds = %378
  %384 = load i64, i64* @DSI_DIRECT_CMD_STS_ACK_VAL_SHIFT, align 8
  %385 = load i64, i64* %12, align 8
  %386 = lshr i64 %385, %384
  store i64 %386, i64* %12, align 8
  %387 = load %struct.mcde_dsi*, %struct.mcde_dsi** %6, align 8
  %388 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 8
  %390 = load i64, i64* %12, align 8
  %391 = call i32 (i32, i8*, ...) @dev_err(i32 %389, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i64 %390)
  %392 = load i32, i32* @EIO, align 4
  %393 = sub nsw i32 0, %392
  store i32 %393, i32* %3, align 4
  br label %477

394:                                              ; preds = %378
  %395 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %396 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %395, i32 0, i32 3
  %397 = load i64, i64* %396, align 8
  %398 = call i64 @MCDE_DSI_HOST_IS_READ(i64 %397)
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %403, label %400

400:                                              ; preds = %394
  %401 = load i64, i64* %10, align 8
  %402 = trunc i64 %401 to i32
  store i32 %402, i32* %13, align 4
  br label %463

403:                                              ; preds = %394
  %404 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %405 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %404, i32 0, i32 4
  %406 = load i32*, i32** %405, align 8
  store i32* %406, i32** %17, align 8
  %407 = load %struct.mcde_dsi*, %struct.mcde_dsi** %6, align 8
  %408 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %407, i32 0, i32 0
  %409 = load i64, i64* %408, align 8
  %410 = load i64, i64* @DSI_DIRECT_CMD_RD_PROPERTY, align 8
  %411 = add nsw i64 %409, %410
  %412 = call i64 @readl(i64 %411)
  store i64 %412, i64* %15, align 8
  %413 = load i64, i64* @DSI_DIRECT_CMD_RD_PROPERTY_RD_SIZE_MASK, align 8
  %414 = load i64, i64* %15, align 8
  %415 = and i64 %414, %413
  store i64 %415, i64* %15, align 8
  %416 = load %struct.mcde_dsi*, %struct.mcde_dsi** %6, align 8
  %417 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %416, i32 0, i32 0
  %418 = load i64, i64* %417, align 8
  %419 = load i64, i64* @DSI_DIRECT_CMD_RDDAT, align 8
  %420 = add nsw i64 %418, %419
  %421 = call i64 @readl(i64 %420)
  store i64 %421, i64* %16, align 8
  %422 = load i64, i64* %15, align 8
  %423 = load i64, i64* %11, align 8
  %424 = icmp ult i64 %422, %423
  br i1 %424, label %425, label %434

425:                                              ; preds = %403
  %426 = load %struct.mcde_dsi*, %struct.mcde_dsi** %6, align 8
  %427 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 8
  %429 = load i64, i64* %11, align 8
  %430 = load i64, i64* %15, align 8
  %431 = call i32 (i32, i8*, ...) @dev_err(i32 %428, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i64 %429, i64 %430)
  %432 = load i32, i32* @EIO, align 4
  %433 = sub nsw i32 0, %432
  store i32 %433, i32* %3, align 4
  br label %477

434:                                              ; preds = %403
  store i32 0, i32* %14, align 4
  br label %435

435:                                              ; preds = %457, %434
  %436 = load i32, i32* %14, align 4
  %437 = icmp slt i32 %436, 4
  br i1 %437, label %438, label %443

438:                                              ; preds = %435
  %439 = load i32, i32* %14, align 4
  %440 = sext i32 %439 to i64
  %441 = load i64, i64* %11, align 8
  %442 = icmp ult i64 %440, %441
  br label %443

443:                                              ; preds = %438, %435
  %444 = phi i1 [ false, %435 ], [ %442, %438 ]
  br i1 %444, label %445, label %460

445:                                              ; preds = %443
  %446 = load i64, i64* %16, align 8
  %447 = load i32, i32* %14, align 4
  %448 = mul nsw i32 %447, 8
  %449 = zext i32 %448 to i64
  %450 = lshr i64 %446, %449
  %451 = and i64 %450, 255
  %452 = trunc i64 %451 to i32
  %453 = load i32*, i32** %17, align 8
  %454 = load i32, i32* %14, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds i32, i32* %453, i64 %455
  store i32 %452, i32* %456, align 4
  br label %457

457:                                              ; preds = %445
  %458 = load i32, i32* %14, align 4
  %459 = add nsw i32 %458, 1
  store i32 %459, i32* %14, align 4
  br label %435

460:                                              ; preds = %443
  %461 = load i64, i64* %15, align 8
  %462 = trunc i64 %461 to i32
  store i32 %462, i32* %13, align 4
  br label %463

463:                                              ; preds = %460, %400
  %464 = load %struct.mcde_dsi*, %struct.mcde_dsi** %6, align 8
  %465 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %464, i32 0, i32 0
  %466 = load i64, i64* %465, align 8
  %467 = load i64, i64* @DSI_DIRECT_CMD_STS_CLR, align 8
  %468 = add nsw i64 %466, %467
  %469 = call i32 @writel(i32 -1, i64 %468)
  %470 = load %struct.mcde_dsi*, %struct.mcde_dsi** %6, align 8
  %471 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %470, i32 0, i32 0
  %472 = load i64, i64* %471, align 8
  %473 = load i64, i64* @DSI_CMD_MODE_STS_CLR, align 8
  %474 = add nsw i64 %472, %473
  %475 = call i32 @writel(i32 -1, i64 %474)
  %476 = load i32, i32* %13, align 4
  store i32 %476, i32* %3, align 4
  br label %477

477:                                              ; preds = %463, %425, %383, %365, %346, %316, %41, %31
  %478 = load i32, i32* %3, align 4
  ret i32 %478
}

declare dso_local %struct.mcde_dsi* @host_to_mcde_dsi(%struct.mipi_dsi_host*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64, i64) #1

declare dso_local i64 @MCDE_DSI_HOST_IS_READ(i64) #1

declare dso_local i64 @mipi_dsi_packet_format_is_long(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @usleep_range(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
