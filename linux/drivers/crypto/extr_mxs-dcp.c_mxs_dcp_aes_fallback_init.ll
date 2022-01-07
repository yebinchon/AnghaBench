; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_mxs-dcp.c_mxs_dcp_aes_fallback_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_mxs-dcp.c_mxs_dcp_aes_fallback_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dcp_async_ctx = type { %struct.crypto_sync_skcipher* }
%struct.crypto_sync_skcipher = type { i32 }

@CRYPTO_ALG_NEED_FALLBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @mxs_dcp_aes_fallback_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_dcp_aes_fallback_init(%struct.crypto_tfm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dcp_async_ctx*, align 8
  %6 = alloca %struct.crypto_sync_skcipher*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  %7 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %8 = call i8* @crypto_tfm_alg_name(%struct.crypto_tfm* %7)
  store i8* %8, i8** %4, align 8
  %9 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %10 = call %struct.dcp_async_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %9)
  store %struct.dcp_async_ctx* %10, %struct.dcp_async_ctx** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* @CRYPTO_ALG_NEED_FALLBACK, align 4
  %13 = call %struct.crypto_sync_skcipher* @crypto_alloc_sync_skcipher(i8* %11, i32 0, i32 %12)
  store %struct.crypto_sync_skcipher* %13, %struct.crypto_sync_skcipher** %6, align 8
  %14 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %6, align 8
  %15 = call i64 @IS_ERR(%struct.crypto_sync_skcipher* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %6, align 8
  %19 = call i32 @PTR_ERR(%struct.crypto_sync_skcipher* %18)
  store i32 %19, i32* %2, align 4
  br label %27

20:                                               ; preds = %1
  %21 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %6, align 8
  %22 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %5, align 8
  %23 = getelementptr inbounds %struct.dcp_async_ctx, %struct.dcp_async_ctx* %22, i32 0, i32 0
  store %struct.crypto_sync_skcipher* %21, %struct.crypto_sync_skcipher** %23, align 8
  %24 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %25 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 4, i32* %26, align 4
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %20, %17
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i8* @crypto_tfm_alg_name(%struct.crypto_tfm*) #1

declare dso_local %struct.dcp_async_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local %struct.crypto_sync_skcipher* @crypto_alloc_sync_skcipher(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_sync_skcipher*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_sync_skcipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
