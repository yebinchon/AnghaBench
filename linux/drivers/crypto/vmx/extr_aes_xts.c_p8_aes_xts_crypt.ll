; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/vmx/extr_aes_xts.c_p8_aes_xts_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/vmx/extr_aes_xts.c_p8_aes_xts_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.crypto_skcipher = type { i32 }
%struct.p8_aes_xts_ctx = type { i32, i32, i32, i32 }
%struct.skcipher_walk = type { i32, %struct.TYPE_8__, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@XTS_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*, i32)* @p8_aes_xts_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p8_aes_xts_crypt(%struct.skcipher_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.skcipher_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_skcipher*, align 8
  %7 = alloca %struct.p8_aes_xts_ctx*, align 8
  %8 = alloca %struct.skcipher_walk, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.skcipher_request*, align 8
  %14 = alloca i32, align 4
  store %struct.skcipher_request* %0, %struct.skcipher_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %16 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %15)
  store %struct.crypto_skcipher* %16, %struct.crypto_skcipher** %6, align 8
  %17 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %6, align 8
  %18 = call %struct.p8_aes_xts_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %17)
  store %struct.p8_aes_xts_ctx* %18, %struct.p8_aes_xts_ctx** %7, align 8
  %19 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %23 = call i32 (...) @crypto_simd_usable()
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %27 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @XTS_BLOCK_SIZE, align 4
  %30 = srem i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %25, %2
  %33 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %34 = call %struct.skcipher_request* @skcipher_request_ctx(%struct.skcipher_request* %33)
  store %struct.skcipher_request* %34, %struct.skcipher_request** %13, align 8
  %35 = load %struct.skcipher_request*, %struct.skcipher_request** %13, align 8
  %36 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %37 = bitcast %struct.skcipher_request* %35 to i8*
  %38 = bitcast %struct.skcipher_request* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 4, i1 false)
  %39 = load %struct.skcipher_request*, %struct.skcipher_request** %13, align 8
  %40 = load %struct.p8_aes_xts_ctx*, %struct.p8_aes_xts_ctx** %7, align 8
  %41 = getelementptr inbounds %struct.p8_aes_xts_ctx, %struct.p8_aes_xts_ctx* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @skcipher_request_set_tfm(%struct.skcipher_request* %39, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %32
  %47 = load %struct.skcipher_request*, %struct.skcipher_request** %13, align 8
  %48 = call i32 @crypto_skcipher_encrypt(%struct.skcipher_request* %47)
  br label %52

49:                                               ; preds = %32
  %50 = load %struct.skcipher_request*, %struct.skcipher_request** %13, align 8
  %51 = call i32 @crypto_skcipher_decrypt(%struct.skcipher_request* %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = phi i32 [ %48, %46 ], [ %51, %49 ]
  store i32 %53, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %123

54:                                               ; preds = %25
  %55 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %56 = call i32 @skcipher_walk_virt(%struct.skcipher_walk* %8, %struct.skcipher_request* %55, i32 0)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %123

61:                                               ; preds = %54
  %62 = call i32 (...) @preempt_disable()
  %63 = call i32 (...) @pagefault_disable()
  %64 = call i32 (...) @enable_kernel_vsx()
  %65 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %8, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.p8_aes_xts_ctx*, %struct.p8_aes_xts_ctx** %7, align 8
  %68 = getelementptr inbounds %struct.p8_aes_xts_ctx, %struct.p8_aes_xts_ctx* %67, i32 0, i32 2
  %69 = call i32 @aes_p8_encrypt(i32 %66, i32* %22, i32* %68)
  %70 = call i32 (...) @disable_kernel_vsx()
  %71 = call i32 (...) @pagefault_enable()
  %72 = call i32 (...) @preempt_enable()
  br label %73

73:                                               ; preds = %113, %61
  %74 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %8, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %121

77:                                               ; preds = %73
  %78 = call i32 (...) @preempt_disable()
  %79 = call i32 (...) @pagefault_disable()
  %80 = call i32 (...) @enable_kernel_vsx()
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %8, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %8, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %94 = call i32 @round_down(i32 %92, i32 %93)
  %95 = load %struct.p8_aes_xts_ctx*, %struct.p8_aes_xts_ctx** %7, align 8
  %96 = getelementptr inbounds %struct.p8_aes_xts_ctx, %struct.p8_aes_xts_ctx* %95, i32 0, i32 1
  %97 = call i32 @aes_p8_xts_encrypt(i32 %87, i32 %91, i32 %94, i32* %96, i32* null, i32* %22)
  br label %113

98:                                               ; preds = %77
  %99 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %8, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %8, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %109 = call i32 @round_down(i32 %107, i32 %108)
  %110 = load %struct.p8_aes_xts_ctx*, %struct.p8_aes_xts_ctx** %7, align 8
  %111 = getelementptr inbounds %struct.p8_aes_xts_ctx, %struct.p8_aes_xts_ctx* %110, i32 0, i32 0
  %112 = call i32 @aes_p8_xts_decrypt(i32 %102, i32 %106, i32 %109, i32* %111, i32* null, i32* %22)
  br label %113

113:                                              ; preds = %98, %83
  %114 = call i32 (...) @disable_kernel_vsx()
  %115 = call i32 (...) @pagefault_enable()
  %116 = call i32 (...) @preempt_enable()
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %119 = urem i32 %117, %118
  %120 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %8, i32 %119)
  store i32 %120, i32* %12, align 4
  br label %73

121:                                              ; preds = %73
  %122 = load i32, i32* %12, align 4
  store i32 %122, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %123

123:                                              ; preds = %121, %59, %52
  %124 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %124)
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.p8_aes_xts_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @crypto_simd_usable(...) #1

declare dso_local %struct.skcipher_request* @skcipher_request_ctx(%struct.skcipher_request*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @skcipher_request_set_tfm(%struct.skcipher_request*, i32) #1

declare dso_local i32 @crypto_skcipher_encrypt(%struct.skcipher_request*) #1

declare dso_local i32 @crypto_skcipher_decrypt(%struct.skcipher_request*) #1

declare dso_local i32 @skcipher_walk_virt(%struct.skcipher_walk*, %struct.skcipher_request*, i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @pagefault_disable(...) #1

declare dso_local i32 @enable_kernel_vsx(...) #1

declare dso_local i32 @aes_p8_encrypt(i32, i32*, i32*) #1

declare dso_local i32 @disable_kernel_vsx(...) #1

declare dso_local i32 @pagefault_enable(...) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @aes_p8_xts_encrypt(i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @aes_p8_xts_decrypt(i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @skcipher_walk_done(%struct.skcipher_walk*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
