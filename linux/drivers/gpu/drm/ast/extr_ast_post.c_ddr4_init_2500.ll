; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_ddr4_init_2500.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_ddr4_init_2500.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_private = type { i32 }

@REGIDX_010 = common dso_local global i64 0, align 8
@REGIDX_014 = common dso_local global i64 0, align 8
@REGIDX_018 = common dso_local global i64 0, align 8
@REGIDX_020 = common dso_local global i64 0, align 8
@REGIDX_024 = common dso_local global i64 0, align 8
@REGIDX_02C = common dso_local global i64 0, align 8
@REGIDX_030 = common dso_local global i64 0, align 8
@REGIDX_214 = common dso_local global i64 0, align 8
@REGIDX_2E0 = common dso_local global i64 0, align 8
@REGIDX_2E4 = common dso_local global i64 0, align 8
@REGIDX_2E8 = common dso_local global i64 0, align 8
@REGIDX_2EC = common dso_local global i64 0, align 8
@REGIDX_2F0 = common dso_local global i64 0, align 8
@REGIDX_2F4 = common dso_local global i64 0, align 8
@REGIDX_2F8 = common dso_local global i64 0, align 8
@REGIDX_PLL = common dso_local global i64 0, align 8
@REGIDX_RFC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ast_private*, i32*)* @ddr4_init_2500 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddr4_init_2500(%struct.ast_private* %0, i32* %1) #0 {
  %3 = alloca %struct.ast_private*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ast_private* %0, %struct.ast_private** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %16 = call i32 @ast_moutdwm(%struct.ast_private* %15, i32 510525444, i32 787)
  %17 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load i64, i64* @REGIDX_010, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ast_moutdwm(%struct.ast_private* %17, i32 510525456, i32 %21)
  %23 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load i64, i64* @REGIDX_014, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ast_moutdwm(%struct.ast_private* %23, i32 510525460, i32 %27)
  %29 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = load i64, i64* @REGIDX_018, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ast_moutdwm(%struct.ast_private* %29, i32 510525464, i32 %33)
  %35 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = load i64, i64* @REGIDX_020, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ast_moutdwm(%struct.ast_private* %35, i32 510525472, i32 %39)
  %41 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = load i64, i64* @REGIDX_024, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ast_moutdwm(%struct.ast_private* %41, i32 510525476, i32 %45)
  %47 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = load i64, i64* @REGIDX_02C, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, 256
  %53 = call i32 @ast_moutdwm(%struct.ast_private* %47, i32 510525484, i32 %52)
  %54 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = load i64, i64* @REGIDX_030, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ast_moutdwm(%struct.ast_private* %54, i32 510525488, i32 %58)
  %60 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %61 = call i32 @ast_moutdwm(%struct.ast_private* %60, i32 510525952, i32 1112091310)
  %62 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %63 = call i32 @ast_moutdwm(%struct.ast_private* %62, i32 510525956, i32 151003136)
  %64 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %65 = call i32 @ast_moutdwm(%struct.ast_private* %64, i32 510525964, i32 1440746251)
  %66 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %67 = call i32 @ast_moutdwm(%struct.ast_private* %66, i32 510525968, i32 536870912)
  %68 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = load i64, i64* @REGIDX_214, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ast_moutdwm(%struct.ast_private* %68, i32 510525972, i32 %72)
  %74 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %75 = load i32*, i32** %4, align 8
  %76 = load i64, i64* @REGIDX_2E0, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ast_moutdwm(%struct.ast_private* %74, i32 510526176, i32 %78)
  %80 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %81 = load i32*, i32** %4, align 8
  %82 = load i64, i64* @REGIDX_2E4, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ast_moutdwm(%struct.ast_private* %80, i32 510526180, i32 %84)
  %86 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %87 = load i32*, i32** %4, align 8
  %88 = load i64, i64* @REGIDX_2E8, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ast_moutdwm(%struct.ast_private* %86, i32 510526184, i32 %90)
  %92 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %93 = load i32*, i32** %4, align 8
  %94 = load i64, i64* @REGIDX_2EC, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @ast_moutdwm(%struct.ast_private* %92, i32 510526188, i32 %96)
  %98 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %99 = load i32*, i32** %4, align 8
  %100 = load i64, i64* @REGIDX_2F0, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @ast_moutdwm(%struct.ast_private* %98, i32 510526192, i32 %102)
  %104 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %105 = load i32*, i32** %4, align 8
  %106 = load i64, i64* @REGIDX_2F4, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ast_moutdwm(%struct.ast_private* %104, i32 510526196, i32 %108)
  %110 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %111 = load i32*, i32** %4, align 8
  %112 = load i64, i64* @REGIDX_2F8, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @ast_moutdwm(%struct.ast_private* %110, i32 510526200, i32 %114)
  %116 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %117 = call i32 @ast_moutdwm(%struct.ast_private* %116, i32 510526096, i32 1048584)
  %118 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %119 = call i32 @ast_moutdwm(%struct.ast_private* %118, i32 510526148, i32 1008221244)
  %120 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %121 = call i32 @ast_moutdwm(%struct.ast_private* %120, i32 510526152, i32 6495758)
  %122 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %123 = call i32 @ast_moutdwm(%struct.ast_private* %122, i32 510525492, i32 108945)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %124

