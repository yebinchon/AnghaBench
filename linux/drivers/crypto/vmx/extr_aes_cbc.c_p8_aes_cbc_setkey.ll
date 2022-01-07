; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/vmx/extr_aes_cbc.c_p8_aes_cbc_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/vmx/extr_aes_cbc.c_p8_aes_cbc_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }
%struct.p8_aes_cbc_ctx = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_skcipher*, i32*, i32)* @p8_aes_cbc_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p8_aes_cbc_setkey(%struct.crypto_skcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_skcipher*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.p8_aes_cbc_ctx*, align 8
  %8 = alloca i32, align 4
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %10 = call %struct.p8_aes_cbc_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %9)
  store %struct.p8_aes_cbc_ctx* %10, %struct.p8_aes_cbc_ctx** %7, align 8
  %11 = call i32 (...) @preempt_disable()
  %12 = call i32 (...) @pagefault_disable()
  %13 = call i32 (...) @enable_kernel_vsx()
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = mul i32 %15, 8
  %17 = load %struct.p8_aes_cbc_ctx*, %struct.p8_aes_cbc_ctx** %7, align 8
  %18 = getelementptr inbounds %struct.p8_aes_cbc_ctx, %struct.p8_aes_cbc_ctx* %17, i32 0, i32 2
  %19 = call i32 @aes_p8_set_encrypt_key(i32* %14, i32 %16, i32* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = mul i32 %21, 8
  %23 = load %struct.p8_aes_cbc_ctx*, %struct.p8_aes_cbc_ctx** %7, align 8
  %24 = getelementptr inbounds %struct.p8_aes_cbc_ctx, %struct.p8_aes_cbc_ctx* %23, i32 0, i32 1
  %25 = call i32 @aes_p8_set_decrypt_key(i32* %20, i32 %22, i32* %24)
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %8, align 4
  %28 = call i32 (...) @disable_kernel_vsx()
  %29 = call i32 (...) @pagefault_enable()
  %30 = call i32 (...) @preempt_enable()
  %31 = load %struct.p8_aes_cbc_ctx*, %struct.p8_aes_cbc_ctx** %7, align 8
  %32 = getelementptr inbounds %struct.p8_aes_cbc_ctx, %struct.p8_aes_cbc_ctx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @crypto_skcipher_setkey(i32 %33, i32* %34, i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %3
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  br label %45

44:                                               ; preds = %3
  br label %45

45:                                               ; preds = %44, %41
  %46 = phi i32 [ %43, %41 ], [ 0, %44 ]
  ret i32 %46
}

declare dso_local %struct.p8_aes_cbc_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

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
