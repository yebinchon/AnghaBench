; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_ipsec_esp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_ipsec_esp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.talitos_edesc = type { i32, i32, i32, %struct.talitos_ptr*, i64, i32, i64, %struct.talitos_desc }
%struct.talitos_ptr = type { i32 }
%struct.talitos_desc = type { i32, %struct.talitos_ptr* }
%struct.aead_request = type { i32, i64, i32, i64 }
%struct.device = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.talitos_ctx = type { i32, i32, i32, i32, i32, %struct.device* }
%struct.talitos_private = type { i32 }

@DESC_HDR_TYPE_IPSEC_ESP = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DESC_HDR_MODE1_MDEU_CICV = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DESC_PTR_LNKTBL_RET = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.talitos_edesc*, %struct.aead_request*, i32, void (%struct.device*, %struct.talitos_desc*, i8*, i32)*)* @ipsec_esp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipsec_esp(%struct.talitos_edesc* %0, %struct.aead_request* %1, i32 %2, void (%struct.device*, %struct.talitos_desc*, i8*, i32)* %3) #0 {
  %5 = alloca %struct.talitos_edesc*, align 8
  %6 = alloca %struct.aead_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca void (%struct.device*, %struct.talitos_desc*, i8*, i32)*, align 8
  %9 = alloca %struct.crypto_aead*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.talitos_ctx*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca %struct.talitos_desc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.talitos_private*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.talitos_ptr*, align 8
  %25 = alloca %struct.talitos_ptr*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.talitos_ptr*, align 8
  store %struct.talitos_edesc* %0, %struct.talitos_edesc** %5, align 8
  store %struct.aead_request* %1, %struct.aead_request** %6, align 8
  store i32 %2, i32* %7, align 4
  store void (%struct.device*, %struct.talitos_desc*, i8*, i32)* %3, void (%struct.device*, %struct.talitos_desc*, i8*, i32)** %8, align 8
  %28 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %29 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %28)
  store %struct.crypto_aead* %29, %struct.crypto_aead** %9, align 8
  %30 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %31 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %33 = call %struct.talitos_ctx* @crypto_aead_ctx(%struct.crypto_aead* %32)
  store %struct.talitos_ctx* %33, %struct.talitos_ctx** %11, align 8
  %34 = load %struct.talitos_ctx*, %struct.talitos_ctx** %11, align 8
  %35 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %34, i32 0, i32 5
  %36 = load %struct.device*, %struct.device** %35, align 8
  store %struct.device* %36, %struct.device** %12, align 8
  %37 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %38 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %37, i32 0, i32 7
  store %struct.talitos_desc* %38, %struct.talitos_desc** %13, align 8
  %39 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %40 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %4
  br label %47

45:                                               ; preds = %4
  %46 = load i32, i32* %10, align 4
  br label %47

47:                                               ; preds = %45, %44
  %48 = phi i32 [ 0, %44 ], [ %46, %45 ]
  %49 = sub i32 %41, %48
  store i32 %49, i32* %14, align 4
  %50 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %51 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %50)
  store i32 %51, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %52 = load %struct.device*, %struct.device** %12, align 8
  %53 = call %struct.talitos_private* @dev_get_drvdata(%struct.device* %52)
  store %struct.talitos_private* %53, %struct.talitos_private** %21, align 8
  %54 = load %struct.talitos_private*, %struct.talitos_private** %21, align 8
  %55 = call i32 @has_ftr_sec1(%struct.talitos_private* %54)
  store i32 %55, i32* %22, align 4
  %56 = load %struct.talitos_desc*, %struct.talitos_desc** %13, align 8
  %57 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @DESC_HDR_TYPE_IPSEC_ESP, align 4
  %60 = and i32 %58, %59
  store i32 %60, i32* %23, align 4
  %61 = load %struct.talitos_desc*, %struct.talitos_desc** %13, align 8
  %62 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %61, i32 0, i32 1
  %63 = load %struct.talitos_ptr*, %struct.talitos_ptr** %62, align 8
  %64 = load i32, i32* %23, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 2, i32 3
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %63, i64 %68
  store %struct.talitos_ptr* %69, %struct.talitos_ptr** %24, align 8
  %70 = load %struct.talitos_desc*, %struct.talitos_desc** %13, align 8
  %71 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %70, i32 0, i32 1
  %72 = load %struct.talitos_ptr*, %struct.talitos_ptr** %71, align 8
  %73 = load i32, i32* %23, align 4
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 3, i32 2
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %72, i64 %77
  store %struct.talitos_ptr* %78, %struct.talitos_ptr** %25, align 8
  %79 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %80 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %83 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = add i32 %81, %84
  %86 = load i32, i32* %10, align 4
  %87 = sub i32 %85, %86
  store i32 %87, i32* %26, align 4
  %88 = load %struct.talitos_desc*, %struct.talitos_desc** %13, align 8
  %89 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %88, i32 0, i32 1
  %90 = load %struct.talitos_ptr*, %struct.talitos_ptr** %89, align 8
  %91 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %90, i64 0
  %92 = load %struct.talitos_ctx*, %struct.talitos_ctx** %11, align 8
  %93 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.talitos_ctx*, %struct.talitos_ctx** %11, align 8
  %96 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %22, align 4
  %99 = call i32 @to_talitos_ptr(%struct.talitos_ptr* %91, i32 %94, i32 %97, i32 %98)
  %100 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %101 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %100, i32 0, i32 6
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %47
  br label %106

