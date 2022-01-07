; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-aes-cmac.c_ccp_aes_cmac_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-aes-cmac.c_ccp_aes_cmac_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { i32 }
%struct.ahash_request = type { i64 }
%struct.crypto_ahash = type { i32 }
%struct.ccp_aes_cmac_req_ctx = type { i32, i32, i32, i32, i32, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_async_request*, i32)* @ccp_aes_cmac_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_aes_cmac_complete(%struct.crypto_async_request* %0, i32 %1) #0 {
  %3 = alloca %struct.crypto_async_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ahash_request*, align 8
  %6 = alloca %struct.crypto_ahash*, align 8
  %7 = alloca %struct.ccp_aes_cmac_req_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %11 = call %struct.ahash_request* @ahash_request_cast(%struct.crypto_async_request* %10)
  store %struct.ahash_request* %11, %struct.ahash_request** %5, align 8
  %12 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %13 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %12)
  store %struct.crypto_ahash* %13, %struct.crypto_ahash** %6, align 8
  %14 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %15 = call %struct.ccp_aes_cmac_req_ctx* @ahash_request_ctx(%struct.ahash_request* %14)
  store %struct.ccp_aes_cmac_req_ctx* %15, %struct.ccp_aes_cmac_req_ctx** %7, align 8
  %16 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %17 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %73

21:                                               ; preds = %2
  %22 = load %struct.ccp_aes_cmac_req_ctx*, %struct.ccp_aes_cmac_req_ctx** %7, align 8
  %23 = getelementptr inbounds %struct.ccp_aes_cmac_req_ctx, %struct.ccp_aes_cmac_req_ctx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %21
  %27 = load %struct.ccp_aes_cmac_req_ctx*, %struct.ccp_aes_cmac_req_ctx** %7, align 8
  %28 = getelementptr inbounds %struct.ccp_aes_cmac_req_ctx, %struct.ccp_aes_cmac_req_ctx* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ccp_aes_cmac_req_ctx*, %struct.ccp_aes_cmac_req_ctx** %7, align 8
  %31 = getelementptr inbounds %struct.ccp_aes_cmac_req_ctx, %struct.ccp_aes_cmac_req_ctx* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub i32 %29, %32
  store i32 %33, i32* %9, align 4
  %34 = load %struct.ccp_aes_cmac_req_ctx*, %struct.ccp_aes_cmac_req_ctx** %7, align 8
  %35 = getelementptr inbounds %struct.ccp_aes_cmac_req_ctx, %struct.ccp_aes_cmac_req_ctx* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ccp_aes_cmac_req_ctx*, %struct.ccp_aes_cmac_req_ctx** %7, align 8
  %38 = getelementptr inbounds %struct.ccp_aes_cmac_req_ctx, %struct.ccp_aes_cmac_req_ctx* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.ccp_aes_cmac_req_ctx*, %struct.ccp_aes_cmac_req_ctx** %7, align 8
  %42 = getelementptr inbounds %struct.ccp_aes_cmac_req_ctx, %struct.ccp_aes_cmac_req_ctx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @scatterwalk_map_and_copy(i32 %36, i32 %39, i32 %40, i32 %43, i32 0)
  %45 = load %struct.ccp_aes_cmac_req_ctx*, %struct.ccp_aes_cmac_req_ctx** %7, align 8
  %46 = getelementptr inbounds %struct.ccp_aes_cmac_req_ctx, %struct.ccp_aes_cmac_req_ctx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ccp_aes_cmac_req_ctx*, %struct.ccp_aes_cmac_req_ctx** %7, align 8
  %49 = getelementptr inbounds %struct.ccp_aes_cmac_req_ctx, %struct.ccp_aes_cmac_req_ctx* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  br label %53

50:                                               ; preds = %21
  %51 = load %struct.ccp_aes_cmac_req_ctx*, %struct.ccp_aes_cmac_req_ctx** %7, align 8
  %52 = getelementptr inbounds %struct.ccp_aes_cmac_req_ctx, %struct.ccp_aes_cmac_req_ctx* %51, i32 0, i32 2
  store i32 0, i32* %52, align 8
  br label %53

53:                                               ; preds = %50, %26
  %54 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %55 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %53
  %59 = load %struct.ccp_aes_cmac_req_ctx*, %struct.ccp_aes_cmac_req_ctx** %7, align 8
  %60 = getelementptr inbounds %struct.ccp_aes_cmac_req_ctx, %struct.ccp_aes_cmac_req_ctx* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %65 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.ccp_aes_cmac_req_ctx*, %struct.ccp_aes_cmac_req_ctx** %7, align 8
  %68 = getelementptr inbounds %struct.ccp_aes_cmac_req_ctx, %struct.ccp_aes_cmac_req_ctx* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @memcpy(i64 %66, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %63, %58, %53
  br label %73

73:                                               ; preds = %72, %20
  %74 = load %struct.ccp_aes_cmac_req_ctx*, %struct.ccp_aes_cmac_req_ctx** %7, align 8
  %75 = getelementptr inbounds %struct.ccp_aes_cmac_req_ctx, %struct.ccp_aes_cmac_req_ctx* %74, i32 0, i32 3
  %76 = call i32 @sg_free_table(i32* %75)
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.ahash_request* @ahash_request_cast(%struct.crypto_async_request*) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.ccp_aes_cmac_req_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @sg_free_table(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
