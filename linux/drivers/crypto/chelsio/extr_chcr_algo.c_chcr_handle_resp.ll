; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_handle_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_handle_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { %struct.crypto_tfm* }
%struct.crypto_tfm = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.chcr_context = type { i32 }
%struct.adapter = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CRYPTO_ALG_TYPE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chcr_handle_resp(%struct.crypto_async_request* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_async_request*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.crypto_tfm*, align 8
  %8 = alloca %struct.chcr_context*, align 8
  %9 = alloca %struct.adapter*, align 8
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %11 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %10, i32 0, i32 0
  %12 = load %struct.crypto_tfm*, %struct.crypto_tfm** %11, align 8
  store %struct.crypto_tfm* %12, %struct.crypto_tfm** %7, align 8
  %13 = load %struct.crypto_tfm*, %struct.crypto_tfm** %7, align 8
  %14 = call %struct.chcr_context* @crypto_tfm_ctx(%struct.crypto_tfm* %13)
  store %struct.chcr_context* %14, %struct.chcr_context** %8, align 8
  %15 = load %struct.chcr_context*, %struct.chcr_context** %8, align 8
  %16 = getelementptr inbounds %struct.chcr_context, %struct.chcr_context* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.adapter* @padap(i32 %17)
  store %struct.adapter* %18, %struct.adapter** %9, align 8
  %19 = load %struct.crypto_tfm*, %struct.crypto_tfm** %7, align 8
  %20 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %25 = and i32 %23, %24
  switch i32 %25, label %44 [
    i32 129, label %26
    i32 130, label %32
    i32 128, label %38
  ]

26:                                               ; preds = %3
  %27 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %28 = call i32 @aead_request_cast(%struct.crypto_async_request* %27)
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @chcr_handle_aead_resp(i32 %28, i8* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  br label %44

32:                                               ; preds = %3
  %33 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %34 = call i32 @ablkcipher_request_cast(%struct.crypto_async_request* %33)
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @chcr_handle_cipher_resp(i32 %34, i8* %35, i32 %36)
  br label %44

38:                                               ; preds = %3
  %39 = load %struct.crypto_async_request*, %struct.crypto_async_request** %4, align 8
  %40 = call i32 @ahash_request_cast(%struct.crypto_async_request* %39)
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @chcr_handle_ahash_resp(i32 %40, i8* %41, i32 %42)
  br label %44

44:                                               ; preds = %38, %3, %32, %26
  %45 = load %struct.adapter*, %struct.adapter** %9, align 8
  %46 = getelementptr inbounds %struct.adapter, %struct.adapter* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = call i32 @atomic_inc(i32* %47)
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local %struct.chcr_context* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local %struct.adapter* @padap(i32) #1

declare dso_local i32 @chcr_handle_aead_resp(i32, i8*, i32) #1

declare dso_local i32 @aead_request_cast(%struct.crypto_async_request*) #1

declare dso_local i32 @chcr_handle_cipher_resp(i32, i8*, i32) #1

declare dso_local i32 @ablkcipher_request_cast(%struct.crypto_async_request*) #1

declare dso_local i32 @chcr_handle_ahash_resp(i32, i8*, i32) #1

declare dso_local i32 @ahash_request_cast(%struct.crypto_async_request*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
