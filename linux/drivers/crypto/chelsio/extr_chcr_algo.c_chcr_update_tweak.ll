; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_update_tweak.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_update_tweak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i32 }
%struct.crypto_ablkcipher = type { i32 }
%struct.ablk_ctx = type { i32, i32* }
%struct.chcr_blkcipher_req_ctx = type { i32, i32 }
%struct.crypto_aes_ctx = type { i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*, i32*, i32)* @chcr_update_tweak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chcr_update_tweak(%struct.ablkcipher_request* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ablkcipher_request*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_ablkcipher*, align 8
  %9 = alloca %struct.ablk_ctx*, align 8
  %10 = alloca %struct.chcr_blkcipher_req_ctx*, align 8
  %11 = alloca %struct.crypto_aes_ctx, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %19 = call %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %18)
  store %struct.crypto_ablkcipher* %19, %struct.crypto_ablkcipher** %8, align 8
  %20 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %8, align 8
  %21 = call i32 @c_ctx(%struct.crypto_ablkcipher* %20)
  %22 = call %struct.ablk_ctx* @ABLK_CTX(i32 %21)
  store %struct.ablk_ctx* %22, %struct.ablk_ctx** %9, align 8
  %23 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %24 = call %struct.chcr_blkcipher_req_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request* %23)
  store %struct.chcr_blkcipher_req_ctx* %24, %struct.chcr_blkcipher_req_ctx** %10, align 8
  %25 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %10, align 8
  %26 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %29 = sdiv i32 %27, %28
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %16, align 4
  %31 = sdiv i32 %30, 8
  store i32 %31, i32* %17, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %10, align 8
  %34 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %37 = call i32 @memcpy(i32* %32, i32 %35, i32 %36)
  %38 = load %struct.ablk_ctx*, %struct.ablk_ctx** %9, align 8
  %39 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sdiv i32 %40, 2
  store i32 %41, i32* %15, align 4
  %42 = load %struct.ablk_ctx*, %struct.ablk_ctx** %9, align 8
  %43 = getelementptr inbounds %struct.ablk_ctx, %struct.ablk_ctx* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %15, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32* %47, i32** %14, align 8
  %48 = load i32*, i32** %14, align 8
  %49 = load i32, i32* %15, align 4
  %50 = call i32 @aes_expandkey(%struct.crypto_aes_ctx* %11, i32* %48, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %3
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %4, align 4
  br label %92

55:                                               ; preds = %3
  %56 = load i32*, i32** %6, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @aes_encrypt(%struct.crypto_aes_ctx* %11, i32* %56, i32* %57)
  store i32 0, i32* %13, align 4
  br label %59

59:                                               ; preds = %67, %55
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %17, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load i32*, i32** %6, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @gf128mul_x8_ble(i32* %64, i32* %65)
  br label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  br label %59

70:                                               ; preds = %59
  store i32 0, i32* %13, align 4
  br label %71

71:                                               ; preds = %80, %70
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %16, align 4
  %74 = srem i32 %73, 8
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load i32*, i32** %6, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @gf128mul_x_ble(i32* %77, i32* %78)
  br label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %13, align 4
  br label %71

83:                                               ; preds = %71
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %83
  %87 = load i32*, i32** %6, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 @aes_decrypt(%struct.crypto_aes_ctx* %11, i32* %87, i32* %88)
  br label %90

90:                                               ; preds = %86, %83
  %91 = call i32 @memzero_explicit(%struct.crypto_aes_ctx* %11, i32 4)
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %90, %53
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local %struct.ablk_ctx* @ABLK_CTX(i32) #1

declare dso_local i32 @c_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local %struct.chcr_blkcipher_req_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @aes_expandkey(%struct.crypto_aes_ctx*, i32*, i32) #1

declare dso_local i32 @aes_encrypt(%struct.crypto_aes_ctx*, i32*, i32*) #1

declare dso_local i32 @gf128mul_x8_ble(i32*, i32*) #1

declare dso_local i32 @gf128mul_x_ble(i32*, i32*) #1

declare dso_local i32 @aes_decrypt(%struct.crypto_aes_ctx*, i32*, i32*) #1

declare dso_local i32 @memzero_explicit(%struct.crypto_aes_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
