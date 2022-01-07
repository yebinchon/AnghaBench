; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_hmac_prehash_key_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_hmac_prehash_key_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_sha_dev = type { %struct.ahash_request* }
%struct.ahash_request = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.atmel_sha_hmac_ctx = type { i32* }
%struct.atmel_sha_reqctx = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_sha_dev*)* @atmel_sha_hmac_prehash_key_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_sha_hmac_prehash_key_done(%struct.atmel_sha_dev* %0) #0 {
  %2 = alloca %struct.atmel_sha_dev*, align 8
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.crypto_ahash*, align 8
  %5 = alloca %struct.atmel_sha_hmac_ctx*, align 8
  %6 = alloca %struct.atmel_sha_reqctx*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.atmel_sha_dev* %0, %struct.atmel_sha_dev** %2, align 8
  %11 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %12 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %11, i32 0, i32 0
  %13 = load %struct.ahash_request*, %struct.ahash_request** %12, align 8
  store %struct.ahash_request* %13, %struct.ahash_request** %3, align 8
  %14 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %15 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %14)
  store %struct.crypto_ahash* %15, %struct.crypto_ahash** %4, align 8
  %16 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %17 = call %struct.atmel_sha_hmac_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %16)
  store %struct.atmel_sha_hmac_ctx* %17, %struct.atmel_sha_hmac_ctx** %5, align 8
  %18 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %19 = call %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request* %18)
  store %struct.atmel_sha_reqctx* %19, %struct.atmel_sha_reqctx** %6, align 8
  %20 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %21 = call i64 @crypto_ahash_digestsize(%struct.crypto_ahash* %20)
  store i64 %21, i64* %7, align 8
  %22 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %6, align 8
  %23 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %7, align 8
  %26 = udiv i64 %25, 4
  store i64 %26, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %27

27:                                               ; preds = %41, %1
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @SHA_REG_DIGEST(i64 %33)
  %35 = call i32 @atmel_sha_read(%struct.atmel_sha_dev* %32, i32 %34)
  %36 = load %struct.atmel_sha_hmac_ctx*, %struct.atmel_sha_hmac_ctx** %5, align 8
  %37 = getelementptr inbounds %struct.atmel_sha_hmac_ctx, %struct.atmel_sha_hmac_ctx* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32 %35, i32* %40, align 4
  br label %41

41:                                               ; preds = %31
  %42 = load i64, i64* %9, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %9, align 8
  br label %27

44:                                               ; preds = %27
  %45 = load %struct.atmel_sha_hmac_ctx*, %struct.atmel_sha_hmac_ctx** %5, align 8
  %46 = getelementptr inbounds %struct.atmel_sha_hmac_ctx, %struct.atmel_sha_hmac_ctx* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %7, align 8
  %52 = sub i64 %50, %51
  %53 = call i32 @memset(i32* %49, i32 0, i64 %52)
  %54 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %55 = call i32 @atmel_sha_hmac_compute_ipad_hash(%struct.atmel_sha_dev* %54)
  ret i32 %55
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.atmel_sha_hmac_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i64 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local i32 @atmel_sha_read(%struct.atmel_sha_dev*, i32) #1

declare dso_local i32 @SHA_REG_DIGEST(i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @atmel_sha_hmac_compute_ipad_hash(%struct.atmel_sha_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