105:                                              ; preds = %47
  br label %106

106:                                              ; preds = %105, %104
  %107 = phi i64 [ %102, %104 ], [ 1, %105 ]
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %17, align 4
  %109 = load i32, i32* %22, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %128

111:                                              ; preds = %106
  %112 = load i32, i32* %17, align 4
  %113 = icmp sgt i32 %112, 1
  br i1 %113, label %114, label %128

114:                                              ; preds = %111
  %115 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %116 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* %17, align 4
  %119 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %120 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %123 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %14, align 4
  %126 = add i32 %124, %125
  %127 = call i32 @sg_copy_to_buffer(i64 %117, i32 %118, i32 %121, i32 %126)
  br label %148

128:                                              ; preds = %111, %106
  %129 = load %struct.device*, %struct.device** %12, align 8
  %130 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %131 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* %17, align 4
  %134 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %135 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %138 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %136, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %128
  %142 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  br label %145

143:                                              ; preds = %128
  %144 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi i32 [ %142, %141 ], [ %144, %143 ]
  %147 = call i32 @dma_map_sg(%struct.device* %129, i64 %132, i32 %133, i32 %146)
  store i32 %147, i32* %17, align 4
  br label %148

148:                                              ; preds = %145, %114
  %149 = load %struct.device*, %struct.device** %12, align 8
  %150 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %151 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %154 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %157 = load %struct.talitos_desc*, %struct.talitos_desc** %13, align 8
  %158 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %157, i32 0, i32 1
  %159 = load %struct.talitos_ptr*, %struct.talitos_ptr** %158, align 8
  %160 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %159, i64 1
  %161 = load i32, i32* %17, align 4
  %162 = load i32, i32* %16, align 4
  %163 = call i32 @talitos_sg_map(%struct.device* %149, i64 %152, i32 %155, %struct.talitos_edesc* %156, %struct.talitos_ptr* %160, i32 %161, i32 0, i32 %162)
  store i32 %163, i32* %18, align 4
  %164 = load i32, i32* %18, align 4
  %165 = icmp sgt i32 %164, 1
  br i1 %165, label %166, label %170

166:                                              ; preds = %148
  %167 = load i32, i32* %18, align 4
  %168 = load i32, i32* %16, align 4
  %169 = add nsw i32 %168, %167
  store i32 %169, i32* %16, align 4
  store i32 1, i32* %20, align 4
  br label %170

170:                                              ; preds = %166, %148
  %171 = load %struct.talitos_ptr*, %struct.talitos_ptr** %24, align 8
  %172 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %173 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %15, align 4
  %176 = load i32, i32* %22, align 4
  %177 = call i32 @to_talitos_ptr(%struct.talitos_ptr* %171, i32 %174, i32 %175, i32 %176)
  %178 = load %struct.talitos_ptr*, %struct.talitos_ptr** %25, align 8
  %179 = load %struct.talitos_ctx*, %struct.talitos_ctx** %11, align 8
  %180 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.talitos_ctx*, %struct.talitos_ctx** %11, align 8
  %183 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = add i32 %181, %184
  %186 = load %struct.talitos_ctx*, %struct.talitos_ctx** %11, align 8
  %187 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %22, align 4
  %190 = call i32 @to_talitos_ptr(%struct.talitos_ptr* %178, i32 %185, i32 %188, i32 %189)
  %191 = load i32, i32* %23, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %170
  %194 = load %struct.talitos_desc*, %struct.talitos_desc** %13, align 8
  %195 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @DESC_HDR_MODE1_MDEU_CICV, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %193
  %201 = load i32, i32* %10, align 4
  store i32 %201, i32* %19, align 4
  br label %202

