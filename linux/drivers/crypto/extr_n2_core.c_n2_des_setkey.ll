; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_n2_des_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_n2_des_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ablkcipher = type { i32 }
%struct.crypto_tfm = type { i32 }
%struct.n2_cipher_context = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.n2_cipher_alg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ablkcipher*, i32*, i32)* @n2_des_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @n2_des_setkey(%struct.crypto_ablkcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ablkcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_tfm*, align 8
  %9 = alloca %struct.n2_cipher_context*, align 8
  %10 = alloca %struct.n2_cipher_alg*, align 8
  %11 = alloca i32, align 4
  store %struct.crypto_ablkcipher* %0, %struct.crypto_ablkcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %13 = call %struct.crypto_tfm* @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher* %12)
  store %struct.crypto_tfm* %13, %struct.crypto_tfm** %8, align 8
  %14 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %15 = call %struct.n2_cipher_context* @crypto_tfm_ctx(%struct.crypto_tfm* %14)
  store %struct.n2_cipher_context* %15, %struct.n2_cipher_context** %9, align 8
  %16 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %17 = call %struct.n2_cipher_alg* @n2_cipher_alg(%struct.crypto_tfm* %16)
  store %struct.n2_cipher_alg* %17, %struct.n2_cipher_alg** %10, align 8
  %18 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @verify_ablkcipher_des_key(%struct.crypto_ablkcipher* %18, i32* %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %4, align 4
  br label %41

25:                                               ; preds = %3
  %26 = load %struct.n2_cipher_alg*, %struct.n2_cipher_alg** %10, align 8
  %27 = getelementptr inbounds %struct.n2_cipher_alg, %struct.n2_cipher_alg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.n2_cipher_context*, %struct.n2_cipher_context** %9, align 8
  %30 = getelementptr inbounds %struct.n2_cipher_context, %struct.n2_cipher_context* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.n2_cipher_context*, %struct.n2_cipher_context** %9, align 8
  %33 = getelementptr inbounds %struct.n2_cipher_context, %struct.n2_cipher_context* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.n2_cipher_context*, %struct.n2_cipher_context** %9, align 8
  %35 = getelementptr inbounds %struct.n2_cipher_context, %struct.n2_cipher_context* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @memcpy(i32 %37, i32* %38, i32 %39)
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %25, %23
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.crypto_tfm* @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher*) #1

declare dso_local %struct.n2_cipher_context* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local %struct.n2_cipher_alg* @n2_cipher_alg(%struct.crypto_tfm*) #1

declare dso_local i32 @verify_ablkcipher_des_key(%struct.crypto_ablkcipher*, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
