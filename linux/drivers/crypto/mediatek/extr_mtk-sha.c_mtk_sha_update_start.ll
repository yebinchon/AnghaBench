; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-sha.c_mtk_sha_update_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-sha.c_mtk_sha_update_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_cryp = type { i32 }
%struct.mtk_sha_rec = type { i32, i32 }
%struct.mtk_sha_reqctx = type { i64, i32, i32, i32, %struct.scatterlist*, i32, i32, i64 }
%struct.scatterlist = type { i32, i32 }

@SHA_FLAGS_FINUP = common dso_local global i32 0, align 4
@SHA_BUF_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"dma map bytes error\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SHA_FLAGS_FINAL = common dso_local global i32 0, align 4
@SHA_FLAGS_SG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"dma_map_sg error\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"dma_map_sg  error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_cryp*, %struct.mtk_sha_rec*)* @mtk_sha_update_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_sha_update_start(%struct.mtk_cryp* %0, %struct.mtk_sha_rec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_cryp*, align 8
  %5 = alloca %struct.mtk_sha_rec*, align 8
  %6 = alloca %struct.mtk_sha_reqctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i64, align 8
  store %struct.mtk_cryp* %0, %struct.mtk_cryp** %4, align 8
  store %struct.mtk_sha_rec* %1, %struct.mtk_sha_rec** %5, align 8
  %12 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %5, align 8
  %13 = getelementptr inbounds %struct.mtk_sha_rec, %struct.mtk_sha_rec* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.mtk_sha_reqctx* @ahash_request_ctx(i32 %14)
  store %struct.mtk_sha_reqctx* %15, %struct.mtk_sha_reqctx** %6, align 8
  %16 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %17 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %16, i32 0, i32 7
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %272

21:                                               ; preds = %2
  %22 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %23 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %28 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26, %21
  %32 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %33 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %5, align 8
  %34 = call i32 @mtk_sha_update_slow(%struct.mtk_cryp* %32, %struct.mtk_sha_rec* %33)
  store i32 %34, i32* %3, align 4
  br label %272

35:                                               ; preds = %26
  %36 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %37 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %36, i32 0, i32 4
  %38 = load %struct.scatterlist*, %struct.scatterlist** %37, align 8
  store %struct.scatterlist* %38, %struct.scatterlist** %10, align 8
  %39 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %40 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @IS_ALIGNED(i32 %41, i32 4)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %35
  %45 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %46 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %5, align 8
  %47 = call i32 @mtk_sha_update_slow(%struct.mtk_cryp* %45, %struct.mtk_sha_rec* %46)
  store i32 %47, i32* %3, align 4
  br label %272

48:                                               ; preds = %35
  %49 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %50 = call i64 @sg_is_last(%struct.scatterlist* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %65, label %52

52:                                               ; preds = %48
  %53 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %54 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %57 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @IS_ALIGNED(i32 %55, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %52
  %62 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %63 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %5, align 8
  %64 = call i32 @mtk_sha_update_slow(%struct.mtk_cryp* %62, %struct.mtk_sha_rec* %63)
  store i32 %64, i32* %3, align 4
  br label %272

65:                                               ; preds = %52, %48
  %66 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %67 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %66, i32 0, i32 7
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %70 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @min(i64 %68, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %74 = call i64 @sg_is_last(%struct.scatterlist* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %65
  %77 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %78 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @SHA_FLAGS_FINUP, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %76
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %86 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %87, 1
  %89 = and i32 %84, %88
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %7, align 4
  %92 = sub nsw i32 %91, %90
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %83, %76
  br label %94

94:                                               ; preds = %93, %65
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %98 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %97, i32 0, i32 7
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %99, %96
  store i64 %100, i64* %98, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %103 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  %104 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %105 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @SHA_FLAGS_FINUP, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %94
  %111 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %112 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %111, i32 0, i32 7
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  %115 = xor i1 %114, true
  br label %116

116:                                              ; preds = %110, %94
  %117 = phi i1 [ false, %94 ], [ %115, %110 ]
  %118 = zext i1 %117 to i32
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %241

121:                                              ; preds = %116
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %124 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 %125, 1
  %127 = and i32 %122, %126
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %7, align 4
  %130 = sub nsw i32 %129, %128
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %134 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %133, i32 0, i32 7
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, %132
  store i64 %136, i64* %134, align 8
  %137 = load i32, i32* %7, align 4
  %138 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %139 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 8
  %140 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %141 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %140, i32 0, i32 4
  %142 = load %struct.scatterlist*, %struct.scatterlist** %141, align 8
  store %struct.scatterlist* %142, %struct.scatterlist** %10, align 8
  %143 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %144 = call i32 @mtk_sha_append_sg(%struct.mtk_sha_reqctx* %143)
  %145 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @mtk_sha_fill_padding(%struct.mtk_sha_reqctx* %145, i32 %146)
  %148 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %149 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %152 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @SHA_BUF_SIZE, align 4
  %155 = load i32, i32* @DMA_TO_DEVICE, align 4
  %156 = call i32 @dma_map_single(i32 %150, i32 %153, i32 %154, i32 %155)
  %157 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %158 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %157, i32 0, i32 5
  store i32 %156, i32* %158, align 8
  %159 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %160 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %163 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @dma_mapping_error(i32 %161, i32 %164)
  %166 = call i64 @unlikely(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %121
  %169 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %170 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @dev_err(i32 %171, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %173 = load i32, i32* @EINVAL, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %3, align 4
  br label %272

175:                                              ; preds = %121
  %176 = load i32, i32* @SHA_FLAGS_FINAL, align 4
  %177 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %5, align 8
  %178 = getelementptr inbounds %struct.mtk_sha_rec, %struct.mtk_sha_rec* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 4
  %181 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %182 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  store i64 %183, i64* %11, align 8
  %184 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %185 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %184, i32 0, i32 0
  store i64 0, i64* %185, align 8
  %186 = load i32, i32* %7, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %203

188:                                              ; preds = %175
  %189 = load i32, i32* @SHA_FLAGS_SG, align 4
  %190 = xor i32 %189, -1
  %191 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %192 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = and i32 %193, %190
  store i32 %194, i32* %192, align 8
  %195 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %196 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %5, align 8
  %197 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %198 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 8
  %200 = load i64, i64* %11, align 8
  %201 = trunc i64 %200 to i32
  %202 = call i32 @mtk_sha_xmit(%struct.mtk_cryp* %195, %struct.mtk_sha_rec* %196, i32 %199, i32 %201, i32 0, i64 0)
  store i32 %202, i32* %3, align 4
  br label %272

203:                                              ; preds = %175
  %204 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %205 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %206 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %205, i32 0, i32 4
  store %struct.scatterlist* %204, %struct.scatterlist** %206, align 8
  %207 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %208 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %211 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %210, i32 0, i32 4
  %212 = load %struct.scatterlist*, %struct.scatterlist** %211, align 8
  %213 = load i32, i32* @DMA_TO_DEVICE, align 4
  %214 = call i32 @dma_map_sg(i32 %209, %struct.scatterlist* %212, i32 1, i32 %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %223, label %216

216:                                              ; preds = %203
  %217 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %218 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @dev_err(i32 %219, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %221 = load i32, i32* @EINVAL, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %3, align 4
  br label %272

223:                                              ; preds = %203
  %224 = load i32, i32* @SHA_FLAGS_SG, align 4
  %225 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %226 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 8
  %228 = or i32 %227, %224
  store i32 %228, i32* %226, align 8
  %229 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %230 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %5, align 8
  %231 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %232 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %231, i32 0, i32 4
  %233 = load %struct.scatterlist*, %struct.scatterlist** %232, align 8
  %234 = call i32 @sg_dma_address(%struct.scatterlist* %233)
  %235 = load i32, i32* %7, align 4
  %236 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %237 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %236, i32 0, i32 5
  %238 = load i32, i32* %237, align 8
  %239 = load i64, i64* %11, align 8
  %240 = call i32 @mtk_sha_xmit(%struct.mtk_cryp* %229, %struct.mtk_sha_rec* %230, i32 %234, i32 %235, i32 %238, i64 %239)
  store i32 %240, i32* %3, align 4
  br label %272

241:                                              ; preds = %116
  %242 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %243 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %246 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %245, i32 0, i32 4
  %247 = load %struct.scatterlist*, %struct.scatterlist** %246, align 8
  %248 = load i32, i32* @DMA_TO_DEVICE, align 4
  %249 = call i32 @dma_map_sg(i32 %244, %struct.scatterlist* %247, i32 1, i32 %248)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %258, label %251

251:                                              ; preds = %241
  %252 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %253 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @dev_err(i32 %254, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %256 = load i32, i32* @EINVAL, align 4
  %257 = sub nsw i32 0, %256
  store i32 %257, i32* %3, align 4
  br label %272

258:                                              ; preds = %241
  %259 = load i32, i32* @SHA_FLAGS_SG, align 4
  %260 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %261 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 8
  %263 = or i32 %262, %259
  store i32 %263, i32* %261, align 8
  %264 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %265 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %5, align 8
  %266 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %267 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %266, i32 0, i32 4
  %268 = load %struct.scatterlist*, %struct.scatterlist** %267, align 8
  %269 = call i32 @sg_dma_address(%struct.scatterlist* %268)
  %270 = load i32, i32* %7, align 4
  %271 = call i32 @mtk_sha_xmit(%struct.mtk_cryp* %264, %struct.mtk_sha_rec* %265, i32 %269, i32 %270, i32 0, i64 0)
  store i32 %271, i32* %3, align 4
  br label %272

272:                                              ; preds = %258, %251, %223, %216, %188, %168, %61, %44, %31, %20
  %273 = load i32, i32* %3, align 4
  ret i32 %273
}

declare dso_local %struct.mtk_sha_reqctx* @ahash_request_ctx(i32) #1

declare dso_local i32 @mtk_sha_update_slow(%struct.mtk_cryp*, %struct.mtk_sha_rec*) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i64 @sg_is_last(%struct.scatterlist*) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @mtk_sha_append_sg(%struct.mtk_sha_reqctx*) #1

declare dso_local i32 @mtk_sha_fill_padding(%struct.mtk_sha_reqctx*, i32) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mtk_sha_xmit(%struct.mtk_cryp*, %struct.mtk_sha_rec*, i32, i32, i32, i64) #1

declare dso_local i32 @dma_map_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
