; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_aes_ecb_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_aes_ecb_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sahara_ctx = type { i64, i32 }

@AES_KEYSIZE_128 = common dso_local global i64 0, align 8
@subreq = common dso_local global i32 0, align 4
@FLAGS_ENCRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*)* @sahara_aes_ecb_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sahara_aes_ecb_encrypt(%struct.ablkcipher_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ablkcipher_request*, align 8
  %4 = alloca %struct.sahara_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %3, align 8
  %6 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %7 = call i32 @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %6)
  %8 = call %struct.sahara_ctx* @crypto_ablkcipher_ctx(i32 %7)
  store %struct.sahara_ctx* %8, %struct.sahara_ctx** %4, align 8
  %9 = load %struct.sahara_ctx*, %struct.sahara_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.sahara_ctx, %struct.sahara_ctx* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @AES_KEYSIZE_128, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %53

17:                                               ; preds = %1
  %18 = load i32, i32* @subreq, align 4
  %19 = load %struct.sahara_ctx*, %struct.sahara_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.sahara_ctx, %struct.sahara_ctx* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32 %18, i32 %21)
  %23 = load i32, i32* @subreq, align 4
  %24 = load %struct.sahara_ctx*, %struct.sahara_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.sahara_ctx, %struct.sahara_ctx* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @skcipher_request_set_sync_tfm(i32 %23, i32 %26)
  %28 = load i32, i32* @subreq, align 4
  %29 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %30 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @skcipher_request_set_callback(i32 %28, i32 %32, i32* null, i32* null)
  %34 = load i32, i32* @subreq, align 4
  %35 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %36 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %39 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %42 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %45 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @skcipher_request_set_crypt(i32 %34, i32 %37, i32 %40, i32 %43, i32 %46)
  %48 = load i32, i32* @subreq, align 4
  %49 = call i32 @crypto_skcipher_encrypt(i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* @subreq, align 4
  %51 = call i32 @skcipher_request_zero(i32 %50)
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %57

53:                                               ; preds = %1
  %54 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %55 = load i32, i32* @FLAGS_ENCRYPT, align 4
  %56 = call i32 @sahara_aes_crypt(%struct.ablkcipher_request* %54, i32 %55)
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %53, %17
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.sahara_ctx* @crypto_ablkcipher_ctx(i32) #1

declare dso_local i32 @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32, i32) #1

declare dso_local i32 @skcipher_request_set_sync_tfm(i32, i32) #1

declare dso_local i32 @skcipher_request_set_callback(i32, i32, i32*, i32*) #1

declare dso_local i32 @skcipher_request_set_crypt(i32, i32, i32, i32, i32) #1

declare dso_local i32 @crypto_skcipher_encrypt(i32) #1

declare dso_local i32 @skcipher_request_zero(i32) #1

declare dso_local i32 @sahara_aes_crypt(%struct.ablkcipher_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
