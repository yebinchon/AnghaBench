; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_img-hash.c_img_hash_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_img-hash.c_img_hash_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.img_hash_request_ctx = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.img_hash_ctx = type { i32 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @img_hash_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_hash_init(%struct.ahash_request* %0) #0 {
  %2 = alloca %struct.ahash_request*, align 8
  %3 = alloca %struct.crypto_ahash*, align 8
  %4 = alloca %struct.img_hash_request_ctx*, align 8
  %5 = alloca %struct.img_hash_ctx*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %2, align 8
  %6 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %7 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %6)
  store %struct.crypto_ahash* %7, %struct.crypto_ahash** %3, align 8
  %8 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %9 = call %struct.img_hash_request_ctx* @ahash_request_ctx(%struct.ahash_request* %8)
  store %struct.img_hash_request_ctx* %9, %struct.img_hash_request_ctx** %4, align 8
  %10 = load %struct.crypto_ahash*, %struct.crypto_ahash** %3, align 8
  %11 = call %struct.img_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %10)
  store %struct.img_hash_ctx* %11, %struct.img_hash_ctx** %5, align 8
  %12 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %12, i32 0, i32 0
  %14 = load %struct.img_hash_ctx*, %struct.img_hash_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.img_hash_ctx, %struct.img_hash_ctx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ahash_request_set_tfm(%struct.TYPE_7__* %13, i32 %16)
  %18 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %19 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %23 = and i32 %21, %22
  %24 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 4
  %28 = load %struct.img_hash_request_ctx*, %struct.img_hash_request_ctx** %4, align 8
  %29 = getelementptr inbounds %struct.img_hash_request_ctx, %struct.img_hash_request_ctx* %28, i32 0, i32 0
  %30 = call i32 @crypto_ahash_init(%struct.TYPE_7__* %29)
  ret i32 %30
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.img_hash_request_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.img_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local i32 @ahash_request_set_tfm(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @crypto_ahash_init(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
