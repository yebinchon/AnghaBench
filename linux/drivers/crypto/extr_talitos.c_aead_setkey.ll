; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_aead_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_aead_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.talitos_ctx = type { i64, i64, i64, i32*, i32, %struct.device* }
%struct.device = type { i32 }
%struct.crypto_authenc_keys = type { i64, i64, i32, i32 }

@TALITOS_MAX_KEY_SIZE = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32*, i32)* @aead_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aead_setkey(%struct.crypto_aead* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.talitos_ctx*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.crypto_authenc_keys, align 8
  store %struct.crypto_aead* %0, %struct.crypto_aead** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %12 = call %struct.talitos_ctx* @crypto_aead_ctx(%struct.crypto_aead* %11)
  store %struct.talitos_ctx* %12, %struct.talitos_ctx** %8, align 8
  %13 = load %struct.talitos_ctx*, %struct.talitos_ctx** %8, align 8
  %14 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %13, i32 0, i32 5
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %9, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @crypto_authenc_extractkeys(%struct.crypto_authenc_keys* %10, i32* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %92

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %10, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %10, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %23, %25
  %27 = load i64, i64* @TALITOS_MAX_KEY_SIZE, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %92

30:                                               ; preds = %21
  %31 = load %struct.talitos_ctx*, %struct.talitos_ctx** %8, align 8
  %32 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load %struct.device*, %struct.device** %9, align 8
  %37 = load %struct.talitos_ctx*, %struct.talitos_ctx** %8, align 8
  %38 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.talitos_ctx*, %struct.talitos_ctx** %8, align 8
  %41 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @DMA_TO_DEVICE, align 4
  %44 = call i32 @dma_unmap_single(%struct.device* %36, i32 %39, i64 %42, i32 %43)
  br label %45

45:                                               ; preds = %35, %30
  %46 = load %struct.talitos_ctx*, %struct.talitos_ctx** %8, align 8
  %47 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %10, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %10, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @memcpy(i32* %48, i32 %50, i64 %52)
  %54 = load %struct.talitos_ctx*, %struct.talitos_ctx** %8, align 8
  %55 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %10, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %10, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %10, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @memcpy(i32* %59, i32 %61, i64 %63)
  %65 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %10, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %10, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %66, %68
  %70 = load %struct.talitos_ctx*, %struct.talitos_ctx** %8, align 8
  %71 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %10, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.talitos_ctx*, %struct.talitos_ctx** %8, align 8
  %75 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  %76 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %10, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.talitos_ctx*, %struct.talitos_ctx** %8, align 8
  %79 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %78, i32 0, i32 2
  store i64 %77, i64* %79, align 8
  %80 = load %struct.device*, %struct.device** %9, align 8
  %81 = load %struct.talitos_ctx*, %struct.talitos_ctx** %8, align 8
  %82 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.talitos_ctx*, %struct.talitos_ctx** %8, align 8
  %85 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* @DMA_TO_DEVICE, align 4
  %88 = call i32 @dma_map_single(%struct.device* %80, i32* %83, i64 %86, i32 %87)
  %89 = load %struct.talitos_ctx*, %struct.talitos_ctx** %8, align 8
  %90 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  %91 = call i32 @memzero_explicit(%struct.crypto_authenc_keys* %10, i32 24)
  store i32 0, i32* %4, align 4
  br label %99

92:                                               ; preds = %29, %20
  %93 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %94 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %95 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %93, i32 %94)
  %96 = call i32 @memzero_explicit(%struct.crypto_authenc_keys* %10, i32 24)
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %92, %45
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local %struct.talitos_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i64 @crypto_authenc_extractkeys(%struct.crypto_authenc_keys*, i32*, i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i64, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @dma_map_single(%struct.device*, i32*, i64, i32) #1

declare dso_local i32 @memzero_explicit(%struct.crypto_authenc_keys*, i32) #1

declare dso_local i32 @crypto_aead_set_flags(%struct.crypto_aead*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
