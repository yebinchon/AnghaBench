; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_common_nonsnoop_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_common_nonsnoop_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.talitos_edesc = type { i64, i32, i64, i64, %struct.talitos_desc }
%struct.talitos_desc = type { i32, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.ahash_request = type { i32 }
%struct.device = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.talitos_ctx = type { i32, i64, i32, %struct.device* }
%struct.talitos_ahash_req_ctx = type { i64, i32, i32, i64, i32, i64, i32*, i64, i64 }
%struct.talitos_private = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DESC_HDR_MODE0_MDEU_INIT = common dso_local global i32 0, align 4
@DESC_HDR_MODE0_MDEU_PAD = common dso_local global i32 0, align 4
@DESC_HDR_MODE0_MDEU_CONT = common dso_local global i32 0, align 4
@DESC_HDR_DONE_NOTIFY = common dso_local global i32 0, align 4
@TALITOS_DESC_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.talitos_edesc*, %struct.ahash_request*, i32, void (%struct.device*, %struct.talitos_desc*, i8*, i32)*)* @common_nonsnoop_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @common_nonsnoop_hash(%struct.talitos_edesc* %0, %struct.ahash_request* %1, i32 %2, void (%struct.device*, %struct.talitos_desc*, i8*, i32)* %3) #0 {
  %5 = alloca %struct.talitos_edesc*, align 8
  %6 = alloca %struct.ahash_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca void (%struct.device*, %struct.talitos_desc*, i8*, i32)*, align 8
  %9 = alloca %struct.crypto_ahash*, align 8
  %10 = alloca %struct.talitos_ctx*, align 8
  %11 = alloca %struct.talitos_ahash_req_ctx*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca %struct.talitos_desc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.talitos_private*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.talitos_desc*, align 8
  %20 = alloca i32, align 4
  store %struct.talitos_edesc* %0, %struct.talitos_edesc** %5, align 8
  store %struct.ahash_request* %1, %struct.ahash_request** %6, align 8
  store i32 %2, i32* %7, align 4
  store void (%struct.device*, %struct.talitos_desc*, i8*, i32)* %3, void (%struct.device*, %struct.talitos_desc*, i8*, i32)** %8, align 8
  %21 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %22 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %21)
  store %struct.crypto_ahash* %22, %struct.crypto_ahash** %9, align 8
  %23 = load %struct.crypto_ahash*, %struct.crypto_ahash** %9, align 8
  %24 = call %struct.talitos_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %23)
  store %struct.talitos_ctx* %24, %struct.talitos_ctx** %10, align 8
  %25 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %26 = call %struct.talitos_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request* %25)
  store %struct.talitos_ahash_req_ctx* %26, %struct.talitos_ahash_req_ctx** %11, align 8
  %27 = load %struct.talitos_ctx*, %struct.talitos_ctx** %10, align 8
  %28 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %27, i32 0, i32 3
  %29 = load %struct.device*, %struct.device** %28, align 8
  store %struct.device* %29, %struct.device** %12, align 8
  %30 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %31 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %30, i32 0, i32 4
  store %struct.talitos_desc* %31, %struct.talitos_desc** %13, align 8
  store i32 0, i32* %15, align 4
  %32 = load %struct.device*, %struct.device** %12, align 8
  %33 = call %struct.talitos_private* @dev_get_drvdata(%struct.device* %32)
  store %struct.talitos_private* %33, %struct.talitos_private** %16, align 8
  %34 = load %struct.talitos_private*, %struct.talitos_private** %16, align 8
  %35 = call i32 @has_ftr_sec1(%struct.talitos_private* %34)
  store i32 %35, i32* %17, align 4
  %36 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %11, align 8
  %37 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %36, i32 0, i32 7
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %4
  %41 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %11, align 8
  %42 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %41, i32 0, i32 8
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %40, %4
  %46 = load %struct.device*, %struct.device** %12, align 8
  %47 = load %struct.talitos_desc*, %struct.talitos_desc** %13, align 8
  %48 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %47, i32 0, i32 2
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i64 1
  %51 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %11, align 8
  %52 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %11, align 8
  %55 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @DMA_TO_DEVICE, align 4
  %58 = call i32 @map_single_talitos_ptr_nosync(%struct.device* %46, %struct.TYPE_9__* %50, i32 %53, i32 %56, i32 %57)
  %59 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %11, align 8
  %60 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %59, i32 0, i32 8
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %45, %40
  %62 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %11, align 8
  %63 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %62, i32 0, i32 7
  store i64 0, i64* %63, align 8
  %64 = load %struct.talitos_ctx*, %struct.talitos_ctx** %10, align 8
  %65 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %61
  %69 = load %struct.talitos_desc*, %struct.talitos_desc** %13, align 8
  %70 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %69, i32 0, i32 2
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i64 2
  %73 = load %struct.talitos_ctx*, %struct.talitos_ctx** %10, align 8
  %74 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.talitos_ctx*, %struct.talitos_ctx** %10, align 8
  %77 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %17, align 4
  %80 = call i32 @to_talitos_ptr(%struct.TYPE_9__* %72, i32 %75, i64 %78, i32 %79)
  br label %81

