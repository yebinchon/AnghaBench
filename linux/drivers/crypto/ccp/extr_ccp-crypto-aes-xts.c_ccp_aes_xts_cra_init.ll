; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-aes-xts.c_ccp_aes_xts_cra_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-aes-xts.c_ccp_aes_xts_cra_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ccp_ctx = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.crypto_sync_skcipher*, i64 }
%struct.crypto_sync_skcipher = type { i32 }

@ccp_aes_xts_complete = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"xts(aes)\00", align 1
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@CRYPTO_ALG_NEED_FALLBACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"could not load fallback driver xts(aes)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @ccp_aes_xts_cra_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_aes_xts_cra_init(%struct.crypto_tfm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca %struct.ccp_ctx*, align 8
  %5 = alloca %struct.crypto_sync_skcipher*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  %6 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %7 = call %struct.ccp_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %6)
  store %struct.ccp_ctx* %7, %struct.ccp_ctx** %4, align 8
  %8 = load i32, i32* @ccp_aes_xts_complete, align 4
  %9 = load %struct.ccp_ctx*, %struct.ccp_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  %11 = load %struct.ccp_ctx*, %struct.ccp_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %16 = load i32, i32* @CRYPTO_ALG_NEED_FALLBACK, align 4
  %17 = or i32 %15, %16
  %18 = call %struct.crypto_sync_skcipher* @crypto_alloc_sync_skcipher(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0, i32 %17)
  store %struct.crypto_sync_skcipher* %18, %struct.crypto_sync_skcipher** %5, align 8
  %19 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %5, align 8
  %20 = call i64 @IS_ERR(%struct.crypto_sync_skcipher* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = call i32 @pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %5, align 8
  %25 = call i32 @PTR_ERR(%struct.crypto_sync_skcipher* %24)
  store i32 %25, i32* %2, align 4
  br label %35

26:                                               ; preds = %1
  %27 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %5, align 8
  %28 = load %struct.ccp_ctx*, %struct.ccp_ctx** %4, align 8
  %29 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store %struct.crypto_sync_skcipher* %27, %struct.crypto_sync_skcipher** %31, align 8
  %32 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %33 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 4, i32* %34, align 4
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %26, %22
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.ccp_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local %struct.crypto_sync_skcipher* @crypto_alloc_sync_skcipher(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_sync_skcipher*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_sync_skcipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
