; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-aes.c_mtk_aes_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-aes.c_mtk_aes_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i32 }
%struct.crypto_ablkcipher = type { i32 }
%struct.mtk_aes_base_ctx = type { i32 }
%struct.mtk_aes_reqctx = type { i32 }
%struct.mtk_cryp = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@AES_FLAGS_ENCRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*, i32)* @mtk_aes_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_aes_crypt(%struct.ablkcipher_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ablkcipher_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_ablkcipher*, align 8
  %7 = alloca %struct.mtk_aes_base_ctx*, align 8
  %8 = alloca %struct.mtk_aes_reqctx*, align 8
  %9 = alloca %struct.mtk_cryp*, align 8
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %11 = call %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %10)
  store %struct.crypto_ablkcipher* %11, %struct.crypto_ablkcipher** %6, align 8
  %12 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %6, align 8
  %13 = call %struct.mtk_aes_base_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %12)
  store %struct.mtk_aes_base_ctx* %13, %struct.mtk_aes_base_ctx** %7, align 8
  %14 = load %struct.mtk_aes_base_ctx*, %struct.mtk_aes_base_ctx** %7, align 8
  %15 = call %struct.mtk_cryp* @mtk_aes_find_dev(%struct.mtk_aes_base_ctx* %14)
  store %struct.mtk_cryp* %15, %struct.mtk_cryp** %9, align 8
  %16 = load %struct.mtk_cryp*, %struct.mtk_cryp** %9, align 8
  %17 = icmp ne %struct.mtk_cryp* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %37

21:                                               ; preds = %2
  %22 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %23 = call %struct.mtk_aes_reqctx* @ablkcipher_request_ctx(%struct.ablkcipher_request* %22)
  store %struct.mtk_aes_reqctx* %23, %struct.mtk_aes_reqctx** %8, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.mtk_aes_reqctx*, %struct.mtk_aes_reqctx** %8, align 8
  %26 = getelementptr inbounds %struct.mtk_aes_reqctx, %struct.mtk_aes_reqctx* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.mtk_cryp*, %struct.mtk_cryp** %9, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @AES_FLAGS_ENCRYPT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %35 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %34, i32 0, i32 0
  %36 = call i32 @mtk_aes_handle_queue(%struct.mtk_cryp* %27, i32 %33, i32* %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %21, %18
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local %struct.mtk_aes_base_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local %struct.mtk_cryp* @mtk_aes_find_dev(%struct.mtk_aes_base_ctx*) #1

declare dso_local %struct.mtk_aes_reqctx* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local i32 @mtk_aes_handle_queue(%struct.mtk_cryp*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
