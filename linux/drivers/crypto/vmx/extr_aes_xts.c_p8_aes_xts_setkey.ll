; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/vmx/extr_aes_xts.c_p8_aes_xts_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/vmx/extr_aes_xts.c_p8_aes_xts_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }
%struct.p8_aes_xts_ctx = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_skcipher*, i32*, i32)* @p8_aes_xts_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p8_aes_xts_setkey(%struct.crypto_skcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_skcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.p8_aes_xts_ctx*, align 8
  %9 = alloca i32, align 4
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %11 = call %struct.p8_aes_xts_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %10)
  store %struct.p8_aes_xts_ctx* %11, %struct.p8_aes_xts_ctx** %8, align 8
  %12 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @xts_verify_key(%struct.crypto_skcipher* %12, i32* %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %72

20:                                               ; preds = %3
  %21 = call i32 (...) @preempt_disable()
  %22 = call i32 (...) @pagefault_disable()
  %23 = call i32 (...) @enable_kernel_vsx()
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = udiv i32 %25, 2
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %7, align 4
  %30 = udiv i32 %29, 2
  %31 = mul i32 %30, 8
  %32 = load %struct.p8_aes_xts_ctx*, %struct.p8_aes_xts_ctx** %8, align 8
  %33 = getelementptr inbounds %struct.p8_aes_xts_ctx, %struct.p8_aes_xts_ctx* %32, i32 0, i32 3
  %34 = call i32 @aes_p8_set_encrypt_key(i32* %28, i32 %31, i32* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = udiv i32 %36, 2
  %38 = mul i32 %37, 8
  %39 = load %struct.p8_aes_xts_ctx*, %struct.p8_aes_xts_ctx** %8, align 8
  %40 = getelementptr inbounds %struct.p8_aes_xts_ctx, %struct.p8_aes_xts_ctx* %39, i32 0, i32 2
  %41 = call i32 @aes_p8_set_encrypt_key(i32* %35, i32 %38, i32* %40)
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = udiv i32 %45, 2
  %47 = mul i32 %46, 8
  %48 = load %struct.p8_aes_xts_ctx*, %struct.p8_aes_xts_ctx** %8, align 8
  %49 = getelementptr inbounds %struct.p8_aes_xts_ctx, %struct.p8_aes_xts_ctx* %48, i32 0, i32 1
  %50 = call i32 @aes_p8_set_decrypt_key(i32* %44, i32 %47, i32* %49)
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  %53 = call i32 (...) @disable_kernel_vsx()
  %54 = call i32 (...) @pagefault_enable()
  %55 = call i32 (...) @preempt_enable()
  %56 = load %struct.p8_aes_xts_ctx*, %struct.p8_aes_xts_ctx** %8, align 8
  %57 = getelementptr inbounds %struct.p8_aes_xts_ctx, %struct.p8_aes_xts_ctx* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @crypto_skcipher_setkey(i32 %58, i32* %59, i32 %60)
  %62 = load i32, i32* %9, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %20
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  br label %70

69:                                               ; preds = %20
  br label %70

70:                                               ; preds = %69, %66
  %71 = phi i32 [ %68, %66 ], [ 0, %69 ]
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %18
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.p8_aes_xts_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i32 @xts_verify_key(%struct.crypto_skcipher*, i32*, i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @pagefault_disable(...) #1

declare dso_local i32 @enable_kernel_vsx(...) #1

declare dso_local i32 @aes_p8_set_encrypt_key(i32*, i32, i32*) #1

declare dso_local i32 @aes_p8_set_decrypt_key(i32*, i32, i32*) #1

declare dso_local i32 @disable_kernel_vsx(...) #1

declare dso_local i32 @pagefault_enable(...) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @crypto_skcipher_setkey(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
