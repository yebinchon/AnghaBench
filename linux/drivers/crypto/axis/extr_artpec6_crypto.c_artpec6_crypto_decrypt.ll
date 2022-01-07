; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32, i32, i32 }
%struct.crypto_skcipher = type { i32 }
%struct.artpec6_cryptotfm_context = type { i32 }
%struct.artpec6_crypto_request_context = type { i32, i32 }
%struct.crypto_async_request = type opaque
%struct.crypto_async_request.2 = type opaque
%struct.crypto_async_request.0 = type opaque
%struct.crypto_async_request.1 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*)* @artpec6_crypto_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @artpec6_crypto_decrypt(%struct.skcipher_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.skcipher_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_skcipher*, align 8
  %6 = alloca %struct.artpec6_cryptotfm_context*, align 8
  %7 = alloca %struct.artpec6_crypto_request_context*, align 8
  %8 = alloca void (%struct.crypto_async_request*)*, align 8
  store %struct.skcipher_request* %0, %struct.skcipher_request** %3, align 8
  %9 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %10 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %9)
  store %struct.crypto_skcipher* %10, %struct.crypto_skcipher** %5, align 8
  %11 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %12 = call %struct.artpec6_cryptotfm_context* @crypto_skcipher_ctx(%struct.crypto_skcipher* %11)
  store %struct.artpec6_cryptotfm_context* %12, %struct.artpec6_cryptotfm_context** %6, align 8
  store %struct.artpec6_crypto_request_context* null, %struct.artpec6_crypto_request_context** %7, align 8
  %13 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %14 = call %struct.artpec6_crypto_request_context* @skcipher_request_ctx(%struct.skcipher_request* %13)
  store %struct.artpec6_crypto_request_context* %14, %struct.artpec6_crypto_request_context** %7, align 8
  %15 = load %struct.artpec6_cryptotfm_context*, %struct.artpec6_cryptotfm_context** %6, align 8
  %16 = getelementptr inbounds %struct.artpec6_cryptotfm_context, %struct.artpec6_cryptotfm_context* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %21 [
    i32 130, label %18
    i32 129, label %18
    i32 128, label %18
  ]

18:                                               ; preds = %1, %1, %1
  %19 = load %struct.artpec6_crypto_request_context*, %struct.artpec6_crypto_request_context** %7, align 8
  %20 = getelementptr inbounds %struct.artpec6_crypto_request_context, %struct.artpec6_crypto_request_context* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  br label %22

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %21, %18
  %23 = load %struct.artpec6_cryptotfm_context*, %struct.artpec6_cryptotfm_context** %6, align 8
  %24 = getelementptr inbounds %struct.artpec6_cryptotfm_context, %struct.artpec6_cryptotfm_context* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %27 [
    i32 130, label %26
  ]

26:                                               ; preds = %22
  store void (%struct.crypto_async_request*)* bitcast (void (%struct.crypto_async_request.0*)* @artpec6_crypto_complete_cbc_decrypt to void (%struct.crypto_async_request*)*), void (%struct.crypto_async_request*)** %8, align 8
  br label %28

27:                                               ; preds = %22
  store void (%struct.crypto_async_request*)* bitcast (void (%struct.crypto_async_request.1*)* @artpec6_crypto_complete_crypto to void (%struct.crypto_async_request*)*), void (%struct.crypto_async_request*)** %8, align 8
  br label %28

28:                                               ; preds = %27, %26
  %29 = load %struct.artpec6_crypto_request_context*, %struct.artpec6_crypto_request_context** %7, align 8
  %30 = getelementptr inbounds %struct.artpec6_crypto_request_context, %struct.artpec6_crypto_request_context* %29, i32 0, i32 1
  %31 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %32 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %31, i32 0, i32 2
  %33 = load void (%struct.crypto_async_request*)*, void (%struct.crypto_async_request*)** %8, align 8
  %34 = bitcast void (%struct.crypto_async_request*)* %33 to void (%struct.crypto_async_request.2*)*
  %35 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %36 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %39 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @artpec6_crypto_common_init(i32* %30, i32* %32, void (%struct.crypto_async_request.2*)* %34, i32 %37, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %28
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %60

46:                                               ; preds = %28
  %47 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %48 = call i32 @artpec6_crypto_prepare_crypto(%struct.skcipher_request* %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.artpec6_crypto_request_context*, %struct.artpec6_crypto_request_context** %7, align 8
  %53 = getelementptr inbounds %struct.artpec6_crypto_request_context, %struct.artpec6_crypto_request_context* %52, i32 0, i32 1
  %54 = call i32 @artpec6_crypto_common_destroy(i32* %53)
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %60

56:                                               ; preds = %46
  %57 = load %struct.artpec6_crypto_request_context*, %struct.artpec6_crypto_request_context** %7, align 8
  %58 = getelementptr inbounds %struct.artpec6_crypto_request_context, %struct.artpec6_crypto_request_context* %57, i32 0, i32 1
  %59 = call i32 @artpec6_crypto_submit(i32* %58)
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %56, %51, %44
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.artpec6_cryptotfm_context* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local %struct.artpec6_crypto_request_context* @skcipher_request_ctx(%struct.skcipher_request*) #1

declare dso_local void @artpec6_crypto_complete_cbc_decrypt(%struct.crypto_async_request.0*) #1

declare dso_local void @artpec6_crypto_complete_crypto(%struct.crypto_async_request.1*) #1

declare dso_local i32 @artpec6_crypto_common_init(i32*, i32*, void (%struct.crypto_async_request.2*)*, i32, i32) #1

declare dso_local i32 @artpec6_crypto_prepare_crypto(%struct.skcipher_request*) #1

declare dso_local i32 @artpec6_crypto_common_destroy(i32*) #1

declare dso_local i32 @artpec6_crypto_submit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
