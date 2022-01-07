; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_mxs-dcp.c_mxs_dcp_aes_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_mxs-dcp.c_mxs_dcp_aes_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcp = type { i32*, i32*, i32* }
%struct.ablkcipher_request = type { %struct.crypto_async_request }
%struct.crypto_async_request = type { i32 }
%struct.dcp_async_ctx = type { i64, i64 }
%struct.dcp_aes_req_ctx = type { i32, i32 }

@global_sdcp = common dso_local global %struct.dcp* null, align 8
@AES_KEYSIZE_128 = common dso_local global i64 0, align 8
@DCP_CHAN_CRYPTO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*, i32, i32)* @mxs_dcp_aes_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_dcp_aes_enqueue(%struct.ablkcipher_request* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ablkcipher_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dcp*, align 8
  %9 = alloca %struct.crypto_async_request*, align 8
  %10 = alloca %struct.dcp_async_ctx*, align 8
  %11 = alloca %struct.dcp_aes_req_ctx*, align 8
  %12 = alloca i32, align 4
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.dcp*, %struct.dcp** @global_sdcp, align 8
  store %struct.dcp* %13, %struct.dcp** %8, align 8
  %14 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %15 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %14, i32 0, i32 0
  store %struct.crypto_async_request* %15, %struct.crypto_async_request** %9, align 8
  %16 = load %struct.crypto_async_request*, %struct.crypto_async_request** %9, align 8
  %17 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.dcp_async_ctx* @crypto_tfm_ctx(i32 %18)
  store %struct.dcp_async_ctx* %19, %struct.dcp_async_ctx** %10, align 8
  %20 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %21 = call %struct.dcp_aes_req_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request* %20)
  store %struct.dcp_aes_req_ctx* %21, %struct.dcp_aes_req_ctx** %11, align 8
  %22 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %10, align 8
  %23 = getelementptr inbounds %struct.dcp_async_ctx, %struct.dcp_async_ctx* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AES_KEYSIZE_128, align 8
  %26 = icmp ne i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @mxs_dcp_block_fallback(%struct.ablkcipher_request* %31, i32 %32)
  store i32 %33, i32* %4, align 4
  br label %80

34:                                               ; preds = %3
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.dcp_aes_req_ctx*, %struct.dcp_aes_req_ctx** %11, align 8
  %37 = getelementptr inbounds %struct.dcp_aes_req_ctx, %struct.dcp_aes_req_ctx* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.dcp_aes_req_ctx*, %struct.dcp_aes_req_ctx** %11, align 8
  %40 = getelementptr inbounds %struct.dcp_aes_req_ctx, %struct.dcp_aes_req_ctx* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i64, i64* @DCP_CHAN_CRYPTO, align 8
  %42 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %10, align 8
  %43 = getelementptr inbounds %struct.dcp_async_ctx, %struct.dcp_async_ctx* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.dcp*, %struct.dcp** %8, align 8
  %45 = getelementptr inbounds %struct.dcp, %struct.dcp* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %10, align 8
  %48 = getelementptr inbounds %struct.dcp_async_ctx, %struct.dcp_async_ctx* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = call i32 @spin_lock(i32* %50)
  %52 = load %struct.dcp*, %struct.dcp** %8, align 8
  %53 = getelementptr inbounds %struct.dcp, %struct.dcp* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %10, align 8
  %56 = getelementptr inbounds %struct.dcp_async_ctx, %struct.dcp_async_ctx* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %60 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %59, i32 0, i32 0
  %61 = call i32 @crypto_enqueue_request(i32* %58, %struct.crypto_async_request* %60)
  store i32 %61, i32* %12, align 4
  %62 = load %struct.dcp*, %struct.dcp** %8, align 8
  %63 = getelementptr inbounds %struct.dcp, %struct.dcp* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %10, align 8
  %66 = getelementptr inbounds %struct.dcp_async_ctx, %struct.dcp_async_ctx* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = call i32 @spin_unlock(i32* %68)
  %70 = load %struct.dcp*, %struct.dcp** %8, align 8
  %71 = getelementptr inbounds %struct.dcp, %struct.dcp* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %10, align 8
  %74 = getelementptr inbounds %struct.dcp_async_ctx, %struct.dcp_async_ctx* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @wake_up_process(i32 %77)
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %34, %30
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.dcp_async_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local %struct.dcp_aes_req_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mxs_dcp_block_fallback(%struct.ablkcipher_request*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @crypto_enqueue_request(i32*, %struct.crypto_async_request*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up_process(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
