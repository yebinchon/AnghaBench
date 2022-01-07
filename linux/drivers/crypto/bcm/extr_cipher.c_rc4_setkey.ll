; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_rc4_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_rc4_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ablkcipher = type { i32 }
%struct.iproc_ctx_s = type { i32, i32*, i32 }

@ARC4_MAX_KEY_SIZE = common dso_local global i32 0, align 4
@ARC4_STATE_SIZE = common dso_local global i32 0, align 4
@CIPHER_TYPE_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ablkcipher*, i32*, i32)* @rc4_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc4_setkey(%struct.crypto_ablkcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_ablkcipher*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iproc_ctx_s*, align 8
  %8 = alloca i32, align 4
  store %struct.crypto_ablkcipher* %0, %struct.crypto_ablkcipher** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %10 = call %struct.iproc_ctx_s* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %9)
  store %struct.iproc_ctx_s* %10, %struct.iproc_ctx_s** %7, align 8
  %11 = load i32, i32* @ARC4_MAX_KEY_SIZE, align 4
  %12 = load i32, i32* @ARC4_STATE_SIZE, align 4
  %13 = add nsw i32 %11, %12
  %14 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %7, align 8
  %15 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %7, align 8
  %17 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 0, i32* %19, align 4
  %20 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %7, align 8
  %21 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 0, i32* %23, align 4
  %24 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %7, align 8
  %25 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  store i32 0, i32* %27, align 4
  %28 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %7, align 8
  %29 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  store i32 0, i32* %31, align 4
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %52, %3
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @ARC4_MAX_KEY_SIZE, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %32
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %6, align 4
  %40 = urem i32 %38, %39
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %7, align 8
  %45 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @ARC4_STATE_SIZE, align 4
  %49 = add nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  store i32 %43, i32* %51, align 4
  br label %52

52:                                               ; preds = %36
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %32

55:                                               ; preds = %32
  %56 = load i32, i32* @CIPHER_TYPE_INIT, align 4
  %57 = load %struct.iproc_ctx_s*, %struct.iproc_ctx_s** %7, align 8
  %58 = getelementptr inbounds %struct.iproc_ctx_s, %struct.iproc_ctx_s* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  ret i32 0
}

declare dso_local %struct.iproc_ctx_s* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
