; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_cipher.c_cc_cipher_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_cipher.c_cc_cipher_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.skcipher_request = type { i32, %struct.scatterlist*, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.cipher_req_ctx = type { i32 }
%struct.crypto_skcipher = type { i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i8*, i32)* @cc_cipher_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_cipher_complete(%struct.device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.skcipher_request*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca %struct.cipher_req_ctx*, align 8
  %11 = alloca %struct.crypto_skcipher*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.skcipher_request*
  store %struct.skcipher_request* %14, %struct.skcipher_request** %7, align 8
  %15 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %16 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %15, i32 0, i32 2
  %17 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  store %struct.scatterlist* %17, %struct.scatterlist** %8, align 8
  %18 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %19 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %18, i32 0, i32 1
  %20 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  store %struct.scatterlist* %20, %struct.scatterlist** %9, align 8
  %21 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %22 = call %struct.cipher_req_ctx* @skcipher_request_ctx(%struct.skcipher_request* %21)
  store %struct.cipher_req_ctx* %22, %struct.cipher_req_ctx** %10, align 8
  %23 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %24 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %23)
  store %struct.crypto_skcipher* %24, %struct.crypto_skcipher** %11, align 8
  %25 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %11, align 8
  %26 = call i32 @crypto_skcipher_ivsize(%struct.crypto_skcipher* %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @EINPROGRESS, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %3
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %10, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %36 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %37 = call i32 @cc_unmap_cipher_request(%struct.device* %32, %struct.cipher_req_ctx* %33, i32 %34, %struct.scatterlist* %35, %struct.scatterlist* %36)
  %38 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %39 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %10, align 8
  %42 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @memcpy(i32 %40, i32 %43, i32 %44)
  %46 = load %struct.cipher_req_ctx*, %struct.cipher_req_ctx** %10, align 8
  %47 = getelementptr inbounds %struct.cipher_req_ctx, %struct.cipher_req_ctx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @kzfree(i32 %48)
  br label %50

50:                                               ; preds = %31, %3
  %51 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @skcipher_request_complete(%struct.skcipher_request* %51, i32 %52)
  ret void
}

declare dso_local %struct.cipher_req_ctx* @skcipher_request_ctx(%struct.skcipher_request*) #1

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local i32 @crypto_skcipher_ivsize(%struct.crypto_skcipher*) #1

declare dso_local i32 @cc_unmap_cipher_request(%struct.device*, %struct.cipher_req_ctx*, i32, %struct.scatterlist*, %struct.scatterlist*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @kzfree(i32) #1

declare dso_local i32 @skcipher_request_complete(%struct.skcipher_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
