; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_buffer_mgr.c_cc_aead_chain_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_buffer_mgr.c_cc_aead_chain_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_drvdata = type { i32 }
%struct.aead_request = type { i32, %struct.scatterlist*, %struct.scatterlist* }
%struct.scatterlist = type { i64 }
%struct.buffer_array = type { i32 }
%struct.aead_req_ctx = type { i32, i32, i32, i32, i64, %struct.TYPE_6__, %struct.scatterlist*, i64, %struct.TYPE_5__, %struct.scatterlist*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32 }
%struct.crypto_aead = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DRV_CRYPTO_DIRECTION_ENCRYPT = common dso_local global i32 0, align 4
@LLI_MAX_NUM_OF_DATA_ENTRIES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Too many fragments. current %d max %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@CC_DMA_BUF_MLLI = common dso_local global i32 0, align 4
@CC_DMA_BUF_DLLI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cc_drvdata*, %struct.aead_request*, %struct.buffer_array*, i32, i32)* @cc_aead_chain_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_aead_chain_data(%struct.cc_drvdata* %0, %struct.aead_request* %1, %struct.buffer_array* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cc_drvdata*, align 8
  %8 = alloca %struct.aead_request*, align 8
  %9 = alloca %struct.buffer_array*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.aead_req_ctx*, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.crypto_aead*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca %struct.scatterlist*, align 8
  store %struct.cc_drvdata* %0, %struct.cc_drvdata** %7, align 8
  store %struct.aead_request* %1, %struct.aead_request** %8, align 8
  store %struct.buffer_array* %2, %struct.buffer_array** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %28 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %29 = call %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request* %28)
  store %struct.aead_req_ctx* %29, %struct.aead_req_ctx** %12, align 8
  %30 = load %struct.cc_drvdata*, %struct.cc_drvdata** %7, align 8
  %31 = call %struct.device* @drvdata_to_dev(%struct.cc_drvdata* %30)
  store %struct.device* %31, %struct.device** %13, align 8
  %32 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %33 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %32, i32 0, i32 10
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %14, align 4
  %36 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %37 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  store i64 0, i64* %21, align 8
  %39 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %40 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %43 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add i32 %41, %44
  store i32 %45, i32* %22, align 4
  %46 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %47 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %46)
  store %struct.crypto_aead* %47, %struct.crypto_aead** %23, align 8
  store i64 0, i64* %24, align 8
  %48 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %49 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %25, align 4
  %51 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %52 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = zext i32 %53 to i64
  store i64 %54, i64* %26, align 8
  %55 = load i32, i32* %25, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %5
  %58 = load %struct.crypto_aead*, %struct.crypto_aead** %23, align 8
  %59 = call i64 @crypto_aead_ivsize(%struct.crypto_aead* %58)
  %60 = load i64, i64* %26, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, i64* %26, align 8
  br label %62

62:                                               ; preds = %57, %5
  %63 = load i64, i64* %26, align 8
  store i64 %63, i64* %21, align 8
  %64 = load %struct.buffer_array*, %struct.buffer_array** %9, align 8
  %65 = icmp ne %struct.buffer_array* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  br label %302

69:                                               ; preds = %62
  %70 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %71 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %70, i32 0, i32 2
  %72 = load %struct.scatterlist*, %struct.scatterlist** %71, align 8
  %73 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %74 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %73, i32 0, i32 9
  store %struct.scatterlist* %72, %struct.scatterlist** %74, align 8
  %75 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %76 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %75, i32 0, i32 1
  %77 = load %struct.scatterlist*, %struct.scatterlist** %76, align 8
  %78 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %79 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %78, i32 0, i32 6
  store %struct.scatterlist* %77, %struct.scatterlist** %79, align 8
  %80 = load i32, i32* %25, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %69
  %83 = load %struct.crypto_aead*, %struct.crypto_aead** %23, align 8
  %84 = call i64 @crypto_aead_ivsize(%struct.crypto_aead* %83)
  %85 = load i32, i32* %22, align 4
  %86 = zext i32 %85 to i64
  %87 = add nsw i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %22, align 4
  br label %89

