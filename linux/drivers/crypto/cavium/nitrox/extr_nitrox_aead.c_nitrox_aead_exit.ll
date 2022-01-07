; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_aead.c_nitrox_aead_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_aead.c_nitrox_aead_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.nitrox_crypto_ctx = type { i32*, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, %struct.flexi_crypto_context* }
%struct.flexi_crypto_context = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_aead*)* @nitrox_aead_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nitrox_aead_exit(%struct.crypto_aead* %0) #0 {
  %2 = alloca %struct.crypto_aead*, align 8
  %3 = alloca %struct.nitrox_crypto_ctx*, align 8
  %4 = alloca %struct.flexi_crypto_context*, align 8
  store %struct.crypto_aead* %0, %struct.crypto_aead** %2, align 8
  %5 = load %struct.crypto_aead*, %struct.crypto_aead** %2, align 8
  %6 = call %struct.nitrox_crypto_ctx* @crypto_aead_ctx(%struct.crypto_aead* %5)
  store %struct.nitrox_crypto_ctx* %6, %struct.nitrox_crypto_ctx** %3, align 8
  %7 = load %struct.nitrox_crypto_ctx*, %struct.nitrox_crypto_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.nitrox_crypto_ctx, %struct.nitrox_crypto_ctx* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = load %struct.nitrox_crypto_ctx*, %struct.nitrox_crypto_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.nitrox_crypto_ctx, %struct.nitrox_crypto_ctx* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.flexi_crypto_context*, %struct.flexi_crypto_context** %15, align 8
  store %struct.flexi_crypto_context* %16, %struct.flexi_crypto_context** %4, align 8
  %17 = load %struct.flexi_crypto_context*, %struct.flexi_crypto_context** %4, align 8
  %18 = getelementptr inbounds %struct.flexi_crypto_context, %struct.flexi_crypto_context* %17, i32 0, i32 1
  %19 = call i32 @memzero_explicit(i32* %18, i32 4)
  %20 = load %struct.flexi_crypto_context*, %struct.flexi_crypto_context** %4, align 8
  %21 = getelementptr inbounds %struct.flexi_crypto_context, %struct.flexi_crypto_context* %20, i32 0, i32 0
  %22 = call i32 @memzero_explicit(i32* %21, i32 4)
  %23 = load %struct.nitrox_crypto_ctx*, %struct.nitrox_crypto_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.nitrox_crypto_ctx, %struct.nitrox_crypto_ctx* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @crypto_free_context(i8* %26)
  br label %28

28:                                               ; preds = %12, %1
  %29 = load %struct.nitrox_crypto_ctx*, %struct.nitrox_crypto_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.nitrox_crypto_ctx, %struct.nitrox_crypto_ctx* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @nitrox_put_device(i32* %31)
  %33 = load %struct.nitrox_crypto_ctx*, %struct.nitrox_crypto_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.nitrox_crypto_ctx, %struct.nitrox_crypto_ctx* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.nitrox_crypto_ctx*, %struct.nitrox_crypto_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.nitrox_crypto_ctx, %struct.nitrox_crypto_ctx* %36, i32 0, i32 0
  store i32* null, i32** %37, align 8
  ret void
}

declare dso_local %struct.nitrox_crypto_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @memzero_explicit(i32*, i32) #1

declare dso_local i32 @crypto_free_context(i8*) #1

declare dso_local i32 @nitrox_put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
