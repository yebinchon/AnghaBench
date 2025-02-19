; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_n2_arc4_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_n2_arc4_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ablkcipher = type { i32 }
%struct.crypto_tfm = type { i32 }
%struct.n2_cipher_context = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.n2_cipher_alg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ablkcipher*, i32*, i32)* @n2_arc4_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @n2_arc4_setkey(%struct.crypto_ablkcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_ablkcipher*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.crypto_tfm*, align 8
  %8 = alloca %struct.n2_cipher_context*, align 8
  %9 = alloca %struct.n2_cipher_alg*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.crypto_ablkcipher* %0, %struct.crypto_ablkcipher** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %18 = call %struct.crypto_tfm* @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher* %17)
  store %struct.crypto_tfm* %18, %struct.crypto_tfm** %7, align 8
  %19 = load %struct.crypto_tfm*, %struct.crypto_tfm** %7, align 8
  %20 = call %struct.n2_cipher_context* @crypto_tfm_ctx(%struct.crypto_tfm* %19)
  store %struct.n2_cipher_context* %20, %struct.n2_cipher_context** %8, align 8
  %21 = load %struct.crypto_tfm*, %struct.crypto_tfm** %7, align 8
  %22 = call %struct.n2_cipher_alg* @n2_cipher_alg(%struct.crypto_tfm* %21)
  store %struct.n2_cipher_alg* %22, %struct.n2_cipher_alg** %9, align 8
  %23 = load %struct.n2_cipher_context*, %struct.n2_cipher_context** %8, align 8
  %24 = getelementptr inbounds %struct.n2_cipher_context, %struct.n2_cipher_context* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %10, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 256
  store i32* %28, i32** %11, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  store i32* %30, i32** %12, align 8
  %31 = load %struct.n2_cipher_alg*, %struct.n2_cipher_alg** %9, align 8
  %32 = getelementptr inbounds %struct.n2_cipher_alg, %struct.n2_cipher_alg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.n2_cipher_context*, %struct.n2_cipher_context** %8, align 8
  %35 = getelementptr inbounds %struct.n2_cipher_context, %struct.n2_cipher_context* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  %36 = load i32*, i32** %11, align 8
  store i32 0, i32* %36, align 4
  %37 = load i32*, i32** %12, align 8
  store i32 0, i32* %37, align 4
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %47, %3
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %39, 256
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load i32, i32* %13, align 4
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %42, i32* %46, align 4
  br label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %13, align 4
  br label %38

50:                                               ; preds = %38
  store i32 0, i32* %13, align 4
  br label %51

51:                                               ; preds = %90, %50
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 %52, 256
  br i1 %53, label %54, label %93

54:                                               ; preds = %51
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %60, %65
  %67 = load i32, i32* %16, align 4
  %68 = add nsw i32 %66, %67
  %69 = and i32 %68, 255
  store i32 %69, i32* %14, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %10, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %74, i32* %78, align 4
  %79 = load i32, i32* %16, align 4
  %80 = load i32*, i32** %10, align 8
  %81 = load i32, i32* %14, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %79, i32* %83, align 4
  %84 = load i32, i32* %15, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp uge i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %54
  store i32 0, i32* %15, align 4
  br label %89

89:                                               ; preds = %88, %54
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %13, align 4
  br label %51

93:                                               ; preds = %51
  ret i32 0
}

declare dso_local %struct.crypto_tfm* @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher*) #1

declare dso_local %struct.n2_cipher_context* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local %struct.n2_cipher_alg* @n2_cipher_alg(%struct.crypto_tfm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