124:                                              ; preds = %188, %2
  %125 = load i32, i32* %8, align 4
  %126 = icmp slt i32 %125, 4
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i32, i32* %7, align 4
  %129 = icmp eq i32 %128, 0
  br label %130

130:                                              ; preds = %127, %124
  %131 = phi i1 [ false, %124 ], [ %129, %127 ]
  br i1 %131, label %132, label %191

132:                                              ; preds = %130
  store i32 0, i32* %14, align 4
  store i32 0, i32* %7, align 4
  %133 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %134 = call i32 @ast_moutdwm(%struct.ast_private* %133, i32 510526144, i32 7174)
  store i32 64, i32* %10, align 4
  br label %135

135:                                              ; preds = %184, %132
  %136 = load i32, i32* %10, align 4
  %137 = icmp slt i32 %136, 128
  br i1 %137, label %138, label %187

138:                                              ; preds = %135
  %139 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %140 = call i32 @ast_moutdwm(%struct.ast_private* %139, i32 510525452, i32 0)
  %141 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %142 = call i32 @ast_moutdwm(%struct.ast_private* %141, i32 510525536, i32 0)
  %143 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* %10, align 4
  %146 = shl i32 %145, 8
  %147 = or i32 %144, %146
  %148 = call i32 @ast_moutdwm(%struct.ast_private* %143, i32 510526156, i32 %147)
  %149 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %150 = call i32 @ddr_phy_init_2500(%struct.ast_private* %149)
  %151 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %152 = call i32 @ast_moutdwm(%struct.ast_private* %151, i32 510525452, i32 23553)
  %153 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %154 = call i64 @cbr_test_2500(%struct.ast_private* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %178

156:                                              ; preds = %138
  %157 = load i32, i32* %7, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %7, align 4
  %159 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %160 = call i32 @ast_mindwm(%struct.ast_private* %159, i32 510526416)
  store i32 %160, i32* %5, align 4
  %161 = load i32, i32* %5, align 4
  %162 = ashr i32 %161, 8
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* %5, align 4
  %164 = and i32 %163, 255
  store i32 %164, i32* %5, align 4
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* %6, align 4
  %167 = icmp sgt i32 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %156
  %169 = load i32, i32* %6, align 4
  store i32 %169, i32* %5, align 4
  br label %170

170:                                              ; preds = %168, %156
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* %5, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %170
  %175 = load i32, i32* %5, align 4
  store i32 %175, i32* %14, align 4
  %176 = load i32, i32* %10, align 4
  store i32 %176, i32* %12, align 4
  br label %177

177:                                              ; preds = %174, %170
  br label %183

178:                                              ; preds = %138
  %179 = load i32, i32* %7, align 4
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %178
  br label %187

182:                                              ; preds = %178
  br label %183

183:                                              ; preds = %182, %177
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %10, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %10, align 4
  br label %135

187:                                              ; preds = %181, %135
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %8, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %8, align 4
  br label %124

191:                                              ; preds = %130
  %192 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %193 = load i32, i32* %12, align 4
  %194 = load i32, i32* %12, align 4
  %195 = shl i32 %194, 8
  %196 = or i32 %193, %195
  %197 = call i32 @ast_moutdwm(%struct.ast_private* %192, i32 510526156, i32 %196)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %198

198:                                              ; preds = %252, %191
  %199 = load i32, i32* %8, align 4
  %200 = icmp slt i32 %199, 4
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load i32, i32* %7, align 4
  %203 = icmp eq i32 %202, 0
  br label %204

204:                                              ; preds = %201, %198
  %205 = phi i1 [ false, %198 ], [ %203, %201 ]
  br i1 %205, label %206, label %255

206:                                              ; preds = %204
  store i32 255, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %207

207:                                              ; preds = %248, %206
  %208 = load i32, i32* %9, align 4
  %209 = icmp slt i32 %208, 64
  br i1 %209, label %210, label %251

210:                                              ; preds = %207
  %211 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %212 = call i32 @ast_moutdwm(%struct.ast_private* %211, i32 510525452, i32 0)
  %213 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %214 = call i32 @ast_moutdwm(%struct.ast_private* %213, i32 510525536, i32 0)
  %215 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %216 = load i32, i32* %9, align 4
  %217 = shl i32 %216, 8
  %218 = or i32 6, %217
  %219 = call i32 @ast_moutdwm(%struct.ast_private* %215, i32 510526144, i32 %218)
  %220 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %221 = call i32 @ddr_phy_init_2500(%struct.ast_private* %220)
  %222 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %223 = call i32 @ast_moutdwm(%struct.ast_private* %222, i32 510525452, i32 23553)
  %224 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %225 = call i64 @cbr_test_2500(%struct.ast_private* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %242

227:                                              ; preds = %210
  %228 = load i32, i32* %7, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %7, align 4
  %230 = load i32, i32* %11, align 4
  %231 = load i32, i32* %9, align 4
  %232 = icmp sgt i32 %230, %231
  br i1 %232, label %233, label %235

233:                                              ; preds = %227
  %234 = load i32, i32* %9, align 4
  store i32 %234, i32* %11, align 4
  br label %235

235:                                              ; preds = %233, %227
  %236 = load i32, i32* %13, align 4
  %237 = load i32, i32* %9, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %239, label %241

239:                                              ; preds = %235
  %240 = load i32, i32* %9, align 4
  store i32 %240, i32* %13, align 4
  br label %241

241:                                              ; preds = %239, %235
  br label %247

242:                                              ; preds = %210
  %243 = load i32, i32* %7, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %242
  br label %251

246:                                              ; preds = %242
  br label %247

247:                                              ; preds = %246, %241
  br label %248

248:                                              ; preds = %247
  %249 = load i32, i32* %9, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %9, align 4
  br label %207

251:                                              ; preds = %245, %207
  br label %252

252:                                              ; preds = %251
  %253 = load i32, i32* %8, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %8, align 4
  br label %198

255:                                              ; preds = %204
  %256 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %257 = call i32 @ast_moutdwm(%struct.ast_private* %256, i32 510525452, i32 0)
  %258 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %259 = call i32 @ast_moutdwm(%struct.ast_private* %258, i32 510525536, i32 0)
  %260 = load i32, i32* %11, align 4
  %261 = load i32, i32* %13, align 4
  %262 = add nsw i32 %260, %261
  %263 = add nsw i32 %262, 1
  %264 = ashr i32 %263, 1
  store i32 %264, i32* %9, align 4
  %265 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %266 = load i32, i32* %9, align 4
  %267 = shl i32 %266, 8
  %268 = or i32 6, %267
  %269 = call i32 @ast_moutdwm(%struct.ast_private* %265, i32 510526144, i32 %268)
  %270 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %271 = call i32 @ddr_phy_init_2500(%struct.ast_private* %270)
  %272 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %273 = load i32*, i32** %4, align 8
  %274 = load i64, i64* @REGIDX_PLL, align 8
  %275 = getelementptr inbounds i32, i32* %273, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @ast_moutdwm(%struct.ast_private* %272, i32 510525728, i32 %276)
  %278 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %279 = call i32 @ast_moutdwm(%struct.ast_private* %278, i32 510525452, i32 1118461057)
  %280 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %281 = call i32 @ast_moutdwm(%struct.ast_private* %280, i32 510525492, i32 110483)
  %282 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %283 = load i32*, i32** %4, align 8
  %284 = load i64, i64* @REGIDX_RFC, align 8
  %285 = getelementptr inbounds i32, i32* %283, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @check_dram_size_2500(%struct.ast_private* %282, i32 %286)
  %288 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %289 = call i32 @enable_cache_2500(%struct.ast_private* %288)
  %290 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %291 = call i32 @ast_moutdwm(%struct.ast_private* %290, i32 510525468, i32 8)
  %292 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %293 = call i32 @ast_moutdwm(%struct.ast_private* %292, i32 510525496, i32 -256)
  ret void
}

declare dso_local i32 @ast_moutdwm(%struct.ast_private*, i32, i32) #1

declare dso_local i32 @ddr_phy_init_2500(%struct.ast_private*) #1

declare dso_local i64 @cbr_test_2500(%struct.ast_private*) #1

declare dso_local i32 @ast_mindwm(%struct.ast_private*, i32) #1

declare dso_local i32 @check_dram_size_2500(%struct.ast_private*, i32) #1

declare dso_local i32 @enable_cache_2500(%struct.ast_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
