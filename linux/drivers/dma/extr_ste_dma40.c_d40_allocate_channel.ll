; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_d40_allocate_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_d40_allocate_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d40_chan = type { i32, %struct.d40_phy_res*, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.d40_phy_res = type { i64 }
%struct.TYPE_4__ = type { i32, %struct.d40_chan**, %struct.d40_chan**, %struct.d40_phy_res* }
%struct.TYPE_3__ = type { i32, i64, i64, i32, i64 }

@STEDMA40_MODE_LOGICAL = common dso_local global i64 0, align 8
@DMA_DEV_TO_MEM = common dso_local global i64 0, align 8
@DMA_MEM_TO_DEV = common dso_local global i64 0, align 8
@DMA_MEM_TO_MEM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@D40_PHY_CHAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"invalid fixed phy channel %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"could not allocate fixed phy channel %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d40_chan*, i32*)* @d40_allocate_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d40_allocate_channel(%struct.d40_chan* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.d40_chan*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.d40_phy_res*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.d40_chan* %0, %struct.d40_chan** %4, align 8
  store i32* %1, i32** %5, align 8
  %18 = load %struct.d40_chan*, %struct.d40_chan** %4, align 8
  %19 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  %22 = load %struct.d40_chan*, %struct.d40_chan** %4, align 8
  %23 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @STEDMA40_MODE_LOGICAL, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %15, align 4
  %29 = load %struct.d40_chan*, %struct.d40_chan** %4, align 8
  %30 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  %33 = load %struct.d40_phy_res*, %struct.d40_phy_res** %32, align 8
  store %struct.d40_phy_res* %33, %struct.d40_phy_res** %9, align 8
  %34 = load %struct.d40_chan*, %struct.d40_chan** %4, align 8
  %35 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %13, align 4
  %39 = load %struct.d40_chan*, %struct.d40_chan** %4, align 8
  %40 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DMA_DEV_TO_MEM, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %2
  %46 = load i32, i32* %6, align 4
  %47 = mul nsw i32 2, %46
  store i32 %47, i32* %12, align 4
  store i32 1, i32* %14, align 4
  br label %70

48:                                               ; preds = %2
  %49 = load %struct.d40_chan*, %struct.d40_chan** %4, align 8
  %50 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @DMA_MEM_TO_DEV, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %62, label %55

55:                                               ; preds = %48
  %56 = load %struct.d40_chan*, %struct.d40_chan** %4, align 8
  %57 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @DMA_MEM_TO_MEM, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %55, %48
  %63 = load i32, i32* %6, align 4
  %64 = mul nsw i32 2, %63
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %69

66:                                               ; preds = %55
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %342

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %45
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @D40_TYPE_TO_GROUP(i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @D40_TYPE_TO_EVENT(i32 %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %15, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %181, label %77

77:                                               ; preds = %70
  %78 = load %struct.d40_chan*, %struct.d40_chan** %4, align 8
  %79 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @DMA_MEM_TO_MEM, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %128

84:                                               ; preds = %77
  %85 = load %struct.d40_chan*, %struct.d40_chan** %4, align 8
  %86 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %106

90:                                               ; preds = %84
  %91 = load %struct.d40_chan*, %struct.d40_chan** %4, align 8
  %92 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %10, align 4
  %95 = load %struct.d40_phy_res*, %struct.d40_phy_res** %9, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.d40_phy_res, %struct.d40_phy_res* %95, i64 %97
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %15, align 4
  %101 = load i32*, i32** %5, align 8
  %102 = call i64 @d40_alloc_mask_set(%struct.d40_phy_res* %98, i32 %99, i32 0, i32 %100, i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %90
  br label %171

105:                                              ; preds = %90
  br label %127

106:                                              ; preds = %84
  store i32 0, i32* %10, align 4
  br label %107

107:                                              ; preds = %123, %106
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %13, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %126

111:                                              ; preds = %107
  %112 = load %struct.d40_phy_res*, %struct.d40_phy_res** %9, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.d40_phy_res, %struct.d40_phy_res* %112, i64 %114
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load i32*, i32** %5, align 8
  %119 = call i64 @d40_alloc_mask_set(%struct.d40_phy_res* %115, i32 %116, i32 0, i32 %117, i32* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %111
  br label %171

122:                                              ; preds = %111
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %107

126:                                              ; preds = %107
  br label %127

127:                                              ; preds = %126, %105
  br label %168

128:                                              ; preds = %77
  store i32 0, i32* %11, align 4
  br label %129

129:                                              ; preds = %164, %128
  %130 = load i32, i32* %11, align 4
  %131 = load %struct.d40_chan*, %struct.d40_chan** %4, align 8
  %132 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %131, i32 0, i32 2
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %130, %135
  br i1 %136, label %137, label %167

137:                                              ; preds = %129
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %7, align 4
  %140 = mul nsw i32 %139, 2
  %141 = add nsw i32 %138, %140
  store i32 %141, i32* %16, align 4
  %142 = load i32, i32* %16, align 4
  store i32 %142, i32* %10, align 4
  br label %143

143:                                              ; preds = %160, %137
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* %16, align 4
  %146 = add nsw i32 %145, 2
  %147 = icmp slt i32 %144, %146
  br i1 %147, label %148, label %163

148:                                              ; preds = %143
  %149 = load %struct.d40_phy_res*, %struct.d40_phy_res** %9, align 8
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.d40_phy_res, %struct.d40_phy_res* %149, i64 %151
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* %15, align 4
  %155 = load i32*, i32** %5, align 8
  %156 = call i64 @d40_alloc_mask_set(%struct.d40_phy_res* %152, i32 %153, i32 0, i32 %154, i32* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %148
  br label %171

159:                                              ; preds = %148
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %10, align 4
  br label %143

163:                                              ; preds = %143
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %11, align 4
  %166 = add nsw i32 %165, 8
  store i32 %166, i32* %11, align 4
  br label %129

167:                                              ; preds = %129
  br label %168

168:                                              ; preds = %167, %127
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %3, align 4
  br label %342

171:                                              ; preds = %158, %121, %104
  %172 = load %struct.d40_phy_res*, %struct.d40_phy_res** %9, align 8
  %173 = load i32, i32* %10, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.d40_phy_res, %struct.d40_phy_res* %172, i64 %174
  %176 = load %struct.d40_chan*, %struct.d40_chan** %4, align 8
  %177 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %176, i32 0, i32 1
  store %struct.d40_phy_res* %175, %struct.d40_phy_res** %177, align 8
  %178 = load i32, i32* @D40_PHY_CHAN, align 4
  %179 = load %struct.d40_chan*, %struct.d40_chan** %4, align 8
  %180 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  br label %313

181:                                              ; preds = %70
  %182 = load i32, i32* %6, align 4
  %183 = icmp eq i32 %182, -1
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load i32, i32* @EINVAL, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %3, align 4
  br label %342

187:                                              ; preds = %181
  store i32 0, i32* %11, align 4
  br label %188

188:                                              ; preds = %297, %187
  %189 = load i32, i32* %11, align 4
  %190 = load %struct.d40_chan*, %struct.d40_chan** %4, align 8
  %191 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %190, i32 0, i32 2
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp slt i32 %189, %194
  br i1 %195, label %196, label %300

196:                                              ; preds = %188
  %197 = load i32, i32* %11, align 4
  %198 = load i32, i32* %7, align 4
  %199 = mul nsw i32 %198, 2
  %200 = add nsw i32 %197, %199
  store i32 %200, i32* %17, align 4
  %201 = load %struct.d40_chan*, %struct.d40_chan** %4, align 8
  %202 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %201, i32 0, i32 3
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 4
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %245

206:                                              ; preds = %196
  %207 = load %struct.d40_chan*, %struct.d40_chan** %4, align 8
  %208 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  store i32 %210, i32* %10, align 4
  %211 = load i32, i32* %10, align 4
  %212 = load i32, i32* %17, align 4
  %213 = icmp ne i32 %211, %212
  br i1 %213, label %214, label %226

214:                                              ; preds = %206
  %215 = load i32, i32* %10, align 4
  %216 = load i32, i32* %17, align 4
  %217 = add nsw i32 %216, 1
  %218 = icmp ne i32 %215, %217
  br i1 %218, label %219, label %226

219:                                              ; preds = %214
  %220 = load %struct.d40_chan*, %struct.d40_chan** %4, align 8
  %221 = call i32 @chan2dev(%struct.d40_chan* %220)
  %222 = load i32, i32* %10, align 4
  %223 = call i32 @dev_err(i32 %221, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %222)
  %224 = load i32, i32* @EINVAL, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %3, align 4
  br label %342

226:                                              ; preds = %214, %206
  %227 = load %struct.d40_phy_res*, %struct.d40_phy_res** %9, align 8
  %228 = load i32, i32* %10, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.d40_phy_res, %struct.d40_phy_res* %227, i64 %229
  %231 = load i32, i32* %14, align 4
  %232 = load i32, i32* %8, align 4
  %233 = load i32, i32* %15, align 4
  %234 = load i32*, i32** %5, align 8
  %235 = call i64 @d40_alloc_mask_set(%struct.d40_phy_res* %230, i32 %231, i32 %232, i32 %233, i32* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %226
  br label %303

238:                                              ; preds = %226
  %239 = load %struct.d40_chan*, %struct.d40_chan** %4, align 8
  %240 = call i32 @chan2dev(%struct.d40_chan* %239)
  %241 = load i32, i32* %10, align 4
  %242 = call i32 @dev_err(i32 %240, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %241)
  %243 = load i32, i32* @EINVAL, align 4
  %244 = sub nsw i32 0, %243
  store i32 %244, i32* %3, align 4
  br label %342

245:                                              ; preds = %196
  %246 = load i32, i32* %14, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %272

248:                                              ; preds = %245
  %249 = load i32, i32* %17, align 4
  store i32 %249, i32* %10, align 4
  br label %250

250:                                              ; preds = %268, %248
  %251 = load i32, i32* %10, align 4
  %252 = load i32, i32* %17, align 4
  %253 = add nsw i32 %252, 2
  %254 = icmp slt i32 %251, %253
  br i1 %254, label %255, label %271

255:                                              ; preds = %250
  %256 = load %struct.d40_phy_res*, %struct.d40_phy_res** %9, align 8
  %257 = load i32, i32* %10, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.d40_phy_res, %struct.d40_phy_res* %256, i64 %258
  %260 = load i32, i32* %14, align 4
  %261 = load i32, i32* %8, align 4
  %262 = load i32, i32* %15, align 4
  %263 = load i32*, i32** %5, align 8
  %264 = call i64 @d40_alloc_mask_set(%struct.d40_phy_res* %259, i32 %260, i32 %261, i32 %262, i32* %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %255
  br label %303

267:                                              ; preds = %255
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %10, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %10, align 4
  br label %250

271:                                              ; preds = %250
  br label %296

272:                                              ; preds = %245
  %273 = load i32, i32* %17, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %10, align 4
  br label %275

275:                                              ; preds = %292, %272
  %276 = load i32, i32* %10, align 4
  %277 = load i32, i32* %17, align 4
  %278 = icmp sge i32 %276, %277
  br i1 %278, label %279, label %295

279:                                              ; preds = %275
  %280 = load %struct.d40_phy_res*, %struct.d40_phy_res** %9, align 8
  %281 = load i32, i32* %10, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.d40_phy_res, %struct.d40_phy_res* %280, i64 %282
  %284 = load i32, i32* %14, align 4
  %285 = load i32, i32* %8, align 4
  %286 = load i32, i32* %15, align 4
  %287 = load i32*, i32** %5, align 8
  %288 = call i64 @d40_alloc_mask_set(%struct.d40_phy_res* %283, i32 %284, i32 %285, i32 %286, i32* %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %279
  br label %303

291:                                              ; preds = %279
  br label %292

292:                                              ; preds = %291
  %293 = load i32, i32* %10, align 4
  %294 = add nsw i32 %293, -1
  store i32 %294, i32* %10, align 4
  br label %275

295:                                              ; preds = %275
  br label %296

296:                                              ; preds = %295, %271
  br label %297

297:                                              ; preds = %296
  %298 = load i32, i32* %11, align 4
  %299 = add nsw i32 %298, 8
  store i32 %299, i32* %11, align 4
  br label %188

300:                                              ; preds = %188
  %301 = load i32, i32* @EINVAL, align 4
  %302 = sub nsw i32 0, %301
  store i32 %302, i32* %3, align 4
  br label %342

303:                                              ; preds = %290, %266, %237
  %304 = load %struct.d40_phy_res*, %struct.d40_phy_res** %9, align 8
  %305 = load i32, i32* %10, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.d40_phy_res, %struct.d40_phy_res* %304, i64 %306
  %308 = load %struct.d40_chan*, %struct.d40_chan** %4, align 8
  %309 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %308, i32 0, i32 1
  store %struct.d40_phy_res* %307, %struct.d40_phy_res** %309, align 8
  %310 = load i32, i32* %12, align 4
  %311 = load %struct.d40_chan*, %struct.d40_chan** %4, align 8
  %312 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %311, i32 0, i32 0
  store i32 %310, i32* %312, align 8
  br label %313

313:                                              ; preds = %303, %171
  %314 = load i32, i32* %15, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %328

316:                                              ; preds = %313
  %317 = load %struct.d40_chan*, %struct.d40_chan** %4, align 8
  %318 = load %struct.d40_chan*, %struct.d40_chan** %4, align 8
  %319 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %318, i32 0, i32 2
  %320 = load %struct.TYPE_4__*, %struct.TYPE_4__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %320, i32 0, i32 2
  %322 = load %struct.d40_chan**, %struct.d40_chan*** %321, align 8
  %323 = load %struct.d40_chan*, %struct.d40_chan** %4, align 8
  %324 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.d40_chan*, %struct.d40_chan** %322, i64 %326
  store %struct.d40_chan* %317, %struct.d40_chan** %327, align 8
  br label %341

328:                                              ; preds = %313
  %329 = load %struct.d40_chan*, %struct.d40_chan** %4, align 8
  %330 = load %struct.d40_chan*, %struct.d40_chan** %4, align 8
  %331 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %330, i32 0, i32 2
  %332 = load %struct.TYPE_4__*, %struct.TYPE_4__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %332, i32 0, i32 1
  %334 = load %struct.d40_chan**, %struct.d40_chan*** %333, align 8
  %335 = load %struct.d40_chan*, %struct.d40_chan** %4, align 8
  %336 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %335, i32 0, i32 1
  %337 = load %struct.d40_phy_res*, %struct.d40_phy_res** %336, align 8
  %338 = getelementptr inbounds %struct.d40_phy_res, %struct.d40_phy_res* %337, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = getelementptr inbounds %struct.d40_chan*, %struct.d40_chan** %334, i64 %339
  store %struct.d40_chan* %329, %struct.d40_chan** %340, align 8
  br label %341

341:                                              ; preds = %328, %316
  store i32 0, i32* %3, align 4
  br label %342

342:                                              ; preds = %341, %300, %238, %219, %184, %168, %66
  %343 = load i32, i32* %3, align 4
  ret i32 %343
}

declare dso_local i32 @D40_TYPE_TO_GROUP(i32) #1

declare dso_local i32 @D40_TYPE_TO_EVENT(i32) #1

declare dso_local i64 @d40_alloc_mask_set(%struct.d40_phy_res*, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @chan2dev(%struct.d40_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
