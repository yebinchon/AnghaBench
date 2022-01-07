; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_skcipher.c_nitrox_skcipher_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_skcipher.c_nitrox_skcipher_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.crypto_skcipher = type { i32 }
%struct.nitrox_crypto_ctx = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.nitrox_kcrypt_request = type { %struct.se_crypto_request }
%struct.se_crypto_request = type { i32, %struct.TYPE_10__, i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64, i8*, i64, i8* }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@FLEXI_CRYPTO_ENCRYPT_HMAC = common dso_local global i32 0, align 4
@ENCRYPT = common dso_local global i32 0, align 4
@DECRYPT = common dso_local global i32 0, align 4
@nitrox_skcipher_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*, i32)* @nitrox_skcipher_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nitrox_skcipher_crypt(%struct.skcipher_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.skcipher_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_skcipher*, align 8
  %7 = alloca %struct.nitrox_crypto_ctx*, align 8
  %8 = alloca %struct.nitrox_kcrypt_request*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.se_crypto_request*, align 8
  %11 = alloca i32, align 4
  store %struct.skcipher_request* %0, %struct.skcipher_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %13 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %12)
  store %struct.crypto_skcipher* %13, %struct.crypto_skcipher** %6, align 8
  %14 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %6, align 8
  %15 = call %struct.nitrox_crypto_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %14)
  store %struct.nitrox_crypto_ctx* %15, %struct.nitrox_crypto_ctx** %7, align 8
  %16 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %17 = call %struct.nitrox_kcrypt_request* @skcipher_request_ctx(%struct.skcipher_request* %16)
  store %struct.nitrox_kcrypt_request* %17, %struct.nitrox_kcrypt_request** %8, align 8
  %18 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %6, align 8
  %19 = call i32 @crypto_skcipher_ivsize(%struct.crypto_skcipher* %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.nitrox_kcrypt_request*, %struct.nitrox_kcrypt_request** %8, align 8
  %21 = getelementptr inbounds %struct.nitrox_kcrypt_request, %struct.nitrox_kcrypt_request* %20, i32 0, i32 0
  store %struct.se_crypto_request* %21, %struct.se_crypto_request** %10, align 8
  %22 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %23 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.se_crypto_request*, %struct.se_crypto_request** %10, align 8
  %27 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %29 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i32, i32* @GFP_KERNEL, align 4
  br label %39

37:                                               ; preds = %2
  %38 = load i32, i32* @GFP_ATOMIC, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = load %struct.se_crypto_request*, %struct.se_crypto_request** %10, align 8
  %42 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load %struct.se_crypto_request*, %struct.se_crypto_request** %10, align 8
  %44 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @FLEXI_CRYPTO_ENCRYPT_HMAC, align 4
  %47 = load %struct.se_crypto_request*, %struct.se_crypto_request** %10, align 8
  %48 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = load i32, i32* @ENCRYPT, align 4
  br label %55

53:                                               ; preds = %39
  %54 = load i32, i32* @DECRYPT, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  %57 = load %struct.se_crypto_request*, %struct.se_crypto_request** %10, align 8
  %58 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  store i32 %56, i32* %60, align 4
  %61 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %62 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @cpu_to_be16(i32 %63)
  %65 = load %struct.se_crypto_request*, %struct.se_crypto_request** %10, align 8
  %66 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 3
  store i8* %64, i8** %67, align 8
  %68 = load %struct.se_crypto_request*, %struct.se_crypto_request** %10, align 8
  %69 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i8* @cpu_to_be16(i32 %71)
  %73 = load %struct.se_crypto_request*, %struct.se_crypto_request** %10, align 8
  %74 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  store i8* %72, i8** %75, align 8
  %76 = load %struct.se_crypto_request*, %struct.se_crypto_request** %10, align 8
  %77 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  %79 = load %struct.nitrox_crypto_ctx*, %struct.nitrox_crypto_ctx** %7, align 8
  %80 = getelementptr inbounds %struct.nitrox_crypto_ctx, %struct.nitrox_crypto_ctx* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.se_crypto_request*, %struct.se_crypto_request** %10, align 8
  %84 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load %struct.se_crypto_request*, %struct.se_crypto_request** %10, align 8
  %86 = getelementptr inbounds %struct.se_crypto_request, %struct.se_crypto_request* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  store i32 4, i32* %88, align 8
  %89 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @alloc_src_sglist(%struct.skcipher_request* %89, i32 %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %55
  %95 = load i32, i32* %11, align 4
  store i32 %95, i32* %3, align 4
  br label %114

96:                                               ; preds = %55
  %97 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @alloc_dst_sglist(%struct.skcipher_request* %97, i32 %98)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %104 = call i32 @free_src_sglist(%struct.skcipher_request* %103)
  %105 = load i32, i32* %11, align 4
  store i32 %105, i32* %3, align 4
  br label %114

106:                                              ; preds = %96
  %107 = load %struct.nitrox_crypto_ctx*, %struct.nitrox_crypto_ctx** %7, align 8
  %108 = getelementptr inbounds %struct.nitrox_crypto_ctx, %struct.nitrox_crypto_ctx* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.se_crypto_request*, %struct.se_crypto_request** %10, align 8
  %111 = load i32, i32* @nitrox_skcipher_callback, align 4
  %112 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %113 = call i32 @nitrox_process_se_request(i32 %109, %struct.se_crypto_request* %110, i32 %111, %struct.skcipher_request* %112)
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %106, %102, %94
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.nitrox_crypto_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local %struct.nitrox_kcrypt_request* @skcipher_request_ctx(%struct.skcipher_request*) #1

declare dso_local i32 @crypto_skcipher_ivsize(%struct.crypto_skcipher*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @alloc_src_sglist(%struct.skcipher_request*, i32) #1

declare dso_local i32 @alloc_dst_sglist(%struct.skcipher_request*, i32) #1

declare dso_local i32 @free_src_sglist(%struct.skcipher_request*) #1

declare dso_local i32 @nitrox_process_se_request(i32, %struct.se_crypto_request*, i32, %struct.skcipher_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
