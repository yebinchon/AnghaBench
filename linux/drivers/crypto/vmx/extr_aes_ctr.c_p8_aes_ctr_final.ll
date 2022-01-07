; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/vmx/extr_aes_ctr.c_p8_aes_ctr_final.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/vmx/extr_aes_ctr.c_p8_aes_ctr_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p8_aes_ctr_ctx = type { i32 }
%struct.skcipher_walk = type { i32, %struct.TYPE_8__, %struct.TYPE_6__, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p8_aes_ctr_ctx*, %struct.skcipher_walk*)* @p8_aes_ctr_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p8_aes_ctr_final(%struct.p8_aes_ctr_ctx* %0, %struct.skcipher_walk* %1) #0 {
  %3 = alloca %struct.p8_aes_ctr_ctx*, align 8
  %4 = alloca %struct.skcipher_walk*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.p8_aes_ctr_ctx* %0, %struct.p8_aes_ctr_ctx** %3, align 8
  store %struct.skcipher_walk* %1, %struct.skcipher_walk** %4, align 8
  %11 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %12 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %5, align 8
  %14 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %19 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %8, align 8
  %23 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %24 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %9, align 8
  %28 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %29 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %10, align 4
  %31 = call i32 (...) @preempt_disable()
  %32 = call i32 (...) @pagefault_disable()
  %33 = call i32 (...) @enable_kernel_vsx()
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.p8_aes_ctr_ctx*, %struct.p8_aes_ctr_ctx** %3, align 8
  %36 = getelementptr inbounds %struct.p8_aes_ctr_ctx, %struct.p8_aes_ctr_ctx* %35, i32 0, i32 0
  %37 = call i32 @aes_p8_encrypt(i32* %34, i32* %17, i32* %36)
  %38 = call i32 (...) @disable_kernel_vsx()
  %39 = call i32 (...) @pagefault_enable()
  %40 = call i32 (...) @preempt_enable()
  %41 = load i32*, i32** %9, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @crypto_xor_cpy(i32* %41, i32* %17, i32* %42, i32 %43)
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %47 = call i32 @crypto_inc(i32* %45, i32 %46)
  %48 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %48)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @preempt_disable(...) #2

declare dso_local i32 @pagefault_disable(...) #2

declare dso_local i32 @enable_kernel_vsx(...) #2

declare dso_local i32 @aes_p8_encrypt(i32*, i32*, i32*) #2

declare dso_local i32 @disable_kernel_vsx(...) #2

declare dso_local i32 @pagefault_enable(...) #2

declare dso_local i32 @preempt_enable(...) #2

declare dso_local i32 @crypto_xor_cpy(i32*, i32*, i32*, i32) #2

declare dso_local i32 @crypto_inc(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
