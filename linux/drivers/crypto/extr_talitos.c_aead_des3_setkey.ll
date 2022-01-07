; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_aead_des3_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_aead_des3_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.talitos_ctx = type { i64, i64, i64, i32*, i32, %struct.device* }
%struct.device = type { i32 }
%struct.crypto_authenc_keys = type { i64, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@TALITOS_MAX_KEY_SIZE = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32*, i32)* @aead_des3_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aead_des3_setkey(%struct.crypto_aead* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.talitos_ctx*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.crypto_authenc_keys, align 8
  %10 = alloca i32, align 4
  store %struct.crypto_aead* %0, %struct.crypto_aead** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %12 = call %struct.talitos_ctx* @crypto_aead_ctx(%struct.crypto_aead* %11)
  store %struct.talitos_ctx* %12, %struct.talitos_ctx** %7, align 8
  %13 = load %struct.talitos_ctx*, %struct.talitos_ctx** %7, align 8
  %14 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %13, i32 0, i32 5
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %8, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @crypto_authenc_extractkeys(%struct.crypto_authenc_keys* %9, i32* %16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %108

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %10, align 4
  %26 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %9, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %9, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %27, %29
  %31 = load i64, i64* @TALITOS_MAX_KEY_SIZE, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %108

34:                                               ; preds = %23
  %35 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %36 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %9, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %9, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @verify_aead_des3_key(%struct.crypto_aead* %35, i32 %37, i64 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %105

44:                                               ; preds = %34
  %45 = load %struct.talitos_ctx*, %struct.talitos_ctx** %7, align 8
  %46 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load %struct.device*, %struct.device** %8, align 8
  %51 = load %struct.talitos_ctx*, %struct.talitos_ctx** %7, align 8
  %52 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.talitos_ctx*, %struct.talitos_ctx** %7, align 8
  %55 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @DMA_TO_DEVICE, align 4
  %58 = call i32 @dma_unmap_single(%struct.device* %50, i32 %53, i64 %56, i32 %57)
  br label %59

59:                                               ; preds = %49, %44
  %60 = load %struct.talitos_ctx*, %struct.talitos_ctx** %7, align 8
  %61 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %9, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %9, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @memcpy(i32* %62, i32 %64, i64 %66)
  %68 = load %struct.talitos_ctx*, %struct.talitos_ctx** %7, align 8
  %69 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %9, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %9, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %9, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @memcpy(i32* %73, i32 %75, i64 %77)
  %79 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %9, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %9, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %80, %82
  %84 = load %struct.talitos_ctx*, %struct.talitos_ctx** %7, align 8
  %85 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %9, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.talitos_ctx*, %struct.talitos_ctx** %7, align 8
  %89 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %9, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.talitos_ctx*, %struct.talitos_ctx** %7, align 8
  %93 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %92, i32 0, i32 2
  store i64 %91, i64* %93, align 8
  %94 = load %struct.device*, %struct.device** %8, align 8
  %95 = load %struct.talitos_ctx*, %struct.talitos_ctx** %7, align 8
  %96 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.talitos_ctx*, %struct.talitos_ctx** %7, align 8
  %99 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* @DMA_TO_DEVICE, align 4
  %102 = call i32 @dma_map_single(%struct.device* %94, i32* %97, i64 %100, i32 %101)
  %103 = load %struct.talitos_ctx*, %struct.talitos_ctx** %7, align 8
  %104 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %108, %59, %43
  %106 = call i32 @memzero_explicit(%struct.crypto_authenc_keys* %9, i32 24)
  %107 = load i32, i32* %10, align 4
  ret i32 %107

108:                                              ; preds = %33, %22
  %109 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %110 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %111 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %109, i32 %110)
  br label %105
}

declare dso_local %struct.talitos_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_authenc_extractkeys(%struct.crypto_authenc_keys*, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @verify_aead_des3_key(%struct.crypto_aead*, i32, i64) #1

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