89:                                               ; preds = %82, %69
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* @DRV_CRYPTO_DIRECTION_ENCRYPT, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i32, i32* %15, align 4
  br label %96

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %95, %93
  %97 = phi i32 [ %94, %93 ], [ 0, %95 ]
  %98 = load i32, i32* %22, align 4
  %99 = add i32 %98, %97
  store i32 %99, i32* %22, align 4
  %100 = load %struct.device*, %struct.device** %13, align 8
  %101 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %102 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %101, i32 0, i32 2
  %103 = load %struct.scatterlist*, %struct.scatterlist** %102, align 8
  %104 = load i32, i32* %22, align 4
  %105 = call i64 @cc_get_sgl_nents(%struct.device* %100, %struct.scatterlist* %103, i32 %104, i32* %16)
  store i64 %105, i64* %19, align 8
  %106 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %107 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %106, i32 0, i32 9
  %108 = load %struct.scatterlist*, %struct.scatterlist** %107, align 8
  %109 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %24, align 8
  br label %111

111:                                              ; preds = %132, %96
  %112 = load i64, i64* %24, align 8
  %113 = load i64, i64* %26, align 8
  %114 = icmp sle i64 %112, %113
  br i1 %114, label %115, label %143

115:                                              ; preds = %111
  %116 = load i64, i64* %19, align 8
  %117 = add nsw i64 %116, -1
  store i64 %117, i64* %19, align 8
  %118 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %119 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %118, i32 0, i32 9
  %120 = load %struct.scatterlist*, %struct.scatterlist** %119, align 8
  %121 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %21, align 8
  %124 = sub nsw i64 %123, %122
  store i64 %124, i64* %21, align 8
  %125 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %126 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %125, i32 0, i32 9
  %127 = load %struct.scatterlist*, %struct.scatterlist** %126, align 8
  %128 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %127)
  store %struct.scatterlist* %128, %struct.scatterlist** %27, align 8
  %129 = load %struct.scatterlist*, %struct.scatterlist** %27, align 8
  %130 = icmp ne %struct.scatterlist* %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %115
  br label %143

132:                                              ; preds = %115
  %133 = load %struct.scatterlist*, %struct.scatterlist** %27, align 8
  %134 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %135 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %134, i32 0, i32 9
  store %struct.scatterlist* %133, %struct.scatterlist** %135, align 8
  %136 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %137 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %136, i32 0, i32 9
  %138 = load %struct.scatterlist*, %struct.scatterlist** %137, align 8
  %139 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %24, align 8
  %142 = add nsw i64 %141, %140
  store i64 %142, i64* %24, align 8
  br label %111

143:                                              ; preds = %131, %111
  %144 = load i64, i64* %19, align 8
  %145 = load i64, i64* @LLI_MAX_NUM_OF_DATA_ENTRIES, align 8
  %146 = icmp sgt i64 %144, %145
  br i1 %146, label %147, label %154

147:                                              ; preds = %143
  %148 = load %struct.device*, %struct.device** %13, align 8
  %149 = load i64, i64* %19, align 8
  %150 = load i64, i64* @LLI_MAX_NUM_OF_DATA_ENTRIES, align 8
  %151 = call i32 @dev_err(%struct.device* %148, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %149, i64 %150)
  %152 = load i32, i32* @ENOMEM, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %6, align 4
  br label %302

154:                                              ; preds = %143
  %155 = load i64, i64* %19, align 8
  %156 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %157 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %156, i32 0, i32 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  store i64 %155, i64* %158, align 8
  %159 = load i64, i64* %21, align 8
  %160 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %161 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %160, i32 0, i32 7
  store i64 %159, i64* %161, align 8
  %162 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %163 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %162, i32 0, i32 2
  %164 = load %struct.scatterlist*, %struct.scatterlist** %163, align 8
  %165 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %166 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %165, i32 0, i32 1
  %167 = load %struct.scatterlist*, %struct.scatterlist** %166, align 8
  %168 = icmp ne %struct.scatterlist* %164, %167
  br i1 %168, label %169, label %212

