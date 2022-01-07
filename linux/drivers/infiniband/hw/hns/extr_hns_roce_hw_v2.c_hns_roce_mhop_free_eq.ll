; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_mhop_free_eq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_mhop_free_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_2__, %struct.device* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.device = type { i32 }
%struct.hns_roce_eq = type { i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@HNS_ROCE_HOP_NUM_0 = common dso_local global i32 0, align 4
@BA_BYTE_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_dev*, %struct.hns_roce_eq*)* @hns_roce_mhop_free_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_mhop_free_eq(%struct.hns_roce_dev* %0, %struct.hns_roce_eq* %1) #0 {
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca %struct.hns_roce_eq*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  store %struct.hns_roce_eq* %1, %struct.hns_roce_eq** %4, align 8
  %14 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %15 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %14, i32 0, i32 1
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %5, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %18 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %22 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PAGE_SHIFT, align 4
  %26 = add nsw i32 %24, %25
  %27 = shl i32 1, %26
  store i32 %27, i32* %8, align 4
  %28 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %29 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @PAGE_SHIFT, align 4
  %33 = add nsw i32 %31, %32
  %34 = shl i32 1, %33
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @HNS_ROCE_HOP_NUM_0, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %2
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %41 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %44 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %42, %45
  %47 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %48 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %47, i32 0, i32 9
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %51 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dma_free_coherent(%struct.device* %39, i32 %46, i32 %49, i32 %52)
  br label %277

54:                                               ; preds = %2
  %55 = load %struct.device*, %struct.device** %5, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %58 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %57, i32 0, i32 9
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %61 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @dma_free_coherent(%struct.device* %55, i32 %56, i32 %59, i32 %62)
  %64 = load i32, i32* %10, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %136

66:                                               ; preds = %54
  store i32 0, i32* %12, align 4
  br label %67

67:                                               ; preds = %132, %66
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %70 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %135

73:                                               ; preds = %67
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %76 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = sub nsw i32 %77, 1
  %79 = icmp eq i32 %74, %78
  br i1 %79, label %80, label %114

80:                                               ; preds = %73
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %84 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sdiv i32 %82, %85
  %87 = mul nsw i32 %81, %86
  store i32 %87, i32* %11, align 4
  %88 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %89 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sub nsw i32 %90, %91
  %93 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %94 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %92, %95
  store i32 %96, i32* %7, align 4
  %97 = load %struct.device*, %struct.device** %5, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %100 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %99, i32 0, i32 6
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %107 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %106, i32 0, i32 7
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @dma_free_coherent(%struct.device* %97, i32 %98, i32 %105, i32 %112)
  br label %135

114:                                              ; preds = %73
  %115 = load %struct.device*, %struct.device** %5, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %118 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %117, i32 0, i32 6
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %125 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %124, i32 0, i32 7
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @dma_free_coherent(%struct.device* %115, i32 %116, i32 %123, i32 %130)
  br label %132

132:                                              ; preds = %114
  %133 = load i32, i32* %12, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %12, align 4
  br label %67

135:                                              ; preds = %80, %67
  br label %252

136:                                              ; preds = %54
  %137 = load i32, i32* %10, align 4
  %138 = icmp eq i32 %137, 2
  br i1 %138, label %139, label %251

139:                                              ; preds = %136
  store i32 0, i32* %12, align 4
  br label %140

140:                                              ; preds = %247, %139
  %141 = load i32, i32* %12, align 4
  %142 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %143 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %250

146:                                              ; preds = %140
  %147 = load %struct.device*, %struct.device** %5, align 8
  %148 = load i32, i32* %9, align 4
  %149 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %150 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %149, i32 0, i32 4
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %157 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %156, i32 0, i32 5
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @dma_free_coherent(%struct.device* %147, i32 %148, i32 %155, i32 %162)
  store i32 0, i32* %13, align 4
  br label %164

164:                                              ; preds = %243, %146
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* @BA_BYTE_LEN, align 4
  %168 = sdiv i32 %166, %167
  %169 = icmp slt i32 %165, %168
  br i1 %169, label %170, label %246

170:                                              ; preds = %164
  %171 = load i32, i32* %12, align 4
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* @BA_BYTE_LEN, align 4
  %174 = sdiv i32 %172, %173
  %175 = mul nsw i32 %171, %174
  %176 = load i32, i32* %13, align 4
  %177 = add nsw i32 %175, %176
  store i32 %177, i32* %6, align 4
  %178 = load i32, i32* %12, align 4
  %179 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %180 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = sub nsw i32 %181, 1
  %183 = icmp eq i32 %178, %182
  br i1 %183, label %184, label %225

184:                                              ; preds = %170
  %185 = load i32, i32* %13, align 4
  %186 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %187 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = sub nsw i32 %188, 1
  %190 = icmp eq i32 %185, %189
  br i1 %190, label %191, label %225

191:                                              ; preds = %184
  %192 = load i32, i32* %8, align 4
  %193 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %194 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = sdiv i32 %192, %195
  %197 = load i32, i32* %6, align 4
  %198 = mul nsw i32 %196, %197
  store i32 %198, i32* %11, align 4
  %199 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %200 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* %11, align 4
  %203 = sub nsw i32 %201, %202
  %204 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %205 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = mul nsw i32 %203, %206
  store i32 %207, i32* %7, align 4
  %208 = load %struct.device*, %struct.device** %5, align 8
  %209 = load i32, i32* %7, align 4
  %210 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %211 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %210, i32 0, i32 6
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %6, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %218 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %217, i32 0, i32 7
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %6, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @dma_free_coherent(%struct.device* %208, i32 %209, i32 %216, i32 %223)
  br label %246

225:                                              ; preds = %184, %170
  %226 = load %struct.device*, %struct.device** %5, align 8
  %227 = load i32, i32* %8, align 4
  %228 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %229 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %228, i32 0, i32 6
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* %6, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %236 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %235, i32 0, i32 7
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %6, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @dma_free_coherent(%struct.device* %226, i32 %227, i32 %234, i32 %241)
  br label %243

243:                                              ; preds = %225
  %244 = load i32, i32* %13, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %13, align 4
  br label %164

246:                                              ; preds = %191, %164
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %12, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %12, align 4
  br label %140

250:                                              ; preds = %140
  br label %251

251:                                              ; preds = %250, %136
  br label %252

252:                                              ; preds = %251, %135
  %253 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %254 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %253, i32 0, i32 7
  %255 = load i32*, i32** %254, align 8
  %256 = call i32 @kfree(i32* %255)
  %257 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %258 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %257, i32 0, i32 6
  %259 = load i32*, i32** %258, align 8
  %260 = call i32 @kfree(i32* %259)
  %261 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %262 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %261, i32 0, i32 5
  %263 = load i32*, i32** %262, align 8
  %264 = call i32 @kfree(i32* %263)
  %265 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %266 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %265, i32 0, i32 4
  %267 = load i32*, i32** %266, align 8
  %268 = call i32 @kfree(i32* %267)
  %269 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %270 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %269, i32 0, i32 7
  store i32* null, i32** %270, align 8
  %271 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %272 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %271, i32 0, i32 6
  store i32* null, i32** %272, align 8
  %273 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %274 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %273, i32 0, i32 5
  store i32* null, i32** %274, align 8
  %275 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %276 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %275, i32 0, i32 4
  store i32* null, i32** %276, align 8
  br label %277

277:                                              ; preds = %252, %38
  ret void
}

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
