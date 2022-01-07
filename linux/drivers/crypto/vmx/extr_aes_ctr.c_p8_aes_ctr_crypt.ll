; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/vmx/extr_aes_ctr.c_p8_aes_ctr_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/vmx/extr_aes_ctr.c_p8_aes_ctr_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.crypto_skcipher = type { i32 }
%struct.p8_aes_ctr_ctx = type { i32, i32 }
%struct.skcipher_walk = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*)* @p8_aes_ctr_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p8_aes_ctr_crypt(%struct.skcipher_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.skcipher_request*, align 8
  %4 = alloca %struct.crypto_skcipher*, align 8
  %5 = alloca %struct.p8_aes_ctr_ctx*, align 8
  %6 = alloca %struct.skcipher_walk, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.skcipher_request*, align 8
  store %struct.skcipher_request* %0, %struct.skcipher_request** %3, align 8
  %10 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %11 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %10)
  store %struct.crypto_skcipher* %11, %struct.crypto_skcipher** %4, align 8
  %12 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %13 = call %struct.p8_aes_ctr_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %12)
  store %struct.p8_aes_ctr_ctx* %13, %struct.p8_aes_ctr_ctx** %5, align 8
  %14 = call i32 (...) @crypto_simd_usable()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %1
  %17 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %18 = call %struct.skcipher_request* @skcipher_request_ctx(%struct.skcipher_request* %17)
  store %struct.skcipher_request* %18, %struct.skcipher_request** %9, align 8
  %19 = load %struct.skcipher_request*, %struct.skcipher_request** %9, align 8
  %20 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %21 = bitcast %struct.skcipher_request* %19 to i8*
  %22 = bitcast %struct.skcipher_request* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  %23 = load %struct.skcipher_request*, %struct.skcipher_request** %9, align 8
  %24 = load %struct.p8_aes_ctr_ctx*, %struct.p8_aes_ctr_ctx** %5, align 8
  %25 = getelementptr inbounds %struct.p8_aes_ctr_ctx, %struct.p8_aes_ctr_ctx* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @skcipher_request_set_tfm(%struct.skcipher_request* %23, i32 %26)
  %28 = load %struct.skcipher_request*, %struct.skcipher_request** %9, align 8
  %29 = call i32 @crypto_skcipher_encrypt(%struct.skcipher_request* %28)
  store i32 %29, i32* %2, align 4
  br label %84

30:                                               ; preds = %1
  %31 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %32 = call i32 @skcipher_walk_virt(%struct.skcipher_walk* %6, %struct.skcipher_request* %31, i32 0)
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %72, %30
  %34 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %37 = icmp uge i32 %35, %36
  br i1 %37, label %38, label %75

38:                                               ; preds = %33
  %39 = call i32 (...) @preempt_disable()
  %40 = call i32 (...) @pagefault_disable()
  %41 = call i32 (...) @enable_kernel_vsx()
  %42 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %52 = udiv i32 %50, %51
  %53 = load %struct.p8_aes_ctr_ctx*, %struct.p8_aes_ctr_ctx** %5, align 8
  %54 = getelementptr inbounds %struct.p8_aes_ctr_ctx, %struct.p8_aes_ctr_ctx* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @aes_p8_ctr32_encrypt_blocks(i32 %45, i32 %49, i32 %52, i32* %54, i32 %56)
  %58 = call i32 (...) @disable_kernel_vsx()
  %59 = call i32 (...) @pagefault_enable()
  %60 = call i32 (...) @preempt_enable()
  br label %61

61:                                               ; preds = %66, %38
  %62 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %65 = call i32 @crypto_inc(i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %68 = load i32, i32* %7, align 4
  %69 = sub i32 %68, %67
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %71 = icmp uge i32 %69, %70
  br i1 %71, label %61, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %6, i32 %73)
  store i32 %74, i32* %8, align 4
  br label %33

75:                                               ; preds = %33
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load %struct.p8_aes_ctr_ctx*, %struct.p8_aes_ctr_ctx** %5, align 8
  %80 = call i32 @p8_aes_ctr_final(%struct.p8_aes_ctr_ctx* %79, %struct.skcipher_walk* %6)
  %81 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %6, i32 0)
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %78, %75
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %16
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.p8_aes_ctr_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_simd_usable(...) #1

declare dso_local %struct.skcipher_request* @skcipher_request_ctx(%struct.skcipher_request*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @skcipher_request_set_tfm(%struct.skcipher_request*, i32) #1

declare dso_local i32 @crypto_skcipher_encrypt(%struct.skcipher_request*) #1

declare dso_local i32 @skcipher_walk_virt(%struct.skcipher_walk*, %struct.skcipher_request*, i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @pagefault_disable(...) #1

declare dso_local i32 @enable_kernel_vsx(...) #1

declare dso_local i32 @aes_p8_ctr32_encrypt_blocks(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @disable_kernel_vsx(...) #1

declare dso_local i32 @pagefault_enable(...) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @crypto_inc(i32, i32) #1

declare dso_local i32 @skcipher_walk_done(%struct.skcipher_walk*, i32) #1

declare dso_local i32 @p8_aes_ctr_final(%struct.p8_aes_ctr_ctx*, %struct.skcipher_walk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
