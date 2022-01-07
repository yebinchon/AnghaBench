; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_hmac_setup_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_hmac_setup_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_sha_dev = type { %struct.ahash_request* }
%struct.ahash_request = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.atmel_sha_hmac_ctx = type { i32 (%struct.atmel_sha_dev.0*)*, i32, i32* }
%struct.atmel_sha_dev.0 = type opaque
%struct.atmel_sha_reqctx = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_sha_dev*)* @atmel_sha_hmac_setup_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_sha_hmac_setup_done(%struct.atmel_sha_dev* %0) #0 {
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
  store i64 0, i64* %8, align 8
  br label %24

24:                                               ; preds = %38, %1
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @SHA_REG_DIGEST(i64 %30)
  %32 = call i32 @atmel_sha_read(%struct.atmel_sha_dev* %29, i32 %31)
  %33 = load %struct.atmel_sha_hmac_ctx*, %struct.atmel_sha_hmac_ctx** %5, align 8
  %34 = getelementptr inbounds %struct.atmel_sha_hmac_ctx, %struct.atmel_sha_hmac_ctx* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32 %32, i32* %37, align 4
  br label %38

38:                                               ; preds = %28
  %39 = load i64, i64* %8, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %8, align 8
  br label %24

41:                                               ; preds = %24
  %42 = load %struct.atmel_sha_hmac_ctx*, %struct.atmel_sha_hmac_ctx** %5, align 8
  %43 = getelementptr inbounds %struct.atmel_sha_hmac_ctx, %struct.atmel_sha_hmac_ctx* %42, i32 0, i32 1
  %44 = call i32 @atmel_sha_hmac_key_release(i32* %43)
  %45 = load %struct.atmel_sha_hmac_ctx*, %struct.atmel_sha_hmac_ctx** %5, align 8
  %46 = getelementptr inbounds %struct.atmel_sha_hmac_ctx, %struct.atmel_sha_hmac_ctx* %45, i32 0, i32 0
  %47 = load i32 (%struct.atmel_sha_dev.0*)*, i32 (%struct.atmel_sha_dev.0*)** %46, align 8
  %48 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %2, align 8
  %49 = bitcast %struct.atmel_sha_dev* %48 to %struct.atmel_sha_dev.0*
  %50 = call i32 %47(%struct.atmel_sha_dev.0* %49)
  ret i32 %50
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.atmel_sha_hmac_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @atmel_sha_read(%struct.atmel_sha_dev*, i32) #1

declare dso_local i32 @SHA_REG_DIGEST(i64) #1

declare dso_local i32 @atmel_sha_hmac_key_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
