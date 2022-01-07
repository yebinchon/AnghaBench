; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-aes-xcbc.c_nx_crypto_ctx_aes_xcbc_init2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-aes-xcbc.c_nx_crypto_ctx_aes_xcbc_init2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.nx_crypto_ctx = type { %struct.nx_csbcpb* }
%struct.nx_csbcpb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@HCOP_FC_AES = common dso_local global i32 0, align 4
@NX_KS_AES_128 = common dso_local global i32 0, align 4
@NX_MODE_AES_XCBC_MAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @nx_crypto_ctx_aes_xcbc_init2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nx_crypto_ctx_aes_xcbc_init2(%struct.crypto_tfm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca %struct.nx_crypto_ctx*, align 8
  %5 = alloca %struct.nx_csbcpb*, align 8
  %6 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  %7 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %8 = call %struct.nx_crypto_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %7)
  store %struct.nx_crypto_ctx* %8, %struct.nx_crypto_ctx** %4, align 8
  %9 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %9, i32 0, i32 0
  %11 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %10, align 8
  store %struct.nx_csbcpb* %11, %struct.nx_csbcpb** %5, align 8
  %12 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %13 = call i32 @nx_crypto_ctx_aes_xcbc_init(%struct.crypto_tfm* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %30

18:                                               ; preds = %1
  %19 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %4, align 8
  %20 = load i32, i32* @HCOP_FC_AES, align 4
  %21 = call i32 @nx_ctx_init(%struct.nx_crypto_ctx* %19, i32 %20)
  %22 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %5, align 8
  %23 = load i32, i32* @NX_KS_AES_128, align 4
  %24 = call i32 @NX_CPB_SET_KEY_SIZE(%struct.nx_csbcpb* %22, i32 %23)
  %25 = load i32, i32* @NX_MODE_AES_XCBC_MAC, align 4
  %26 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %5, align 8
  %27 = getelementptr inbounds %struct.nx_csbcpb, %struct.nx_csbcpb* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 4
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %18, %16
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.nx_crypto_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @nx_crypto_ctx_aes_xcbc_init(%struct.crypto_tfm*) #1

declare dso_local i32 @nx_ctx_init(%struct.nx_crypto_ctx*, i32) #1

declare dso_local i32 @NX_CPB_SET_KEY_SIZE(%struct.nx_csbcpb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
