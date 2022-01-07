; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_n2_hmac_async_digest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_n2_hmac_async_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i64, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.n2_hmac_alg = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.n2_hash_req_ctx = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.n2_hmac_ctx = type { i64, i32 }
%struct.n2_hash_ctx = type { i32 }

@N2_HASH_KEY_MAX = common dso_local global i64 0, align 8
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @n2_hmac_async_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @n2_hmac_async_digest(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.n2_hmac_alg*, align 8
  %5 = alloca %struct.n2_hash_req_ctx*, align 8
  %6 = alloca %struct.crypto_ahash*, align 8
  %7 = alloca %struct.n2_hmac_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.n2_hash_req_ctx*, align 8
  %10 = alloca %struct.n2_hash_ctx*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %11 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %12 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.n2_hmac_alg* @n2_hmac_alg(i32 %14)
  store %struct.n2_hmac_alg* %15, %struct.n2_hmac_alg** %4, align 8
  %16 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %17 = call %struct.n2_hash_req_ctx* @ahash_request_ctx(%struct.ahash_request* %16)
  store %struct.n2_hash_req_ctx* %17, %struct.n2_hash_req_ctx** %5, align 8
  %18 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %19 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %18)
  store %struct.crypto_ahash* %19, %struct.crypto_ahash** %6, align 8
  %20 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %21 = call i8* @crypto_ahash_ctx(%struct.crypto_ahash* %20)
  %22 = bitcast i8* %21 to %struct.n2_hmac_ctx*
  store %struct.n2_hmac_ctx* %22, %struct.n2_hmac_ctx** %7, align 8
  %23 = load %struct.n2_hmac_alg*, %struct.n2_hmac_alg** %4, align 8
  %24 = getelementptr inbounds %struct.n2_hmac_alg, %struct.n2_hmac_alg* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %28 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %1
  %35 = load %struct.n2_hmac_ctx*, %struct.n2_hmac_ctx** %7, align 8
  %36 = getelementptr inbounds %struct.n2_hmac_ctx, %struct.n2_hmac_ctx* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @N2_HASH_KEY_MAX, align 8
  %39 = icmp sgt i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %86

43:                                               ; preds = %34, %1
  %44 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %45 = call %struct.n2_hash_req_ctx* @ahash_request_ctx(%struct.ahash_request* %44)
  store %struct.n2_hash_req_ctx* %45, %struct.n2_hash_req_ctx** %9, align 8
  %46 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %47 = call i8* @crypto_ahash_ctx(%struct.crypto_ahash* %46)
  %48 = bitcast i8* %47 to %struct.n2_hash_ctx*
  store %struct.n2_hash_ctx* %48, %struct.n2_hash_ctx** %10, align 8
  %49 = load %struct.n2_hash_req_ctx*, %struct.n2_hash_req_ctx** %9, align 8
  %50 = getelementptr inbounds %struct.n2_hash_req_ctx, %struct.n2_hash_req_ctx* %49, i32 0, i32 1
  %51 = load %struct.n2_hash_ctx*, %struct.n2_hash_ctx** %10, align 8
  %52 = getelementptr inbounds %struct.n2_hash_ctx, %struct.n2_hash_ctx* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ahash_request_set_tfm(%struct.TYPE_9__* %50, i32 %53)
  %55 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %56 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %60 = and i32 %58, %59
  %61 = load %struct.n2_hash_req_ctx*, %struct.n2_hash_req_ctx** %9, align 8
  %62 = getelementptr inbounds %struct.n2_hash_req_ctx, %struct.n2_hash_req_ctx* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32 %60, i32* %64, align 8
  %65 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %66 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.n2_hash_req_ctx*, %struct.n2_hash_req_ctx** %9, align 8
  %69 = getelementptr inbounds %struct.n2_hash_req_ctx, %struct.n2_hash_req_ctx* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  store i64 %67, i64* %70, align 8
  %71 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %72 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.n2_hash_req_ctx*, %struct.n2_hash_req_ctx** %9, align 8
  %75 = getelementptr inbounds %struct.n2_hash_req_ctx, %struct.n2_hash_req_ctx* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  store i32 %73, i32* %76, align 4
  %77 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %78 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.n2_hash_req_ctx*, %struct.n2_hash_req_ctx** %9, align 8
  %81 = getelementptr inbounds %struct.n2_hash_req_ctx, %struct.n2_hash_req_ctx* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  store i32 %79, i32* %82, align 8
  %83 = load %struct.n2_hash_req_ctx*, %struct.n2_hash_req_ctx** %9, align 8
  %84 = getelementptr inbounds %struct.n2_hash_req_ctx, %struct.n2_hash_req_ctx* %83, i32 0, i32 1
  %85 = call i32 @crypto_ahash_digest(%struct.TYPE_9__* %84)
  store i32 %85, i32* %2, align 4
  br label %117

86:                                               ; preds = %34
  %87 = load %struct.n2_hash_req_ctx*, %struct.n2_hash_req_ctx** %5, align 8
  %88 = getelementptr inbounds %struct.n2_hash_req_ctx, %struct.n2_hash_req_ctx* %87, i32 0, i32 0
  %89 = load %struct.n2_hmac_alg*, %struct.n2_hmac_alg** %4, align 8
  %90 = getelementptr inbounds %struct.n2_hmac_alg, %struct.n2_hmac_alg* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.n2_hmac_alg*, %struct.n2_hmac_alg** %4, align 8
  %94 = getelementptr inbounds %struct.n2_hmac_alg, %struct.n2_hmac_alg* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @memcpy(i32* %88, i32 %92, i32 %96)
  %98 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %99 = load %struct.n2_hmac_alg*, %struct.n2_hmac_alg** %4, align 8
  %100 = getelementptr inbounds %struct.n2_hmac_alg, %struct.n2_hmac_alg* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.n2_hmac_alg*, %struct.n2_hmac_alg** %4, align 8
  %104 = getelementptr inbounds %struct.n2_hmac_alg, %struct.n2_hmac_alg* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.n2_hash_req_ctx*, %struct.n2_hash_req_ctx** %5, align 8
  %109 = getelementptr inbounds %struct.n2_hash_req_ctx, %struct.n2_hash_req_ctx* %108, i32 0, i32 0
  %110 = load %struct.n2_hmac_ctx*, %struct.n2_hmac_ctx** %7, align 8
  %111 = getelementptr inbounds %struct.n2_hmac_ctx, %struct.n2_hmac_ctx* %110, i32 0, i32 1
  %112 = call i32 @__pa(i32* %111)
  %113 = load %struct.n2_hmac_ctx*, %struct.n2_hmac_ctx** %7, align 8
  %114 = getelementptr inbounds %struct.n2_hmac_ctx, %struct.n2_hmac_ctx* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @n2_do_async_digest(%struct.ahash_request* %98, i32 %102, i32 %106, i32 %107, i32* %109, i32 %112, i64 %115)
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %86, %43
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local %struct.n2_hmac_alg* @n2_hmac_alg(i32) #1

declare dso_local %struct.n2_hash_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local i8* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ahash_request_set_tfm(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @crypto_ahash_digest(%struct.TYPE_9__*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @n2_do_async_digest(%struct.ahash_request*, i32, i32, i32, i32*, i32, i64) #1

declare dso_local i32 @__pa(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
