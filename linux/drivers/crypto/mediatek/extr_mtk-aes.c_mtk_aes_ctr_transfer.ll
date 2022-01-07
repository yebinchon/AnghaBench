; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-aes.c_mtk_aes_ctr_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-aes.c_mtk_aes_ctr_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_cryp = type { i32 }
%struct.mtk_aes_rec = type { i64, i32, %struct.mtk_aes_base_ctx* }
%struct.mtk_aes_base_ctx = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.mtk_aes_ctr_ctx = type { i64, i32*, i32, i32 }
%struct.ablkcipher_request = type { i64, i32, i32 }
%struct.scatterlist = type { i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_cryp*, %struct.mtk_aes_rec*)* @mtk_aes_ctr_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_aes_ctr_transfer(%struct.mtk_cryp* %0, %struct.mtk_aes_rec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_cryp*, align 8
  %5 = alloca %struct.mtk_aes_rec*, align 8
  %6 = alloca %struct.mtk_aes_base_ctx*, align 8
  %7 = alloca %struct.mtk_aes_ctr_ctx*, align 8
  %8 = alloca %struct.ablkcipher_request*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.mtk_cryp* %0, %struct.mtk_cryp** %4, align 8
  store %struct.mtk_aes_rec* %1, %struct.mtk_aes_rec** %5, align 8
  %17 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %5, align 8
  %18 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %17, i32 0, i32 2
  %19 = load %struct.mtk_aes_base_ctx*, %struct.mtk_aes_base_ctx** %18, align 8
  store %struct.mtk_aes_base_ctx* %19, %struct.mtk_aes_base_ctx** %6, align 8
  %20 = load %struct.mtk_aes_base_ctx*, %struct.mtk_aes_base_ctx** %6, align 8
  %21 = call %struct.mtk_aes_ctr_ctx* @mtk_aes_ctr_ctx_cast(%struct.mtk_aes_base_ctx* %20)
  store %struct.mtk_aes_ctr_ctx* %21, %struct.mtk_aes_ctr_ctx** %7, align 8
  %22 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %5, align 8
  %23 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.ablkcipher_request* @ablkcipher_request_cast(i32 %24)
  store %struct.ablkcipher_request* %25, %struct.ablkcipher_request** %8, align 8
  store i32 0, i32* %16, align 4
  %26 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %5, align 8
  %27 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.mtk_aes_ctr_ctx*, %struct.mtk_aes_ctr_ctx** %7, align 8
  %30 = getelementptr inbounds %struct.mtk_aes_ctr_ctx, %struct.mtk_aes_ctr_ctx* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, %28
  store i64 %32, i64* %30, align 8
  %33 = load %struct.mtk_aes_ctr_ctx*, %struct.mtk_aes_ctr_ctx** %7, align 8
  %34 = getelementptr inbounds %struct.mtk_aes_ctr_ctx, %struct.mtk_aes_ctr_ctx* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %8, align 8
  %37 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %35, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %2
  %41 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %42 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %5, align 8
  %43 = call i32 @mtk_aes_transfer_complete(%struct.mtk_cryp* %41, %struct.mtk_aes_rec* %42)
  store i32 %43, i32* %3, align 4
  br label %145

44:                                               ; preds = %2
  %45 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %8, align 8
  %46 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.mtk_aes_ctr_ctx*, %struct.mtk_aes_ctr_ctx** %7, align 8
  %49 = getelementptr inbounds %struct.mtk_aes_ctr_ctx, %struct.mtk_aes_ctr_ctx* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %47, %50
  store i64 %51, i64* %15, align 8
  %52 = load i64, i64* %15, align 8
  %53 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %54 = call i32 @DIV_ROUND_UP(i64 %52, i32 %53)
  store i32 %54, i32* %14, align 4
  %55 = load %struct.mtk_aes_ctr_ctx*, %struct.mtk_aes_ctr_ctx** %7, align 8
  %56 = getelementptr inbounds %struct.mtk_aes_ctr_ctx, %struct.mtk_aes_ctr_ctx* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @be32_to_cpu(i32 %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %62, %63
  %65 = sub nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %44
  %70 = load i32, i32* %13, align 4
  %71 = or i32 %70, -1
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %73 = load i32, i32* %11, align 4
  %74 = sub nsw i32 0, %73
  %75 = mul nsw i32 %72, %74
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %15, align 8
  store i32 1, i32* %16, align 4
  br label %77

77:                                               ; preds = %69, %44
  %78 = load %struct.mtk_aes_ctr_ctx*, %struct.mtk_aes_ctr_ctx** %7, align 8
  %79 = getelementptr inbounds %struct.mtk_aes_ctr_ctx, %struct.mtk_aes_ctr_ctx* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %8, align 8
  %82 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.mtk_aes_ctr_ctx*, %struct.mtk_aes_ctr_ctx** %7, align 8
  %85 = getelementptr inbounds %struct.mtk_aes_ctr_ctx, %struct.mtk_aes_ctr_ctx* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call %struct.scatterlist* @scatterwalk_ffwd(i32 %80, i32 %83, i64 %86)
  store %struct.scatterlist* %87, %struct.scatterlist** %9, align 8
  %88 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %8, align 8
  %89 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %8, align 8
  %92 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %90, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %77
  %96 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  br label %108

97:                                               ; preds = %77
  %98 = load %struct.mtk_aes_ctr_ctx*, %struct.mtk_aes_ctr_ctx** %7, align 8
  %99 = getelementptr inbounds %struct.mtk_aes_ctr_ctx, %struct.mtk_aes_ctr_ctx* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %8, align 8
  %102 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.mtk_aes_ctr_ctx*, %struct.mtk_aes_ctr_ctx** %7, align 8
  %105 = getelementptr inbounds %struct.mtk_aes_ctr_ctx, %struct.mtk_aes_ctr_ctx* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call %struct.scatterlist* @scatterwalk_ffwd(i32 %100, i32 %103, i64 %106)
  br label %108

108:                                              ; preds = %97, %95
  %109 = phi %struct.scatterlist* [ %96, %95 ], [ %107, %97 ]
  store %struct.scatterlist* %109, %struct.scatterlist** %10, align 8
  %110 = load %struct.mtk_aes_base_ctx*, %struct.mtk_aes_base_ctx** %6, align 8
  %111 = getelementptr inbounds %struct.mtk_aes_base_ctx, %struct.mtk_aes_base_ctx* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.mtk_aes_base_ctx*, %struct.mtk_aes_base_ctx** %6, align 8
  %115 = getelementptr inbounds %struct.mtk_aes_base_ctx, %struct.mtk_aes_base_ctx* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %113, %116
  %118 = load %struct.mtk_aes_ctr_ctx*, %struct.mtk_aes_ctr_ctx** %7, align 8
  %119 = getelementptr inbounds %struct.mtk_aes_ctr_ctx, %struct.mtk_aes_ctr_ctx* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %122 = call i32 @mtk_aes_write_state_le(i64 %117, i32* %120, i32 %121)
  %123 = load i32, i32* %16, align 4
  %124 = call i64 @unlikely(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %138

126:                                              ; preds = %108
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @cpu_to_be32(i32 %127)
  %129 = load %struct.mtk_aes_ctr_ctx*, %struct.mtk_aes_ctr_ctx** %7, align 8
  %130 = getelementptr inbounds %struct.mtk_aes_ctr_ctx, %struct.mtk_aes_ctr_ctx* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 3
  store i32 %128, i32* %132, align 4
  %133 = load %struct.mtk_aes_ctr_ctx*, %struct.mtk_aes_ctr_ctx** %7, align 8
  %134 = getelementptr inbounds %struct.mtk_aes_ctr_ctx, %struct.mtk_aes_ctr_ctx* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %137 = call i32 @crypto_inc(i32* %135, i32 %136)
  br label %138

138:                                              ; preds = %126, %108
  %139 = load %struct.mtk_cryp*, %struct.mtk_cryp** %4, align 8
  %140 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %5, align 8
  %141 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %142 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %143 = load i64, i64* %15, align 8
  %144 = call i32 @mtk_aes_dma(%struct.mtk_cryp* %139, %struct.mtk_aes_rec* %140, %struct.scatterlist* %141, %struct.scatterlist* %142, i64 %143)
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %138, %40
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local %struct.mtk_aes_ctr_ctx* @mtk_aes_ctr_ctx_cast(%struct.mtk_aes_base_ctx*) #1

declare dso_local %struct.ablkcipher_request* @ablkcipher_request_cast(i32) #1

declare dso_local i32 @mtk_aes_transfer_complete(%struct.mtk_cryp*, %struct.mtk_aes_rec*) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.scatterlist* @scatterwalk_ffwd(i32, i32, i64) #1

declare dso_local i32 @mtk_aes_write_state_le(i64, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @crypto_inc(i32*, i32) #1

declare dso_local i32 @mtk_aes_dma(%struct.mtk_cryp*, %struct.mtk_aes_rec*, %struct.scatterlist*, %struct.scatterlist*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
