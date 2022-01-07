; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.atmel_sha_ctx = type { i32 }
%struct.atmel_sha_reqctx = type { i32, i64*, i64, i32, i64, %struct.atmel_sha_dev* }
%struct.atmel_sha_dev = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"init: digest size: %d\0A\00", align 1
@SHA_FLAGS_SHA1 = common dso_local global i64 0, align 8
@SHA1_BLOCK_SIZE = common dso_local global i32 0, align 4
@SHA_FLAGS_SHA224 = common dso_local global i64 0, align 8
@SHA224_BLOCK_SIZE = common dso_local global i32 0, align 4
@SHA_FLAGS_SHA256 = common dso_local global i64 0, align 8
@SHA256_BLOCK_SIZE = common dso_local global i32 0, align 4
@SHA_FLAGS_SHA384 = common dso_local global i64 0, align 8
@SHA384_BLOCK_SIZE = common dso_local global i32 0, align 4
@SHA_FLAGS_SHA512 = common dso_local global i64 0, align 8
@SHA512_BLOCK_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SHA_BUFFER_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @atmel_sha_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_sha_init(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.crypto_ahash*, align 8
  %5 = alloca %struct.atmel_sha_ctx*, align 8
  %6 = alloca %struct.atmel_sha_reqctx*, align 8
  %7 = alloca %struct.atmel_sha_dev*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %8 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %9 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %8)
  store %struct.crypto_ahash* %9, %struct.crypto_ahash** %4, align 8
  %10 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %11 = call %struct.atmel_sha_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %10)
  store %struct.atmel_sha_ctx* %11, %struct.atmel_sha_ctx** %5, align 8
  %12 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %13 = call %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request* %12)
  store %struct.atmel_sha_reqctx* %13, %struct.atmel_sha_reqctx** %6, align 8
  %14 = load %struct.atmel_sha_ctx*, %struct.atmel_sha_ctx** %5, align 8
  %15 = call %struct.atmel_sha_dev* @atmel_sha_find_dev(%struct.atmel_sha_ctx* %14)
  store %struct.atmel_sha_dev* %15, %struct.atmel_sha_dev** %7, align 8
  %16 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %7, align 8
  %17 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %6, align 8
  %18 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %17, i32 0, i32 5
  store %struct.atmel_sha_dev* %16, %struct.atmel_sha_dev** %18, align 8
  %19 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %6, align 8
  %20 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %19, i32 0, i32 4
  store i64 0, i64* %20, align 8
  %21 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %7, align 8
  %22 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %25 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %24)
  %26 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %28 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %27)
  switch i32 %28, label %74 [
    i32 132, label %29
    i32 131, label %38
    i32 130, label %47
    i32 129, label %56
    i32 128, label %65
  ]

29:                                               ; preds = %1
  %30 = load i64, i64* @SHA_FLAGS_SHA1, align 8
  %31 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %6, align 8
  %32 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = or i64 %33, %30
  store i64 %34, i64* %32, align 8
  %35 = load i32, i32* @SHA1_BLOCK_SIZE, align 4
  %36 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %6, align 8
  %37 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  br label %77

38:                                               ; preds = %1
  %39 = load i64, i64* @SHA_FLAGS_SHA224, align 8
  %40 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %6, align 8
  %41 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = or i64 %42, %39
  store i64 %43, i64* %41, align 8
  %44 = load i32, i32* @SHA224_BLOCK_SIZE, align 4
  %45 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %6, align 8
  %46 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  br label %77

47:                                               ; preds = %1
  %48 = load i64, i64* @SHA_FLAGS_SHA256, align 8
  %49 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %6, align 8
  %50 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = or i64 %51, %48
  store i64 %52, i64* %50, align 8
  %53 = load i32, i32* @SHA256_BLOCK_SIZE, align 4
  %54 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %6, align 8
  %55 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  br label %77

56:                                               ; preds = %1
  %57 = load i64, i64* @SHA_FLAGS_SHA384, align 8
  %58 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %6, align 8
  %59 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = or i64 %60, %57
  store i64 %61, i64* %59, align 8
  %62 = load i32, i32* @SHA384_BLOCK_SIZE, align 4
  %63 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %6, align 8
  %64 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  br label %77

65:                                               ; preds = %1
  %66 = load i64, i64* @SHA_FLAGS_SHA512, align 8
  %67 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %6, align 8
  %68 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = or i64 %69, %66
  store i64 %70, i64* %68, align 8
  %71 = load i32, i32* @SHA512_BLOCK_SIZE, align 4
  %72 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %6, align 8
  %73 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  br label %77

74:                                               ; preds = %1
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %91

77:                                               ; preds = %65, %56, %47, %38, %29
  %78 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %6, align 8
  %79 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %78, i32 0, i32 2
  store i64 0, i64* %79, align 8
  %80 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %6, align 8
  %81 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %80, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 0
  store i64 0, i64* %83, align 8
  %84 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %6, align 8
  %85 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %84, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 1
  store i64 0, i64* %87, align 8
  %88 = load i32, i32* @SHA_BUFFER_LEN, align 4
  %89 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %6, align 8
  %90 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %77, %74
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.atmel_sha_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.atmel_sha_dev* @atmel_sha_find_dev(%struct.atmel_sha_ctx*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
