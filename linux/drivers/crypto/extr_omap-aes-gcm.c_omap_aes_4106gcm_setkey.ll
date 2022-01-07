; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-aes-gcm.c_omap_aes_4106gcm_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-aes-gcm.c_omap_aes_4106gcm_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.omap_aes_ctx = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AES_KEYSIZE_128 = common dso_local global i32 0, align 4
@AES_KEYSIZE_192 = common dso_local global i32 0, align 4
@AES_KEYSIZE_256 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_aes_4106gcm_setkey(%struct.crypto_aead* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.omap_aes_ctx*, align 8
  store %struct.crypto_aead* %0, %struct.crypto_aead** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %10 = call %struct.omap_aes_ctx* @crypto_aead_ctx(%struct.crypto_aead* %9)
  store %struct.omap_aes_ctx* %10, %struct.omap_aes_ctx** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %51

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = sub i32 %17, 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @AES_KEYSIZE_128, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %16
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @AES_KEYSIZE_192, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @AES_KEYSIZE_256, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %51

33:                                               ; preds = %26, %22, %16
  %34 = load %struct.omap_aes_ctx*, %struct.omap_aes_ctx** %8, align 8
  %35 = getelementptr inbounds %struct.omap_aes_ctx, %struct.omap_aes_ctx* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @memcpy(i32 %36, i32* %37, i32 %38)
  %40 = load %struct.omap_aes_ctx*, %struct.omap_aes_ctx** %8, align 8
  %41 = getelementptr inbounds %struct.omap_aes_ctx, %struct.omap_aes_ctx* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = call i32 @memcpy(i32 %42, i32* %46, i32 4)
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.omap_aes_ctx*, %struct.omap_aes_ctx** %8, align 8
  %50 = getelementptr inbounds %struct.omap_aes_ctx, %struct.omap_aes_ctx* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %33, %30, %13
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.omap_aes_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
