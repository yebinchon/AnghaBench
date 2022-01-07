; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_update_dma_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_update_dma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_sha_dev = type { i32, i32 }
%struct.atmel_sha_reqctx = type { i32, i32, i32, i32, %struct.scatterlist*, i32, i64, i32, i64, i32* }
%struct.scatterlist = type { i32, i32 }

@.str = private unnamed_addr constant [53 x i8] c"fast: digcnt: 0x%llx 0x%llx, bufcnt: %zd, total: %u\0A\00", align 1
@SHA_FLAGS_FINUP = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"dma %zu bytes error\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SHA_FLAGS_SG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"dma_map_sg  error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_sha_dev*)* @atmel_sha_update_dma_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_sha_update_dma_start(%struct.atmel_sha_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmel_sha_dev*, align 8
  %4 = alloca %struct.atmel_sha_reqctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  store %struct.atmel_sha_dev* %0, %struct.atmel_sha_dev** %3, align 8
  %10 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %11 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.atmel_sha_reqctx* @ahash_request_ctx(i32 %12)
  store %struct.atmel_sha_reqctx* %13, %struct.atmel_sha_reqctx** %4, align 8
  %14 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %15 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %14, i32 0, i32 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %306

19:                                               ; preds = %1
  %20 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %21 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %26 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24, %19
  %30 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %31 = call i32 @atmel_sha_update_dma_slow(%struct.atmel_sha_dev* %30)
  store i32 %31, i32* %2, align 4
  br label %306

32:                                               ; preds = %24
  %33 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %34 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %37 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %36, i32 0, i32 9
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %42 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %41, i32 0, i32 9
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %47 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %50 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %49, i32 0, i32 8
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @dev_dbg(i32 %35, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %45, i32 %48, i64 %51)
  %53 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %54 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %53, i32 0, i32 4
  %55 = load %struct.scatterlist*, %struct.scatterlist** %54, align 8
  store %struct.scatterlist* %55, %struct.scatterlist** %8, align 8
  %56 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %57 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @IS_ALIGNED(i32 %58, i32 4)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %32
  %62 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %63 = call i32 @atmel_sha_update_dma_slow(%struct.atmel_sha_dev* %62)
  store i32 %63, i32* %2, align 4
  br label %306

64:                                               ; preds = %32
  %65 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %66 = call i64 @sg_is_last(%struct.scatterlist* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %64
  %69 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %70 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %73 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @IS_ALIGNED(i32 %71, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %68
  %78 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %79 = call i32 @atmel_sha_update_dma_slow(%struct.atmel_sha_dev* %78)
  store i32 %79, i32* %2, align 4
  br label %306

80:                                               ; preds = %68, %64
  %81 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %82 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %81, i32 0, i32 8
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %85 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @min(i64 %83, i32 %86)
  store i32 %87, i32* %5, align 4
  %88 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %89 = call i64 @sg_is_last(%struct.scatterlist* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %109

91:                                               ; preds = %80
  %92 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %93 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @SHA_FLAGS_FINUP, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %91
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %101 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 %102, 1
  %104 = and i32 %99, %103
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %5, align 4
  %107 = sub i32 %106, %105
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %98, %91
  br label %109

109:                                              ; preds = %108, %80
  %110 = load i32, i32* %5, align 4
  %111 = zext i32 %110 to i64
  %112 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %113 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %112, i32 0, i32 8
  %114 = load i64, i64* %113, align 8
  %115 = sub nsw i64 %114, %111
  store i64 %115, i64* %113, align 8
  %116 = load i32, i32* %5, align 4
  %117 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %118 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %120 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @SHA_FLAGS_FINUP, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %109
  %126 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %127 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %126, i32 0, i32 8
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  %130 = xor i1 %129, true
  br label %131

131:                                              ; preds = %125, %109
  %132 = phi i1 [ false, %109 ], [ %130, %125 ]
  %133 = zext i1 %132 to i32
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %273

136:                                              ; preds = %131
  %137 = load i32, i32* %5, align 4
  %138 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %139 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = sub nsw i32 %140, 1
  %142 = and i32 %137, %141
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* %5, align 4
  %145 = sub i32 %144, %143
  store i32 %145, i32* %5, align 4
  %146 = load i32, i32* %7, align 4
  %147 = zext i32 %146 to i64
  %148 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %149 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %148, i32 0, i32 8
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, %147
  store i64 %151, i64* %149, align 8
  %152 = load i32, i32* %5, align 4
  %153 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %154 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  %155 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %156 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %155, i32 0, i32 4
  %157 = load %struct.scatterlist*, %struct.scatterlist** %156, align 8
  store %struct.scatterlist* %157, %struct.scatterlist** %8, align 8
  %158 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %159 = call i32 @atmel_sha_append_sg(%struct.atmel_sha_reqctx* %158)
  %160 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %161 = load i32, i32* %5, align 4
  %162 = call i32 @atmel_sha_fill_padding(%struct.atmel_sha_reqctx* %160, i32 %161)
  %163 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %164 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %167 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %170 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %169, i32 0, i32 6
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %173 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = sext i32 %174 to i64
  %176 = add nsw i64 %171, %175
  %177 = load i32, i32* @DMA_TO_DEVICE, align 4
  %178 = call i32 @dma_map_single(i32 %165, i32 %168, i64 %176, i32 %177)
  %179 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %180 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %179, i32 0, i32 5
  store i32 %178, i32* %180, align 8
  %181 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %182 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %185 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 8
  %187 = call i64 @dma_mapping_error(i32 %183, i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %206

189:                                              ; preds = %136
  %190 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %191 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %194 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %193, i32 0, i32 6
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %197 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = sext i32 %198 to i64
  %200 = add nsw i64 %195, %199
  %201 = call i32 (i32, i8*, ...) @dev_err(i32 %192, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %200)
  %202 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %203 = load i32, i32* @EINVAL, align 4
  %204 = sub nsw i32 0, %203
  %205 = call i32 @atmel_sha_complete(%struct.atmel_sha_dev* %202, i32 %204)
  store i32 %205, i32* %2, align 4
  br label %306

206:                                              ; preds = %136
  %207 = load i32, i32* %5, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %228

209:                                              ; preds = %206
  %210 = load i32, i32* @SHA_FLAGS_SG, align 4
  %211 = xor i32 %210, -1
  %212 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %213 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = and i32 %214, %211
  store i32 %215, i32* %213, align 4
  %216 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %217 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  store i32 %218, i32* %9, align 4
  %219 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %220 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %219, i32 0, i32 0
  store i32 0, i32* %220, align 8
  %221 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %222 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %223 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* %9, align 4
  %226 = load i32, i32* %6, align 4
  %227 = call i32 @atmel_sha_xmit_start(%struct.atmel_sha_dev* %221, i32 %224, i32 %225, i32 0, i32 0, i32 %226)
  store i32 %227, i32* %2, align 4
  br label %306

228:                                              ; preds = %206
  %229 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %230 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %231 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %230, i32 0, i32 4
  store %struct.scatterlist* %229, %struct.scatterlist** %231, align 8
  %232 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %233 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %236 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %235, i32 0, i32 4
  %237 = load %struct.scatterlist*, %struct.scatterlist** %236, align 8
  %238 = load i32, i32* @DMA_TO_DEVICE, align 4
  %239 = call i32 @dma_map_sg(i32 %234, %struct.scatterlist* %237, i32 1, i32 %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %250, label %241

241:                                              ; preds = %228
  %242 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %243 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call i32 (i32, i8*, ...) @dev_err(i32 %244, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %246 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %247 = load i32, i32* @EINVAL, align 4
  %248 = sub nsw i32 0, %247
  %249 = call i32 @atmel_sha_complete(%struct.atmel_sha_dev* %246, i32 %248)
  store i32 %249, i32* %2, align 4
  br label %306

250:                                              ; preds = %228
  %251 = load i32, i32* @SHA_FLAGS_SG, align 4
  %252 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %253 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = or i32 %254, %251
  store i32 %255, i32* %253, align 4
  %256 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %257 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  store i32 %258, i32* %9, align 4
  %259 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %260 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %259, i32 0, i32 0
  store i32 0, i32* %260, align 8
  %261 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %262 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %263 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %262, i32 0, i32 4
  %264 = load %struct.scatterlist*, %struct.scatterlist** %263, align 8
  %265 = call i32 @sg_dma_address(%struct.scatterlist* %264)
  %266 = load i32, i32* %5, align 4
  %267 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %268 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %267, i32 0, i32 5
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* %9, align 4
  %271 = load i32, i32* %6, align 4
  %272 = call i32 @atmel_sha_xmit_start(%struct.atmel_sha_dev* %261, i32 %265, i32 %266, i32 %269, i32 %270, i32 %271)
  store i32 %272, i32* %2, align 4
  br label %306

273:                                              ; preds = %131
  %274 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %275 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %278 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %277, i32 0, i32 4
  %279 = load %struct.scatterlist*, %struct.scatterlist** %278, align 8
  %280 = load i32, i32* @DMA_TO_DEVICE, align 4
  %281 = call i32 @dma_map_sg(i32 %276, %struct.scatterlist* %279, i32 1, i32 %280)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %292, label %283

283:                                              ; preds = %273
  %284 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %285 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = call i32 (i32, i8*, ...) @dev_err(i32 %286, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %288 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %289 = load i32, i32* @EINVAL, align 4
  %290 = sub nsw i32 0, %289
  %291 = call i32 @atmel_sha_complete(%struct.atmel_sha_dev* %288, i32 %290)
  store i32 %291, i32* %2, align 4
  br label %306

292:                                              ; preds = %273
  %293 = load i32, i32* @SHA_FLAGS_SG, align 4
  %294 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %295 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 4
  %297 = or i32 %296, %293
  store i32 %297, i32* %295, align 4
  %298 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %299 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %300 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %299, i32 0, i32 4
  %301 = load %struct.scatterlist*, %struct.scatterlist** %300, align 8
  %302 = call i32 @sg_dma_address(%struct.scatterlist* %301)
  %303 = load i32, i32* %5, align 4
  %304 = load i32, i32* %6, align 4
  %305 = call i32 @atmel_sha_xmit_start(%struct.atmel_sha_dev* %298, i32 %302, i32 %303, i32 0, i32 0, i32 %304)
  store i32 %305, i32* %2, align 4
  br label %306

306:                                              ; preds = %292, %283, %250, %241, %209, %189, %77, %61, %29, %18
  %307 = load i32, i32* %2, align 4
  ret i32 %307
}

declare dso_local %struct.atmel_sha_reqctx* @ahash_request_ctx(i32) #1

declare dso_local i32 @atmel_sha_update_dma_slow(%struct.atmel_sha_dev*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i64) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i64 @sg_is_last(%struct.scatterlist*) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @atmel_sha_append_sg(%struct.atmel_sha_reqctx*) #1

declare dso_local i32 @atmel_sha_fill_padding(%struct.atmel_sha_reqctx*, i32) #1

declare dso_local i32 @dma_map_single(i32, i32, i64, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @atmel_sha_complete(%struct.atmel_sha_dev*, i32) #1

declare dso_local i32 @atmel_sha_xmit_start(%struct.atmel_sha_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dma_map_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
