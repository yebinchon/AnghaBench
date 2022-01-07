; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_mhop_alloc_eq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_mhop_alloc_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_2__, %struct.device* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.device = type { i32 }
%struct.hns_roce_eq = type { i32, i32, i32, i32, i64**, i64**, i64**, i64**, i64, i64*, i64, i64 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@BA_BYTE_LEN = common dso_local global i32 0, align 4
@HNS_ROCE_HOP_NUM_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"eq entries %d is larger than buf_pg_sz!\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"ba_num %d is too large for 1 hop\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, %struct.hns_roce_eq*)* @hns_roce_mhop_alloc_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_mhop_alloc_eq(%struct.hns_roce_dev* %0, %struct.hns_roce_eq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hns_roce_dev*, align 8
  %5 = alloca %struct.hns_roce_eq*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %4, align 8
  store %struct.hns_roce_eq* %1, %struct.hns_roce_eq** %5, align 8
  %21 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %22 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %21, i32 0, i32 1
  %23 = load %struct.device*, %struct.device** %22, align 8
  store %struct.device* %23, %struct.device** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %24 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %25 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %12, align 4
  %28 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %29 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PAGE_SHIFT, align 4
  %33 = add nsw i32 %31, %32
  %34 = shl i32 1, %33
  store i32 %34, i32* %10, align 4
  %35 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %36 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @PAGE_SHIFT, align 4
  %40 = add nsw i32 %38, %39
  %41 = shl i32 1, %40
  store i32 %41, i32* %11, align 4
  %42 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %43 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %46 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %44, %47
  %49 = call i32 @PAGE_ALIGN(i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @DIV_ROUND_UP(i32 %49, i32 %50)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @BA_BYTE_LEN, align 4
  %55 = sdiv i32 %53, %54
  %56 = call i32 @DIV_ROUND_UP(i32 %52, i32 %55)
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @HNS_ROCE_HOP_NUM_0, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %109

60:                                               ; preds = %2
  %61 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %62 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %66 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sdiv i32 %64, %67
  %69 = icmp sgt i32 %63, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %60
  %71 = load %struct.device*, %struct.device** %6, align 8
  %72 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %73 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @dev_err(%struct.device* %71, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %718

78:                                               ; preds = %60
  %79 = load %struct.device*, %struct.device** %6, align 8
  %80 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %81 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %84 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %82, %85
  %87 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %88 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %87, i32 0, i32 8
  %89 = load i32, i32* @GFP_KERNEL, align 4
  %90 = call i8* @dma_alloc_coherent(%struct.device* %79, i32 %86, i64* %88, i32 %89)
  %91 = bitcast i8* %90 to i64*
  %92 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %93 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %92, i32 0, i32 9
  store i64* %91, i64** %93, align 8
  %94 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %95 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %94, i32 0, i32 9
  %96 = load i64*, i64** %95, align 8
  %97 = icmp ne i64* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %78
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %718

101:                                              ; preds = %78
  %102 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %103 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %102, i32 0, i32 8
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %106 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %105, i32 0, i32 11
  store i64 %104, i64* %106, align 8
  %107 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %108 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %107, i32 0, i32 10
  store i64 0, i64* %108, align 8
  store i32 0, i32* %3, align 4
  br label %718

109:                                              ; preds = %2
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* @GFP_KERNEL, align 4
  %112 = call i8* @kcalloc(i32 %110, i32 8, i32 %111)
  %113 = bitcast i8* %112 to i64**
  %114 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %115 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %114, i32 0, i32 4
  store i64** %113, i64*** %115, align 8
  %116 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %117 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %116, i32 0, i32 4
  %118 = load i64**, i64*** %117, align 8
  %119 = icmp ne i64** %118, null
  br i1 %119, label %123, label %120

120:                                              ; preds = %109
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %718

123:                                              ; preds = %109
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* @GFP_KERNEL, align 4
  %126 = call i8* @kcalloc(i32 %124, i32 8, i32 %125)
  %127 = bitcast i8* %126 to i64**
  %128 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %129 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %128, i32 0, i32 5
  store i64** %127, i64*** %129, align 8
  %130 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %131 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %130, i32 0, i32 5
  %132 = load i64**, i64*** %131, align 8
  %133 = icmp ne i64** %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %123
  br label %709

135:                                              ; preds = %123
  %136 = load i32, i32* %12, align 4
  %137 = icmp eq i32 %136, 2
  br i1 %137, label %138, label %163

138:                                              ; preds = %135
  %139 = load i32, i32* %16, align 4
  %140 = load i32, i32* @GFP_KERNEL, align 4
  %141 = call i8* @kcalloc(i32 %139, i32 8, i32 %140)
  %142 = bitcast i8* %141 to i64**
  %143 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %144 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %143, i32 0, i32 6
  store i64** %142, i64*** %144, align 8
  %145 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %146 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %145, i32 0, i32 6
  %147 = load i64**, i64*** %146, align 8
  %148 = icmp ne i64** %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %138
  br label %702

150:                                              ; preds = %138
  %151 = load i32, i32* %16, align 4
  %152 = load i32, i32* @GFP_KERNEL, align 4
  %153 = call i8* @kcalloc(i32 %151, i32 8, i32 %152)
  %154 = bitcast i8* %153 to i64**
  %155 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %156 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %155, i32 0, i32 7
  store i64** %154, i64*** %156, align 8
  %157 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %158 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %157, i32 0, i32 7
  %159 = load i64**, i64*** %158, align 8
  %160 = icmp ne i64** %159, null
  br i1 %160, label %162, label %161

161:                                              ; preds = %150
  br label %695

162:                                              ; preds = %150
  br label %163

163:                                              ; preds = %162, %135
  %164 = load %struct.device*, %struct.device** %6, align 8
  %165 = load i32, i32* %11, align 4
  %166 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %167 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %166, i32 0, i32 8
  %168 = load i32, i32* @GFP_KERNEL, align 4
  %169 = call i8* @dma_alloc_coherent(%struct.device* %164, i32 %165, i64* %167, i32 %168)
  %170 = bitcast i8* %169 to i64*
  %171 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %172 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %171, i32 0, i32 9
  store i64* %170, i64** %172, align 8
  %173 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %174 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %173, i32 0, i32 9
  %175 = load i64*, i64** %174, align 8
  %176 = icmp ne i64* %175, null
  br i1 %176, label %178, label %177

177:                                              ; preds = %163
  br label %688

178:                                              ; preds = %163
  %179 = load i32, i32* %12, align 4
  %180 = icmp eq i32 %179, 1
  br i1 %180, label %181, label %296

181:                                              ; preds = %178
  %182 = load i32, i32* %15, align 4
  %183 = load i32, i32* %11, align 4
  %184 = load i32, i32* @BA_BYTE_LEN, align 4
  %185 = sdiv i32 %183, %184
  %186 = icmp sgt i32 %182, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %181
  %188 = load %struct.device*, %struct.device** %6, align 8
  %189 = load i32, i32* %15, align 4
  %190 = call i32 @dev_err(%struct.device* %188, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %189)
  br label %191

191:                                              ; preds = %187, %181
  store i32 0, i32* %19, align 4
  br label %192

192:                                              ; preds = %272, %191
  %193 = load i32, i32* %19, align 4
  %194 = load i32, i32* %11, align 4
  %195 = load i32, i32* @BA_BYTE_LEN, align 4
  %196 = sdiv i32 %194, %195
  %197 = icmp slt i32 %193, %196
  br i1 %197, label %198, label %275

198:                                              ; preds = %192
  %199 = load i32, i32* %8, align 4
  %200 = add nsw i32 %199, 1
  %201 = load i32, i32* %15, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %198
  %204 = load i32, i32* %10, align 4
  store i32 %204, i32* %13, align 4
  br label %222

205:                                              ; preds = %198
  %206 = load i32, i32* %19, align 4
  %207 = load i32, i32* %10, align 4
  %208 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %209 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = sdiv i32 %207, %210
  %212 = mul nsw i32 %206, %211
  store i32 %212, i32* %9, align 4
  %213 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %214 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* %9, align 4
  %217 = sub nsw i32 %215, %216
  %218 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %219 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = mul nsw i32 %217, %220
  store i32 %221, i32* %13, align 4
  br label %222

222:                                              ; preds = %205, %203
  %223 = load %struct.device*, %struct.device** %6, align 8
  %224 = load i32, i32* %13, align 4
  %225 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %226 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %225, i32 0, i32 4
  %227 = load i64**, i64*** %226, align 8
  %228 = load i32, i32* %19, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i64*, i64** %227, i64 %229
  %231 = bitcast i64** %230 to i64*
  %232 = load i32, i32* @GFP_KERNEL, align 4
  %233 = call i8* @dma_alloc_coherent(%struct.device* %223, i32 %224, i64* %231, i32 %232)
  %234 = bitcast i8* %233 to i64*
  %235 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %236 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %235, i32 0, i32 5
  %237 = load i64**, i64*** %236, align 8
  %238 = load i32, i32* %19, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i64*, i64** %237, i64 %239
  store i64* %234, i64** %240, align 8
  %241 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %242 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %241, i32 0, i32 5
  %243 = load i64**, i64*** %242, align 8
  %244 = load i32, i32* %19, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i64*, i64** %243, i64 %245
  %247 = load i64*, i64** %246, align 8
  %248 = icmp ne i64* %247, null
  br i1 %248, label %250, label %249

249:                                              ; preds = %222
  br label %564

250:                                              ; preds = %222
  %251 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %252 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %251, i32 0, i32 4
  %253 = load i64**, i64*** %252, align 8
  %254 = load i32, i32* %19, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i64*, i64** %253, i64 %255
  %257 = load i64*, i64** %256, align 8
  %258 = ptrtoint i64* %257 to i64
  %259 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %260 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %259, i32 0, i32 9
  %261 = load i64*, i64** %260, align 8
  %262 = load i32, i32* %19, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i64, i64* %261, i64 %263
  store i64 %258, i64* %264, align 8
  %265 = load i32, i32* %8, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %8, align 4
  %267 = load i32, i32* %8, align 4
  %268 = load i32, i32* %15, align 4
  %269 = icmp sge i32 %267, %268
  br i1 %269, label %270, label %271

270:                                              ; preds = %250
  br label %275

271:                                              ; preds = %250
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %19, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %19, align 4
  br label %192

275:                                              ; preds = %270, %192
  %276 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %277 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %276, i32 0, i32 4
  %278 = load i64**, i64*** %277, align 8
  %279 = getelementptr inbounds i64*, i64** %278, i64 0
  %280 = load i64*, i64** %279, align 8
  %281 = ptrtoint i64* %280 to i64
  %282 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %283 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %282, i32 0, i32 11
  store i64 %281, i64* %283, align 8
  %284 = load i32, i32* %15, align 4
  %285 = icmp sgt i32 %284, 1
  br i1 %285, label %286, label %295

286:                                              ; preds = %275
  %287 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %288 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %287, i32 0, i32 4
  %289 = load i64**, i64*** %288, align 8
  %290 = getelementptr inbounds i64*, i64** %289, i64 1
  %291 = load i64*, i64** %290, align 8
  %292 = ptrtoint i64* %291 to i64
  %293 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %294 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %293, i32 0, i32 10
  store i64 %292, i64* %294, align 8
  br label %295

295:                                              ; preds = %286, %275
  br label %473

296:                                              ; preds = %178
  %297 = load i32, i32* %12, align 4
  %298 = icmp eq i32 %297, 2
  br i1 %298, label %299, label %472

299:                                              ; preds = %296
  store i32 0, i32* %19, align 4
  br label %300

300:                                              ; preds = %448, %299
  %301 = load i32, i32* %19, align 4
  %302 = load i32, i32* %11, align 4
  %303 = load i32, i32* @BA_BYTE_LEN, align 4
  %304 = sdiv i32 %302, %303
  %305 = icmp slt i32 %301, %304
  br i1 %305, label %306, label %451

306:                                              ; preds = %300
  %307 = load %struct.device*, %struct.device** %6, align 8
  %308 = load i32, i32* %11, align 4
  %309 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %310 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %309, i32 0, i32 6
  %311 = load i64**, i64*** %310, align 8
  %312 = load i32, i32* %19, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i64*, i64** %311, i64 %313
  %315 = bitcast i64** %314 to i64*
  %316 = load i32, i32* @GFP_KERNEL, align 4
  %317 = call i8* @dma_alloc_coherent(%struct.device* %307, i32 %308, i64* %315, i32 %316)
  %318 = bitcast i8* %317 to i64*
  %319 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %320 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %319, i32 0, i32 7
  %321 = load i64**, i64*** %320, align 8
  %322 = load i32, i32* %19, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i64*, i64** %321, i64 %323
  store i64* %318, i64** %324, align 8
  %325 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %326 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %325, i32 0, i32 7
  %327 = load i64**, i64*** %326, align 8
  %328 = load i32, i32* %19, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i64*, i64** %327, i64 %329
  %331 = load i64*, i64** %330, align 8
  %332 = icmp ne i64* %331, null
  br i1 %332, label %334, label %333

333:                                              ; preds = %306
  br label %486

334:                                              ; preds = %306
  %335 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %336 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %335, i32 0, i32 6
  %337 = load i64**, i64*** %336, align 8
  %338 = load i32, i32* %19, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i64*, i64** %337, i64 %339
  %341 = load i64*, i64** %340, align 8
  %342 = ptrtoint i64* %341 to i64
  %343 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %344 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %343, i32 0, i32 9
  %345 = load i64*, i64** %344, align 8
  %346 = load i32, i32* %19, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i64, i64* %345, i64 %347
  store i64 %342, i64* %348, align 8
  store i32 0, i32* %20, align 4
  br label %349

349:                                              ; preds = %440, %334
  %350 = load i32, i32* %20, align 4
  %351 = load i32, i32* %11, align 4
  %352 = load i32, i32* @BA_BYTE_LEN, align 4
  %353 = sdiv i32 %351, %352
  %354 = icmp slt i32 %350, %353
  br i1 %354, label %355, label %443

355:                                              ; preds = %349
  %356 = load i32, i32* %19, align 4
  %357 = load i32, i32* %11, align 4
  %358 = mul nsw i32 %356, %357
  %359 = load i32, i32* @BA_BYTE_LEN, align 4
  %360 = sdiv i32 %358, %359
  %361 = load i32, i32* %20, align 4
  %362 = add nsw i32 %360, %361
  store i32 %362, i32* %14, align 4
  %363 = load i32, i32* %8, align 4
  %364 = add nsw i32 %363, 1
  %365 = load i32, i32* %15, align 4
  %366 = icmp slt i32 %364, %365
  br i1 %366, label %367, label %369

367:                                              ; preds = %355
  %368 = load i32, i32* %10, align 4
  store i32 %368, i32* %13, align 4
  br label %386

369:                                              ; preds = %355
  %370 = load i32, i32* %10, align 4
  %371 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %372 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 4
  %374 = sdiv i32 %370, %373
  %375 = load i32, i32* %14, align 4
  %376 = mul nsw i32 %374, %375
  store i32 %376, i32* %9, align 4
  %377 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %378 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = load i32, i32* %9, align 4
  %381 = sub nsw i32 %379, %380
  %382 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %383 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 4
  %385 = mul nsw i32 %381, %384
  store i32 %385, i32* %13, align 4
  br label %386

386:                                              ; preds = %369, %367
  %387 = load %struct.device*, %struct.device** %6, align 8
  %388 = load i32, i32* %13, align 4
  %389 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %390 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %389, i32 0, i32 4
  %391 = load i64**, i64*** %390, align 8
  %392 = load i32, i32* %14, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i64*, i64** %391, i64 %393
  %395 = bitcast i64** %394 to i64*
  %396 = load i32, i32* @GFP_KERNEL, align 4
  %397 = call i8* @dma_alloc_coherent(%struct.device* %387, i32 %388, i64* %395, i32 %396)
  %398 = bitcast i8* %397 to i64*
  %399 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %400 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %399, i32 0, i32 5
  %401 = load i64**, i64*** %400, align 8
  %402 = load i32, i32* %14, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i64*, i64** %401, i64 %403
  store i64* %398, i64** %404, align 8
  %405 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %406 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %405, i32 0, i32 5
  %407 = load i64**, i64*** %406, align 8
  %408 = load i32, i32* %14, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i64*, i64** %407, i64 %409
  %411 = load i64*, i64** %410, align 8
  %412 = icmp ne i64* %411, null
  br i1 %412, label %414, label %413

413:                                              ; preds = %386
  br label %564

414:                                              ; preds = %386
  %415 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %416 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %415, i32 0, i32 4
  %417 = load i64**, i64*** %416, align 8
  %418 = load i32, i32* %14, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i64*, i64** %417, i64 %419
  %421 = load i64*, i64** %420, align 8
  %422 = ptrtoint i64* %421 to i64
  %423 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %424 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %423, i32 0, i32 7
  %425 = load i64**, i64*** %424, align 8
  %426 = load i32, i32* %19, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i64*, i64** %425, i64 %427
  %429 = load i64*, i64** %428, align 8
  %430 = load i32, i32* %20, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i64, i64* %429, i64 %431
  store i64 %422, i64* %432, align 8
  %433 = load i32, i32* %8, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* %8, align 4
  %435 = load i32, i32* %8, align 4
  %436 = load i32, i32* %15, align 4
  %437 = icmp sge i32 %435, %436
  br i1 %437, label %438, label %439

438:                                              ; preds = %414
  store i32 1, i32* %7, align 4
  br label %443

439:                                              ; preds = %414
  br label %440

440:                                              ; preds = %439
  %441 = load i32, i32* %20, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %20, align 4
  br label %349

443:                                              ; preds = %438, %349
  %444 = load i32, i32* %7, align 4
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %447

446:                                              ; preds = %443
  br label %451

447:                                              ; preds = %443
  br label %448

448:                                              ; preds = %447
  %449 = load i32, i32* %19, align 4
  %450 = add nsw i32 %449, 1
  store i32 %450, i32* %19, align 4
  br label %300

451:                                              ; preds = %446, %300
  %452 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %453 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %452, i32 0, i32 4
  %454 = load i64**, i64*** %453, align 8
  %455 = getelementptr inbounds i64*, i64** %454, i64 0
  %456 = load i64*, i64** %455, align 8
  %457 = ptrtoint i64* %456 to i64
  %458 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %459 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %458, i32 0, i32 11
  store i64 %457, i64* %459, align 8
  %460 = load i32, i32* %15, align 4
  %461 = icmp sgt i32 %460, 1
  br i1 %461, label %462, label %471

462:                                              ; preds = %451
  %463 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %464 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %463, i32 0, i32 4
  %465 = load i64**, i64*** %464, align 8
  %466 = getelementptr inbounds i64*, i64** %465, i64 1
  %467 = load i64*, i64** %466, align 8
  %468 = ptrtoint i64* %467 to i64
  %469 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %470 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %469, i32 0, i32 10
  store i64 %468, i64* %470, align 8
  br label %471

471:                                              ; preds = %462, %451
  br label %472

472:                                              ; preds = %471, %296
  br label %473

473:                                              ; preds = %472, %295
  %474 = load i32, i32* %19, align 4
  %475 = add nsw i32 %474, 1
  %476 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %477 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %476, i32 0, i32 2
  store i32 %475, i32* %477, align 8
  %478 = load i32, i32* %12, align 4
  %479 = icmp eq i32 %478, 2
  br i1 %479, label %480, label %485

480:                                              ; preds = %473
  %481 = load i32, i32* %20, align 4
  %482 = add nsw i32 %481, 1
  %483 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %484 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %483, i32 0, i32 3
  store i32 %482, i32* %484, align 4
  br label %485

485:                                              ; preds = %480, %473
  store i32 0, i32* %3, align 4
  br label %718

486:                                              ; preds = %333
  %487 = load %struct.device*, %struct.device** %6, align 8
  %488 = load i32, i32* %11, align 4
  %489 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %490 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %489, i32 0, i32 9
  %491 = load i64*, i64** %490, align 8
  %492 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %493 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %492, i32 0, i32 8
  %494 = load i64, i64* %493, align 8
  %495 = call i32 @dma_free_coherent(%struct.device* %487, i32 %488, i64* %491, i64 %494)
  %496 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %497 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %496, i32 0, i32 9
  store i64* null, i64** %497, align 8
  %498 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %499 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %498, i32 0, i32 8
  store i64 0, i64* %499, align 8
  %500 = load i32, i32* %19, align 4
  %501 = sub nsw i32 %500, 1
  store i32 %501, i32* %19, align 4
  br label %502

502:                                              ; preds = %560, %486
  %503 = load i32, i32* %19, align 4
  %504 = icmp sge i32 %503, 0
  br i1 %504, label %505, label %563

505:                                              ; preds = %502
  %506 = load %struct.device*, %struct.device** %6, align 8
  %507 = load i32, i32* %11, align 4
  %508 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %509 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %508, i32 0, i32 7
  %510 = load i64**, i64*** %509, align 8
  %511 = load i32, i32* %19, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds i64*, i64** %510, i64 %512
  %514 = load i64*, i64** %513, align 8
  %515 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %516 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %515, i32 0, i32 6
  %517 = load i64**, i64*** %516, align 8
  %518 = load i32, i32* %19, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds i64*, i64** %517, i64 %519
  %521 = load i64*, i64** %520, align 8
  %522 = ptrtoint i64* %521 to i64
  %523 = call i32 @dma_free_coherent(%struct.device* %506, i32 %507, i64* %514, i64 %522)
  store i32 0, i32* %20, align 4
  br label %524

524:                                              ; preds = %556, %505
  %525 = load i32, i32* %20, align 4
  %526 = load i32, i32* %11, align 4
  %527 = load i32, i32* @BA_BYTE_LEN, align 4
  %528 = sdiv i32 %526, %527
  %529 = icmp slt i32 %525, %528
  br i1 %529, label %530, label %559

530:                                              ; preds = %524
  %531 = load i32, i32* %19, align 4
  %532 = load i32, i32* %11, align 4
  %533 = mul nsw i32 %531, %532
  %534 = load i32, i32* @BA_BYTE_LEN, align 4
  %535 = sdiv i32 %533, %534
  %536 = load i32, i32* %20, align 4
  %537 = add nsw i32 %535, %536
  store i32 %537, i32* %14, align 4
  %538 = load %struct.device*, %struct.device** %6, align 8
  %539 = load i32, i32* %10, align 4
  %540 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %541 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %540, i32 0, i32 5
  %542 = load i64**, i64*** %541, align 8
  %543 = load i32, i32* %14, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds i64*, i64** %542, i64 %544
  %546 = load i64*, i64** %545, align 8
  %547 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %548 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %547, i32 0, i32 4
  %549 = load i64**, i64*** %548, align 8
  %550 = load i32, i32* %14, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i64*, i64** %549, i64 %551
  %553 = load i64*, i64** %552, align 8
  %554 = ptrtoint i64* %553 to i64
  %555 = call i32 @dma_free_coherent(%struct.device* %538, i32 %539, i64* %546, i64 %554)
  br label %556

556:                                              ; preds = %530
  %557 = load i32, i32* %20, align 4
  %558 = add nsw i32 %557, 1
  store i32 %558, i32* %20, align 4
  br label %524

559:                                              ; preds = %524
  br label %560

560:                                              ; preds = %559
  %561 = load i32, i32* %19, align 4
  %562 = add nsw i32 %561, -1
  store i32 %562, i32* %19, align 4
  br label %502

563:                                              ; preds = %502
  br label %688

564:                                              ; preds = %413, %249
  %565 = load %struct.device*, %struct.device** %6, align 8
  %566 = load i32, i32* %11, align 4
  %567 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %568 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %567, i32 0, i32 9
  %569 = load i64*, i64** %568, align 8
  %570 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %571 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %570, i32 0, i32 8
  %572 = load i64, i64* %571, align 8
  %573 = call i32 @dma_free_coherent(%struct.device* %565, i32 %566, i64* %569, i64 %572)
  %574 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %575 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %574, i32 0, i32 9
  store i64* null, i64** %575, align 8
  %576 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %577 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %576, i32 0, i32 8
  store i64 0, i64* %577, align 8
  %578 = load i32, i32* %12, align 4
  %579 = icmp eq i32 %578, 1
  br i1 %579, label %580, label %609

580:                                              ; preds = %564
  %581 = load i32, i32* %19, align 4
  %582 = sub nsw i32 %581, 1
  store i32 %582, i32* %19, align 4
  br label %583

583:                                              ; preds = %605, %580
  %584 = load i32, i32* %19, align 4
  %585 = icmp sge i32 %584, 0
  br i1 %585, label %586, label %608

586:                                              ; preds = %583
  %587 = load %struct.device*, %struct.device** %6, align 8
  %588 = load i32, i32* %10, align 4
  %589 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %590 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %589, i32 0, i32 5
  %591 = load i64**, i64*** %590, align 8
  %592 = load i32, i32* %19, align 4
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds i64*, i64** %591, i64 %593
  %595 = load i64*, i64** %594, align 8
  %596 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %597 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %596, i32 0, i32 4
  %598 = load i64**, i64*** %597, align 8
  %599 = load i32, i32* %19, align 4
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds i64*, i64** %598, i64 %600
  %602 = load i64*, i64** %601, align 8
  %603 = ptrtoint i64* %602 to i64
  %604 = call i32 @dma_free_coherent(%struct.device* %587, i32 %588, i64* %595, i64 %603)
  br label %605

605:                                              ; preds = %586
  %606 = load i32, i32* %19, align 4
  %607 = add nsw i32 %606, -1
  store i32 %607, i32* %19, align 4
  br label %583

608:                                              ; preds = %583
  br label %687

609:                                              ; preds = %564
  %610 = load i32, i32* %12, align 4
  %611 = icmp eq i32 %610, 2
  br i1 %611, label %612, label %686

612:                                              ; preds = %609
  %613 = load i32, i32* %19, align 4
  store i32 %613, i32* %17, align 4
  %614 = load i32, i32* %20, align 4
  store i32 %614, i32* %18, align 4
  br label %615

615:                                              ; preds = %682, %612
  %616 = load i32, i32* %19, align 4
  %617 = icmp sge i32 %616, 0
  br i1 %617, label %618, label %685

618:                                              ; preds = %615
  %619 = load %struct.device*, %struct.device** %6, align 8
  %620 = load i32, i32* %11, align 4
  %621 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %622 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %621, i32 0, i32 7
  %623 = load i64**, i64*** %622, align 8
  %624 = load i32, i32* %19, align 4
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds i64*, i64** %623, i64 %625
  %627 = load i64*, i64** %626, align 8
  %628 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %629 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %628, i32 0, i32 6
  %630 = load i64**, i64*** %629, align 8
  %631 = load i32, i32* %19, align 4
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds i64*, i64** %630, i64 %632
  %634 = load i64*, i64** %633, align 8
  %635 = ptrtoint i64* %634 to i64
  %636 = call i32 @dma_free_coherent(%struct.device* %619, i32 %620, i64* %627, i64 %635)
  store i32 0, i32* %20, align 4
  br label %637

637:                                              ; preds = %678, %618
  %638 = load i32, i32* %20, align 4
  %639 = load i32, i32* %11, align 4
  %640 = load i32, i32* @BA_BYTE_LEN, align 4
  %641 = sdiv i32 %639, %640
  %642 = icmp slt i32 %638, %641
  br i1 %642, label %643, label %681

643:                                              ; preds = %637
  %644 = load i32, i32* %19, align 4
  %645 = load i32, i32* %17, align 4
  %646 = icmp eq i32 %644, %645
  br i1 %646, label %647, label %652

647:                                              ; preds = %643
  %648 = load i32, i32* %20, align 4
  %649 = load i32, i32* %18, align 4
  %650 = icmp sge i32 %648, %649
  br i1 %650, label %651, label %652

651:                                              ; preds = %647
  br label %681

652:                                              ; preds = %647, %643
  %653 = load i32, i32* %19, align 4
  %654 = load i32, i32* %11, align 4
  %655 = mul nsw i32 %653, %654
  %656 = load i32, i32* @BA_BYTE_LEN, align 4
  %657 = sdiv i32 %655, %656
  %658 = load i32, i32* %20, align 4
  %659 = add nsw i32 %657, %658
  store i32 %659, i32* %14, align 4
  %660 = load %struct.device*, %struct.device** %6, align 8
  %661 = load i32, i32* %10, align 4
  %662 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %663 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %662, i32 0, i32 5
  %664 = load i64**, i64*** %663, align 8
  %665 = load i32, i32* %14, align 4
  %666 = sext i32 %665 to i64
  %667 = getelementptr inbounds i64*, i64** %664, i64 %666
  %668 = load i64*, i64** %667, align 8
  %669 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %670 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %669, i32 0, i32 4
  %671 = load i64**, i64*** %670, align 8
  %672 = load i32, i32* %14, align 4
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds i64*, i64** %671, i64 %673
  %675 = load i64*, i64** %674, align 8
  %676 = ptrtoint i64* %675 to i64
  %677 = call i32 @dma_free_coherent(%struct.device* %660, i32 %661, i64* %668, i64 %676)
  br label %678

678:                                              ; preds = %652
  %679 = load i32, i32* %20, align 4
  %680 = add nsw i32 %679, 1
  store i32 %680, i32* %20, align 4
  br label %637

681:                                              ; preds = %651, %637
  br label %682

682:                                              ; preds = %681
  %683 = load i32, i32* %19, align 4
  %684 = add nsw i32 %683, -1
  store i32 %684, i32* %19, align 4
  br label %615

685:                                              ; preds = %615
  br label %686

686:                                              ; preds = %685, %609
  br label %687

687:                                              ; preds = %686, %608
  br label %688

688:                                              ; preds = %687, %563, %177
  %689 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %690 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %689, i32 0, i32 7
  %691 = load i64**, i64*** %690, align 8
  %692 = call i32 @kfree(i64** %691)
  %693 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %694 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %693, i32 0, i32 7
  store i64** null, i64*** %694, align 8
  br label %695

695:                                              ; preds = %688, %161
  %696 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %697 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %696, i32 0, i32 6
  %698 = load i64**, i64*** %697, align 8
  %699 = call i32 @kfree(i64** %698)
  %700 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %701 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %700, i32 0, i32 6
  store i64** null, i64*** %701, align 8
  br label %702

702:                                              ; preds = %695, %149
  %703 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %704 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %703, i32 0, i32 5
  %705 = load i64**, i64*** %704, align 8
  %706 = call i32 @kfree(i64** %705)
  %707 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %708 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %707, i32 0, i32 5
  store i64** null, i64*** %708, align 8
  br label %709

709:                                              ; preds = %702, %134
  %710 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %711 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %710, i32 0, i32 4
  %712 = load i64**, i64*** %711, align 8
  %713 = call i32 @kfree(i64** %712)
  %714 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %5, align 8
  %715 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %714, i32 0, i32 4
  store i64** null, i64*** %715, align 8
  %716 = load i32, i32* @ENOMEM, align 4
  %717 = sub nsw i32 0, %716
  store i32 %717, i32* %3, align 4
  br label %718

718:                                              ; preds = %709, %485, %120, %101, %98, %70
  %719 = load i32, i32* %3, align 4
  ret i32 %719
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i32, i64*, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i64*, i64) #1

declare dso_local i32 @kfree(i64**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