169:                                              ; preds = %154
  %170 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %171 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %174 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = add i32 %172, %175
  store i32 %176, i32* %22, align 4
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* @DRV_CRYPTO_DIRECTION_ENCRYPT, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %169
  %181 = load i32, i32* %15, align 4
  br label %183

182:                                              ; preds = %169
  br label %183

183:                                              ; preds = %182, %180
  %184 = phi i32 [ %181, %180 ], [ 0, %182 ]
  %185 = load i32, i32* %22, align 4
  %186 = add i32 %185, %184
  store i32 %186, i32* %22, align 4
  %187 = load i32, i32* %25, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %183
  %190 = load %struct.crypto_aead*, %struct.crypto_aead** %23, align 8
  %191 = call i64 @crypto_aead_ivsize(%struct.crypto_aead* %190)
  %192 = load i32, i32* %22, align 4
  %193 = zext i32 %192 to i64
  %194 = add nsw i64 %193, %191
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %22, align 4
  br label %196

196:                                              ; preds = %189, %183
  %197 = load %struct.device*, %struct.device** %13, align 8
  %198 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %199 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %198, i32 0, i32 1
  %200 = load %struct.scatterlist*, %struct.scatterlist** %199, align 8
  %201 = load i32, i32* %22, align 4
  %202 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %203 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %204 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %203, i32 0, i32 5
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = load i64, i64* @LLI_MAX_NUM_OF_DATA_ENTRIES, align 8
  %207 = call i32 @cc_map_sg(%struct.device* %197, %struct.scatterlist* %200, i32 %201, i32 %202, i64* %205, i64 %206, i32* %17, i64* %20)
  store i32 %207, i32* %18, align 4
  %208 = load i32, i32* %18, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %196
  br label %300

211:                                              ; preds = %196
  br label %212

212:                                              ; preds = %211, %154
  %213 = load %struct.device*, %struct.device** %13, align 8
  %214 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %215 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %214, i32 0, i32 1
  %216 = load %struct.scatterlist*, %struct.scatterlist** %215, align 8
  %217 = load i32, i32* %22, align 4
  %218 = call i64 @cc_get_sgl_nents(%struct.device* %213, %struct.scatterlist* %216, i32 %217, i32* %17)
  store i64 %218, i64* %20, align 8
  %219 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %220 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %219, i32 0, i32 6
  %221 = load %struct.scatterlist*, %struct.scatterlist** %220, align 8
  %222 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  store i64 %223, i64* %24, align 8
  %224 = load i64, i64* %26, align 8
  store i64 %224, i64* %21, align 8
  br label %225

225:                                              ; preds = %246, %212
  %226 = load i64, i64* %24, align 8
  %227 = load i64, i64* %26, align 8
  %228 = icmp sle i64 %226, %227
  br i1 %228, label %229, label %257

229:                                              ; preds = %225
  %230 = load i64, i64* %20, align 8
  %231 = add nsw i64 %230, -1
  store i64 %231, i64* %20, align 8
  %232 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %233 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %232, i32 0, i32 6
  %234 = load %struct.scatterlist*, %struct.scatterlist** %233, align 8
  %235 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* %21, align 8
  %238 = sub nsw i64 %237, %236
  store i64 %238, i64* %21, align 8
  %239 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %240 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %239, i32 0, i32 6
  %241 = load %struct.scatterlist*, %struct.scatterlist** %240, align 8
  %242 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %241)
  store %struct.scatterlist* %242, %struct.scatterlist** %27, align 8
  %243 = load %struct.scatterlist*, %struct.scatterlist** %27, align 8
  %244 = icmp ne %struct.scatterlist* %243, null
  br i1 %244, label %246, label %245

245:                                              ; preds = %229
  br label %257

