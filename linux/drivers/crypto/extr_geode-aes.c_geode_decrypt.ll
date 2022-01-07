; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_geode-aes.c_geode_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_geode-aes.c_geode_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.geode_aes_op = type { i64, i32, i32, i64, i32, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AES_KEYSIZE_128 = common dso_local global i64 0, align 8
@AES_MODE_ECB = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@AES_DIR_DECRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_tfm*, i32*, i32*)* @geode_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @geode_decrypt(%struct.crypto_tfm* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.geode_aes_op*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %9 = call %struct.geode_aes_op* @crypto_tfm_ctx(%struct.crypto_tfm* %8)
  store %struct.geode_aes_op* %9, %struct.geode_aes_op** %7, align 8
  %10 = load %struct.geode_aes_op*, %struct.geode_aes_op** %7, align 8
  %11 = getelementptr inbounds %struct.geode_aes_op, %struct.geode_aes_op* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AES_KEYSIZE_128, align 8
  %14 = icmp ne i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load %struct.geode_aes_op*, %struct.geode_aes_op** %7, align 8
  %20 = getelementptr inbounds %struct.geode_aes_op, %struct.geode_aes_op* %19, i32 0, i32 7
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @crypto_cipher_decrypt_one(i32 %22, i32* %23, i32* %24)
  br label %48

26:                                               ; preds = %3
  %27 = load i32*, i32** %6, align 8
  %28 = bitcast i32* %27 to i8*
  %29 = load %struct.geode_aes_op*, %struct.geode_aes_op** %7, align 8
  %30 = getelementptr inbounds %struct.geode_aes_op, %struct.geode_aes_op* %29, i32 0, i32 6
  store i8* %28, i8** %30, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = bitcast i32* %31 to i8*
  %33 = load %struct.geode_aes_op*, %struct.geode_aes_op** %7, align 8
  %34 = getelementptr inbounds %struct.geode_aes_op, %struct.geode_aes_op* %33, i32 0, i32 5
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* @AES_MODE_ECB, align 4
  %36 = load %struct.geode_aes_op*, %struct.geode_aes_op** %7, align 8
  %37 = getelementptr inbounds %struct.geode_aes_op, %struct.geode_aes_op* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.geode_aes_op*, %struct.geode_aes_op** %7, align 8
  %39 = getelementptr inbounds %struct.geode_aes_op, %struct.geode_aes_op* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %41 = load %struct.geode_aes_op*, %struct.geode_aes_op** %7, align 8
  %42 = getelementptr inbounds %struct.geode_aes_op, %struct.geode_aes_op* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @AES_DIR_DECRYPT, align 4
  %44 = load %struct.geode_aes_op*, %struct.geode_aes_op** %7, align 8
  %45 = getelementptr inbounds %struct.geode_aes_op, %struct.geode_aes_op* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.geode_aes_op*, %struct.geode_aes_op** %7, align 8
  %47 = call i32 @geode_aes_crypt(%struct.geode_aes_op* %46)
  br label %48

48:                                               ; preds = %26, %18
  ret void
}

declare dso_local %struct.geode_aes_op* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @crypto_cipher_decrypt_one(i32, i32*, i32*) #1

declare dso_local i32 @geode_aes_crypt(%struct.geode_aes_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
