; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_ahash_dma_req_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_hash.c_mv_cesa_ahash_dma_req_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.ahash_request = type { i32, i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.mv_cesa_ahash_req = type { i64, i64, i64, i32, %struct.mv_cesa_req }
%struct.mv_cesa_req = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.mv_cesa_ahash_dma_iter = type { %struct.TYPE_18__, %struct.TYPE_19__ }
%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_19__ = type { i64 }
%struct.mv_cesa_op_ctx = type { i32 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@cesa_dev = common dso_local global %struct.TYPE_13__* null, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CESA_TDMA_TYPE_MSK = common dso_local global i32 0, align 4
@CESA_TDMA_RESULT = common dso_local global i32 0, align 4
@CESA_TDMA_END_OF_REQ = common dso_local global i32 0, align 4
@CESA_TDMA_BREAK_CHAIN = common dso_local global i32 0, align 4
@CESA_TDMA_SET_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @mv_cesa_ahash_dma_req_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_cesa_ahash_dma_req_init(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.mv_cesa_ahash_req*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mv_cesa_req*, align 8
  %7 = alloca %struct.mv_cesa_ahash_dma_iter, align 8
  %8 = alloca %struct.mv_cesa_op_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %13 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %14 = call %struct.mv_cesa_ahash_req* @ahash_request_ctx(%struct.ahash_request* %13)
  store %struct.mv_cesa_ahash_req* %14, %struct.mv_cesa_ahash_req** %4, align 8
  %15 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %16 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @GFP_KERNEL, align 4
  br label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %5, align 4
  %28 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %4, align 8
  %29 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %28, i32 0, i32 4
  store %struct.mv_cesa_req* %29, %struct.mv_cesa_req** %6, align 8
  store %struct.mv_cesa_op_ctx* null, %struct.mv_cesa_op_ctx** %8, align 8
  store i32 0, i32* %10, align 4
  %30 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %6, align 8
  %31 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %32, align 8
  %33 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %6, align 8
  %34 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 1
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %35, align 8
  %36 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %4, align 8
  %37 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %36, i32 0, i32 3
  %38 = call i32 @mv_cesa_mac_op_is_first_frag(i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %26
  store i32 1, i32* %10, align 4
  br label %41

41:                                               ; preds = %40, %26
  %42 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %4, align 8
  %43 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %41
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cesa_dev, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %51 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %4, align 8
  %54 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @DMA_TO_DEVICE, align 4
  %57 = call i32 @dma_map_sg(i32 %49, i32 %52, i64 %55, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %46
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %11, align 4
  br label %246

63:                                               ; preds = %46
  br label %64

64:                                               ; preds = %63, %41
  %65 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %6, align 8
  %66 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %65, i32 0, i32 0
  %67 = call i32 @mv_cesa_tdma_desc_iter_init(%struct.TYPE_17__* %66)
  %68 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %69 = call i32 @mv_cesa_ahash_req_iter_init(%struct.mv_cesa_ahash_dma_iter* %7, %struct.ahash_request* %68)
  %70 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %6, align 8
  %71 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %70, i32 0, i32 0
  %72 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @mv_cesa_ahash_dma_add_cache(%struct.TYPE_17__* %71, %struct.mv_cesa_ahash_req* %72, i32 %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %64
  br label %232

78:                                               ; preds = %64
  %79 = getelementptr inbounds %struct.mv_cesa_ahash_dma_iter, %struct.mv_cesa_ahash_dma_iter* %7, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %117

83:                                               ; preds = %78
  br label %84

84:                                               ; preds = %83, %115
  %85 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %6, align 8
  %86 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.mv_cesa_ahash_dma_iter, %struct.mv_cesa_ahash_dma_iter* %7, i32 0, i32 0
  %88 = getelementptr inbounds %struct.mv_cesa_ahash_dma_iter, %struct.mv_cesa_ahash_dma_iter* %7, i32 0, i32 1
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @mv_cesa_dma_add_op_transfers(%struct.TYPE_17__* %86, %struct.TYPE_18__* %87, %struct.TYPE_19__* %88, i32 %89)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  br label %232

94:                                               ; preds = %84
  %95 = getelementptr inbounds %struct.mv_cesa_ahash_dma_iter, %struct.mv_cesa_ahash_dma_iter* %7, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %9, align 4
  %98 = call i32 @mv_cesa_ahash_req_iter_next_op(%struct.mv_cesa_ahash_dma_iter* %7)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %94
  br label %116

101:                                              ; preds = %94
  %102 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %6, align 8
  %103 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %102, i32 0, i32 0
  %104 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %4, align 8
  %105 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %104, i32 0, i32 3
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %5, align 4
  %108 = call %struct.mv_cesa_op_ctx* @mv_cesa_dma_add_frag(%struct.TYPE_17__* %103, i32* %105, i32 %106, i32 %107)
  store %struct.mv_cesa_op_ctx* %108, %struct.mv_cesa_op_ctx** %8, align 8
  %109 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %8, align 8
  %110 = call i64 @IS_ERR(%struct.mv_cesa_op_ctx* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %101
  %113 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %8, align 8
  %114 = call i32 @PTR_ERR(%struct.mv_cesa_op_ctx* %113)
  store i32 %114, i32* %11, align 4
  br label %232

115:                                              ; preds = %101
  br label %84

116:                                              ; preds = %100
  br label %121

117:                                              ; preds = %78
  %118 = getelementptr inbounds %struct.mv_cesa_ahash_dma_iter, %struct.mv_cesa_ahash_dma_iter* %7, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %117, %116
  %122 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %4, align 8
  %123 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %121
  %127 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %6, align 8
  %128 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %127, i32 0, i32 0
  %129 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %4, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %5, align 4
  %132 = call %struct.mv_cesa_op_ctx* @mv_cesa_ahash_dma_last_req(%struct.TYPE_17__* %128, %struct.mv_cesa_ahash_dma_iter* %7, %struct.mv_cesa_ahash_req* %129, i32 %130, i32 %131)
  store %struct.mv_cesa_op_ctx* %132, %struct.mv_cesa_op_ctx** %8, align 8
  br label %145

133:                                              ; preds = %121
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %133
  %137 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %6, align 8
  %138 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %137, i32 0, i32 0
  %139 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %4, align 8
  %140 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %139, i32 0, i32 3
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* %5, align 4
  %143 = call %struct.mv_cesa_op_ctx* @mv_cesa_dma_add_frag(%struct.TYPE_17__* %138, i32* %140, i32 %141, i32 %142)
  store %struct.mv_cesa_op_ctx* %143, %struct.mv_cesa_op_ctx** %8, align 8
  br label %144

144:                                              ; preds = %136, %133
  br label %145

145:                                              ; preds = %144, %126
  %146 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %8, align 8
  %147 = call i64 @IS_ERR(%struct.mv_cesa_op_ctx* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %8, align 8
  %151 = call i32 @PTR_ERR(%struct.mv_cesa_op_ctx* %150)
  store i32 %151, i32* %11, align 4
  br label %232

152:                                              ; preds = %145
  %153 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %6, align 8
  %154 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @CESA_TDMA_TYPE_MSK, align 4
  %160 = and i32 %158, %159
  store i32 %160, i32* %12, align 4
  %161 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %8, align 8
  %162 = icmp ne %struct.mv_cesa_op_ctx* %161, null
  br i1 %162, label %163, label %176

163:                                              ; preds = %152
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* @CESA_TDMA_RESULT, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %176

167:                                              ; preds = %163
  %168 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %6, align 8
  %169 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %168, i32 0, i32 0
  %170 = load i32, i32* %5, align 4
  %171 = call i32 @mv_cesa_dma_add_dummy_end(%struct.TYPE_17__* %169, i32 %170)
  store i32 %171, i32* %11, align 4
  %172 = load i32, i32* %11, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %167
  br label %232

175:                                              ; preds = %167
  br label %176

176:                                              ; preds = %175, %163, %152
  %177 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %4, align 8
  %178 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %195, label %181

181:                                              ; preds = %176
  %182 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %183 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %4, align 8
  %186 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = add nsw i64 %184, %187
  %189 = getelementptr inbounds %struct.mv_cesa_ahash_dma_iter, %struct.mv_cesa_ahash_dma_iter* %7, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = sub nsw i64 %188, %191
  %193 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %4, align 8
  %194 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %193, i32 0, i32 1
  store i64 %192, i64* %194, align 8
  br label %198

195:                                              ; preds = %176
  %196 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %4, align 8
  %197 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %196, i32 0, i32 1
  store i64 0, i64* %197, align 8
  br label %198

198:                                              ; preds = %195, %181
  %199 = load i32, i32* @CESA_TDMA_END_OF_REQ, align 4
  %200 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %6, align 8
  %201 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, %199
  store i32 %206, i32* %204, align 4
  %207 = load i32, i32* %12, align 4
  %208 = load i32, i32* @CESA_TDMA_RESULT, align 4
  %209 = icmp ne i32 %207, %208
  br i1 %209, label %210, label %219

210:                                              ; preds = %198
  %211 = load i32, i32* @CESA_TDMA_BREAK_CHAIN, align 4
  %212 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %6, align 8
  %213 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = or i32 %217, %211
  store i32 %218, i32* %216, align 4
  br label %219

219:                                              ; preds = %210, %198
  %220 = load i32, i32* %10, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %231

222:                                              ; preds = %219
  %223 = load i32, i32* @CESA_TDMA_SET_STATE, align 4
  %224 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %6, align 8
  %225 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = or i32 %229, %223
  store i32 %230, i32* %228, align 4
  br label %231

231:                                              ; preds = %222, %219
  store i32 0, i32* %2, align 4
  br label %250

232:                                              ; preds = %174, %149, %112, %93, %77
  %233 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %6, align 8
  %234 = call i32 @mv_cesa_dma_cleanup(%struct.mv_cesa_req* %233)
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cesa_dev, align 8
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %239 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.mv_cesa_ahash_req*, %struct.mv_cesa_ahash_req** %4, align 8
  %242 = getelementptr inbounds %struct.mv_cesa_ahash_req, %struct.mv_cesa_ahash_req* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load i32, i32* @DMA_TO_DEVICE, align 4
  %245 = call i32 @dma_unmap_sg(i32 %237, i32 %240, i64 %243, i32 %244)
  br label %246

246:                                              ; preds = %232, %60
  %247 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %248 = call i32 @mv_cesa_ahash_last_cleanup(%struct.ahash_request* %247)
  %249 = load i32, i32* %11, align 4
  store i32 %249, i32* %2, align 4
  br label %250

250:                                              ; preds = %246, %231
  %251 = load i32, i32* %2, align 4
  ret i32 %251
}

declare dso_local %struct.mv_cesa_ahash_req* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @mv_cesa_mac_op_is_first_frag(i32*) #1

declare dso_local i32 @dma_map_sg(i32, i32, i64, i32) #1

declare dso_local i32 @mv_cesa_tdma_desc_iter_init(%struct.TYPE_17__*) #1

declare dso_local i32 @mv_cesa_ahash_req_iter_init(%struct.mv_cesa_ahash_dma_iter*, %struct.ahash_request*) #1

declare dso_local i32 @mv_cesa_ahash_dma_add_cache(%struct.TYPE_17__*, %struct.mv_cesa_ahash_req*, i32) #1

declare dso_local i32 @mv_cesa_dma_add_op_transfers(%struct.TYPE_17__*, %struct.TYPE_18__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @mv_cesa_ahash_req_iter_next_op(%struct.mv_cesa_ahash_dma_iter*) #1

declare dso_local %struct.mv_cesa_op_ctx* @mv_cesa_dma_add_frag(%struct.TYPE_17__*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.mv_cesa_op_ctx*) #1

declare dso_local i32 @PTR_ERR(%struct.mv_cesa_op_ctx*) #1

declare dso_local %struct.mv_cesa_op_ctx* @mv_cesa_ahash_dma_last_req(%struct.TYPE_17__*, %struct.mv_cesa_ahash_dma_iter*, %struct.mv_cesa_ahash_req*, i32, i32) #1

declare dso_local i32 @mv_cesa_dma_add_dummy_end(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @mv_cesa_dma_cleanup(%struct.mv_cesa_req*) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i64, i32) #1

declare dso_local i32 @mv_cesa_ahash_last_cleanup(%struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