81:                                               ; preds = %68, %61
  %82 = load i32, i32* %17, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %81
  %85 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %11, align 8
  %86 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %11, align 8
  %91 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = zext i32 %93 to i64
  %95 = sub nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %89, %84, %81
  %98 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %99 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %104

103:                                              ; preds = %97
  br label %104

104:                                              ; preds = %103, %102
  %105 = phi i64 [ %100, %102 ], [ 1, %103 ]
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %18, align 4
  %107 = load i32, i32* %17, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %104
  %110 = load i32, i32* %18, align 4
  %111 = icmp sgt i32 %110, 1
  br i1 %111, label %112, label %122

112:                                              ; preds = %109
  %113 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %11, align 8
  %114 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %18, align 4
  %117 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %118 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @sg_copy_to_buffer(i32 %115, i32 %116, i64 %119, i32 %120)
  br label %134

122:                                              ; preds = %109, %104
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %122
  %126 = load %struct.device*, %struct.device** %12, align 8
  %127 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %11, align 8
  %128 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* @DMA_TO_DEVICE, align 4
  %132 = call i32 @dma_map_sg(%struct.device* %126, i32 %129, i32 %130, i32 %131)
  store i32 %132, i32* %18, align 4
  br label %133

133:                                              ; preds = %125, %122
  br label %134

134:                                              ; preds = %133, %112
  %135 = load i32, i32* %17, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %161

137:                                              ; preds = %134
  %138 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %11, align 8
  %139 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %138, i32 0, i32 5
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %161

142:                                              ; preds = %137
  %143 = load %struct.device*, %struct.device** %12, align 8
  %144 = load %struct.talitos_desc*, %struct.talitos_desc** %13, align 8
  %145 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %144, i32 0, i32 2
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i64 3
  %148 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %11, align 8
  %149 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %148, i32 0, i32 5
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %11, align 8
  %152 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %151, i32 0, i32 6
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %11, align 8
  %155 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds i32, i32* %153, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @DMA_TO_DEVICE, align 4
  %160 = call i32 @map_single_talitos_ptr(%struct.device* %143, %struct.TYPE_9__* %147, i64 %150, i32 %158, i32 %159)
  br label %178

161:                                              ; preds = %137, %134
  %162 = load %struct.device*, %struct.device** %12, align 8
  %163 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %11, align 8
  %164 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %7, align 4
  %167 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %168 = load %struct.talitos_desc*, %struct.talitos_desc** %13, align 8
  %169 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %168, i32 0, i32 2
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i64 3
  %172 = load i32, i32* %18, align 4
  %173 = call i32 @talitos_sg_map(%struct.device* %162, i32 %165, i32 %166, %struct.talitos_edesc* %167, %struct.TYPE_9__* %171, i32 %172, i32 0, i32 0)
  store i32 %173, i32* %18, align 4
  %174 = load i32, i32* %18, align 4
  %175 = icmp sgt i32 %174, 1
  br i1 %175, label %176, label %177

176:                                              ; preds = %161
  store i32 1, i32* %15, align 4
  br label %177

177:                                              ; preds = %176, %161
  br label %178

178:                                              ; preds = %177, %142
  %179 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %11, align 8
  %180 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %196

183:                                              ; preds = %178
  %184 = load %struct.device*, %struct.device** %12, align 8
  %185 = load %struct.talitos_desc*, %struct.talitos_desc** %13, align 8
  %186 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %185, i32 0, i32 2
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i64 5
  %189 = load %struct.crypto_ahash*, %struct.crypto_ahash** %9, align 8
  %190 = call i64 @crypto_ahash_digestsize(%struct.crypto_ahash* %189)
  %191 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %192 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %195 = call i32 @map_single_talitos_ptr(%struct.device* %184, %struct.TYPE_9__* %188, i64 %190, i32 %193, i32 %194)
  br label %210

