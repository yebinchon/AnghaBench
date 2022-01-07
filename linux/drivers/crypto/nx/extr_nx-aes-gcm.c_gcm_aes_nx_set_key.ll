; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-aes-gcm.c_gcm_aes_nx_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-aes-gcm.c_gcm_aes_nx_set_key.c"
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
@NX_KS_AES_192 = common dso_local global i32 0, align 4
@NX_PROPS_AES_192 = common dso_local global i64 0, align 8
@NX_KS_AES_256 = common dso_local global i32 0, align 4
@NX_PROPS_AES_256 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NX_MODE_AES_GCM = common dso_local global i32 0, align 4
@NX_MODE_AES_GCA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32*, i32)* @gcm_aes_nx_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcm_aes_nx_set_key(%struct.crypto_aead* %0, i32* %1, i32 %2) #0 {
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
  %12 = call %struct.nx_crypto_ctx* @crypto_aead_ctx(%struct.crypto_aead* %11)
  store %struct.nx_crypto_ctx* %12, %struct.nx_crypto_ctx** %8, align 8
  %13 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %14 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %13, i32 0, i32 3
  %15 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %14, align 8
  store %struct.nx_csbcpb* %15, %struct.nx_csbcpb** %9, align 8
  %16 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %17 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %16, i32 0, i32 2
  %18 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %17, align 8
  store %struct.nx_csbcpb* %18, %struct.nx_csbcpb** %10, align 8
  %19 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %20 = load i32, i32* @HCOP_FC_AES, align 4
  %21 = call i32 @nx_ctx_init(%struct.nx_crypto_ctx* %19, i32 %20)
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %65 [
    i32 130, label %23
    i32 129, label %37
    i32 128, label %51
  ]

23:                                               ; preds = %3
  %24 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %9, align 8
  %25 = load i32, i32* @NX_KS_AES_128, align 4
  %26 = call i32 @NX_CPB_SET_KEY_SIZE(%struct.nx_csbcpb* %24, i32 %25)
  %27 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %10, align 8
  %28 = load i32, i32* @NX_KS_AES_128, align 4
  %29 = call i32 @NX_CPB_SET_KEY_SIZE(%struct.nx_csbcpb* %27, i32 %28)
  %30 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %31 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @NX_PROPS_AES_128, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %36 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %35, i32 0, i32 1
  store i32* %34, i32** %36, align 8
  br label %68

37:                                               ; preds = %3
  %38 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %9, align 8
  %39 = load i32, i32* @NX_KS_AES_192, align 4
  %40 = call i32 @NX_CPB_SET_KEY_SIZE(%struct.nx_csbcpb* %38, i32 %39)
  %41 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %10, align 8
  %42 = load i32, i32* @NX_KS_AES_192, align 4
  %43 = call i32 @NX_CPB_SET_KEY_SIZE(%struct.nx_csbcpb* %41, i32 %42)
  %44 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %45 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @NX_PROPS_AES_192, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %50 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %49, i32 0, i32 1
  store i32* %48, i32** %50, align 8
  br label %68

51:                                               ; preds = %3
  %52 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %9, align 8
  %53 = load i32, i32* @NX_KS_AES_256, align 4
  %54 = call i32 @NX_CPB_SET_KEY_SIZE(%struct.nx_csbcpb* %52, i32 %53)
  %55 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %10, align 8
  %56 = load i32, i32* @NX_KS_AES_256, align 4
  %57 = call i32 @NX_CPB_SET_KEY_SIZE(%struct.nx_csbcpb* %55, i32 %56)
  %58 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %59 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @NX_PROPS_AES_256, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %64 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %63, i32 0, i32 1
  store i32* %62, i32** %64, align 8
  br label %68

65:                                               ; preds = %3
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %95

68:                                               ; preds = %51, %37, %23
  %69 = load i32, i32* @NX_MODE_AES_GCM, align 4
  %70 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %9, align 8
  %71 = getelementptr inbounds %struct.nx_csbcpb, %struct.nx_csbcpb* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 4
  %74 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %9, align 8
  %75 = getelementptr inbounds %struct.nx_csbcpb, %struct.nx_csbcpb* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @memcpy(i32 %78, i32* %79, i32 %80)
  %82 = load i32, i32* @NX_MODE_AES_GCA, align 4
  %83 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %10, align 8
  %84 = getelementptr inbounds %struct.nx_csbcpb, %struct.nx_csbcpb* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store i32 %82, i32* %86, align 4
  %87 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %10, align 8
  %88 = getelementptr inbounds %struct.nx_csbcpb, %struct.nx_csbcpb* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @memcpy(i32 %91, i32* %92, i32 %93)
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %68, %65
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.nx_crypto_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @nx_ctx_init(%struct.nx_crypto_ctx*, i32) #1

declare dso_local i32 @NX_CPB_SET_KEY_SIZE(%struct.nx_csbcpb*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
