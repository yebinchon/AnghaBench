; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_vm_calc_blanking.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_vm_calc_blanking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_clk_calc_ctx = type { i64, i64, i64, %struct.videomode, %struct.omap_dss_dsi_videomode_timings, %struct.TYPE_4__, %struct.TYPE_3__, %struct.omap_dss_dsi_config*, %struct.dsi_data* }
%struct.videomode = type { i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.omap_dss_dsi_videomode_timings = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.omap_dss_dsi_config = type { i64, i32, %struct.videomode*, i32 }
%struct.dsi_data = type { i32, i32 }

@OMAP_DSS_DSI_BURST_MODE = common dso_local global i64 0, align 8
@OMAP_DSS_DSI_PULSE_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsi_clk_calc_ctx*)* @dsi_vm_calc_blanking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_vm_calc_blanking(%struct.dsi_clk_calc_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsi_clk_calc_ctx*, align 8
  %4 = alloca %struct.dsi_data*, align 8
  %5 = alloca %struct.omap_dss_dsi_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.videomode*, align 8
  %28 = alloca %struct.videomode*, align 8
  %29 = alloca %struct.omap_dss_dsi_videomode_timings*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.dsi_clk_calc_ctx* %0, %struct.dsi_clk_calc_ctx** %3, align 8
  %34 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %34, i32 0, i32 8
  %36 = load %struct.dsi_data*, %struct.dsi_data** %35, align 8
  store %struct.dsi_data* %36, %struct.dsi_data** %4, align 8
  %37 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %3, align 8
  %38 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %37, i32 0, i32 7
  %39 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %38, align 8
  store %struct.omap_dss_dsi_config* %39, %struct.omap_dss_dsi_config** %5, align 8
  %40 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %41 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dsi_get_pixel_size(i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %45 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  %48 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %3, align 8
  %49 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sdiv i32 %51, 4
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* %8, align 8
  %55 = udiv i64 %54, 4
  store i64 %55, i64* %9, align 8
  %56 = load i64, i64* %9, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i32, i32* %7, align 4
  %59 = mul nsw i32 %57, %58
  %60 = mul nsw i32 %59, 8
  store i32 %60, i32* %30, align 4
  %61 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %62 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %61, i32 0, i32 2
  %63 = load %struct.videomode*, %struct.videomode** %62, align 8
  store %struct.videomode* %63, %struct.videomode** %27, align 8
  %64 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %3, align 8
  %65 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %11, align 8
  %67 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %3, align 8
  %68 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %13, align 8
  %70 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %3, align 8
  %71 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %12, align 8
  %73 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %3, align 8
  %74 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %10, align 8
  %77 = load i64, i64* %10, align 8
  %78 = trunc i64 %77 to i32
  %79 = load i32, i32* %6, align 4
  %80 = mul nsw i32 %78, %79
  store i32 %80, i32* %31, align 4
  %81 = load %struct.videomode*, %struct.videomode** %27, align 8
  %82 = getelementptr inbounds %struct.videomode, %struct.videomode* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %14, align 4
  %84 = load %struct.videomode*, %struct.videomode** %27, align 8
  %85 = getelementptr inbounds %struct.videomode, %struct.videomode* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.videomode*, %struct.videomode** %27, align 8
  %88 = getelementptr inbounds %struct.videomode, %struct.videomode* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %86, %89
  %91 = load %struct.videomode*, %struct.videomode** %27, align 8
  %92 = getelementptr inbounds %struct.videomode, %struct.videomode* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %90, %93
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %16, align 4
  %97 = add nsw i32 %95, %96
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %6, align 4
  %100 = mul nsw i32 %98, %99
  %101 = call i32 @DIV_ROUND_UP(i32 %100, i32 8)
  %102 = add nsw i32 %101, 6
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @DIV_ROUND_UP(i32 %102, i32 %103)
  store i32 %104, i32* %20, align 4
  %105 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %106 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %6, align 4
  %110 = mul nsw i32 %108, %109
  %111 = sdiv i32 %110, 8
  %112 = icmp slt i32 %107, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %1
  %114 = load i32, i32* %31, align 4
  %115 = load i32, i32* %30, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  store i32 0, i32* %2, align 4
  br label %467

118:                                              ; preds = %113
  br label %125

119:                                              ; preds = %1
  %120 = load i32, i32* %31, align 4
  %121 = load i32, i32* %30, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  store i32 0, i32* %2, align 4
  br label %467

124:                                              ; preds = %119
  br label %125

125:                                              ; preds = %124, %118
  %126 = load i32, i32* %30, align 4
  %127 = sext i32 %126 to i64
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = load i64, i64* %11, align 8
  %131 = mul i64 %129, %130
  %132 = icmp ult i64 %127, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %125
  store i32 0, i32* %2, align 4
  br label %467

134:                                              ; preds = %125
  %135 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %136 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @OMAP_DSS_DSI_BURST_MODE, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %150

140:                                              ; preds = %134
  %141 = load i32, i32* %30, align 4
  %142 = sext i32 %141 to i64
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = load i64, i64* %13, align 8
  %146 = mul i64 %144, %145
  %147 = icmp ugt i64 %142, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %140
  store i32 0, i32* %2, align 4
  br label %467

149:                                              ; preds = %140
  br label %150

150:                                              ; preds = %149, %134
  %151 = load i32, i32* %7, align 4
  %152 = call i32 @DIV_ROUND_UP(i32 4, i32 %151)
  store i32 %152, i32* %22, align 4
  %153 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %154 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @OMAP_DSS_DSI_PULSE_MODE, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %171

158:                                              ; preds = %150
  %159 = load i32, i32* %7, align 4
  %160 = icmp eq i32 %159, 3
  br i1 %160, label %161, label %167

161:                                              ; preds = %158
  %162 = load %struct.videomode*, %struct.videomode** %27, align 8
  %163 = getelementptr inbounds %struct.videomode, %struct.videomode* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  store i32 1, i32* %23, align 4
  br label %170

167:                                              ; preds = %161, %158
  %168 = load i32, i32* %7, align 4
  %169 = call i32 @DIV_ROUND_UP(i32 4, i32 %168)
  store i32 %169, i32* %23, align 4
  br label %170

170:                                              ; preds = %167, %166
  br label %172

171:                                              ; preds = %150
  store i32 0, i32* %23, align 4
  br label %172

172:                                              ; preds = %171, %170
  %173 = load i32, i32* %15, align 4
  %174 = sext i32 %173 to i64
  %175 = load i64, i64* %9, align 8
  %176 = mul i64 %174, %175
  %177 = trunc i64 %176 to i32
  %178 = load i64, i64* %12, align 8
  %179 = call i32 @div64_u64(i32 %177, i64 %178)
  store i32 %179, i32* %19, align 4
  %180 = load i32, i32* %19, align 4
  %181 = load i32, i32* %22, align 4
  %182 = load i32, i32* %23, align 4
  %183 = add nsw i32 %181, %182
  %184 = load i32, i32* %20, align 4
  %185 = add nsw i32 %183, %184
  %186 = icmp slt i32 %180, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %172
  store i32 0, i32* %2, align 4
  br label %467

188:                                              ; preds = %172
  %189 = load i32, i32* %19, align 4
  %190 = load i32, i32* %20, align 4
  %191 = sub nsw i32 %189, %190
  store i32 %191, i32* %21, align 4
  %192 = load i32, i32* %19, align 4
  %193 = sext i32 %192 to i64
  %194 = load i64, i64* %10, align 8
  %195 = mul i64 %193, %194
  %196 = trunc i64 %195 to i32
  %197 = load i64, i64* %9, align 8
  %198 = call i32 @div64_u64(i32 %196, i64 %197)
  store i32 %198, i32* %17, align 4
  %199 = load i32, i32* %19, align 4
  %200 = sext i32 %199 to i64
  %201 = load i64, i64* %10, align 8
  %202 = mul i64 %200, %201
  %203 = load i32, i32* %17, align 4
  %204 = sext i32 %203 to i64
  %205 = load i64, i64* %9, align 8
  %206 = mul i64 %204, %205
  %207 = icmp ne i64 %202, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %188
  store i32 0, i32* %2, align 4
  br label %467

209:                                              ; preds = %188
  %210 = load i32, i32* %17, align 4
  %211 = load i32, i32* %14, align 4
  %212 = sub nsw i32 %210, %211
  store i32 %212, i32* %18, align 4
  %213 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %3, align 8
  %214 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %213, i32 0, i32 4
  store %struct.omap_dss_dsi_videomode_timings* %214, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %215 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %216 = call i32 @memset(%struct.omap_dss_dsi_videomode_timings* %215, i32 0, i32 96)
  %217 = load i64, i64* %8, align 8
  %218 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %219 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %218, i32 0, i32 0
  store i64 %217, i64* %219, align 8
  %220 = load i32, i32* %7, align 4
  %221 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %222 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %221, i32 0, i32 1
  store i32 %220, i32* %222, align 8
  %223 = load i32, i32* %6, align 4
  %224 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %225 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %224, i32 0, i32 2
  store i32 %223, i32* %225, align 4
  %226 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %227 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @OMAP_DSS_DSI_PULSE_MODE, align 8
  %230 = icmp ne i64 %228, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %209
  store i32 0, i32* %25, align 4
  br label %256

232:                                              ; preds = %209
  %233 = load i32, i32* %7, align 4
  %234 = icmp eq i32 %233, 3
  br i1 %234, label %235, label %241

235:                                              ; preds = %232
  %236 = load %struct.videomode*, %struct.videomode** %27, align 8
  %237 = getelementptr inbounds %struct.videomode, %struct.videomode* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %235
  store i32 0, i32* %25, align 4
  br label %255

241:                                              ; preds = %235, %232
  %242 = load %struct.videomode*, %struct.videomode** %27, align 8
  %243 = getelementptr inbounds %struct.videomode, %struct.videomode* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = sext i32 %244 to i64
  %246 = load i64, i64* %9, align 8
  %247 = mul i64 %245, %246
  %248 = trunc i64 %247 to i32
  %249 = load i64, i64* %12, align 8
  %250 = call i32 @div64_u64(i32 %248, i64 %249)
  store i32 %250, i32* %25, align 4
  %251 = load i32, i32* %25, align 4
  %252 = load i32, i32* %23, align 4
  %253 = sub nsw i32 %251, %252
  %254 = call i32 @max(i32 %253, i32 1)
  store i32 %254, i32* %25, align 4
  br label %255

255:                                              ; preds = %241, %240
  br label %256

256:                                              ; preds = %255, %231
  %257 = load %struct.videomode*, %struct.videomode** %27, align 8
  %258 = getelementptr inbounds %struct.videomode, %struct.videomode* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = sext i32 %259 to i64
  %261 = load i64, i64* %9, align 8
  %262 = mul i64 %260, %261
  %263 = trunc i64 %262 to i32
  %264 = load i64, i64* %12, align 8
  %265 = call i32 @div64_u64(i32 %263, i64 %264)
  store i32 %265, i32* %26, align 4
  %266 = load i32, i32* %26, align 4
  %267 = call i32 @max(i32 %266, i32 1)
  store i32 %267, i32* %26, align 4
  %268 = load i32, i32* %21, align 4
  %269 = load i32, i32* %22, align 4
  %270 = load i32, i32* %25, align 4
  %271 = add nsw i32 %269, %270
  %272 = load i32, i32* %23, align 4
  %273 = add nsw i32 %271, %272
  %274 = load i32, i32* %26, align 4
  %275 = add nsw i32 %273, %274
  %276 = sub nsw i32 %268, %275
  store i32 %276, i32* %24, align 4
  %277 = load i32, i32* %24, align 4
  %278 = icmp slt i32 %277, 1
  br i1 %278, label %279, label %317

279:                                              ; preds = %256
  %280 = load i32, i32* %24, align 4
  %281 = sub nsw i32 1, %280
  store i32 %281, i32* %32, align 4
  %282 = load i32, i32* %26, align 4
  %283 = load i32, i32* %32, align 4
  %284 = sub nsw i32 %282, %283
  %285 = call i32 @max(i32 %284, i32 1)
  store i32 %285, i32* %26, align 4
  %286 = load i32, i32* %21, align 4
  %287 = load i32, i32* %22, align 4
  %288 = load i32, i32* %25, align 4
  %289 = add nsw i32 %287, %288
  %290 = load i32, i32* %23, align 4
  %291 = add nsw i32 %289, %290
  %292 = load i32, i32* %26, align 4
  %293 = add nsw i32 %291, %292
  %294 = sub nsw i32 %286, %293
  store i32 %294, i32* %24, align 4
  %295 = load i32, i32* %24, align 4
  %296 = icmp slt i32 %295, 1
  br i1 %296, label %297, label %316

297:                                              ; preds = %279
  %298 = load i32, i32* %25, align 4
  %299 = icmp sgt i32 %298, 0
  br i1 %299, label %300, label %316

300:                                              ; preds = %297
  %301 = load i32, i32* %24, align 4
  %302 = sub nsw i32 1, %301
  store i32 %302, i32* %32, align 4
  %303 = load i32, i32* %25, align 4
  %304 = load i32, i32* %32, align 4
  %305 = sub nsw i32 %303, %304
  %306 = call i32 @max(i32 %305, i32 1)
  store i32 %306, i32* %25, align 4
  %307 = load i32, i32* %21, align 4
  %308 = load i32, i32* %22, align 4
  %309 = load i32, i32* %25, align 4
  %310 = add nsw i32 %308, %309
  %311 = load i32, i32* %23, align 4
  %312 = add nsw i32 %310, %311
  %313 = load i32, i32* %26, align 4
  %314 = add nsw i32 %312, %313
  %315 = sub nsw i32 %307, %314
  store i32 %315, i32* %24, align 4
  br label %316

316:                                              ; preds = %300, %297, %279
  br label %317

317:                                              ; preds = %316, %256
  %318 = load i32, i32* %24, align 4
  %319 = icmp slt i32 %318, 1
  br i1 %319, label %320, label %321

320:                                              ; preds = %317
  store i32 0, i32* %2, align 4
  br label %467

321:                                              ; preds = %317
  %322 = load i32, i32* %22, align 4
  %323 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %324 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %323, i32 0, i32 3
  store i32 %322, i32* %324, align 8
  %325 = load i32, i32* %25, align 4
  %326 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %327 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %326, i32 0, i32 4
  store i32 %325, i32* %327, align 4
  %328 = load i32, i32* %23, align 4
  %329 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %330 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %329, i32 0, i32 5
  store i32 %328, i32* %330, align 8
  %331 = load i32, i32* %26, align 4
  %332 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %333 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %332, i32 0, i32 6
  store i32 %331, i32* %333, align 4
  %334 = load i32, i32* %14, align 4
  %335 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %336 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %335, i32 0, i32 7
  store i32 %334, i32* %336, align 8
  %337 = load i32, i32* %24, align 4
  %338 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %339 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %338, i32 0, i32 8
  store i32 %337, i32* %339, align 4
  %340 = load %struct.videomode*, %struct.videomode** %27, align 8
  %341 = getelementptr inbounds %struct.videomode, %struct.videomode* %340, i32 0, i32 8
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %344 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %343, i32 0, i32 19
  store i32 %342, i32* %344, align 4
  %345 = load %struct.videomode*, %struct.videomode** %27, align 8
  %346 = getelementptr inbounds %struct.videomode, %struct.videomode* %345, i32 0, i32 7
  %347 = load i32, i32* %346, align 8
  %348 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %349 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %348, i32 0, i32 18
  store i32 %347, i32* %349, align 8
  %350 = load %struct.videomode*, %struct.videomode** %27, align 8
  %351 = getelementptr inbounds %struct.videomode, %struct.videomode* %350, i32 0, i32 6
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %354 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %353, i32 0, i32 17
  store i32 %352, i32* %354, align 4
  %355 = load %struct.videomode*, %struct.videomode** %27, align 8
  %356 = getelementptr inbounds %struct.videomode, %struct.videomode* %355, i32 0, i32 5
  %357 = load i32, i32* %356, align 8
  %358 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %359 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %358, i32 0, i32 16
  store i32 %357, i32* %359, align 8
  %360 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %361 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %360, i32 0, i32 0
  %362 = load i64, i64* %361, align 8
  %363 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %364 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %363, i32 0, i32 9
  store i64 %362, i64* %364, align 8
  %365 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %366 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %365, i32 0, i32 15
  store i64 0, i64* %366, align 8
  %367 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %368 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %367, i32 0, i32 10
  store i32 1, i32* %368, align 8
  %369 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %370 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %369, i32 0, i32 11
  store i32 1, i32* %370, align 4
  %371 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %372 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %371, i32 0, i32 12
  store i32 1, i32* %372, align 8
  %373 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %374 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 8
  %376 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %377 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %376, i32 0, i32 14
  store i32 %375, i32* %377, align 8
  %378 = load %struct.omap_dss_dsi_videomode_timings*, %struct.omap_dss_dsi_videomode_timings** %29, align 8
  %379 = getelementptr inbounds %struct.omap_dss_dsi_videomode_timings, %struct.omap_dss_dsi_videomode_timings* %378, i32 0, i32 13
  store i32 4, i32* %379, align 4
  %380 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %3, align 8
  %381 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %380, i32 0, i32 3
  store %struct.videomode* %381, %struct.videomode** %28, align 8
  %382 = load %struct.videomode*, %struct.videomode** %28, align 8
  %383 = load %struct.videomode*, %struct.videomode** %27, align 8
  %384 = bitcast %struct.videomode* %382 to i8*
  %385 = bitcast %struct.videomode* %383 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %384, i8* align 8 %385, i64 40, i1 false)
  %386 = load i64, i64* %10, align 8
  %387 = load %struct.videomode*, %struct.videomode** %28, align 8
  %388 = getelementptr inbounds %struct.videomode, %struct.videomode* %387, i32 0, i32 4
  store i64 %386, i64* %388, align 8
  %389 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %390 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %389, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  %392 = load i64, i64* @OMAP_DSS_DSI_PULSE_MODE, align 8
  %393 = icmp eq i64 %391, %392
  br i1 %393, label %394, label %406

394:                                              ; preds = %321
  %395 = load %struct.videomode*, %struct.videomode** %27, align 8
  %396 = getelementptr inbounds %struct.videomode, %struct.videomode* %395, i32 0, i32 3
  %397 = load i32, i32* %396, align 4
  %398 = sext i32 %397 to i64
  %399 = load i64, i64* %10, align 8
  %400 = mul i64 %398, %399
  %401 = trunc i64 %400 to i32
  %402 = load i64, i64* %12, align 8
  %403 = call i32 @div64_u64(i32 %401, i64 %402)
  store i32 %403, i32* %25, align 4
  %404 = load i32, i32* %25, align 4
  %405 = call i32 @max(i32 %404, i32 1)
  store i32 %405, i32* %25, align 4
  br label %407

406:                                              ; preds = %321
  store i32 1, i32* %25, align 4
  br label %407

407:                                              ; preds = %406, %394
  %408 = load %struct.videomode*, %struct.videomode** %27, align 8
  %409 = getelementptr inbounds %struct.videomode, %struct.videomode* %408, i32 0, i32 2
  %410 = load i32, i32* %409, align 8
  %411 = sext i32 %410 to i64
  %412 = load i64, i64* %10, align 8
  %413 = mul i64 %411, %412
  %414 = trunc i64 %413 to i32
  %415 = load i64, i64* %12, align 8
  %416 = call i32 @div64_u64(i32 %414, i64 %415)
  store i32 %416, i32* %26, align 4
  %417 = load i32, i32* %26, align 4
  %418 = call i32 @max(i32 %417, i32 1)
  store i32 %418, i32* %26, align 4
  %419 = load i32, i32* %18, align 4
  %420 = load i32, i32* %25, align 4
  %421 = sub nsw i32 %419, %420
  %422 = load i32, i32* %26, align 4
  %423 = sub nsw i32 %421, %422
  store i32 %423, i32* %24, align 4
  %424 = load i32, i32* %24, align 4
  %425 = icmp slt i32 %424, 1
  br i1 %425, label %426, label %453

426:                                              ; preds = %407
  %427 = load i32, i32* %24, align 4
  %428 = sub nsw i32 1, %427
  store i32 %428, i32* %33, align 4
  %429 = load i32, i32* %26, align 4
  %430 = load i32, i32* %33, align 4
  %431 = sub nsw i32 %429, %430
  %432 = call i32 @max(i32 %431, i32 1)
  store i32 %432, i32* %26, align 4
  %433 = load i32, i32* %18, align 4
  %434 = load i32, i32* %25, align 4
  %435 = sub nsw i32 %433, %434
  %436 = load i32, i32* %26, align 4
  %437 = sub nsw i32 %435, %436
  store i32 %437, i32* %24, align 4
  %438 = load i32, i32* %24, align 4
  %439 = icmp slt i32 %438, 1
  br i1 %439, label %440, label %452

440:                                              ; preds = %426
  %441 = load i32, i32* %24, align 4
  %442 = sub nsw i32 1, %441
  store i32 %442, i32* %33, align 4
  %443 = load i32, i32* %25, align 4
  %444 = load i32, i32* %33, align 4
  %445 = sub nsw i32 %443, %444
  %446 = call i32 @max(i32 %445, i32 1)
  store i32 %446, i32* %25, align 4
  %447 = load i32, i32* %18, align 4
  %448 = load i32, i32* %25, align 4
  %449 = sub nsw i32 %447, %448
  %450 = load i32, i32* %26, align 4
  %451 = sub nsw i32 %449, %450
  store i32 %451, i32* %24, align 4
  br label %452

452:                                              ; preds = %440, %426
  br label %453

453:                                              ; preds = %452, %407
  %454 = load i32, i32* %24, align 4
  %455 = icmp slt i32 %454, 1
  br i1 %455, label %456, label %457

456:                                              ; preds = %453
  store i32 0, i32* %2, align 4
  br label %467

457:                                              ; preds = %453
  %458 = load i32, i32* %24, align 4
  %459 = load %struct.videomode*, %struct.videomode** %28, align 8
  %460 = getelementptr inbounds %struct.videomode, %struct.videomode* %459, i32 0, i32 1
  store i32 %458, i32* %460, align 4
  %461 = load i32, i32* %25, align 4
  %462 = load %struct.videomode*, %struct.videomode** %28, align 8
  %463 = getelementptr inbounds %struct.videomode, %struct.videomode* %462, i32 0, i32 3
  store i32 %461, i32* %463, align 4
  %464 = load i32, i32* %26, align 4
  %465 = load %struct.videomode*, %struct.videomode** %28, align 8
  %466 = getelementptr inbounds %struct.videomode, %struct.videomode* %465, i32 0, i32 2
  store i32 %464, i32* %466, align 8
  store i32 1, i32* %2, align 4
  br label %467

467:                                              ; preds = %457, %456, %320, %208, %187, %148, %133, %123, %117
  %468 = load i32, i32* %2, align 4
  ret i32 %468
}

declare dso_local i32 @dsi_get_pixel_size(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @div64_u64(i32, i64) #1

declare dso_local i32 @memset(%struct.omap_dss_dsi_videomode_timings*, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
