; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_ctr_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_ctr_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_aes_dev = type { i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.atmel_aes_ctr_ctx = type { i64, i32*, i32, i32 }
%struct.ablkcipher_request = type { i64, i32, i32 }
%struct.scatterlist = type { i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@ATMEL_AES_DMA_THRESHOLD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_aes_dev*)* @atmel_aes_ctr_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_aes_ctr_transfer(%struct.atmel_aes_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmel_aes_dev*, align 8
  %4 = alloca %struct.atmel_aes_ctr_ctx*, align 8
  %5 = alloca %struct.ablkcipher_request*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.atmel_aes_dev* %0, %struct.atmel_aes_dev** %3, align 8
  %17 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %18 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.atmel_aes_ctr_ctx* @atmel_aes_ctr_ctx_cast(i32 %19)
  store %struct.atmel_aes_ctr_ctx* %20, %struct.atmel_aes_ctr_ctx** %4, align 8
  %21 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %22 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.ablkcipher_request* @ablkcipher_request_cast(i32 %23)
  store %struct.ablkcipher_request* %24, %struct.ablkcipher_request** %5, align 8
  store i32 0, i32* %12, align 4
  %25 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %26 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.atmel_aes_ctr_ctx*, %struct.atmel_aes_ctr_ctx** %4, align 8
  %29 = getelementptr inbounds %struct.atmel_aes_ctr_ctx, %struct.atmel_aes_ctr_ctx* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, %27
  store i64 %31, i64* %29, align 8
  %32 = load %struct.atmel_aes_ctr_ctx*, %struct.atmel_aes_ctr_ctx** %4, align 8
  %33 = getelementptr inbounds %struct.atmel_aes_ctr_ctx, %struct.atmel_aes_ctr_ctx* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %36 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sge i64 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %1
  %40 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %41 = call i32 @atmel_aes_transfer_complete(%struct.atmel_aes_dev* %40)
  store i32 %41, i32* %2, align 4
  br label %178

42:                                               ; preds = %1
  %43 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %44 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.atmel_aes_ctr_ctx*, %struct.atmel_aes_ctr_ctx** %4, align 8
  %47 = getelementptr inbounds %struct.atmel_aes_ctr_ctx, %struct.atmel_aes_ctr_ctx* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %45, %48
  store i64 %49, i64* %10, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %52 = call i32 @DIV_ROUND_UP(i64 %50, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load %struct.atmel_aes_ctr_ctx*, %struct.atmel_aes_ctr_ctx** %4, align 8
  %54 = getelementptr inbounds %struct.atmel_aes_ctr_ctx, %struct.atmel_aes_ctr_ctx* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @be32_to_cpu(i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %60 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %42
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %66, %67
  %69 = sub nsw i32 %68, 1
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %64
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %74, -1
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %77 = load i32, i32* %13, align 4
  %78 = sub nsw i32 0, %77
  %79 = mul nsw i32 %76, %78
  %80 = sext i32 %79 to i64
  store i64 %80, i64* %10, align 8
  store i32 1, i32* %12, align 4
  br label %81

81:                                               ; preds = %73, %64
  br label %105

82:                                               ; preds = %42
  %83 = load i32, i32* %8, align 4
  %84 = and i32 %83, 65535
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %85, %86
  %88 = sub nsw i32 %87, 1
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* %9, align 4
  %90 = ashr i32 %89, 16
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %82
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %15, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %92, %82
  %97 = load i32, i32* %8, align 4
  %98 = or i32 %97, 65535
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %100 = load i32, i32* %15, align 4
  %101 = sub nsw i32 65536, %100
  %102 = mul nsw i32 %99, %101
  %103 = sext i32 %102 to i64
  store i64 %103, i64* %10, align 8
  store i32 1, i32* %12, align 4
  br label %104

104:                                              ; preds = %96, %92
  br label %105

105:                                              ; preds = %104, %81
  %106 = load i64, i64* %10, align 8
  %107 = load i64, i64* @ATMEL_AES_DMA_THRESHOLD, align 8
  %108 = icmp uge i64 %106, %107
  %109 = zext i1 %108 to i32
  store i32 %109, i32* %11, align 4
  %110 = load %struct.atmel_aes_ctr_ctx*, %struct.atmel_aes_ctr_ctx** %4, align 8
  %111 = getelementptr inbounds %struct.atmel_aes_ctr_ctx, %struct.atmel_aes_ctr_ctx* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %114 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.atmel_aes_ctr_ctx*, %struct.atmel_aes_ctr_ctx** %4, align 8
  %117 = getelementptr inbounds %struct.atmel_aes_ctr_ctx, %struct.atmel_aes_ctr_ctx* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call %struct.scatterlist* @scatterwalk_ffwd(i32 %112, i32 %115, i64 %118)
  store %struct.scatterlist* %119, %struct.scatterlist** %6, align 8
  %120 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %121 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %124 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = icmp eq i32 %122, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %105
  %128 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  br label %140

129:                                              ; preds = %105
  %130 = load %struct.atmel_aes_ctr_ctx*, %struct.atmel_aes_ctr_ctx** %4, align 8
  %131 = getelementptr inbounds %struct.atmel_aes_ctr_ctx, %struct.atmel_aes_ctr_ctx* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %134 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.atmel_aes_ctr_ctx*, %struct.atmel_aes_ctr_ctx** %4, align 8
  %137 = getelementptr inbounds %struct.atmel_aes_ctr_ctx, %struct.atmel_aes_ctr_ctx* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call %struct.scatterlist* @scatterwalk_ffwd(i32 %132, i32 %135, i64 %138)
  br label %140

140:                                              ; preds = %129, %127
  %141 = phi %struct.scatterlist* [ %128, %127 ], [ %139, %129 ]
  store %struct.scatterlist* %141, %struct.scatterlist** %7, align 8
  %142 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %143 = load i32, i32* %11, align 4
  %144 = load %struct.atmel_aes_ctr_ctx*, %struct.atmel_aes_ctr_ctx** %4, align 8
  %145 = getelementptr inbounds %struct.atmel_aes_ctr_ctx, %struct.atmel_aes_ctr_ctx* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = call i32 @atmel_aes_write_ctrl(%struct.atmel_aes_dev* %142, i32 %143, i32* %146)
  %148 = load i32, i32* %12, align 4
  %149 = call i64 @unlikely(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %163

151:                                              ; preds = %140
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @cpu_to_be32(i32 %152)
  %154 = load %struct.atmel_aes_ctr_ctx*, %struct.atmel_aes_ctr_ctx** %4, align 8
  %155 = getelementptr inbounds %struct.atmel_aes_ctr_ctx, %struct.atmel_aes_ctr_ctx* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 3
  store i32 %153, i32* %157, align 4
  %158 = load %struct.atmel_aes_ctr_ctx*, %struct.atmel_aes_ctr_ctx** %4, align 8
  %159 = getelementptr inbounds %struct.atmel_aes_ctr_ctx, %struct.atmel_aes_ctr_ctx* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %162 = call i32 @crypto_inc(i32* %160, i32 %161)
  br label %163

163:                                              ; preds = %151, %140
  %164 = load i32, i32* %11, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %163
  %167 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %168 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %169 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %170 = load i64, i64* %10, align 8
  %171 = call i32 @atmel_aes_dma_start(%struct.atmel_aes_dev* %167, %struct.scatterlist* %168, %struct.scatterlist* %169, i64 %170, i32 (%struct.atmel_aes_dev*)* @atmel_aes_ctr_transfer)
  store i32 %171, i32* %2, align 4
  br label %178

172:                                              ; preds = %163
  %173 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %174 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %175 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %176 = load i64, i64* %10, align 8
  %177 = call i32 @atmel_aes_cpu_start(%struct.atmel_aes_dev* %173, %struct.scatterlist* %174, %struct.scatterlist* %175, i64 %176, i32 (%struct.atmel_aes_dev*)* @atmel_aes_ctr_transfer)
  store i32 %177, i32* %2, align 4
  br label %178

178:                                              ; preds = %172, %166, %39
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local %struct.atmel_aes_ctr_ctx* @atmel_aes_ctr_ctx_cast(i32) #1

declare dso_local %struct.ablkcipher_request* @ablkcipher_request_cast(i32) #1

declare dso_local i32 @atmel_aes_transfer_complete(%struct.atmel_aes_dev*) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.scatterlist* @scatterwalk_ffwd(i32, i32, i64) #1

declare dso_local i32 @atmel_aes_write_ctrl(%struct.atmel_aes_dev*, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @crypto_inc(i32*, i32) #1

declare dso_local i32 @atmel_aes_dma_start(%struct.atmel_aes_dev*, %struct.scatterlist*, %struct.scatterlist*, i64, i32 (%struct.atmel_aes_dev*)*) #1

declare dso_local i32 @atmel_aes_cpu_start(%struct.atmel_aes_dev*, %struct.scatterlist*, %struct.scatterlist*, i64, i32 (%struct.atmel_aes_dev*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
