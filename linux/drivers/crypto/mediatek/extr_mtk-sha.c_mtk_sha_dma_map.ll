; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-sha.c_mtk_sha_dma_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-sha.c_mtk_sha_dma_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_cryp = type { i32 }
%struct.mtk_sha_rec = type { i32 }
%struct.mtk_sha_reqctx = type { i32, i32, i32 }

@SHA_BUF_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"dma map error\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SHA_FLAGS_SG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_cryp*, %struct.mtk_sha_rec*, %struct.mtk_sha_reqctx*, i64)* @mtk_sha_dma_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_sha_dma_map(%struct.mtk_cryp* %0, %struct.mtk_sha_rec* %1, %struct.mtk_sha_reqctx* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtk_cryp*, align 8
  %7 = alloca %struct.mtk_sha_rec*, align 8
  %8 = alloca %struct.mtk_sha_reqctx*, align 8
  %9 = alloca i64, align 8
  store %struct.mtk_cryp* %0, %struct.mtk_cryp** %6, align 8
  store %struct.mtk_sha_rec* %1, %struct.mtk_sha_rec** %7, align 8
  store %struct.mtk_sha_reqctx* %2, %struct.mtk_sha_reqctx** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load %struct.mtk_cryp*, %struct.mtk_cryp** %6, align 8
  %11 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %8, align 8
  %14 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SHA_BUF_SIZE, align 4
  %17 = load i32, i32* @DMA_TO_DEVICE, align 4
  %18 = call i32 @dma_map_single(i32 %12, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %8, align 8
  %20 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.mtk_cryp*, %struct.mtk_cryp** %6, align 8
  %22 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %8, align 8
  %25 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dma_mapping_error(i32 %23, i32 %26)
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %4
  %31 = load %struct.mtk_cryp*, %struct.mtk_cryp** %6, align 8
  %32 = getelementptr inbounds %struct.mtk_cryp, %struct.mtk_cryp* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %51

37:                                               ; preds = %4
  %38 = load i32, i32* @SHA_FLAGS_SG, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %8, align 8
  %41 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.mtk_cryp*, %struct.mtk_cryp** %6, align 8
  %45 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %7, align 8
  %46 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %8, align 8
  %47 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @mtk_sha_xmit(%struct.mtk_cryp* %44, %struct.mtk_sha_rec* %45, i32 %48, i64 %49, i32 0, i32 0)
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %37, %30
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mtk_sha_xmit(%struct.mtk_cryp*, %struct.mtk_sha_rec*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
