; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/vmx/extr_aes_cbc.c_p8_aes_cbc_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/vmx/extr_aes_cbc.c_p8_aes_cbc_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.crypto_skcipher = type { i32 }
%struct.p8_aes_cbc_ctx = type { i32, i32, i32 }
%struct.skcipher_walk = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*, i32)* @p8_aes_cbc_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p8_aes_cbc_crypt(%struct.skcipher_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.skcipher_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_skcipher*, align 8
  %7 = alloca %struct.p8_aes_cbc_ctx*, align 8
  %8 = alloca %struct.skcipher_walk, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.skcipher_request*, align 8
  store %struct.skcipher_request* %0, %struct.skcipher_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %13 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %12)
  store %struct.crypto_skcipher* %13, %struct.crypto_skcipher** %6, align 8
  %14 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %6, align 8
  %15 = call %struct.p8_aes_cbc_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %14)
  store %struct.p8_aes_cbc_ctx* %15, %struct.p8_aes_cbc_ctx** %7, align 8
  %16 = call i32 (...) @crypto_simd_usable()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %40, label %18

18:                                               ; preds = %2
  %19 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %20 = call %struct.skcipher_request* @skcipher_request_ctx(%struct.skcipher_request* %19)
  store %struct.skcipher_request* %20, %struct.skcipher_request** %11, align 8
  %21 = load %struct.skcipher_request*, %struct.skcipher_request** %11, align 8
  %22 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %23 = bitcast %struct.skcipher_request* %21 to i8*
  %24 = bitcast %struct.skcipher_request* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  %25 = load %struct.skcipher_request*, %struct.skcipher_request** %11, align 8
  %26 = load %struct.p8_aes_cbc_ctx*, %struct.p8_aes_cbc_ctx** %7, align 8
  %27 = getelementptr inbounds %struct.p8_aes_cbc_ctx, %struct.p8_aes_cbc_ctx* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @skcipher_request_set_tfm(%struct.skcipher_request* %25, i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %18
  %33 = load %struct.skcipher_request*, %struct.skcipher_request** %11, align 8
  %34 = call i32 @crypto_skcipher_encrypt(%struct.skcipher_request* %33)
  br label %38

35:                                               ; preds = %18
  %36 = load %struct.skcipher_request*, %struct.skcipher_request** %11, align 8
  %37 = call i32 @crypto_skcipher_decrypt(%struct.skcipher_request* %36)
  br label %38

38:                                               ; preds = %35, %32
  %39 = phi i32 [ %34, %32 ], [ %37, %35 ]
  store i32 %39, i32* %3, align 4
  br label %85

40:                                               ; preds = %2
  %41 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %42 = call i32 @skcipher_walk_virt(%struct.skcipher_walk* %8, %struct.skcipher_request* %41, i32 0)
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %70, %40
  %44 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %8, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %83

47:                                               ; preds = %43
  %48 = call i32 (...) @preempt_disable()
  %49 = call i32 (...) @pagefault_disable()
  %50 = call i32 (...) @enable_kernel_vsx()
  %51 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %8, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %8, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %61 = call i32 @round_down(i32 %59, i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %47
  %65 = load %struct.p8_aes_cbc_ctx*, %struct.p8_aes_cbc_ctx** %7, align 8
  %66 = getelementptr inbounds %struct.p8_aes_cbc_ctx, %struct.p8_aes_cbc_ctx* %65, i32 0, i32 1
  br label %70

67:                                               ; preds = %47
  %68 = load %struct.p8_aes_cbc_ctx*, %struct.p8_aes_cbc_ctx** %7, align 8
  %69 = getelementptr inbounds %struct.p8_aes_cbc_ctx, %struct.p8_aes_cbc_ctx* %68, i32 0, i32 0
  br label %70

70:                                               ; preds = %67, %64
  %71 = phi i32* [ %66, %64 ], [ %69, %67 ]
  %72 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %8, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @aes_p8_cbc_encrypt(i32 %54, i32 %58, i32 %61, i32* %71, i32 %73, i32 %74)
  %76 = call i32 (...) @disable_kernel_vsx()
  %77 = call i32 (...) @pagefault_enable()
  %78 = call i32 (...) @preempt_enable()
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %81 = urem i32 %79, %80
  %82 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %8, i32 %81)
  store i32 %82, i32* %10, align 4
  br label %43

83:                                               ; preds = %43
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %38
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.p8_aes_cbc_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_simd_usable(...) #1

declare dso_local %struct.skcipher_request* @skcipher_request_ctx(%struct.skcipher_request*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @skcipher_request_set_tfm(%struct.skcipher_request*, i32) #1

declare dso_local i32 @crypto_skcipher_encrypt(%struct.skcipher_request*) #1

declare dso_local i32 @crypto_skcipher_decrypt(%struct.skcipher_request*) #1

declare dso_local i32 @skcipher_walk_virt(%struct.skcipher_walk*, %struct.skcipher_request*, i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @pagefault_disable(...) #1

declare dso_local i32 @enable_kernel_vsx(...) #1

declare dso_local i32 @aes_p8_cbc_encrypt(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @disable_kernel_vsx(...) #1

declare dso_local i32 @pagefault_enable(...) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @skcipher_walk_done(%struct.skcipher_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
