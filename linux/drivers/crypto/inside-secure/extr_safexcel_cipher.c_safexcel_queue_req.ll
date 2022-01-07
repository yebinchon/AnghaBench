; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_queue_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_queue_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { i32 }
%struct.safexcel_cipher_req = type { i32, i32 }
%struct.safexcel_cipher_ctx = type { %struct.TYPE_4__, %struct.safexcel_crypto_priv* }
%struct.TYPE_4__ = type { i32, i32, i64, i32 }
%struct.safexcel_crypto_priv = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@EIP197_TRC_CACHE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_async_request*, %struct.safexcel_cipher_req*, i32)* @safexcel_queue_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safexcel_queue_req(%struct.crypto_async_request* %0, %struct.safexcel_cipher_req* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_async_request*, align 8
  %6 = alloca %struct.safexcel_cipher_req*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.safexcel_cipher_ctx*, align 8
  %9 = alloca %struct.safexcel_crypto_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %5, align 8
  store %struct.safexcel_cipher_req* %1, %struct.safexcel_cipher_req** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %13 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.safexcel_cipher_ctx* @crypto_tfm_ctx(i32 %14)
  store %struct.safexcel_cipher_ctx* %15, %struct.safexcel_cipher_ctx** %8, align 8
  %16 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %8, align 8
  %17 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %16, i32 0, i32 1
  %18 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %17, align 8
  store %struct.safexcel_crypto_priv* %18, %struct.safexcel_crypto_priv** %9, align 8
  %19 = load %struct.safexcel_cipher_req*, %struct.safexcel_cipher_req** %6, align 8
  %20 = getelementptr inbounds %struct.safexcel_cipher_req, %struct.safexcel_cipher_req* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.safexcel_cipher_req*, %struct.safexcel_cipher_req** %6, align 8
  %23 = getelementptr inbounds %struct.safexcel_cipher_req, %struct.safexcel_cipher_req* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %8, align 8
  %25 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %3
  %30 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %9, align 8
  %31 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @EIP197_TRC_CACHE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %29
  %37 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %8, align 8
  %38 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.safexcel_cipher_req*, %struct.safexcel_cipher_req** %6, align 8
  %44 = getelementptr inbounds %struct.safexcel_cipher_req, %struct.safexcel_cipher_req* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  %45 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %8, align 8
  %46 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  br label %48

48:                                               ; preds = %42, %36, %29
  br label %78

49:                                               ; preds = %3
  %50 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %9, align 8
  %51 = call i32 @safexcel_select_ring(%struct.safexcel_crypto_priv* %50)
  %52 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %8, align 8
  %53 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %9, align 8
  %56 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %59 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @EIP197_GFP_FLAGS(i32 %60)
  %62 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %8, align 8
  %63 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  %65 = call i64 @dma_pool_zalloc(i32 %57, i32 %61, i32* %64)
  %66 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %8, align 8
  %67 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  store i64 %65, i64* %68, align 8
  %69 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %8, align 8
  %70 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %49
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %126

77:                                               ; preds = %49
  br label %78

78:                                               ; preds = %77, %48
  %79 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %8, align 8
  %80 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %11, align 4
  %83 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %9, align 8
  %84 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %83, i32 0, i32 1
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = call i32 @spin_lock_bh(i32* %89)
  %91 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %9, align 8
  %92 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %91, i32 0, i32 1
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 3
  %98 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %99 = call i32 @crypto_enqueue_request(i32* %97, %struct.crypto_async_request* %98)
  store i32 %99, i32* %10, align 4
  %100 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %9, align 8
  %101 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %100, i32 0, i32 1
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  %107 = call i32 @spin_unlock_bh(i32* %106)
  %108 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %9, align 8
  %109 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %108, i32 0, i32 1
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %9, align 8
  %117 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %116, i32 0, i32 1
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = call i32 @queue_work(i32 %115, i32* %123)
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %78, %74
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local %struct.safexcel_cipher_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local i32 @safexcel_select_ring(%struct.safexcel_crypto_priv*) #1

declare dso_local i64 @dma_pool_zalloc(i32, i32, i32*) #1

declare dso_local i32 @EIP197_GFP_FLAGS(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @crypto_enqueue_request(i32*, %struct.crypto_async_request*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
