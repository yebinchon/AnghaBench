; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-sha.c_mtk_sha_info_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-sha.c_mtk_sha_info_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_cryp = type { i32 }
%struct.mtk_sha_rec = type { i32 }
%struct.mtk_sha_reqctx = type { i32, i32, i64, i32, %struct.mtk_sha_info }
%struct.mtk_sha_info = type { i32*, i32* }

@SHA_DATA_LEN_MSK = common dso_local global i32 0, align 4
@SHA_TFM_START = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"dma %zu bytes error\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_cryp*, %struct.mtk_sha_rec*, i64, i64)* @mtk_sha_info_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_sha_info_update(%struct.mtk_cryp* %0, %struct.mtk_sha_rec* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtk_cryp*, align 8
  %7 = alloca %struct.mtk_sha_rec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mtk_sha_reqctx*, align 8
  %11 = alloca %struct.mtk_sha_info*, align 8
  store %struct.mtk_cryp* %0, %struct.mtk_cryp** %6, align 8
  store %struct.mtk_sha_rec* %1, %struct.mtk_sha_rec** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %7, align 8
  %13 = getelementptr inbounds %struct.mtk_sha_rec, %struct.mtk_sha_rec* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.mtk_sha_reqctx* @ahash_request_ctx(i32 %14)
  store %struct.mtk_sha_reqctx* %15, %struct.mtk_sha_reqctx** %10, align 8
  %16 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %10, align 8
  %17 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %16, i32 0, i32 4
  store %struct.mtk_sha_info* %17, %struct.mtk_sha_info** %11, align 8
  %18 = load i32, i32* @SHA_DATA_LEN_MSK, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %10, align 8
  %21 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = add i64 %24, %25
  %27 = call i32 @cpu_to_le32(i64 %26)
  %28 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %10, align 8
  %29 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load i32, i32* @SHA_DATA_LEN_MSK, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.mtk_sha_info*, %struct.mtk_sha_info** %11, align 8
  %35 = getelementptr inbounds %struct.mtk_sha_info, %struct.mtk_sha_info* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %33
  store i32 %39, i32* %37, align 4
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = add i64 %40, %41
  %43 = call i32 @cpu_to_le32(i64 %42)
  %44 = load %struct.mtk_sha_info*, %struct.mtk_sha_info** %11, align 8
  %45 = getelementptr inbounds %struct.mtk_sha_info, %struct.mtk_sha_info* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %43
  store i32 %49, i32* %47, align 4
  %50 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %10, align 8
  %51 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %4
  %55 = load i32, i32* @SHA_TFM_START, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.mtk_sha_info*, %struct.mtk_sha_info** %11, align 8
  %58 = getelementptr inbounds %struct.mtk_sha_info, %struct.mtk_sha_info* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %56
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %54, %4
  %64 = load i64, i64* %8, align 8
  %65 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %10, align 8
  %66 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %67, %64
  store i64 %68, i64* %66, align 8
  %69 = load %struct.mtk_cryp*, %struct.mtk_cryp** %6, align 8
  %70 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.mtk_sha_info*, %struct.mtk_sha_info** %11, align 8
  %73 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %74 = call i32 @dma_map_single(i32 %71, %struct.mtk_sha_info* %72, i32 16, i32 %73)
  %75 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %10, align 8
  %76 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.mtk_cryp*, %struct.mtk_cryp** %6, align 8
  %78 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %10, align 8
  %81 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @dma_mapping_error(i32 %79, i32 %82)
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %63
  %87 = load %struct.mtk_cryp*, %struct.mtk_cryp** %6, align 8
  %88 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dev_err(i32 %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 16)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %5, align 4
  br label %103

93:                                               ; preds = %63
  %94 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %10, align 8
  %95 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = add i64 %97, 8
  %99 = add i64 %98, 8
  %100 = trunc i64 %99 to i32
  %101 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %10, align 8
  %102 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %93, %86
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local %struct.mtk_sha_reqctx* @ahash_request_ctx(i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @dma_map_single(i32, %struct.mtk_sha_info*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
