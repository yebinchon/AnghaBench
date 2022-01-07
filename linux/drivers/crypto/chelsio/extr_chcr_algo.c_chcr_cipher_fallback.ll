; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_cipher_fallback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_cipher_fallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_sync_skcipher = type { i32 }
%struct.scatterlist = type { i32 }

@subreq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_sync_skcipher*, i32, %struct.scatterlist*, %struct.scatterlist*, i32, i32*, i16)* @chcr_cipher_fallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chcr_cipher_fallback(%struct.crypto_sync_skcipher* %0, i32 %1, %struct.scatterlist* %2, %struct.scatterlist* %3, i32 %4, i32* %5, i16 zeroext %6) #0 {
  %8 = alloca %struct.crypto_sync_skcipher*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i16, align 2
  %15 = alloca i32, align 4
  store %struct.crypto_sync_skcipher* %0, %struct.crypto_sync_skcipher** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.scatterlist* %2, %struct.scatterlist** %10, align 8
  store %struct.scatterlist* %3, %struct.scatterlist** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i16 %6, i16* %14, align 2
  %16 = load i32, i32* @subreq, align 4
  %17 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %8, align 8
  %18 = call i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32 %16, %struct.crypto_sync_skcipher* %17)
  %19 = load i32, i32* @subreq, align 4
  %20 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %8, align 8
  %21 = call i32 @skcipher_request_set_sync_tfm(i32 %19, %struct.crypto_sync_skcipher* %20)
  %22 = load i32, i32* @subreq, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @skcipher_request_set_callback(i32 %22, i32 %23, i32* null, i32* null)
  %25 = load i32, i32* @subreq, align 4
  %26 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %27 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load i32*, i32** %13, align 8
  %30 = call i32 @skcipher_request_set_crypt(i32 %25, %struct.scatterlist* %26, %struct.scatterlist* %27, i32 %28, i32* %29)
  %31 = load i16, i16* %14, align 2
  %32 = zext i16 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %7
  %35 = load i32, i32* @subreq, align 4
  %36 = call i32 @crypto_skcipher_decrypt(i32 %35)
  br label %40

37:                                               ; preds = %7
  %38 = load i32, i32* @subreq, align 4
  %39 = call i32 @crypto_skcipher_encrypt(i32 %38)
  br label %40

40:                                               ; preds = %37, %34
  %41 = phi i32 [ %36, %34 ], [ %39, %37 ]
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* @subreq, align 4
  %43 = call i32 @skcipher_request_zero(i32 %42)
  %44 = load i32, i32* %15, align 4
  ret i32 %44
}

declare dso_local i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32, %struct.crypto_sync_skcipher*) #1

declare dso_local i32 @skcipher_request_set_sync_tfm(i32, %struct.crypto_sync_skcipher*) #1

declare dso_local i32 @skcipher_request_set_callback(i32, i32, i32*, i32*) #1

declare dso_local i32 @skcipher_request_set_crypt(i32, %struct.scatterlist*, %struct.scatterlist*, i32, i32*) #1

declare dso_local i32 @crypto_skcipher_decrypt(i32) #1

declare dso_local i32 @crypto_skcipher_encrypt(i32) #1

declare dso_local i32 @skcipher_request_zero(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
