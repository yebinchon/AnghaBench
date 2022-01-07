; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-aes-ecb.c_ecb_aes_nx_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-aes-ecb.c_ecb_aes_nx_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.nx_crypto_ctx = type { i32*, i32*, i64 }
%struct.nx_csbcpb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@HCOP_FC_AES = common dso_local global i32 0, align 4
@NX_KS_AES_128 = common dso_local global i32 0, align 4
@NX_PROPS_AES_128 = common dso_local global i64 0, align 8
@NX_KS_AES_192 = common dso_local global i32 0, align 4
@NX_PROPS_AES_192 = common dso_local global i64 0, align 8
@NX_KS_AES_256 = common dso_local global i32 0, align 4
@NX_PROPS_AES_256 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NX_MODE_AES_ECB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32*, i32)* @ecb_aes_nx_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecb_aes_nx_set_key(%struct.crypto_tfm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_tfm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nx_crypto_ctx*, align 8
  %9 = alloca %struct.nx_csbcpb*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %11 = call %struct.nx_crypto_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %10)
  store %struct.nx_crypto_ctx* %11, %struct.nx_crypto_ctx** %8, align 8
  %12 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %13 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.nx_csbcpb*
  store %struct.nx_csbcpb* %15, %struct.nx_csbcpb** %9, align 8
  %16 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %17 = load i32, i32* @HCOP_FC_AES, align 4
  %18 = call i32 @nx_ctx_init(%struct.nx_crypto_ctx* %16, i32 %17)
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %53 [
    i32 130, label %20
    i32 129, label %31
    i32 128, label %42
  ]

20:                                               ; preds = %3
  %21 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %9, align 8
  %22 = load i32, i32* @NX_KS_AES_128, align 4
  %23 = call i32 @NX_CPB_SET_KEY_SIZE(%struct.nx_csbcpb* %21, i32 %22)
  %24 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %25 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @NX_PROPS_AES_128, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %30 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %29, i32 0, i32 1
  store i32* %28, i32** %30, align 8
  br label %56

31:                                               ; preds = %3
  %32 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %9, align 8
  %33 = load i32, i32* @NX_KS_AES_192, align 4
  %34 = call i32 @NX_CPB_SET_KEY_SIZE(%struct.nx_csbcpb* %32, i32 %33)
  %35 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %36 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @NX_PROPS_AES_192, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %41 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %40, i32 0, i32 1
  store i32* %39, i32** %41, align 8
  br label %56

42:                                               ; preds = %3
  %43 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %9, align 8
  %44 = load i32, i32* @NX_KS_AES_256, align 4
  %45 = call i32 @NX_CPB_SET_KEY_SIZE(%struct.nx_csbcpb* %43, i32 %44)
  %46 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %47 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @NX_PROPS_AES_256, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %52 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %51, i32 0, i32 1
  store i32* %50, i32** %52, align 8
  br label %56

53:                                               ; preds = %3
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %70

56:                                               ; preds = %42, %31, %20
  %57 = load i32, i32* @NX_MODE_AES_ECB, align 4
  %58 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %9, align 8
  %59 = getelementptr inbounds %struct.nx_csbcpb, %struct.nx_csbcpb* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 4
  %62 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %9, align 8
  %63 = getelementptr inbounds %struct.nx_csbcpb, %struct.nx_csbcpb* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @memcpy(i32 %66, i32* %67, i32 %68)
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %56, %53
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.nx_crypto_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @nx_ctx_init(%struct.nx_crypto_ctx*, i32) #1

declare dso_local i32 @NX_CPB_SET_KEY_SIZE(%struct.nx_csbcpb*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
