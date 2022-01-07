; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-aes-galois.c_ccp_aes_gcm_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-aes-galois.c_ccp_aes_gcm_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.ccp_ctx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@CCP_AES_TYPE_128 = common dso_local global i32 0, align 4
@CCP_AES_TYPE_192 = common dso_local global i32 0, align 4
@CCP_AES_TYPE_256 = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CCP_AES_MODE_GCM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32*, i32)* @ccp_aes_gcm_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_aes_gcm_setkey(%struct.crypto_aead* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ccp_ctx*, align 8
  store %struct.crypto_aead* %0, %struct.crypto_aead** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %10 = call %struct.ccp_ctx* @crypto_aead_ctx(%struct.crypto_aead* %9)
  store %struct.ccp_ctx* %10, %struct.ccp_ctx** %8, align 8
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %30 [
    i32 130, label %12
    i32 129, label %18
    i32 128, label %24
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* @CCP_AES_TYPE_128, align 4
  %14 = load %struct.ccp_ctx*, %struct.ccp_ctx** %8, align 8
  %15 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 4
  store i32 %13, i32* %17, align 4
  br label %36

18:                                               ; preds = %3
  %19 = load i32, i32* @CCP_AES_TYPE_192, align 4
  %20 = load %struct.ccp_ctx*, %struct.ccp_ctx** %8, align 8
  %21 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 4
  store i32 %19, i32* %23, align 4
  br label %36

24:                                               ; preds = %3
  %25 = load i32, i32* @CCP_AES_TYPE_256, align 4
  %26 = load %struct.ccp_ctx*, %struct.ccp_ctx** %8, align 8
  %27 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 4
  store i32 %25, i32* %29, align 4
  br label %36

30:                                               ; preds = %3
  %31 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %32 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %33 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %31, i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %66

36:                                               ; preds = %24, %18, %12
  %37 = load i32, i32* @CCP_AES_MODE_GCM, align 4
  %38 = load %struct.ccp_ctx*, %struct.ccp_ctx** %8, align 8
  %39 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.ccp_ctx*, %struct.ccp_ctx** %8, align 8
  %44 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 4
  %47 = load %struct.ccp_ctx*, %struct.ccp_ctx** %8, align 8
  %48 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @memcpy(i32 %51, i32* %52, i32 %53)
  %55 = load %struct.ccp_ctx*, %struct.ccp_ctx** %8, align 8
  %56 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load %struct.ccp_ctx*, %struct.ccp_ctx** %8, align 8
  %60 = getelementptr inbounds %struct.ccp_ctx, %struct.ccp_ctx* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @sg_init_one(i32* %58, i32 %63, i32 %64)
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %36, %30
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.ccp_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_set_flags(%struct.crypto_aead*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @sg_init_one(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