196:                                              ; preds = %178
  %197 = load %struct.device*, %struct.device** %12, align 8
  %198 = load %struct.talitos_desc*, %struct.talitos_desc** %13, align 8
  %199 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %198, i32 0, i32 2
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i64 5
  %202 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %11, align 8
  %203 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %11, align 8
  %206 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %209 = call i32 @map_single_talitos_ptr_nosync(%struct.device* %197, %struct.TYPE_9__* %201, i32 %204, i32 %207, i32 %208)
  br label %210

210:                                              ; preds = %196, %183
  %211 = load i32, i32* %17, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %228

213:                                              ; preds = %210
  %214 = load %struct.talitos_desc*, %struct.talitos_desc** %13, align 8
  %215 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %214, i32 0, i32 2
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i64 3
  %218 = call i64 @from_talitos_ptr_len(%struct.TYPE_9__* %217, i32 1)
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %228

220:                                              ; preds = %213
  %221 = load %struct.talitos_ctx*, %struct.talitos_ctx** %10, align 8
  %222 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %223 = load %struct.talitos_desc*, %struct.talitos_desc** %13, align 8
  %224 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %223, i32 0, i32 2
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i64 3
  %227 = call i32 @talitos_handle_buggy_hash(%struct.talitos_ctx* %221, %struct.talitos_edesc* %222, %struct.TYPE_9__* %226)
  br label %228

228:                                              ; preds = %220, %213, %210
  %229 = load i32, i32* %17, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %381

231:                                              ; preds = %228
  %232 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %11, align 8
  %233 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %232, i32 0, i32 5
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %381

236:                                              ; preds = %231
  %237 = load i32, i32* %7, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %381

239:                                              ; preds = %236
  %240 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %241 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %244 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = add nsw i64 %242, %245
  %247 = inttoptr i64 %246 to %struct.talitos_desc*
  store %struct.talitos_desc* %247, %struct.talitos_desc** %19, align 8
  %248 = load %struct.talitos_desc*, %struct.talitos_desc** %19, align 8
  %249 = call i32 @memset(%struct.talitos_desc* %248, i32 0, i32 24)
  %250 = load %struct.talitos_desc*, %struct.talitos_desc** %13, align 8
  %251 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.talitos_desc*, %struct.talitos_desc** %19, align 8
  %254 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %253, i32 0, i32 3
  store i32 %252, i32* %254, align 8
  %255 = load i32, i32* @DESC_HDR_MODE0_MDEU_INIT, align 4
  %256 = xor i32 %255, -1
  %257 = load %struct.talitos_desc*, %struct.talitos_desc** %19, align 8
  %258 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = and i32 %259, %256
  store i32 %260, i32* %258, align 8
  %261 = load %struct.talitos_desc*, %struct.talitos_desc** %19, align 8
  %262 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.talitos_desc*, %struct.talitos_desc** %19, align 8
  %265 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %264, i32 0, i32 1
  store i32 %263, i32* %265, align 4
  %266 = load i32, i32* @DESC_HDR_MODE0_MDEU_PAD, align 4
  %267 = xor i32 %266, -1
  %268 = load %struct.talitos_desc*, %struct.talitos_desc** %13, align 8
  %269 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 8
  %271 = and i32 %270, %267
  store i32 %271, i32* %269, align 8
  %272 = load i32, i32* @DESC_HDR_MODE0_MDEU_CONT, align 4
  %273 = load %struct.talitos_desc*, %struct.talitos_desc** %13, align 8
  %274 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 8
  %276 = or i32 %275, %272
  store i32 %276, i32* %274, align 8
  %277 = load i32, i32* @DESC_HDR_DONE_NOTIFY, align 4
  %278 = xor i32 %277, -1
  %279 = load %struct.talitos_desc*, %struct.talitos_desc** %13, align 8
  %280 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 8
  %282 = and i32 %281, %278
  store i32 %282, i32* %280, align 8
  %283 = load %struct.talitos_desc*, %struct.talitos_desc** %13, align 8
  %284 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %283, i32 0, i32 2
  %285 = load %struct.TYPE_9__*, %struct.TYPE_9__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %285, i64 1
  %287 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %301