202:                                              ; preds = %200, %193, %170
  %203 = load %struct.device*, %struct.device** %12, align 8
  %204 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %205 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load i32, i32* %14, align 4
  %208 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %209 = load %struct.talitos_desc*, %struct.talitos_desc** %13, align 8
  %210 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %209, i32 0, i32 1
  %211 = load %struct.talitos_ptr*, %struct.talitos_ptr** %210, align 8
  %212 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %211, i64 4
  %213 = load i32, i32* %17, align 4
  %214 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %215 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* %16, align 4
  %218 = load i32, i32* %19, align 4
  %219 = call i32 @talitos_sg_map_ext(%struct.device* %203, i64 %206, i32 %207, %struct.talitos_edesc* %208, %struct.talitos_ptr* %212, i32 %213, i32 %216, i32 %217, i32 %218, i32 0)
  store i32 %219, i32* %18, align 4
  %220 = load i32, i32* %18, align 4
  %221 = icmp sgt i32 %220, 1
  br i1 %221, label %222, label %226

222:                                              ; preds = %202
  %223 = load i32, i32* %18, align 4
  %224 = load i32, i32* %16, align 4
  %225 = add nsw i32 %224, %223
  store i32 %225, i32* %16, align 4
  store i32 1, i32* %20, align 4
  br label %226

226:                                              ; preds = %222, %202
  %227 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %228 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %231 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %230, i32 0, i32 3
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %229, %232
  br i1 %233, label %234, label %258

234:                                              ; preds = %226
  %235 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %236 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %235, i32 0, i32 4
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %234
  br label %241

240:                                              ; preds = %234
  br label %241

241:                                              ; preds = %240, %239
  %242 = phi i64 [ %237, %239 ], [ 1, %240 ]
  %243 = trunc i64 %242 to i32
  store i32 %243, i32* %17, align 4
  %244 = load i32, i32* %22, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %241
  %247 = load i32, i32* %17, align 4
  %248 = icmp eq i32 %247, 1
  br i1 %248, label %249, label %257

249:                                              ; preds = %246, %241
  %250 = load %struct.device*, %struct.device** %12, align 8
  %251 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %252 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %251, i32 0, i32 3
  %253 = load i64, i64* %252, align 8
  %254 = load i32, i32* %17, align 4
  %255 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %256 = call i32 @dma_map_sg(%struct.device* %250, i64 %253, i32 %254, i32 %255)
  br label %257

257:                                              ; preds = %249, %246
  br label %258

258:                                              ; preds = %257, %226
  %259 = load i32, i32* %23, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %266

261:                                              ; preds = %258
  %262 = load i32, i32* %7, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %261
  %265 = load i32, i32* %10, align 4
  store i32 %265, i32* %19, align 4
  br label %267

266:                                              ; preds = %261, %258
  store i32 0, i32* %19, align 4
  br label %267

267:                                              ; preds = %266, %264
  %268 = load %struct.device*, %struct.device** %12, align 8
  %269 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %270 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %269, i32 0, i32 3
  %271 = load i64, i64* %270, align 8
  %272 = load i32, i32* %14, align 4
  %273 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %274 = load %struct.talitos_desc*, %struct.talitos_desc** %13, align 8
  %275 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %274, i32 0, i32 1
  %276 = load %struct.talitos_ptr*, %struct.talitos_ptr** %275, align 8
  %277 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %276, i64 5
  %278 = load i32, i32* %17, align 4
  %279 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %280 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* %16, align 4
  %283 = load i32, i32* %19, align 4
  %284 = load i32, i32* %23, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %290

286:                                              ; preds = %267
  %287 = load i32, i32* %7, align 4
  %288 = icmp ne i32 %287, 0
  %289 = xor i1 %288, true
  br label %290