246:                                              ; preds = %229
  %247 = load %struct.scatterlist*, %struct.scatterlist** %27, align 8
  %248 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %249 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %248, i32 0, i32 6
  store %struct.scatterlist* %247, %struct.scatterlist** %249, align 8
  %250 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %251 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %250, i32 0, i32 6
  %252 = load %struct.scatterlist*, %struct.scatterlist** %251, align 8
  %253 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* %24, align 8
  %256 = add nsw i64 %255, %254
  store i64 %256, i64* %24, align 8
  br label %225

257:                                              ; preds = %245, %225
  %258 = load i64, i64* %20, align 8
  %259 = load i64, i64* @LLI_MAX_NUM_OF_DATA_ENTRIES, align 8
  %260 = icmp sgt i64 %258, %259
  br i1 %260, label %261, label %268

261:                                              ; preds = %257
  %262 = load %struct.device*, %struct.device** %13, align 8
  %263 = load i64, i64* %20, align 8
  %264 = load i64, i64* @LLI_MAX_NUM_OF_DATA_ENTRIES, align 8
  %265 = call i32 @dev_err(%struct.device* %262, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %263, i64 %264)
  %266 = load i32, i32* @ENOMEM, align 4
  %267 = sub nsw i32 0, %266
  store i32 %267, i32* %6, align 4
  br label %302

268:                                              ; preds = %257
  %269 = load i64, i64* %20, align 8
  %270 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %271 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %270, i32 0, i32 5
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 0
  store i64 %269, i64* %272, align 8
  %273 = load i64, i64* %21, align 8
  %274 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %275 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %274, i32 0, i32 4
  store i64 %273, i64* %275, align 8
  %276 = load i64, i64* %19, align 8
  %277 = icmp sgt i64 %276, 1
  br i1 %277, label %284, label %278

278:                                              ; preds = %268
  %279 = load i64, i64* %20, align 8
  %280 = icmp sgt i64 %279, 1
  br i1 %280, label %284, label %281

281:                                              ; preds = %278
  %282 = load i32, i32* %11, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %293

284:                                              ; preds = %281, %278, %268
  %285 = load i32, i32* @CC_DMA_BUF_MLLI, align 4
  %286 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %287 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %286, i32 0, i32 3
  store i32 %285, i32* %287, align 4
  %288 = load %struct.cc_drvdata*, %struct.cc_drvdata** %7, align 8
  %289 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %290 = load %struct.buffer_array*, %struct.buffer_array** %9, align 8
  %291 = load i32, i32* %10, align 4
  %292 = call i32 @cc_prepare_aead_data_mlli(%struct.cc_drvdata* %288, %struct.aead_request* %289, %struct.buffer_array* %290, i32* %16, i32* %17, i32 %291)
  br label %299

293:                                              ; preds = %281
  %294 = load i32, i32* @CC_DMA_BUF_DLLI, align 4
  %295 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %12, align 8
  %296 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %295, i32 0, i32 3
  store i32 %294, i32* %296, align 4
  %297 = load %struct.aead_request*, %struct.aead_request** %8, align 8
  %298 = call i32 @cc_prepare_aead_data_dlli(%struct.aead_request* %297, i32* %16, i32* %17)
  br label %299

299:                                              ; preds = %293, %284
  br label %300

300:                                              ; preds = %299, %210
  %301 = load i32, i32* %18, align 4
  store i32 %301, i32* %6, align 4
  br label %302

302:                                              ; preds = %300, %261, %147, %66
  %303 = load i32, i32* %6, align 4
  ret i32 %303
}

declare dso_local %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local %struct.device* @drvdata_to_dev(%struct.cc_drvdata*) #1

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local i64 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i64 @cc_get_sgl_nents(%struct.device*, %struct.scatterlist*, i32, i32*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, i64) #1

declare dso_local i32 @cc_map_sg(%struct.device*, %struct.scatterlist*, i32, i32, i64*, i64, i32*, i64*) #1

declare dso_local i32 @cc_prepare_aead_data_mlli(%struct.cc_drvdata*, %struct.aead_request*, %struct.buffer_array*, i32*, i32*, i32) #1

declare dso_local i32 @cc_prepare_aead_data_dlli(%struct.aead_request*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
