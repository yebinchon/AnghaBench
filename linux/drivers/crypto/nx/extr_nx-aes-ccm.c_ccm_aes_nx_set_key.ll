; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-aes-ccm.c_ccm_aes_nx_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-aes-ccm.c_ccm_aes_nx_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.nx_crypto_ctx = type { i32*, i32*, %struct.nx_csbcpb*, %struct.nx_csbcpb* }
%struct.nx_csbcpb = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@HCOP_FC_AES = common dso_local global i32 0, align 4
@NX_KS_AES_128 = common dso_local global i32 0, align 4
@NX_PROPS_AES_128 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NX_MODE_AES_CCM = common dso_local global i32 0, align 4
@NX_MODE_AES_CCA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32*, i32)* @ccm_aes_nx_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccm_aes_nx_set_key(%struct.crypto_aead* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nx_crypto_ctx*, align 8
  %9 = alloca %struct.nx_csbcpb*, align 8
  %10 = alloca %struct.nx_csbcpb*, align 8
  store %struct.crypto_aead* %0, %struct.crypto_aead** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %12 = getelementptr inbounds %struct.crypto_aead, %struct.crypto_aead* %11, i32 0, i32 0
  %13 = call %struct.nx_crypto_ctx* @crypto_tfm_ctx(i32* %12)
  store %struct.nx_crypto_ctx* %13, %struct.nx_crypto_ctx** %8, align 8
  %14 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %15 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %14, i32 0, i32 3
  %16 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %15, align 8
  store %struct.nx_csbcpb* %16, %struct.nx_csbcpb** %9, align 8
  %17 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %18 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %17, i32 0, i32 2
  %19 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %18, align 8
  store %struct.nx_csbcpb* %19, %struct.nx_csbcpb** %10, align 8
  %20 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %21 = load i32, i32* @HCOP_FC_AES, align 4
  %22 = call i32 @nx_ctx_init(%struct.nx_crypto_ctx* %20, i32 %21)
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %38 [
    i32 128, label %24
  ]

24:                                               ; preds = %3
  %25 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %9, align 8
  %26 = load i32, i32* @NX_KS_AES_128, align 4
  %27 = call i32 @NX_CPB_SET_KEY_SIZE(%struct.nx_csbcpb* %25, i32 %26)
  %28 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %10, align 8
  %29 = load i32, i32* @NX_KS_AES_128, align 4
  %30 = call i32 @NX_CPB_SET_KEY_SIZE(%struct.nx_csbcpb* %28, i32 %29)
  %31 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %32 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @NX_PROPS_AES_128, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %37 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  br label %41

38:                                               ; preds = %3
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %68

41:                                               ; preds = %24
  %42 = load i32, i32* @NX_MODE_AES_CCM, align 4
  %43 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %9, align 8
  %44 = getelementptr inbounds %struct.nx_csbcpb, %struct.nx_csbcpb* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 4
  %47 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %9, align 8
  %48 = getelementptr inbounds %struct.nx_csbcpb, %struct.nx_csbcpb* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @memcpy(i32 %51, i32* %52, i32 %53)
  %55 = load i32, i32* @NX_MODE_AES_CCA, align 4
  %56 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %10, align 8
  %57 = getelementptr inbounds %struct.nx_csbcpb, %struct.nx_csbcpb* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 4
  %60 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %10, align 8
  %61 = getelementptr inbounds %struct.nx_csbcpb, %struct.nx_csbcpb* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @memcpy(i32 %64, i32* %65, i32 %66)
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %41, %38
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.nx_crypto_ctx* @crypto_tfm_ctx(i32*) #1

declare dso_local i32 @nx_ctx_init(%struct.nx_crypto_ctx*, i32) #1

declare dso_local i32 @NX_CPB_SET_KEY_SIZE(%struct.nx_csbcpb*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
