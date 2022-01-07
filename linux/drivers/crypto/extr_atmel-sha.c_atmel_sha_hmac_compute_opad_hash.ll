; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_hmac_compute_opad_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_hmac_compute_opad_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_sha_dev = type { %struct.ahash_request* }
%struct.ahash_request = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.atmel_sha_hmac_ctx = type { i32, i32* }
%struct.atmel_sha_reqctx = type { i64, i64 }

@atmel_sha_hmac_setup_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_sha_dev*)* @atmel_sha_hmac_compute_opad_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_sha_hmac_compute_opad_hash(%struct.atmel_sha_dev* %0) #0 {
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
  %20 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %6, align 8
  %21 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %7, align 8
  %23 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %6, align 8
  %24 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = udiv i64 %26, 4
  store i64 %27, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %28

28:                                               ; preds = %42, %1
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %10, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @SHA_REG_DIGEST(i64 %34)
  %36 = call i32 @atmel_sha_read(%struct.atmel_sha_dev* %33, i32 %35)
  %37 = load %struct.atmel_sha_hmac_ctx*, %struct.atmel_sha_hmac_ctx** %5, align 8
  %38 = getelementptr inbounds %struct.atmel_sha_hmac_ctx, %struct.atmel_sha_hmac_ctx* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32 %36, i32* %41, align 4
  br label %42

42:                                               ; preds = %32
  %43 = load i64, i64* %9, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %9, align 8
  br label %28

45:                                               ; preds = %28
  %46 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %47 = load %struct.atmel_sha_hmac_ctx*, %struct.atmel_sha_hmac_ctx** %5, align 8
  %48 = getelementptr inbounds %struct.atmel_sha_hmac_ctx, %struct.atmel_sha_hmac_ctx* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i32, i32* @atmel_sha_hmac_setup_done, align 4
  %52 = call i32 @atmel_sha_cpu_hash(%struct.atmel_sha_dev* %46, i32 %49, i64 %50, i32 0, i32 %51)
  ret i32 %52
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.atmel_sha_hmac_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @atmel_sha_read(%struct.atmel_sha_dev*, i32) #1

declare dso_local i32 @SHA_REG_DIGEST(i64) #1

declare dso_local i32 @atmel_sha_cpu_hash(%struct.atmel_sha_dev*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
