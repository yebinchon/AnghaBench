; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dcn_calcs.c_dcn_find_normalized_clock_vdd_Level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dcn_calcs.c_dcn_find_normalized_clock_vdd_Level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@dcn_bw_v_min0p65 = common dso_local global i32 0, align 4
@dcn_bw_v_max0p91 = common dso_local global i32 0, align 4
@dcn_bw_v_max0p9 = common dso_local global i32 0, align 4
@dcn_bw_v_nom0p8 = common dso_local global i32 0, align 4
@dcn_bw_v_mid0p72 = common dso_local global i32 0, align 4
@ddr4_dram_factor_single_Channel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc*, i32, i32)* @dcn_find_normalized_clock_vdd_Level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcn_find_normalized_clock_vdd_Level(%struct.dc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @dcn_bw_v_min0p65, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %4, align 4
  br label %290

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %287 [
    i32 130, label %17
    i32 131, label %68
    i32 129, label %119
    i32 128, label %170
    i32 132, label %236
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.dc*, %struct.dc** %5, align 8
  %20 = getelementptr inbounds %struct.dc, %struct.dc* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 1000
  %25 = icmp sgt i32 %18, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i32, i32* @dcn_bw_v_max0p91, align 4
  store i32 %27, i32* %8, align 4
  %28 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %67

29:                                               ; preds = %17
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.dc*, %struct.dc** %5, align 8
  %32 = getelementptr inbounds %struct.dc, %struct.dc* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %35, 1000
  %37 = icmp sgt i32 %30, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* @dcn_bw_v_max0p9, align 4
  store i32 %39, i32* %8, align 4
  br label %66

40:                                               ; preds = %29
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.dc*, %struct.dc** %5, align 8
  %43 = getelementptr inbounds %struct.dc, %struct.dc* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %46, 1000
  %48 = icmp sgt i32 %41, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* @dcn_bw_v_nom0p8, align 4
  store i32 %50, i32* %8, align 4
  br label %65

51:                                               ; preds = %40
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.dc*, %struct.dc** %5, align 8
  %54 = getelementptr inbounds %struct.dc, %struct.dc* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %57, 1000
  %59 = icmp sgt i32 %52, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = load i32, i32* @dcn_bw_v_mid0p72, align 4
  store i32 %61, i32* %8, align 4
  br label %64

62:                                               ; preds = %51
  %63 = load i32, i32* @dcn_bw_v_min0p65, align 4
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %62, %60
  br label %65

65:                                               ; preds = %64, %49
  br label %66

66:                                               ; preds = %65, %38
  br label %67

67:                                               ; preds = %66, %26
  br label %288

68:                                               ; preds = %15
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.dc*, %struct.dc** %5, align 8
  %71 = getelementptr inbounds %struct.dc, %struct.dc* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %74, 1000
  %76 = icmp sgt i32 %69, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %68
  %78 = load i32, i32* @dcn_bw_v_max0p91, align 4
  store i32 %78, i32* %8, align 4
  %79 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %118

80:                                               ; preds = %68
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.dc*, %struct.dc** %5, align 8
  %83 = getelementptr inbounds %struct.dc, %struct.dc* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 %86, 1000
  %88 = icmp sgt i32 %81, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %80
  %90 = load i32, i32* @dcn_bw_v_max0p9, align 4
  store i32 %90, i32* %8, align 4
  br label %117

91:                                               ; preds = %80
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.dc*, %struct.dc** %5, align 8
  %94 = getelementptr inbounds %struct.dc, %struct.dc* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 %97, 1000
  %99 = icmp sgt i32 %92, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %91
  %101 = load i32, i32* @dcn_bw_v_nom0p8, align 4
  store i32 %101, i32* %8, align 4
  br label %116

102:                                              ; preds = %91
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.dc*, %struct.dc** %5, align 8
  %105 = getelementptr inbounds %struct.dc, %struct.dc* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %108, 1000
  %110 = icmp sgt i32 %103, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %102
  %112 = load i32, i32* @dcn_bw_v_mid0p72, align 4
  store i32 %112, i32* %8, align 4
  br label %115

113:                                              ; preds = %102
  %114 = load i32, i32* @dcn_bw_v_min0p65, align 4
  store i32 %114, i32* %8, align 4
  br label %115

115:                                              ; preds = %113, %111
  br label %116

116:                                              ; preds = %115, %100
  br label %117

117:                                              ; preds = %116, %89
  br label %118

118:                                              ; preds = %117, %77
  br label %288

119:                                              ; preds = %15
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.dc*, %struct.dc** %5, align 8
  %122 = getelementptr inbounds %struct.dc, %struct.dc* %121, i32 0, i32 0
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 8
  %125 = load i32, i32* %124, align 4
  %126 = mul nsw i32 %125, 1000
  %127 = icmp sgt i32 %120, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %119
  %129 = load i32, i32* @dcn_bw_v_max0p91, align 4
  store i32 %129, i32* %8, align 4
  %130 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %169

131:                                              ; preds = %119
  %132 = load i32, i32* %7, align 4
  %133 = load %struct.dc*, %struct.dc** %5, align 8
  %134 = getelementptr inbounds %struct.dc, %struct.dc* %133, i32 0, i32 0
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 9
  %137 = load i32, i32* %136, align 4
  %138 = mul nsw i32 %137, 1000
  %139 = icmp sgt i32 %132, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %131
  %141 = load i32, i32* @dcn_bw_v_max0p9, align 4
  store i32 %141, i32* %8, align 4
  br label %168

142:                                              ; preds = %131
  %143 = load i32, i32* %7, align 4
  %144 = load %struct.dc*, %struct.dc** %5, align 8
  %145 = getelementptr inbounds %struct.dc, %struct.dc* %144, i32 0, i32 0
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 10
  %148 = load i32, i32* %147, align 4
  %149 = mul nsw i32 %148, 1000
  %150 = icmp sgt i32 %143, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %142
  %152 = load i32, i32* @dcn_bw_v_nom0p8, align 4
  store i32 %152, i32* %8, align 4
  br label %167

153:                                              ; preds = %142
  %154 = load i32, i32* %7, align 4
  %155 = load %struct.dc*, %struct.dc** %5, align 8
  %156 = getelementptr inbounds %struct.dc, %struct.dc* %155, i32 0, i32 0
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 11
  %159 = load i32, i32* %158, align 4
  %160 = mul nsw i32 %159, 1000
  %161 = icmp sgt i32 %154, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %153
  %163 = load i32, i32* @dcn_bw_v_mid0p72, align 4
  store i32 %163, i32* %8, align 4
  br label %166

164:                                              ; preds = %153
  %165 = load i32, i32* @dcn_bw_v_min0p65, align 4
  store i32 %165, i32* %8, align 4
  br label %166

166:                                              ; preds = %164, %162
  br label %167

167:                                              ; preds = %166, %151
  br label %168

168:                                              ; preds = %167, %140
  br label %169

169:                                              ; preds = %168, %128
  br label %288

170:                                              ; preds = %15
  %171 = load i32, i32* @ddr4_dram_factor_single_Channel, align 4
  %172 = load %struct.dc*, %struct.dc** %5, align 8
  %173 = getelementptr inbounds %struct.dc, %struct.dc* %172, i32 0, i32 0
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 12
  %176 = load i32, i32* %175, align 4
  %177 = mul i32 %171, %176
  store i32 %177, i32* %9, align 4
  %178 = load i32, i32* %7, align 4
  %179 = load %struct.dc*, %struct.dc** %5, align 8
  %180 = getelementptr inbounds %struct.dc, %struct.dc* %179, i32 0, i32 0
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 13
  %183 = load i32, i32* %182, align 4
  %184 = mul nsw i32 %183, 1000000
  %185 = load i32, i32* %9, align 4
  %186 = udiv i32 %184, %185
  %187 = icmp ugt i32 %178, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %170
  %189 = load i32, i32* @dcn_bw_v_max0p91, align 4
  store i32 %189, i32* %8, align 4
  %190 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %235

191:                                              ; preds = %170
  %192 = load i32, i32* %7, align 4
  %193 = load %struct.dc*, %struct.dc** %5, align 8
  %194 = getelementptr inbounds %struct.dc, %struct.dc* %193, i32 0, i32 0
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 14
  %197 = load i32, i32* %196, align 4
  %198 = mul nsw i32 %197, 1000000
  %199 = load i32, i32* %9, align 4
  %200 = udiv i32 %198, %199
  %201 = icmp ugt i32 %192, %200
  br i1 %201, label %202, label %204

202:                                              ; preds = %191
  %203 = load i32, i32* @dcn_bw_v_max0p9, align 4
  store i32 %203, i32* %8, align 4
  br label %234

204:                                              ; preds = %191
  %205 = load i32, i32* %7, align 4
  %206 = load %struct.dc*, %struct.dc** %5, align 8
  %207 = getelementptr inbounds %struct.dc, %struct.dc* %206, i32 0, i32 0
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 15
  %210 = load i32, i32* %209, align 4
  %211 = mul nsw i32 %210, 1000000
  %212 = load i32, i32* %9, align 4
  %213 = udiv i32 %211, %212
  %214 = icmp ugt i32 %205, %213
  br i1 %214, label %215, label %217

215:                                              ; preds = %204
  %216 = load i32, i32* @dcn_bw_v_nom0p8, align 4
  store i32 %216, i32* %8, align 4
  br label %233

217:                                              ; preds = %204
  %218 = load i32, i32* %7, align 4
  %219 = load %struct.dc*, %struct.dc** %5, align 8
  %220 = getelementptr inbounds %struct.dc, %struct.dc* %219, i32 0, i32 0
  %221 = load %struct.TYPE_2__*, %struct.TYPE_2__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 16
  %223 = load i32, i32* %222, align 4
  %224 = mul nsw i32 %223, 1000000
  %225 = load i32, i32* %9, align 4
  %226 = udiv i32 %224, %225
  %227 = icmp ugt i32 %218, %226
  br i1 %227, label %228, label %230

228:                                              ; preds = %217
  %229 = load i32, i32* @dcn_bw_v_mid0p72, align 4
  store i32 %229, i32* %8, align 4
  br label %232

230:                                              ; preds = %217
  %231 = load i32, i32* @dcn_bw_v_min0p65, align 4
  store i32 %231, i32* %8, align 4
  br label %232

232:                                              ; preds = %230, %228
  br label %233

233:                                              ; preds = %232, %215
  br label %234

234:                                              ; preds = %233, %202
  br label %235

235:                                              ; preds = %234, %188
  br label %288

236:                                              ; preds = %15
  %237 = load i32, i32* %7, align 4
  %238 = load %struct.dc*, %struct.dc** %5, align 8
  %239 = getelementptr inbounds %struct.dc, %struct.dc* %238, i32 0, i32 0
  %240 = load %struct.TYPE_2__*, %struct.TYPE_2__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 17
  %242 = load i32, i32* %241, align 4
  %243 = mul nsw i32 %242, 1000
  %244 = icmp sgt i32 %237, %243
  br i1 %244, label %245, label %248

245:                                              ; preds = %236
  %246 = load i32, i32* @dcn_bw_v_max0p91, align 4
  store i32 %246, i32* %8, align 4
  %247 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %286

248:                                              ; preds = %236
  %249 = load i32, i32* %7, align 4
  %250 = load %struct.dc*, %struct.dc** %5, align 8
  %251 = getelementptr inbounds %struct.dc, %struct.dc* %250, i32 0, i32 0
  %252 = load %struct.TYPE_2__*, %struct.TYPE_2__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 18
  %254 = load i32, i32* %253, align 4
  %255 = mul nsw i32 %254, 1000
  %256 = icmp sgt i32 %249, %255
  br i1 %256, label %257, label %259

257:                                              ; preds = %248
  %258 = load i32, i32* @dcn_bw_v_max0p9, align 4
  store i32 %258, i32* %8, align 4
  br label %285

259:                                              ; preds = %248
  %260 = load i32, i32* %7, align 4
  %261 = load %struct.dc*, %struct.dc** %5, align 8
  %262 = getelementptr inbounds %struct.dc, %struct.dc* %261, i32 0, i32 0
  %263 = load %struct.TYPE_2__*, %struct.TYPE_2__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i32 0, i32 19
  %265 = load i32, i32* %264, align 4
  %266 = mul nsw i32 %265, 1000
  %267 = icmp sgt i32 %260, %266
  br i1 %267, label %268, label %270

268:                                              ; preds = %259
  %269 = load i32, i32* @dcn_bw_v_nom0p8, align 4
  store i32 %269, i32* %8, align 4
  br label %284

270:                                              ; preds = %259
  %271 = load i32, i32* %7, align 4
  %272 = load %struct.dc*, %struct.dc** %5, align 8
  %273 = getelementptr inbounds %struct.dc, %struct.dc* %272, i32 0, i32 0
  %274 = load %struct.TYPE_2__*, %struct.TYPE_2__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 20
  %276 = load i32, i32* %275, align 4
  %277 = mul nsw i32 %276, 1000
  %278 = icmp sgt i32 %271, %277
  br i1 %278, label %279, label %281

279:                                              ; preds = %270
  %280 = load i32, i32* @dcn_bw_v_mid0p72, align 4
  store i32 %280, i32* %8, align 4
  br label %283

281:                                              ; preds = %270
  %282 = load i32, i32* @dcn_bw_v_min0p65, align 4
  store i32 %282, i32* %8, align 4
  br label %283

283:                                              ; preds = %281, %279
  br label %284

284:                                              ; preds = %283, %268
  br label %285

285:                                              ; preds = %284, %257
  br label %286

286:                                              ; preds = %285, %245
  br label %288

287:                                              ; preds = %15
  br label %288

288:                                              ; preds = %287, %286, %235, %169, %118, %67
  %289 = load i32, i32* %8, align 4
  store i32 %289, i32* %4, align 4
  br label %290

290:                                              ; preds = %288, %13
  %291 = load i32, i32* %4, align 4
  ret i32 %291
}

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
