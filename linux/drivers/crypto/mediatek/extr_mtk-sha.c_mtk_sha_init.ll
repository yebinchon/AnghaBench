; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-sha.c_mtk_sha_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-sha.c_mtk_sha_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.mtk_sha_ctx = type { i32, %struct.mtk_sha_hmac_ctx*, i32 }
%struct.mtk_sha_hmac_ctx = type { i32 }
%struct.mtk_sha_reqctx = type { i32, i32, i64, i64, i32, i64 }

@SHA_FLAGS_SHA1 = common dso_local global i32 0, align 4
@SHA1_BLOCK_SIZE = common dso_local global i64 0, align 8
@SHA_FLAGS_SHA224 = common dso_local global i32 0, align 4
@SHA224_BLOCK_SIZE = common dso_local global i64 0, align 8
@SHA_FLAGS_SHA256 = common dso_local global i32 0, align 4
@SHA256_BLOCK_SIZE = common dso_local global i64 0, align 8
@SHA_FLAGS_SHA384 = common dso_local global i32 0, align 4
@SHA384_BLOCK_SIZE = common dso_local global i64 0, align 8
@SHA_FLAGS_SHA512 = common dso_local global i32 0, align 4
@SHA512_BLOCK_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SHA_FLAGS_HMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @mtk_sha_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_sha_init(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.crypto_ahash*, align 8
  %5 = alloca %struct.mtk_sha_ctx*, align 8
  %6 = alloca %struct.mtk_sha_reqctx*, align 8
  %7 = alloca %struct.mtk_sha_hmac_ctx*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %8 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %9 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %8)
  store %struct.crypto_ahash* %9, %struct.crypto_ahash** %4, align 8
  %10 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %11 = call %struct.mtk_sha_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %10)
  store %struct.mtk_sha_ctx* %11, %struct.mtk_sha_ctx** %5, align 8
  %12 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %13 = call %struct.mtk_sha_reqctx* @ahash_request_ctx(%struct.ahash_request* %12)
  store %struct.mtk_sha_reqctx* %13, %struct.mtk_sha_reqctx** %6, align 8
  %14 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %15 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %17 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %16)
  %18 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %19 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %21 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %68 [
    i32 132, label %23
    i32 131, label %32
    i32 130, label %41
    i32 129, label %50
    i32 128, label %59
  ]

23:                                               ; preds = %1
  %24 = load i32, i32* @SHA_FLAGS_SHA1, align 4
  %25 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %26 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load i64, i64* @SHA1_BLOCK_SIZE, align 8
  %30 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %31 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 8
  br label %71

32:                                               ; preds = %1
  %33 = load i32, i32* @SHA_FLAGS_SHA224, align 4
  %34 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %35 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load i64, i64* @SHA224_BLOCK_SIZE, align 8
  %39 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %40 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 8
  br label %71

41:                                               ; preds = %1
  %42 = load i32, i32* @SHA_FLAGS_SHA256, align 4
  %43 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %44 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load i64, i64* @SHA256_BLOCK_SIZE, align 8
  %48 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %49 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 8
  br label %71

50:                                               ; preds = %1
  %51 = load i32, i32* @SHA_FLAGS_SHA384, align 4
  %52 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %53 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load i64, i64* @SHA384_BLOCK_SIZE, align 8
  %57 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %58 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  br label %71

59:                                               ; preds = %1
  %60 = load i32, i32* @SHA_FLAGS_SHA512, align 4
  %61 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %62 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load i64, i64* @SHA512_BLOCK_SIZE, align 8
  %66 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %67 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %66, i32 0, i32 2
  store i64 %65, i64* %67, align 8
  br label %71

68:                                               ; preds = %1
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %112

71:                                               ; preds = %59, %50, %41, %32, %23
  %72 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %73 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %72, i32 0, i32 3
  store i64 0, i64* %73, align 8
  %74 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %75 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %74, i32 0, i32 5
  store i64 0, i64* %75, align 8
  %76 = load %struct.mtk_sha_ctx*, %struct.mtk_sha_ctx** %5, align 8
  %77 = getelementptr inbounds %struct.mtk_sha_ctx, %struct.mtk_sha_ctx* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %80 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 8
  %81 = load %struct.mtk_sha_ctx*, %struct.mtk_sha_ctx** %5, align 8
  %82 = getelementptr inbounds %struct.mtk_sha_ctx, %struct.mtk_sha_ctx* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @SHA_FLAGS_HMAC, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %111

87:                                               ; preds = %71
  %88 = load %struct.mtk_sha_ctx*, %struct.mtk_sha_ctx** %5, align 8
  %89 = getelementptr inbounds %struct.mtk_sha_ctx, %struct.mtk_sha_ctx* %88, i32 0, i32 1
  %90 = load %struct.mtk_sha_hmac_ctx*, %struct.mtk_sha_hmac_ctx** %89, align 8
  store %struct.mtk_sha_hmac_ctx* %90, %struct.mtk_sha_hmac_ctx** %7, align 8
  %91 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %92 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.mtk_sha_hmac_ctx*, %struct.mtk_sha_hmac_ctx** %7, align 8
  %95 = getelementptr inbounds %struct.mtk_sha_hmac_ctx, %struct.mtk_sha_hmac_ctx* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %98 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @memcpy(i32 %93, i32 %96, i64 %99)
  %101 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %102 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %105 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %104, i32 0, i32 3
  store i64 %103, i64* %105, align 8
  %106 = load i32, i32* @SHA_FLAGS_HMAC, align 4
  %107 = load %struct.mtk_sha_reqctx*, %struct.mtk_sha_reqctx** %6, align 8
  %108 = getelementptr inbounds %struct.mtk_sha_reqctx, %struct.mtk_sha_reqctx* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %87, %71
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %111, %68
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.mtk_sha_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local %struct.mtk_sha_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
