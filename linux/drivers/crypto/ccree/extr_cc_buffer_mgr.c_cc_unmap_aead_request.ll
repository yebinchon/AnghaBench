; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_buffer_mgr.c_cc_unmap_aead_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_buffer_mgr.c_cc_unmap_aead_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.aead_request = type { i64, i64, i32 }
%struct.aead_req_ctx = type { i32, i64, i64, i64, i64, %struct.TYPE_8__, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i64, i32, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64, i32 }
%struct.cc_drvdata = type { i64 }

@MAX_MAC_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DRV_CIPHER_GCTR = common dso_local global i64 0, align 8
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ccm_header_size_null = common dso_local global i64 0, align 8
@CC_DMA_BUF_MLLI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"free MLLI buffer: dma=%pad virt=%pK\0A\00", align 1
@.str.1 = private unnamed_addr constant [105 x i8] c"Unmapping src sgl: req->src=%pK areq_ctx->src.nents=%u areq_ctx->assoc.nents=%u assoclen:%u cryptlen=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Unmapping dst sgl: req->dst=%pK\0A\00", align 1
@DRV_CRYPTO_DIRECTION_DECRYPT = common dso_local global i64 0, align 8
@CC_SG_FROM_BUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cc_unmap_aead_request(%struct.device* %0, %struct.aead_request* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca %struct.aead_req_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cc_drvdata*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.aead_request* %1, %struct.aead_request** %4, align 8
  %8 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %9 = call %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request* %8)
  store %struct.aead_req_ctx* %9, %struct.aead_req_ctx** %5, align 8
  %10 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %11 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call %struct.cc_drvdata* @dev_get_drvdata(%struct.device* %13)
  store %struct.cc_drvdata* %14, %struct.cc_drvdata** %7, align 8
  %15 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %15, i32 0, i32 16
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %22 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %21, i32 0, i32 16
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @MAX_MAC_SIZE, align 4
  %25 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %26 = call i32 @dma_unmap_single(%struct.device* %20, i64 %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %19, %2
  %28 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %29 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DRV_CIPHER_GCTR, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %86

33:                                               ; preds = %27
  %34 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %35 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %34, i32 0, i32 15
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.device*, %struct.device** %3, align 8
  %40 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %41 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %40, i32 0, i32 15
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %44 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %45 = call i32 @dma_unmap_single(%struct.device* %39, i64 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %38, %33
  %47 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %48 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %47, i32 0, i32 14
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load %struct.device*, %struct.device** %3, align 8
  %53 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %54 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %53, i32 0, i32 14
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %57 = load i32, i32* @DMA_TO_DEVICE, align 4
  %58 = call i32 @dma_unmap_single(%struct.device* %52, i64 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %51, %46
  %60 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %61 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %60, i32 0, i32 13
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load %struct.device*, %struct.device** %3, align 8
  %66 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %67 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %66, i32 0, i32 13
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %70 = load i32, i32* @DMA_TO_DEVICE, align 4
  %71 = call i32 @dma_unmap_single(%struct.device* %65, i64 %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %64, %59
  %73 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %74 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %73, i32 0, i32 12
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = load %struct.device*, %struct.device** %3, align 8
  %79 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %80 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %79, i32 0, i32 12
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %83 = load i32, i32* @DMA_TO_DEVICE, align 4
  %84 = call i32 @dma_unmap_single(%struct.device* %78, i64 %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %77, %72
  br label %86

86:                                               ; preds = %85, %27
  %87 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %88 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ccm_header_size_null, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %111

92:                                               ; preds = %86
  %93 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %94 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %93, i32 0, i32 11
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = load %struct.device*, %struct.device** %3, align 8
  %99 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %100 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %99, i32 0, i32 11
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %103 = load i32, i32* @DMA_TO_DEVICE, align 4
  %104 = call i32 @dma_unmap_single(%struct.device* %98, i64 %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %97, %92
  %106 = load %struct.device*, %struct.device** %3, align 8
  %107 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %108 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %107, i32 0, i32 10
  %109 = load i32, i32* @DMA_TO_DEVICE, align 4
  %110 = call i32 @dma_unmap_sg(%struct.device* %106, i32* %108, i32 1, i32 %109)
  br label %111

111:                                              ; preds = %105, %86
  %112 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %113 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %131

117:                                              ; preds = %111
  %118 = load %struct.device*, %struct.device** %3, align 8
  %119 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %120 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %125 = call i32 @dma_unmap_single(%struct.device* %118, i64 %122, i32 %123, i32 %124)
  %126 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %127 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %126, i32 0, i32 5
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @kzfree(i32 %129)
  br label %131

131:                                              ; preds = %117, %111
  %132 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %133 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @CC_DMA_BUF_MLLI, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %143, label %137

137:                                              ; preds = %131
  %138 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %139 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @CC_DMA_BUF_MLLI, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %173

143:                                              ; preds = %137, %131
  %144 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %145 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %144, i32 0, i32 9
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %173

149:                                              ; preds = %143
  %150 = load %struct.device*, %struct.device** %3, align 8
  %151 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %152 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %151, i32 0, i32 9
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = ptrtoint i32* %153 to i32
  %155 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %156 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %155, i32 0, i32 9
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %150, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %154, i64 %158)
  %160 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %161 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %160, i32 0, i32 9
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %165 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %164, i32 0, i32 9
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %169 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %168, i32 0, i32 9
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @dma_pool_free(i32 %163, i64 %167, i32 %171)
  br label %173

173:                                              ; preds = %149, %143, %137
  %174 = load %struct.device*, %struct.device** %3, align 8
  %175 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %176 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @sg_virt(i64 %177)
  %179 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %180 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %179, i32 0, i32 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %184 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %183, i32 0, i32 7
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %188 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %187, i32 0, i32 6
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %191 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %174, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.1, i64 0, i64 0), i32 %178, i32 %182, i32 %186, i32 %189, i32 %192)
  %194 = load %struct.device*, %struct.device** %3, align 8
  %195 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %196 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = inttoptr i64 %197 to i32*
  %199 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %200 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = inttoptr i64 %201 to i32*
  %203 = call i32 @sg_nents(i32* %202)
  %204 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %205 = call i32 @dma_unmap_sg(%struct.device* %194, i32* %198, i32 %203, i32 %204)
  %206 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %207 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %210 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %208, %211
  br i1 %212, label %213, label %232

213:                                              ; preds = %173
  %214 = load %struct.device*, %struct.device** %3, align 8
  %215 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %216 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = call i32 @sg_virt(i64 %217)
  %219 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %214, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %218)
  %220 = load %struct.device*, %struct.device** %3, align 8
  %221 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %222 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = inttoptr i64 %223 to i32*
  %225 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %226 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = inttoptr i64 %227 to i32*
  %229 = call i32 @sg_nents(i32* %228)
  %230 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %231 = call i32 @dma_unmap_sg(%struct.device* %220, i32* %224, i32 %229, i32 %230)
  br label %232

232:                                              ; preds = %213, %173
  %233 = load %struct.cc_drvdata*, %struct.cc_drvdata** %7, align 8
  %234 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %257

237:                                              ; preds = %232
  %238 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %5, align 8
  %239 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %238, i32 0, i32 5
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @DRV_CRYPTO_DIRECTION_DECRYPT, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %257

244:                                              ; preds = %237
  %245 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %246 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %249 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = icmp eq i64 %247, %250
  br i1 %251, label %252, label %257

252:                                              ; preds = %244
  %253 = load %struct.device*, %struct.device** %3, align 8
  %254 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %255 = load i32, i32* @CC_SG_FROM_BUF, align 4
  %256 = call i32 @cc_copy_mac(%struct.device* %253, %struct.aead_request* %254, i32 %255)
  br label %257

257:                                              ; preds = %252, %244, %237, %232
  ret void
}

declare dso_local %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local %struct.cc_drvdata* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @dma_unmap_sg(%struct.device*, i32*, i32, i32) #1

declare dso_local i32 @kzfree(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @dma_pool_free(i32, i64, i32) #1

declare dso_local i32 @sg_virt(i64) #1

declare dso_local i32 @sg_nents(i32*) #1

declare dso_local i32 @cc_copy_mac(%struct.device*, %struct.aead_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