290:                                              ; preds = %286, %267
  %291 = phi i1 [ false, %267 ], [ %289, %286 ]
  %292 = zext i1 %291 to i32
  %293 = call i32 @talitos_sg_map_ext(%struct.device* %268, i64 %271, i32 %272, %struct.talitos_edesc* %273, %struct.talitos_ptr* %277, i32 %278, i32 %281, i32 %282, i32 %283, i32 %292)
  store i32 %293, i32* %18, align 4
  %294 = load i32, i32* %18, align 4
  %295 = load i32, i32* %16, align 4
  %296 = add nsw i32 %295, %294
  store i32 %296, i32* %16, align 4
  %297 = load i32, i32* %7, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %329, label %299

299:                                              ; preds = %290
  %300 = load i32, i32* %23, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %329

302:                                              ; preds = %299
  %303 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %304 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %303, i32 0, i32 3
  %305 = load %struct.talitos_ptr*, %struct.talitos_ptr** %304, align 8
  %306 = load i32, i32* %16, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %305, i64 %307
  store %struct.talitos_ptr* %308, %struct.talitos_ptr** %27, align 8
  %309 = load %struct.talitos_ptr*, %struct.talitos_ptr** %27, align 8
  %310 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %309, i64 -1
  %311 = load i32, i32* %22, align 4
  %312 = call i32 @to_talitos_ptr_ext_set(%struct.talitos_ptr* %310, i32 0, i32 %311)
  %313 = load %struct.talitos_ptr*, %struct.talitos_ptr** %27, align 8
  %314 = load i32, i32* @DESC_PTR_LNKTBL_RET, align 4
  %315 = load i32, i32* %22, align 4
  %316 = call i32 @to_talitos_ptr_ext_set(%struct.talitos_ptr* %313, i32 %314, i32 %315)
  %317 = load %struct.talitos_ptr*, %struct.talitos_ptr** %27, align 8
  %318 = load i32, i32* %26, align 4
  %319 = load i32, i32* %10, align 4
  %320 = load i32, i32* %22, align 4
  %321 = call i32 @to_talitos_ptr(%struct.talitos_ptr* %317, i32 %318, i32 %319, i32 %320)
  %322 = load %struct.talitos_desc*, %struct.talitos_desc** %13, align 8
  %323 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %322, i32 0, i32 1
  %324 = load %struct.talitos_ptr*, %struct.talitos_ptr** %323, align 8
  %325 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %324, i64 5
  %326 = load i32, i32* %10, align 4
  %327 = load i32, i32* %22, align 4
  %328 = call i32 @to_talitos_ptr_ext_or(%struct.talitos_ptr* %325, i32 %326, i32 %327)
  store i32 1, i32* %20, align 4
  br label %365

329:                                              ; preds = %299, %290
  %330 = load i32, i32* %7, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %341, label %332

332:                                              ; preds = %329
  %333 = load %struct.talitos_desc*, %struct.talitos_desc** %13, align 8
  %334 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %333, i32 0, i32 1
  %335 = load %struct.talitos_ptr*, %struct.talitos_ptr** %334, align 8
  %336 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %335, i64 6
  %337 = load i32, i32* %26, align 4
  %338 = load i32, i32* %10, align 4
  %339 = load i32, i32* %22, align 4
  %340 = call i32 @to_talitos_ptr(%struct.talitos_ptr* %336, i32 %337, i32 %338, i32 %339)
  store i32 1, i32* %20, align 4
  br label %364

341:                                              ; preds = %329
  %342 = load i32, i32* %23, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %363, label %344

344:                                              ; preds = %341
  %345 = load %struct.device*, %struct.device** %12, align 8
  %346 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %347 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %346, i32 0, i32 3
  %348 = load i64, i64* %347, align 8
  %349 = load i32, i32* %10, align 4
  %350 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %351 = load %struct.talitos_desc*, %struct.talitos_desc** %13, align 8
  %352 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %351, i32 0, i32 1
  %353 = load %struct.talitos_ptr*, %struct.talitos_ptr** %352, align 8
  %354 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %353, i64 6
  %355 = load i32, i32* %17, align 4
  %356 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %357 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %356, i32 0, i32 2
  %358 = load i32, i32* %357, align 8
  %359 = load i32, i32* %14, align 4
  %360 = add i32 %358, %359
  %361 = load i32, i32* %16, align 4
  %362 = call i32 @talitos_sg_map(%struct.device* %345, i64 %348, i32 %349, %struct.talitos_edesc* %350, %struct.talitos_ptr* %354, i32 %355, i32 %360, i32 %361)
  br label %363

363:                                              ; preds = %344, %341
  br label %364

364:                                              ; preds = %363, %332
  br label %365

