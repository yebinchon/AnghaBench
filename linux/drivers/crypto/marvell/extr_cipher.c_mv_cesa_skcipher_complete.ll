; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cipher.c_mv_cesa_skcipher_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cipher.c_mv_cesa_skcipher_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { i32 }
%struct.skcipher_request = type { i32, i32 }
%struct.mv_cesa_skcipher_req = type { %struct.mv_cesa_req }
%struct.mv_cesa_req = type { %struct.TYPE_10__, %struct.mv_cesa_engine* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.mv_cesa_engine = type { i64, i32 }

@CESA_DMA_REQ = common dso_local global i64 0, align 8
@CESA_SA_CRYPT_IV_SRAM_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_async_request*)* @mv_cesa_skcipher_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_cesa_skcipher_complete(%struct.crypto_async_request* %0) #0 {
  %2 = alloca %struct.crypto_async_request*, align 8
  %3 = alloca %struct.skcipher_request*, align 8
  %4 = alloca %struct.mv_cesa_skcipher_req*, align 8
  %5 = alloca %struct.mv_cesa_engine*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mv_cesa_req*, align 8
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %2, align 8
  %8 = load %struct.crypto_async_request*, %struct.crypto_async_request** %2, align 8
  %9 = call %struct.skcipher_request* @skcipher_request_cast(%struct.crypto_async_request* %8)
  store %struct.skcipher_request* %9, %struct.skcipher_request** %3, align 8
  %10 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %11 = call %struct.mv_cesa_skcipher_req* @skcipher_request_ctx(%struct.skcipher_request* %10)
  store %struct.mv_cesa_skcipher_req* %11, %struct.mv_cesa_skcipher_req** %4, align 8
  %12 = load %struct.mv_cesa_skcipher_req*, %struct.mv_cesa_skcipher_req** %4, align 8
  %13 = getelementptr inbounds %struct.mv_cesa_skcipher_req, %struct.mv_cesa_skcipher_req* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %13, i32 0, i32 1
  %15 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %14, align 8
  store %struct.mv_cesa_engine* %15, %struct.mv_cesa_engine** %5, align 8
  %16 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %17 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %5, align 8
  %20 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %19, i32 0, i32 1
  %21 = call i32 @atomic_sub(i32 %18, i32* %20)
  %22 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %23 = call i32 @crypto_skcipher_reqtfm(%struct.skcipher_request* %22)
  %24 = call i32 @crypto_skcipher_ivsize(i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.mv_cesa_skcipher_req*, %struct.mv_cesa_skcipher_req** %4, align 8
  %26 = getelementptr inbounds %struct.mv_cesa_skcipher_req, %struct.mv_cesa_skcipher_req* %25, i32 0, i32 0
  %27 = call i64 @mv_cesa_req_get_type(%struct.mv_cesa_req* %26)
  %28 = load i64, i64* @CESA_DMA_REQ, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %1
  %31 = load %struct.mv_cesa_skcipher_req*, %struct.mv_cesa_skcipher_req** %4, align 8
  %32 = getelementptr inbounds %struct.mv_cesa_skcipher_req, %struct.mv_cesa_skcipher_req* %31, i32 0, i32 0
  store %struct.mv_cesa_req* %32, %struct.mv_cesa_req** %7, align 8
  %33 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %34 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mv_cesa_req*, %struct.mv_cesa_req** %7, align 8
  %37 = getelementptr inbounds %struct.mv_cesa_req, %struct.mv_cesa_req* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @memcpy(i32 %35, i32 %45, i32 %46)
  br label %59

48:                                               ; preds = %1
  %49 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %50 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %5, align 8
  %53 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CESA_SA_CRYPT_IV_SRAM_OFFSET, align 8
  %56 = add nsw i64 %54, %55
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @memcpy_fromio(i32 %51, i64 %56, i32 %57)
  br label %59

59:                                               ; preds = %48, %30
  ret void
}

declare dso_local %struct.skcipher_request* @skcipher_request_cast(%struct.crypto_async_request*) #1

declare dso_local %struct.mv_cesa_skcipher_req* @skcipher_request_ctx(%struct.skcipher_request*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @crypto_skcipher_ivsize(i32) #1

declare dso_local i32 @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local i64 @mv_cesa_req_get_type(%struct.mv_cesa_req*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @memcpy_fromio(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
