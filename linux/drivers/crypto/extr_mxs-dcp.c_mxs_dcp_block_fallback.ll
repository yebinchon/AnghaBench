; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_mxs-dcp.c_mxs_dcp_block_fallback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_mxs-dcp.c_mxs_dcp_block_fallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_ablkcipher = type { i32 }
%struct.dcp_async_ctx = type { i32 }

@subreq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*, i32)* @mxs_dcp_block_fallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_dcp_block_fallback(%struct.ablkcipher_request* %0, i32 %1) #0 {
  %3 = alloca %struct.ablkcipher_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ablkcipher*, align 8
  %6 = alloca %struct.dcp_async_ctx*, align 8
  %7 = alloca i32, align 4
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %9 = call %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %8)
  store %struct.crypto_ablkcipher* %9, %struct.crypto_ablkcipher** %5, align 8
  %10 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %11 = call %struct.dcp_async_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %10)
  store %struct.dcp_async_ctx* %11, %struct.dcp_async_ctx** %6, align 8
  %12 = load i32, i32* @subreq, align 4
  %13 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %6, align 8
  %14 = getelementptr inbounds %struct.dcp_async_ctx, %struct.dcp_async_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32 %12, i32 %15)
  %17 = load i32, i32* @subreq, align 4
  %18 = load %struct.dcp_async_ctx*, %struct.dcp_async_ctx** %6, align 8
  %19 = getelementptr inbounds %struct.dcp_async_ctx, %struct.dcp_async_ctx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @skcipher_request_set_sync_tfm(i32 %17, i32 %20)
  %22 = load i32, i32* @subreq, align 4
  %23 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %24 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @skcipher_request_set_callback(i32 %22, i32 %26, i32* null, i32* null)
  %28 = load i32, i32* @subreq, align 4
  %29 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %30 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %33 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %36 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %39 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @skcipher_request_set_crypt(i32 %28, i32 %31, i32 %34, i32 %37, i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %2
  %45 = load i32, i32* @subreq, align 4
  %46 = call i32 @crypto_skcipher_encrypt(i32 %45)
  store i32 %46, i32* %7, align 4
  br label %50

47:                                               ; preds = %2
  %48 = load i32, i32* @subreq, align 4
  %49 = call i32 @crypto_skcipher_decrypt(i32 %48)
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* @subreq, align 4
  %52 = call i32 @skcipher_request_zero(i32 %51)
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local %struct.dcp_async_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32, i32) #1

declare dso_local i32 @skcipher_request_set_sync_tfm(i32, i32) #1

declare dso_local i32 @skcipher_request_set_callback(i32, i32, i32*, i32*) #1

declare dso_local i32 @skcipher_request_set_crypt(i32, i32, i32, i32, i32) #1

declare dso_local i32 @crypto_skcipher_encrypt(i32) #1

declare dso_local i32 @crypto_skcipher_decrypt(i32) #1

declare dso_local i32 @skcipher_request_zero(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
