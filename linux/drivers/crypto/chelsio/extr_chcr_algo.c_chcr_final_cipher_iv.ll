; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_final_cipher_iv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_final_cipher_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i32 }
%struct.cpl_fw6_pld = type { i32* }
%struct.crypto_ablkcipher = type { i32 }
%struct.chcr_blkcipher_req_ctx = type { i32, i32 }

@CRYPTO_ALG_SUB_TYPE_CTR = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@CRYPTO_ALG_SUB_TYPE_XTS = common dso_local global i32 0, align 4
@CRYPTO_ALG_SUB_TYPE_CBC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*, %struct.cpl_fw6_pld*, i32*)* @chcr_final_cipher_iv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chcr_final_cipher_iv(%struct.ablkcipher_request* %0, %struct.cpl_fw6_pld* %1, i32* %2) #0 {
  %4 = alloca %struct.ablkcipher_request*, align 8
  %5 = alloca %struct.cpl_fw6_pld*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.crypto_ablkcipher*, align 8
  %8 = alloca %struct.chcr_blkcipher_req_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %4, align 8
  store %struct.cpl_fw6_pld* %1, %struct.cpl_fw6_pld** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %12 = call %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %11)
  store %struct.crypto_ablkcipher* %12, %struct.crypto_ablkcipher** %7, align 8
  %13 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %14 = call %struct.chcr_blkcipher_req_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request* %13)
  store %struct.chcr_blkcipher_req_ctx* %14, %struct.chcr_blkcipher_req_ctx** %8, align 8
  %15 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %7, align 8
  %16 = call i32 @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher* %15)
  %17 = call i32 @get_cryptoalg_subtype(i32 %16)
  store i32 %17, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @CRYPTO_ALG_SUB_TYPE_CTR, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %3
  %22 = load i32*, i32** %6, align 8
  %23 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %24 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %8, align 8
  %27 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %30 = call i32 @DIV_ROUND_UP(i32 %28, i32 %29)
  %31 = call i32 @ctr_add_iv(i32* %22, i32 %25, i32 %30)
  br label %60

32:                                               ; preds = %3
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @CRYPTO_ALG_SUB_TYPE_XTS, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @chcr_update_tweak(%struct.ablkcipher_request* %37, i32* %38, i32 1)
  store i32 %39, i32* %10, align 4
  br label %59

40:                                               ; preds = %32
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @CRYPTO_ALG_SUB_TYPE_CBC, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load %struct.chcr_blkcipher_req_ctx*, %struct.chcr_blkcipher_req_ctx** %8, align 8
  %46 = getelementptr inbounds %struct.chcr_blkcipher_req_ctx, %struct.chcr_blkcipher_req_ctx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %44
  %50 = load i32*, i32** %6, align 8
  %51 = load %struct.cpl_fw6_pld*, %struct.cpl_fw6_pld** %5, align 8
  %52 = getelementptr inbounds %struct.cpl_fw6_pld, %struct.cpl_fw6_pld* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %56 = call i32 @memcpy(i32* %50, i32* %54, i32 %55)
  br label %57

57:                                               ; preds = %49, %44
  br label %58

58:                                               ; preds = %57, %40
  br label %59

59:                                               ; preds = %58, %36
  br label %60

60:                                               ; preds = %59, %21
  %61 = load i32, i32* %10, align 4
  ret i32 %61
}

declare dso_local %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local %struct.chcr_blkcipher_req_ctx* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local i32 @get_cryptoalg_subtype(i32) #1

declare dso_local i32 @crypto_ablkcipher_tfm(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @ctr_add_iv(i32*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @chcr_update_tweak(%struct.ablkcipher_request*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
