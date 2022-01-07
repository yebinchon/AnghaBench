; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto_ahash.c_rk_ahash_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto_ahash.c_rk_ahash_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_crypto_info = type { i32, i32, i32, i32, i32*, i64, i32, i32, i32 }
%struct.ahash_request = type { i32, i32 }
%struct.crypto_ahash = type { i32 }
%struct.rk_ahash_rctx = type { i64 }

@RK_CRYPTO_HASH_SHA1 = common dso_local global i64 0, align 8
@RK_CRYPTO_HASH_SHA256 = common dso_local global i64 0, align 8
@RK_CRYPTO_HASH_MD5 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rk_crypto_info*)* @rk_ahash_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_ahash_start(%struct.rk_crypto_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rk_crypto_info*, align 8
  %4 = alloca %struct.ahash_request*, align 8
  %5 = alloca %struct.crypto_ahash*, align 8
  %6 = alloca %struct.rk_ahash_rctx*, align 8
  store %struct.rk_crypto_info* %0, %struct.rk_crypto_info** %3, align 8
  %7 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %3, align 8
  %8 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %7, i32 0, i32 8
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.ahash_request* @ahash_request_cast(i32 %9)
  store %struct.ahash_request* %10, %struct.ahash_request** %4, align 8
  %11 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %12 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %3, align 8
  %15 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %14, i32 0, i32 7
  store i32 %13, i32* %15, align 4
  %16 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %17 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %3, align 8
  %20 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 8
  %21 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %3, align 8
  %22 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %21, i32 0, i32 5
  store i64 0, i64* %22, align 8
  %23 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %3, align 8
  %24 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %23, i32 0, i32 0
  store i32 4, i32* %24, align 8
  %25 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %3, align 8
  %26 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %25, i32 0, i32 4
  store i32* null, i32** %26, align 8
  %27 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %28 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %3, align 8
  %31 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %33 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %3, align 8
  %36 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %38 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @sg_nents(i32 %39)
  %41 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %3, align 8
  %42 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %44 = call %struct.rk_ahash_rctx* @ahash_request_ctx(%struct.ahash_request* %43)
  store %struct.rk_ahash_rctx* %44, %struct.rk_ahash_rctx** %6, align 8
  %45 = load %struct.rk_ahash_rctx*, %struct.rk_ahash_rctx** %6, align 8
  %46 = getelementptr inbounds %struct.rk_ahash_rctx, %struct.rk_ahash_rctx* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %48 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %47)
  store %struct.crypto_ahash* %48, %struct.crypto_ahash** %5, align 8
  %49 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %50 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %49)
  switch i32 %50, label %63 [
    i32 129, label %51
    i32 128, label %55
    i32 130, label %59
  ]

51:                                               ; preds = %1
  %52 = load i64, i64* @RK_CRYPTO_HASH_SHA1, align 8
  %53 = load %struct.rk_ahash_rctx*, %struct.rk_ahash_rctx** %6, align 8
  %54 = getelementptr inbounds %struct.rk_ahash_rctx, %struct.rk_ahash_rctx* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %66

55:                                               ; preds = %1
  %56 = load i64, i64* @RK_CRYPTO_HASH_SHA256, align 8
  %57 = load %struct.rk_ahash_rctx*, %struct.rk_ahash_rctx** %6, align 8
  %58 = getelementptr inbounds %struct.rk_ahash_rctx, %struct.rk_ahash_rctx* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %66

59:                                               ; preds = %1
  %60 = load i64, i64* @RK_CRYPTO_HASH_MD5, align 8
  %61 = load %struct.rk_ahash_rctx*, %struct.rk_ahash_rctx** %6, align 8
  %62 = getelementptr inbounds %struct.rk_ahash_rctx, %struct.rk_ahash_rctx* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %66

63:                                               ; preds = %1
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %71

66:                                               ; preds = %59, %55, %51
  %67 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %3, align 8
  %68 = call i32 @rk_ahash_reg_init(%struct.rk_crypto_info* %67)
  %69 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %3, align 8
  %70 = call i32 @rk_ahash_set_data_start(%struct.rk_crypto_info* %69)
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %66, %63
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.ahash_request* @ahash_request_cast(i32) #1

declare dso_local i32 @sg_nents(i32) #1

declare dso_local %struct.rk_ahash_rctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local i32 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local i32 @rk_ahash_reg_init(%struct.rk_crypto_info*) #1

declare dso_local i32 @rk_ahash_set_data_start(%struct.rk_crypto_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
