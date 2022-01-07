; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_hash.c_safexcel_handle_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_hash.c_safexcel_handle_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safexcel_crypto_priv = type { i32 }
%struct.crypto_async_request = type { i32 }
%struct.ahash_request = type { i32 }
%struct.safexcel_ahash_req = type { i32 }

@EIP197_TRC_CACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.safexcel_crypto_priv*, i32, %struct.crypto_async_request*, i32*, i32*)* @safexcel_handle_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safexcel_handle_result(%struct.safexcel_crypto_priv* %0, i32 %1, %struct.crypto_async_request* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.safexcel_crypto_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_async_request*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ahash_request*, align 8
  %12 = alloca %struct.safexcel_ahash_req*, align 8
  %13 = alloca i32, align 4
  store %struct.safexcel_crypto_priv* %0, %struct.safexcel_crypto_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.crypto_async_request* %2, %struct.crypto_async_request** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load %struct.crypto_async_request*, %struct.crypto_async_request** %8, align 8
  %15 = call %struct.ahash_request* @ahash_request_cast(%struct.crypto_async_request* %14)
  store %struct.ahash_request* %15, %struct.ahash_request** %11, align 8
  %16 = load %struct.ahash_request*, %struct.ahash_request** %11, align 8
  %17 = call %struct.safexcel_ahash_req* @ahash_request_ctx(%struct.ahash_request* %16)
  store %struct.safexcel_ahash_req* %17, %struct.safexcel_ahash_req** %12, align 8
  %18 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %19 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @EIP197_TRC_CACHE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %5
  %25 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %12, align 8
  %26 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %24, %5
  %30 = phi i1 [ false, %5 ], [ %28, %24 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %12, align 8
  %34 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %29
  %38 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %12, align 8
  %39 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  %40 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.crypto_async_request*, %struct.crypto_async_request** %8, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @safexcel_handle_inv_result(%struct.safexcel_crypto_priv* %40, i32 %41, %struct.crypto_async_request* %42, i32* %43, i32* %44)
  store i32 %45, i32* %13, align 4
  br label %53

46:                                               ; preds = %29
  %47 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.crypto_async_request*, %struct.crypto_async_request** %8, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = call i32 @safexcel_handle_req_result(%struct.safexcel_crypto_priv* %47, i32 %48, %struct.crypto_async_request* %49, i32* %50, i32* %51)
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %46, %37
  %54 = load i32, i32* %13, align 4
  ret i32 %54
}

declare dso_local %struct.ahash_request* @ahash_request_cast(%struct.crypto_async_request*) #1

declare dso_local %struct.safexcel_ahash_req* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @safexcel_handle_inv_result(%struct.safexcel_crypto_priv*, i32, %struct.crypto_async_request*, i32*, i32*) #1

declare dso_local i32 @safexcel_handle_req_result(%struct.safexcel_crypto_priv*, i32, %struct.crypto_async_request*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
