; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto_ahash.c_rk_ahash_import.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto_ahash.c_rk_ahash_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.rk_ahash_rctx = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.rk_ahash_ctx = type { i32 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i8*)* @rk_ahash_import to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_ahash_import(%struct.ahash_request* %0, i8* %1) #0 {
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rk_ahash_rctx*, align 8
  %6 = alloca %struct.crypto_ahash*, align 8
  %7 = alloca %struct.rk_ahash_ctx*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %9 = call %struct.rk_ahash_rctx* @ahash_request_ctx(%struct.ahash_request* %8)
  store %struct.rk_ahash_rctx* %9, %struct.rk_ahash_rctx** %5, align 8
  %10 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %11 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %10)
  store %struct.crypto_ahash* %11, %struct.crypto_ahash** %6, align 8
  %12 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %13 = call %struct.rk_ahash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %12)
  store %struct.rk_ahash_ctx* %13, %struct.rk_ahash_ctx** %7, align 8
  %14 = load %struct.rk_ahash_rctx*, %struct.rk_ahash_rctx** %5, align 8
  %15 = getelementptr inbounds %struct.rk_ahash_rctx, %struct.rk_ahash_rctx* %14, i32 0, i32 0
  %16 = load %struct.rk_ahash_ctx*, %struct.rk_ahash_ctx** %7, align 8
  %17 = getelementptr inbounds %struct.rk_ahash_ctx, %struct.rk_ahash_ctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ahash_request_set_tfm(%struct.TYPE_7__* %15, i32 %18)
  %20 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %21 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %25 = and i32 %23, %24
  %26 = load %struct.rk_ahash_rctx*, %struct.rk_ahash_rctx** %5, align 8
  %27 = getelementptr inbounds %struct.rk_ahash_rctx, %struct.rk_ahash_rctx* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 4
  %30 = load %struct.rk_ahash_rctx*, %struct.rk_ahash_rctx** %5, align 8
  %31 = getelementptr inbounds %struct.rk_ahash_rctx, %struct.rk_ahash_rctx* %30, i32 0, i32 0
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @crypto_ahash_import(%struct.TYPE_7__* %31, i8* %32)
  ret i32 %33
}

declare dso_local %struct.rk_ahash_rctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.rk_ahash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local i32 @ahash_request_set_tfm(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @crypto_ahash_import(%struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
