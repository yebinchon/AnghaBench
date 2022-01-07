; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_common_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_common_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.artpec6_crypto_req_common = type { void (%struct.crypto_async_request*)*, %struct.crypto_async_request*, i32, i32 }
%struct.crypto_async_request = type { i32 }
%struct.scatterlist = type { i32 }
%struct.artpec6_crypto = type { i32 }

@artpec6_crypto_dev = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.artpec6_crypto_req_common*, %struct.crypto_async_request*, void (%struct.crypto_async_request*)*, %struct.scatterlist*, i32)* @artpec6_crypto_common_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @artpec6_crypto_common_init(%struct.artpec6_crypto_req_common* %0, %struct.crypto_async_request* %1, void (%struct.crypto_async_request*)* %2, %struct.scatterlist* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.artpec6_crypto_req_common*, align 8
  %8 = alloca %struct.crypto_async_request*, align 8
  %9 = alloca void (%struct.crypto_async_request*)*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.artpec6_crypto*, align 8
  store %struct.artpec6_crypto_req_common* %0, %struct.artpec6_crypto_req_common** %7, align 8
  store %struct.crypto_async_request* %1, %struct.crypto_async_request** %8, align 8
  store void (%struct.crypto_async_request*)* %2, void (%struct.crypto_async_request*)** %9, align 8
  store %struct.scatterlist* %3, %struct.scatterlist** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @artpec6_crypto_dev, align 4
  %15 = call %struct.artpec6_crypto* @dev_get_drvdata(i32 %14)
  store %struct.artpec6_crypto* %15, %struct.artpec6_crypto** %13, align 8
  %16 = load %struct.crypto_async_request*, %struct.crypto_async_request** %8, align 8
  %17 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @GFP_KERNEL, align 4
  br label %26

24:                                               ; preds = %5
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.artpec6_crypto_req_common*, %struct.artpec6_crypto_req_common** %7, align 8
  %30 = getelementptr inbounds %struct.artpec6_crypto_req_common, %struct.artpec6_crypto_req_common* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.artpec6_crypto*, %struct.artpec6_crypto** %13, align 8
  %32 = getelementptr inbounds %struct.artpec6_crypto, %struct.artpec6_crypto* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @kmem_cache_alloc(i32 %33, i32 %34)
  %36 = load %struct.artpec6_crypto_req_common*, %struct.artpec6_crypto_req_common** %7, align 8
  %37 = getelementptr inbounds %struct.artpec6_crypto_req_common, %struct.artpec6_crypto_req_common* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.artpec6_crypto_req_common*, %struct.artpec6_crypto_req_common** %7, align 8
  %39 = getelementptr inbounds %struct.artpec6_crypto_req_common, %struct.artpec6_crypto_req_common* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %26
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %52

45:                                               ; preds = %26
  %46 = load %struct.crypto_async_request*, %struct.crypto_async_request** %8, align 8
  %47 = load %struct.artpec6_crypto_req_common*, %struct.artpec6_crypto_req_common** %7, align 8
  %48 = getelementptr inbounds %struct.artpec6_crypto_req_common, %struct.artpec6_crypto_req_common* %47, i32 0, i32 1
  store %struct.crypto_async_request* %46, %struct.crypto_async_request** %48, align 8
  %49 = load void (%struct.crypto_async_request*)*, void (%struct.crypto_async_request*)** %9, align 8
  %50 = load %struct.artpec6_crypto_req_common*, %struct.artpec6_crypto_req_common** %7, align 8
  %51 = getelementptr inbounds %struct.artpec6_crypto_req_common, %struct.artpec6_crypto_req_common* %50, i32 0, i32 0
  store void (%struct.crypto_async_request*)* %49, void (%struct.crypto_async_request*)** %51, align 8
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %45, %42
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local %struct.artpec6_crypto* @dev_get_drvdata(i32) #1

declare dso_local i32 @kmem_cache_alloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
