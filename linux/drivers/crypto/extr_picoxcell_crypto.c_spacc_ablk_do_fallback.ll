; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_picoxcell_crypto.c_spacc_ablk_do_fallback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_picoxcell_crypto.c_spacc_ablk_do_fallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_tfm = type { i32 }
%struct.spacc_ablk_ctx = type { i32 }

@subreq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*, i32, i32)* @spacc_ablk_do_fallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spacc_ablk_do_fallback(%struct.ablkcipher_request* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ablkcipher_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.crypto_tfm*, align 8
  %8 = alloca %struct.spacc_ablk_ctx*, align 8
  %9 = alloca i32, align 4
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %11 = call i32 @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %10)
  %12 = call %struct.crypto_tfm* @crypto_ablkcipher_tfm(i32 %11)
  store %struct.crypto_tfm* %12, %struct.crypto_tfm** %7, align 8
  %13 = load %struct.crypto_tfm*, %struct.crypto_tfm** %7, align 8
  %14 = call %struct.spacc_ablk_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %13)
  store %struct.spacc_ablk_ctx* %14, %struct.spacc_ablk_ctx** %8, align 8
  %15 = load i32, i32* @subreq, align 4
  %16 = load %struct.spacc_ablk_ctx*, %struct.spacc_ablk_ctx** %8, align 8
  %17 = getelementptr inbounds %struct.spacc_ablk_ctx, %struct.spacc_ablk_ctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32 %15, i32 %18)
  %20 = load i32, i32* @subreq, align 4
  %21 = load %struct.spacc_ablk_ctx*, %struct.spacc_ablk_ctx** %8, align 8
  %22 = getelementptr inbounds %struct.spacc_ablk_ctx, %struct.spacc_ablk_ctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @skcipher_request_set_sync_tfm(i32 %20, i32 %23)
  %25 = load i32, i32* @subreq, align 4
  %26 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %27 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @skcipher_request_set_callback(i32 %25, i32 %29, i32* null, i32* null)
  %31 = load i32, i32* @subreq, align 4
  %32 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %33 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %36 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %39 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %42 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @skcipher_request_set_crypt(i32 %31, i32 %34, i32 %37, i32 %40, i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %3
  %48 = load i32, i32* @subreq, align 4
  %49 = call i32 @crypto_skcipher_encrypt(i32 %48)
  br label %53

50:                                               ; preds = %3
  %51 = load i32, i32* @subreq, align 4
  %52 = call i32 @crypto_skcipher_decrypt(i32 %51)
  br label %53

53:                                               ; preds = %50, %47
  %54 = phi i32 [ %49, %47 ], [ %52, %50 ]
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* @subreq, align 4
  %56 = call i32 @skcipher_request_zero(i32 %55)
  %57 = load i32, i32* %9, align 4
  ret i32 %57
}

declare dso_local %struct.crypto_tfm* @crypto_ablkcipher_tfm(i32) #1

declare dso_local i32 @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local %struct.spacc_ablk_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

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
