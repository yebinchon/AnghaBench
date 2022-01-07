; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-aes.c_mtk_aes_gcm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-aes.c_mtk_aes_gcm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.mtk_aes_gcm_ctx = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"ctr(aes)\00", align 1
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Error allocating ctr(aes)\0A\00", align 1
@mtk_aes_gcm_start = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*)* @mtk_aes_gcm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_aes_gcm_init(%struct.crypto_aead* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_aead*, align 8
  %4 = alloca %struct.mtk_aes_gcm_ctx*, align 8
  store %struct.crypto_aead* %0, %struct.crypto_aead** %3, align 8
  %5 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %6 = call %struct.mtk_aes_gcm_ctx* @crypto_aead_ctx(%struct.crypto_aead* %5)
  store %struct.mtk_aes_gcm_ctx* %6, %struct.mtk_aes_gcm_ctx** %4, align 8
  %7 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %8 = call i32 @crypto_alloc_skcipher(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0, i32 %7)
  %9 = load %struct.mtk_aes_gcm_ctx*, %struct.mtk_aes_gcm_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.mtk_aes_gcm_ctx, %struct.mtk_aes_gcm_ctx* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load %struct.mtk_aes_gcm_ctx*, %struct.mtk_aes_gcm_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.mtk_aes_gcm_ctx, %struct.mtk_aes_gcm_ctx* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @IS_ERR(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.mtk_aes_gcm_ctx*, %struct.mtk_aes_gcm_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.mtk_aes_gcm_ctx, %struct.mtk_aes_gcm_ctx* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @PTR_ERR(i32 %20)
  store i32 %21, i32* %2, align 4
  br label %29

22:                                               ; preds = %1
  %23 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %24 = call i32 @crypto_aead_set_reqsize(%struct.crypto_aead* %23, i32 4)
  %25 = load i32, i32* @mtk_aes_gcm_start, align 4
  %26 = load %struct.mtk_aes_gcm_ctx*, %struct.mtk_aes_gcm_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.mtk_aes_gcm_ctx, %struct.mtk_aes_gcm_ctx* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %22, %16
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.mtk_aes_gcm_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_alloc_skcipher(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @crypto_aead_set_reqsize(%struct.crypto_aead*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