365:                                              ; preds = %364, %302
  %366 = load i32, i32* %23, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %380

368:                                              ; preds = %365
  %369 = load %struct.device*, %struct.device** %12, align 8
  %370 = load %struct.talitos_desc*, %struct.talitos_desc** %13, align 8
  %371 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %370, i32 0, i32 1
  %372 = load %struct.talitos_ptr*, %struct.talitos_ptr** %371, align 8
  %373 = getelementptr inbounds %struct.talitos_ptr, %struct.talitos_ptr* %372, i64 6
  %374 = load i32, i32* %15, align 4
  %375 = load %struct.talitos_ctx*, %struct.talitos_ctx** %11, align 8
  %376 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %375, i32 0, i32 4
  %377 = load i32, i32* %376, align 8
  %378 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %379 = call i32 @map_single_talitos_ptr(%struct.device* %369, %struct.talitos_ptr* %373, i32 %374, i32 %377, i32 %378)
  br label %380

380:                                              ; preds = %368, %365
  %381 = load i32, i32* %20, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %393

383:                                              ; preds = %380
  %384 = load %struct.device*, %struct.device** %12, align 8
  %385 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %386 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %389 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 4
  %391 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %392 = call i32 @dma_sync_single_for_device(%struct.device* %384, i32 %387, i32 %390, i32 %391)
  br label %393

393:                                              ; preds = %383, %380
  %394 = load %struct.device*, %struct.device** %12, align 8
  %395 = load %struct.talitos_ctx*, %struct.talitos_ctx** %11, align 8
  %396 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %395, i32 0, i32 3
  %397 = load i32, i32* %396, align 4
  %398 = load %struct.talitos_desc*, %struct.talitos_desc** %13, align 8
  %399 = load void (%struct.device*, %struct.talitos_desc*, i8*, i32)*, void (%struct.device*, %struct.talitos_desc*, i8*, i32)** %8, align 8
  %400 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %401 = call i32 @talitos_submit(%struct.device* %394, i32 %397, %struct.talitos_desc* %398, void (%struct.device*, %struct.talitos_desc*, i8*, i32)* %399, %struct.aead_request* %400)
  store i32 %401, i32* %18, align 4
  %402 = load i32, i32* %18, align 4
  %403 = load i32, i32* @EINPROGRESS, align 4
  %404 = sub nsw i32 0, %403
  %405 = icmp ne i32 %402, %404
  br i1 %405, label %406, label %414

406:                                              ; preds = %393
  %407 = load %struct.device*, %struct.device** %12, align 8
  %408 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %409 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %410 = load i32, i32* %7, align 4
  %411 = call i32 @ipsec_esp_unmap(%struct.device* %407, %struct.talitos_edesc* %408, %struct.aead_request* %409, i32 %410)
  %412 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %413 = call i32 @kfree(%struct.talitos_edesc* %412)
  br label %414

414:                                              ; preds = %406, %393
  %415 = load i32, i32* %18, align 4
  ret i32 %415
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local %struct.talitos_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local %struct.talitos_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @has_ftr_sec1(%struct.talitos_private*) #1

declare dso_local i32 @to_talitos_ptr(%struct.talitos_ptr*, i32, i32, i32) #1

declare dso_local i32 @sg_copy_to_buffer(i64, i32, i32, i32) #1

declare dso_local i32 @dma_map_sg(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @talitos_sg_map(%struct.device*, i64, i32, %struct.talitos_edesc*, %struct.talitos_ptr*, i32, i32, i32) #1

declare dso_local i32 @talitos_sg_map_ext(%struct.device*, i64, i32, %struct.talitos_edesc*, %struct.talitos_ptr*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @to_talitos_ptr_ext_set(%struct.talitos_ptr*, i32, i32) #1

declare dso_local i32 @to_talitos_ptr_ext_or(%struct.talitos_ptr*, i32, i32) #1

declare dso_local i32 @map_single_talitos_ptr(%struct.device*, %struct.talitos_ptr*, i32, i32, i32) #1

declare dso_local i32 @dma_sync_single_for_device(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @talitos_submit(%struct.device*, i32, %struct.talitos_desc*, void (%struct.device*, %struct.talitos_desc*, i8*, i32)*, %struct.aead_request*) #1

declare dso_local i32 @ipsec_esp_unmap(%struct.device*, %struct.talitos_edesc*, %struct.aead_request*, i32) #1

declare dso_local i32 @kfree(%struct.talitos_edesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
