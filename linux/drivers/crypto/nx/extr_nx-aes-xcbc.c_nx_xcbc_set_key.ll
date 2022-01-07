; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-aes-xcbc.c_nx_xcbc_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-aes-xcbc.c_nx_xcbc_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_shash = type { i32 }
%struct.nx_crypto_ctx = type { i32*, i32*, %struct.nx_csbcpb* }
%struct.nx_csbcpb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@NX_PROPS_AES_128 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_shash*, i32*, i32)* @nx_xcbc_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nx_xcbc_set_key(%struct.crypto_shash* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_shash*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nx_crypto_ctx*, align 8
  %9 = alloca %struct.nx_csbcpb*, align 8
  store %struct.crypto_shash* %0, %struct.crypto_shash** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %11 = call %struct.nx_crypto_ctx* @crypto_shash_ctx(%struct.crypto_shash* %10)
  store %struct.nx_crypto_ctx* %11, %struct.nx_crypto_ctx** %8, align 8
  %12 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %13 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %12, i32 0, i32 2
  %14 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %13, align 8
  store %struct.nx_csbcpb* %14, %struct.nx_csbcpb** %9, align 8
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %24 [
    i32 128, label %16
  ]

16:                                               ; preds = %3
  %17 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %18 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @NX_PROPS_AES_128, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %23 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %22, i32 0, i32 1
  store i32* %21, i32** %23, align 8
  br label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %36

27:                                               ; preds = %16
  %28 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %9, align 8
  %29 = getelementptr inbounds %struct.nx_csbcpb, %struct.nx_csbcpb* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @memcpy(i32 %32, i32* %33, i32 %34)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %27, %24
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.nx_crypto_ctx* @crypto_shash_ctx(%struct.crypto_shash*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
