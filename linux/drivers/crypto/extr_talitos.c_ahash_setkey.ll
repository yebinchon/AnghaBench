; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_ahash_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_ahash_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ahash = type { i32 }
%struct.talitos_ctx = type { i32, i32, i32, %struct.device* }
%struct.device = type { i32 }

@SHA512_DIGEST_SIZE = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ahash*, i32*, i32)* @ahash_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahash_setkey(%struct.crypto_ahash* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ahash*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.talitos_ctx*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.crypto_ahash* %0, %struct.crypto_ahash** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %18 = call i32 @crypto_ahash_tfm(%struct.crypto_ahash* %17)
  %19 = call %struct.talitos_ctx* @crypto_tfm_ctx(i32 %18)
  store %struct.talitos_ctx* %19, %struct.talitos_ctx** %8, align 8
  %20 = load %struct.talitos_ctx*, %struct.talitos_ctx** %8, align 8
  %21 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %20, i32 0, i32 3
  %22 = load %struct.device*, %struct.device** %21, align 8
  store %struct.device* %22, %struct.device** %9, align 8
  %23 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %24 = call i32 @crypto_ahash_tfm(%struct.crypto_ahash* %23)
  %25 = call i32 @crypto_tfm_alg_blocksize(i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %27 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* @SHA512_DIGEST_SIZE, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %13, align 8
  %32 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %14, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ule i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %3
  %37 = load %struct.talitos_ctx*, %struct.talitos_ctx** %8, align 8
  %38 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @memcpy(i32 %39, i32* %40, i32 %41)
  br label %63

43:                                               ; preds = %3
  %44 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @keyhash(%struct.crypto_ahash* %44, i32* %45, i32 %46, i32* %32)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %52 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %53 = call i32 @crypto_ahash_set_flags(%struct.crypto_ahash* %51, i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %91

56:                                               ; preds = %43
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %12, align 4
  %58 = load %struct.talitos_ctx*, %struct.talitos_ctx** %8, align 8
  %59 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @memcpy(i32 %60, i32* %32, i32 %61)
  br label %63

63:                                               ; preds = %56, %36
  %64 = load %struct.talitos_ctx*, %struct.talitos_ctx** %8, align 8
  %65 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load %struct.device*, %struct.device** %9, align 8
  %70 = load %struct.talitos_ctx*, %struct.talitos_ctx** %8, align 8
  %71 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.talitos_ctx*, %struct.talitos_ctx** %8, align 8
  %74 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @DMA_TO_DEVICE, align 4
  %77 = call i32 @dma_unmap_single(%struct.device* %69, i32 %72, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %68, %63
  %79 = load i32, i32* %12, align 4
  %80 = load %struct.talitos_ctx*, %struct.talitos_ctx** %8, align 8
  %81 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.device*, %struct.device** %9, align 8
  %83 = load %struct.talitos_ctx*, %struct.talitos_ctx** %8, align 8
  %84 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @DMA_TO_DEVICE, align 4
  %88 = call i32 @dma_map_single(%struct.device* %82, i32 %85, i32 %86, i32 %87)
  %89 = load %struct.talitos_ctx*, %struct.talitos_ctx** %8, align 8
  %90 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %91

91:                                               ; preds = %78, %50
  %92 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %92)
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.talitos_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local i32 @crypto_ahash_tfm(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_tfm_alg_blocksize(i32) #1

declare dso_local i32 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @keyhash(%struct.crypto_ahash*, i32*, i32, i32*) #1

declare dso_local i32 @crypto_ahash_set_flags(%struct.crypto_ahash*, i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dma_map_single(%struct.device*, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
