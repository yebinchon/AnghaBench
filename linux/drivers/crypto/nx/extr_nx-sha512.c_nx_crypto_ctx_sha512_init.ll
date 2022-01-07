; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-sha512.c_nx_crypto_ctx_sha512_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-sha512.c_nx_crypto_ctx_sha512_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.nx_crypto_ctx = type { i32, i32*, i32* }

@HCOP_FC_SHA = common dso_local global i32 0, align 4
@NX_PROPS_SHA512 = common dso_local global i64 0, align 8
@NX_DS_SHA512 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @nx_crypto_ctx_sha512_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nx_crypto_ctx_sha512_init(%struct.crypto_tfm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca %struct.nx_crypto_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  %6 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %7 = call %struct.nx_crypto_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %6)
  store %struct.nx_crypto_ctx* %7, %struct.nx_crypto_ctx** %4, align 8
  %8 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %9 = call i32 @nx_crypto_ctx_sha_init(%struct.crypto_tfm* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %30

14:                                               ; preds = %1
  %15 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %4, align 8
  %16 = load i32, i32* @HCOP_FC_SHA, align 4
  %17 = call i32 @nx_ctx_init(%struct.nx_crypto_ctx* %15, i32 %16)
  %18 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @NX_PROPS_SHA512, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %23, i32 0, i32 2
  store i32* %22, i32** %24, align 8
  %25 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %4, align 8
  %26 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @NX_DS_SHA512, align 4
  %29 = call i32 @NX_CPB_SET_DIGEST_SIZE(i32 %27, i32 %28)
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %14, %12
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.nx_crypto_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @nx_crypto_ctx_sha_init(%struct.crypto_tfm*) #1

declare dso_local i32 @nx_ctx_init(%struct.nx_crypto_ctx*, i32) #1

declare dso_local i32 @NX_CPB_SET_DIGEST_SIZE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