290:                                              ; preds = %239
  %291 = load %struct.talitos_desc*, %struct.talitos_desc** %19, align 8
  %292 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %291, i32 0, i32 2
  %293 = load %struct.TYPE_9__*, %struct.TYPE_9__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %293, i64 1
  %295 = load %struct.talitos_desc*, %struct.talitos_desc** %13, align 8
  %296 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %295, i32 0, i32 2
  %297 = load %struct.TYPE_9__*, %struct.TYPE_9__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i64 1
  %299 = load i32, i32* %17, align 4
  %300 = call i32 @copy_talitos_ptr(%struct.TYPE_9__* %294, %struct.TYPE_9__* %298, i32 %299)
  br label %315

301:                                              ; preds = %239
  %302 = load %struct.device*, %struct.device** %12, align 8
  %303 = load %struct.talitos_desc*, %struct.talitos_desc** %19, align 8
  %304 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %303, i32 0, i32 2
  %305 = load %struct.TYPE_9__*, %struct.TYPE_9__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %305, i64 1
  %307 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %11, align 8
  %308 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %11, align 8
  %311 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 8
  %313 = load i32, i32* @DMA_TO_DEVICE, align 4
  %314 = call i32 @map_single_talitos_ptr_nosync(%struct.device* %302, %struct.TYPE_9__* %306, i32 %309, i32 %312, i32 %313)
  br label %315

315:                                              ; preds = %301, %290
  %316 = load %struct.talitos_desc*, %struct.talitos_desc** %19, align 8
  %317 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %316, i32 0, i32 2
  %318 = load %struct.TYPE_9__*, %struct.TYPE_9__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %318, i64 2
  %320 = load %struct.talitos_desc*, %struct.talitos_desc** %13, align 8
  %321 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %320, i32 0, i32 2
  %322 = load %struct.TYPE_9__*, %struct.TYPE_9__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %322, i64 2
  %324 = load i32, i32* %17, align 4
  %325 = call i32 @copy_talitos_ptr(%struct.TYPE_9__* %319, %struct.TYPE_9__* %323, i32 %324)
  %326 = load %struct.device*, %struct.device** %12, align 8
  %327 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %11, align 8
  %328 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %327, i32 0, i32 4
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* %7, align 4
  %331 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %332 = load %struct.talitos_desc*, %struct.talitos_desc** %19, align 8
  %333 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %332, i32 0, i32 2
  %334 = load %struct.TYPE_9__*, %struct.TYPE_9__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %334, i64 3
  %336 = load i32, i32* %18, align 4
  %337 = call i32 @talitos_sg_map(%struct.device* %326, i32 %329, i32 %330, %struct.talitos_edesc* %331, %struct.TYPE_9__* %335, i32 %336, i32 0, i32 0)
  store i32 %337, i32* %18, align 4
  %338 = load i32, i32* %18, align 4
  %339 = icmp sgt i32 %338, 1
  br i1 %339, label %340, label %341

340:                                              ; preds = %315
  store i32 1, i32* %15, align 4
  br label %341

341:                                              ; preds = %340, %315
  %342 = load %struct.talitos_desc*, %struct.talitos_desc** %19, align 8
  %343 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %342, i32 0, i32 2
  %344 = load %struct.TYPE_9__*, %struct.TYPE_9__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %344, i64 5
  %346 = load %struct.talitos_desc*, %struct.talitos_desc** %13, align 8
  %347 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %346, i32 0, i32 2
  %348 = load %struct.TYPE_9__*, %struct.TYPE_9__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %348, i64 5
  %350 = load i32, i32* %17, align 4
  %351 = call i32 @copy_talitos_ptr(%struct.TYPE_9__* %345, %struct.TYPE_9__* %349, i32 %350)
  %352 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %11, align 8
  %353 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %352, i32 0, i32 3
  %354 = load i64, i64* %353, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %370

356:                                              ; preds = %341
  %357 = load %struct.device*, %struct.device** %12, align 8
  %358 = load %struct.talitos_desc*, %struct.talitos_desc** %13, align 8
  %359 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %358, i32 0, i32 2
  %360 = load %struct.TYPE_9__*, %struct.TYPE_9__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %360, i64 5
  %362 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %11, align 8
  %363 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %362, i32 0, i32 2
  %364 = load i32, i32* %363, align 4
  %365 = load %struct.talitos_ahash_req_ctx*, %struct.talitos_ahash_req_ctx** %11, align 8
  %366 = getelementptr inbounds %struct.talitos_ahash_req_ctx, %struct.talitos_ahash_req_ctx* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 8
  %368 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %369 = call i32 @map_single_talitos_ptr_nosync(%struct.device* %357, %struct.TYPE_9__* %361, i32 %364, i32 %367, i32 %368)
  br label %370

