; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_hmac_final.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_hmac_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_sha_dev = type { i32, %struct.ahash_request* }
%struct.ahash_request = type { i32 }
%struct.atmel_sha_reqctx = type { i64, i64, i64, i64 }
%struct.crypto_ahash = type { i32 }
%struct.atmel_sha_hmac_ctx = type { i64* }

@SHA_CR = common dso_local global i32 0, align 4
@SHA_CR_WUIHV = common dso_local global i64 0, align 8
@SHA_MR_MODE_AUTO = common dso_local global i64 0, align 8
@SHA_MR_UIHV = common dso_local global i64 0, align 8
@SHA_FLAGS_ALGO_MASK = common dso_local global i64 0, align 8
@SHA_MR = common dso_local global i32 0, align 4
@SHA_MSR = common dso_local global i32 0, align 4
@SHA_BCR = common dso_local global i32 0, align 4
@SHA_CR_FIRST = common dso_local global i64 0, align 8
@atmel_sha_hmac_final_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_sha_dev*)* @atmel_sha_hmac_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_sha_hmac_final(%struct.atmel_sha_dev* %0) #0 {
  %2 = alloca %struct.atmel_sha_dev*, align 8
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.atmel_sha_reqctx*, align 8
  %5 = alloca %struct.crypto_ahash*, align 8
  %6 = alloca %struct.atmel_sha_hmac_ctx*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.atmel_sha_dev* %0, %struct.atmel_sha_dev** %2, align 8
  %14 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %15 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %14, i32 0, i32 1
  %16 = load %struct.ahash_request*, %struct.ahash_request** %15, align 8
  store %struct.ahash_request* %16, %struct.ahash_request** %3, align 8
  %17 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %18 = call %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request* %17)
  store %struct.atmel_sha_reqctx* %18, %struct.atmel_sha_reqctx** %4, align 8
  %19 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %20 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %19)
  store %struct.crypto_ahash* %20, %struct.crypto_ahash** %5, align 8
  %21 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %22 = call %struct.atmel_sha_hmac_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %21)
  store %struct.atmel_sha_hmac_ctx* %22, %struct.atmel_sha_hmac_ctx** %6, align 8
  %23 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %24 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i64*
  store i64* %26, i64** %7, align 8
  %27 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %28 = call i64 @crypto_ahash_digestsize(%struct.crypto_ahash* %27)
  store i64 %28, i64* %8, align 8
  %29 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %30 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %9, align 8
  %32 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %33 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %8, align 8
  %36 = udiv i64 %35, 8
  store i64 %36, i64* %12, align 8
  store i64 0, i64* %11, align 8
  br label %37

37:                                               ; preds = %49, %1
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* %12, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @SHA_REG_DIGEST(i64 %43)
  %45 = call i64 @atmel_sha_read(%struct.atmel_sha_dev* %42, i32 %44)
  %46 = load i64*, i64** %7, align 8
  %47 = load i64, i64* %11, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  store i64 %45, i64* %48, align 8
  br label %49

49:                                               ; preds = %41
  %50 = load i64, i64* %11, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %11, align 8
  br label %37

52:                                               ; preds = %37
  %53 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %54 = load i32, i32* @SHA_CR, align 4
  %55 = load i64, i64* @SHA_CR_WUIHV, align 8
  %56 = call i32 @atmel_sha_write(%struct.atmel_sha_dev* %53, i32 %54, i64 %55)
  %57 = load i64, i64* %10, align 8
  %58 = udiv i64 %57, 8
  store i64 %58, i64* %12, align 8
  store i64 0, i64* %11, align 8
  br label %59

59:                                               ; preds = %74, %52
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %12, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %59
  %64 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @SHA_REG_DIN(i64 %65)
  %67 = load %struct.atmel_sha_hmac_ctx*, %struct.atmel_sha_hmac_ctx** %6, align 8
  %68 = getelementptr inbounds %struct.atmel_sha_hmac_ctx, %struct.atmel_sha_hmac_ctx* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* %11, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @atmel_sha_write(%struct.atmel_sha_dev* %64, i32 %66, i64 %72)
  br label %74

74:                                               ; preds = %63
  %75 = load i64, i64* %11, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %11, align 8
  br label %59

77:                                               ; preds = %59
  %78 = load i64, i64* @SHA_MR_MODE_AUTO, align 8
  %79 = load i64, i64* @SHA_MR_UIHV, align 8
  %80 = or i64 %78, %79
  store i64 %80, i64* %13, align 8
  %81 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %4, align 8
  %82 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SHA_FLAGS_ALGO_MASK, align 8
  %85 = and i64 %83, %84
  %86 = load i64, i64* %13, align 8
  %87 = or i64 %86, %85
  store i64 %87, i64* %13, align 8
  %88 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %89 = load i32, i32* @SHA_MR, align 4
  %90 = load i64, i64* %13, align 8
  %91 = call i32 @atmel_sha_write(%struct.atmel_sha_dev* %88, i32 %89, i64 %90)
  %92 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %93 = load i32, i32* @SHA_MSR, align 4
  %94 = load i64, i64* %9, align 8
  %95 = load i64, i64* %8, align 8
  %96 = add i64 %94, %95
  %97 = call i32 @atmel_sha_write(%struct.atmel_sha_dev* %92, i32 %93, i64 %96)
  %98 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %99 = load i32, i32* @SHA_BCR, align 4
  %100 = load i64, i64* %8, align 8
  %101 = call i32 @atmel_sha_write(%struct.atmel_sha_dev* %98, i32 %99, i64 %100)
  %102 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %103 = load i32, i32* @SHA_CR, align 4
  %104 = load i64, i64* @SHA_CR_FIRST, align 8
  %105 = call i32 @atmel_sha_write(%struct.atmel_sha_dev* %102, i32 %103, i64 %104)
  %106 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %107 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %106, i32 0, i32 0
  %108 = load i64*, i64** %7, align 8
  %109 = load i64, i64* %8, align 8
  %110 = call i32 @sg_init_one(i32* %107, i64* %108, i64 %109)
  %111 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %112 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %113 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %112, i32 0, i32 0
  %114 = load i64, i64* %8, align 8
  %115 = load i32, i32* @atmel_sha_hmac_final_done, align 4
  %116 = call i32 @atmel_sha_cpu_start(%struct.atmel_sha_dev* %111, i32* %113, i64 %114, i32 0, i32 1, i32 %115)
  ret i32 %116
}

declare dso_local %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.atmel_sha_hmac_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local i64 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local i64 @atmel_sha_read(%struct.atmel_sha_dev*, i32) #1

declare dso_local i32 @SHA_REG_DIGEST(i64) #1

declare dso_local i32 @atmel_sha_write(%struct.atmel_sha_dev*, i32, i64) #1

declare dso_local i32 @SHA_REG_DIN(i64) #1

declare dso_local i32 @sg_init_one(i32*, i64*, i64) #1

declare dso_local i32 @atmel_sha_cpu_start(%struct.atmel_sha_dev*, i32*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
