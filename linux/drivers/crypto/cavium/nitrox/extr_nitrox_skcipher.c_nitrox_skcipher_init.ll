; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_skcipher.c_nitrox_skcipher_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_skcipher.c_nitrox_skcipher_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }
%struct.nitrox_crypto_ctx = type { %struct.TYPE_2__, %struct.crypto_ctx_hdr*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.crypto_ctx_hdr = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_skcipher*)* @nitrox_skcipher_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nitrox_skcipher_init(%struct.crypto_skcipher* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_skcipher*, align 8
  %4 = alloca %struct.nitrox_crypto_ctx*, align 8
  %5 = alloca %struct.crypto_ctx_hdr*, align 8
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %3, align 8
  %6 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %7 = call %struct.nitrox_crypto_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %6)
  store %struct.nitrox_crypto_ctx* %7, %struct.nitrox_crypto_ctx** %4, align 8
  %8 = call i32 (...) @nitrox_get_first_device()
  %9 = load %struct.nitrox_crypto_ctx*, %struct.nitrox_crypto_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.nitrox_crypto_ctx, %struct.nitrox_crypto_ctx* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 8
  %11 = load %struct.nitrox_crypto_ctx*, %struct.nitrox_crypto_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.nitrox_crypto_ctx, %struct.nitrox_crypto_ctx* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %50

18:                                               ; preds = %1
  %19 = load %struct.nitrox_crypto_ctx*, %struct.nitrox_crypto_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.nitrox_crypto_ctx, %struct.nitrox_crypto_ctx* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.crypto_ctx_hdr* @crypto_alloc_context(i32 %21)
  store %struct.crypto_ctx_hdr* %22, %struct.crypto_ctx_hdr** %5, align 8
  %23 = load %struct.crypto_ctx_hdr*, %struct.crypto_ctx_hdr** %5, align 8
  %24 = icmp ne %struct.crypto_ctx_hdr* %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %18
  %26 = load %struct.nitrox_crypto_ctx*, %struct.nitrox_crypto_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.nitrox_crypto_ctx, %struct.nitrox_crypto_ctx* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @nitrox_put_device(i32 %28)
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %50

32:                                               ; preds = %18
  %33 = load %struct.crypto_ctx_hdr*, %struct.crypto_ctx_hdr** %5, align 8
  %34 = load %struct.nitrox_crypto_ctx*, %struct.nitrox_crypto_ctx** %4, align 8
  %35 = getelementptr inbounds %struct.nitrox_crypto_ctx, %struct.nitrox_crypto_ctx* %34, i32 0, i32 1
  store %struct.crypto_ctx_hdr* %33, %struct.crypto_ctx_hdr** %35, align 8
  %36 = load %struct.crypto_ctx_hdr*, %struct.crypto_ctx_hdr** %5, align 8
  %37 = getelementptr inbounds %struct.crypto_ctx_hdr, %struct.crypto_ctx_hdr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i32*
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  %41 = ptrtoint i32* %40 to i64
  %42 = load %struct.nitrox_crypto_ctx*, %struct.nitrox_crypto_ctx** %4, align 8
  %43 = getelementptr inbounds %struct.nitrox_crypto_ctx, %struct.nitrox_crypto_ctx* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i64 %41, i64* %44, align 8
  %45 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %46 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %47 = call i64 @crypto_skcipher_reqsize(%struct.crypto_skcipher* %46)
  %48 = add i64 %47, 4
  %49 = call i32 @crypto_skcipher_set_reqsize(%struct.crypto_skcipher* %45, i64 %48)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %32, %25, %15
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.nitrox_crypto_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i32 @nitrox_get_first_device(...) #1

declare dso_local %struct.crypto_ctx_hdr* @crypto_alloc_context(i32) #1

declare dso_local i32 @nitrox_put_device(i32) #1

declare dso_local i32 @crypto_skcipher_set_reqsize(%struct.crypto_skcipher*, i64) #1

declare dso_local i64 @crypto_skcipher_reqsize(%struct.crypto_skcipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
