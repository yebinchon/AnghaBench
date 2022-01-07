; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_hmac_compute_ipad_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_hmac_compute_ipad_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_sha_dev = type { %struct.ahash_request* }
%struct.ahash_request = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.atmel_sha_hmac_ctx = type { i32*, i32* }
%struct.atmel_sha_reqctx = type { i64 }

@atmel_sha_hmac_compute_opad_hash = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_sha_dev*)* @atmel_sha_hmac_compute_ipad_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_sha_hmac_compute_ipad_hash(%struct.atmel_sha_dev* %0) #0 {
  %2 = alloca %struct.atmel_sha_dev*, align 8
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.crypto_ahash*, align 8
  %5 = alloca %struct.atmel_sha_hmac_ctx*, align 8
  %6 = alloca %struct.atmel_sha_reqctx*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.atmel_sha_dev* %0, %struct.atmel_sha_dev** %2, align 8
  %10 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %11 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %10, i32 0, i32 0
  %12 = load %struct.ahash_request*, %struct.ahash_request** %11, align 8
  store %struct.ahash_request* %12, %struct.ahash_request** %3, align 8
  %13 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %14 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %13)
  store %struct.crypto_ahash* %14, %struct.crypto_ahash** %4, align 8
  %15 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %16 = call %struct.atmel_sha_hmac_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %15)
  store %struct.atmel_sha_hmac_ctx* %16, %struct.atmel_sha_hmac_ctx** %5, align 8
  %17 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %18 = call %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request* %17)
  store %struct.atmel_sha_reqctx* %18, %struct.atmel_sha_reqctx** %6, align 8
  %19 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %6, align 8
  %20 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = udiv i64 %22, 4
  store i64 %23, i64* %9, align 8
  %24 = load %struct.atmel_sha_hmac_ctx*, %struct.atmel_sha_hmac_ctx** %5, align 8
  %25 = getelementptr inbounds %struct.atmel_sha_hmac_ctx, %struct.atmel_sha_hmac_ctx* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.atmel_sha_hmac_ctx*, %struct.atmel_sha_hmac_ctx** %5, align 8
  %28 = getelementptr inbounds %struct.atmel_sha_hmac_ctx, %struct.atmel_sha_hmac_ctx* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @memcpy(i32* %26, i32* %29, i64 %30)
  store i64 0, i64* %8, align 8
  br label %32

32:                                               ; preds = %51, %1
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %32
  %37 = load %struct.atmel_sha_hmac_ctx*, %struct.atmel_sha_hmac_ctx** %5, align 8
  %38 = getelementptr inbounds %struct.atmel_sha_hmac_ctx, %struct.atmel_sha_hmac_ctx* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = xor i32 %42, 909522486
  store i32 %43, i32* %41, align 4
  %44 = load %struct.atmel_sha_hmac_ctx*, %struct.atmel_sha_hmac_ctx** %5, align 8
  %45 = getelementptr inbounds %struct.atmel_sha_hmac_ctx, %struct.atmel_sha_hmac_ctx* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = xor i32 %49, 1549556828
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %36
  %52 = load i64, i64* %8, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %8, align 8
  br label %32

54:                                               ; preds = %32
  %55 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %56 = load %struct.atmel_sha_hmac_ctx*, %struct.atmel_sha_hmac_ctx** %5, align 8
  %57 = getelementptr inbounds %struct.atmel_sha_hmac_ctx, %struct.atmel_sha_hmac_ctx* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i32, i32* @atmel_sha_hmac_compute_opad_hash, align 4
  %61 = call i32 @atmel_sha_cpu_hash(%struct.atmel_sha_dev* %55, i32* %58, i64 %59, i32 0, i32 %60)
  ret i32 %61
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.atmel_sha_hmac_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @atmel_sha_cpu_hash(%struct.atmel_sha_dev*, i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
