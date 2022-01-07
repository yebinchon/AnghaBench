; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_aead.c_nitrox_aead_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_aead.c_nitrox_aead_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.nitrox_crypto_ctx = type { %struct.TYPE_6__, %struct.crypto_ctx_hdr*, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.crypto_ctx_hdr = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*)* @nitrox_aead_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nitrox_aead_init(%struct.crypto_aead* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_aead*, align 8
  %4 = alloca %struct.nitrox_crypto_ctx*, align 8
  %5 = alloca %struct.crypto_ctx_hdr*, align 8
  store %struct.crypto_aead* %0, %struct.crypto_aead** %3, align 8
  %6 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %7 = call %struct.nitrox_crypto_ctx* @crypto_aead_ctx(%struct.crypto_aead* %6)
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
  br label %51

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
  br label %51

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
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i64 %41, i64* %44, align 8
  %45 = load %struct.nitrox_crypto_ctx*, %struct.nitrox_crypto_ctx** %4, align 8
  %46 = getelementptr inbounds %struct.nitrox_crypto_ctx, %struct.nitrox_crypto_ctx* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %32, %25, %15
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.nitrox_crypto_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @nitrox_get_first_device(...) #1

declare dso_local %struct.crypto_ctx_hdr* @crypto_alloc_context(i32) #1

declare dso_local i32 @nitrox_put_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