370:                                              ; preds = %356, %341
  %371 = load %struct.device*, %struct.device** %12, align 8
  %372 = load %struct.talitos_desc*, %struct.talitos_desc** %19, align 8
  %373 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %372, i32 0, i32 1
  %374 = load i32, i32* @TALITOS_DESC_SIZE, align 4
  %375 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %376 = call i32 @dma_map_single(%struct.device* %371, i32* %373, i32 %374, i32 %375)
  store i32 %376, i32* %20, align 4
  %377 = load i32, i32* %20, align 4
  %378 = call i32 @cpu_to_be32(i32 %377)
  %379 = load %struct.talitos_desc*, %struct.talitos_desc** %13, align 8
  %380 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %379, i32 0, i32 0
  store i32 %378, i32* %380, align 8
  br label %381

381:                                              ; preds = %370, %236, %231, %228
  %382 = load i32, i32* %15, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %394

384:                                              ; preds = %381
  %385 = load %struct.device*, %struct.device** %12, align 8
  %386 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %387 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 8
  %389 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %390 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %389, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  %392 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %393 = call i32 @dma_sync_single_for_device(%struct.device* %385, i32 %388, i64 %391, i32 %392)
  br label %394

394:                                              ; preds = %384, %381
  %395 = load %struct.device*, %struct.device** %12, align 8
  %396 = load %struct.talitos_ctx*, %struct.talitos_ctx** %10, align 8
  %397 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 8
  %399 = load %struct.talitos_desc*, %struct.talitos_desc** %13, align 8
  %400 = load void (%struct.device*, %struct.talitos_desc*, i8*, i32)*, void (%struct.device*, %struct.talitos_desc*, i8*, i32)** %8, align 8
  %401 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %402 = call i32 @talitos_submit(%struct.device* %395, i32 %398, %struct.talitos_desc* %399, void (%struct.device*, %struct.talitos_desc*, i8*, i32)* %400, %struct.ahash_request* %401)
  store i32 %402, i32* %14, align 4
  %403 = load i32, i32* %14, align 4
  %404 = load i32, i32* @EINPROGRESS, align 4
  %405 = sub nsw i32 0, %404
  %406 = icmp ne i32 %403, %405
  br i1 %406, label %407, label %414

407:                                              ; preds = %394
  %408 = load %struct.device*, %struct.device** %12, align 8
  %409 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %410 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %411 = call i32 @common_nonsnoop_hash_unmap(%struct.device* %408, %struct.talitos_edesc* %409, %struct.ahash_request* %410)
  %412 = load %struct.talitos_edesc*, %struct.talitos_edesc** %5, align 8
  %413 = call i32 @kfree(%struct.talitos_edesc* %412)
  br label %414

414:                                              ; preds = %407, %394
  %415 = load i32, i32* %14, align 4
  ret i32 %415
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.talitos_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local %struct.talitos_ahash_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.talitos_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @has_ftr_sec1(%struct.talitos_private*) #1

declare dso_local i32 @map_single_talitos_ptr_nosync(%struct.device*, %struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @to_talitos_ptr(%struct.TYPE_9__*, i32, i64, i32) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, i64, i32) #1

declare dso_local i32 @dma_map_sg(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @map_single_talitos_ptr(%struct.device*, %struct.TYPE_9__*, i64, i32, i32) #1

declare dso_local i32 @talitos_sg_map(%struct.device*, i32, i32, %struct.talitos_edesc*, %struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i64 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local i64 @from_talitos_ptr_len(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @talitos_handle_buggy_hash(%struct.talitos_ctx*, %struct.talitos_edesc*, %struct.TYPE_9__*) #1

declare dso_local i32 @memset(%struct.talitos_desc*, i32, i32) #1

declare dso_local i32 @copy_talitos_ptr(%struct.TYPE_9__*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @dma_map_single(%struct.device*, i32*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @dma_sync_single_for_device(%struct.device*, i32, i64, i32) #1

declare dso_local i32 @talitos_submit(%struct.device*, i32, %struct.talitos_desc*, void (%struct.device*, %struct.talitos_desc*, i8*, i32)*, %struct.ahash_request*) #1

declare dso_local i32 @common_nonsnoop_hash_unmap(%struct.device*, %struct.talitos_edesc*, %struct.ahash_request*) #1

declare dso_local i32 @kfree(%struct.talitos_edesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
