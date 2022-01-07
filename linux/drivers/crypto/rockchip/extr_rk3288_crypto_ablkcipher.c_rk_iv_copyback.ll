; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto_ablkcipher.c_rk_iv_copyback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto_ablkcipher.c_rk_iv_copyback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_crypto_info = type { i64, i64, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.ablkcipher_request = type { i32 }
%struct.crypto_ablkcipher = type { i32 }
%struct.rk_cipher_ctx = type { i32 }

@RK_CRYPTO_DEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk_crypto_info*)* @rk_iv_copyback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk_iv_copyback(%struct.rk_crypto_info* %0) #0 {
  %2 = alloca %struct.rk_crypto_info*, align 8
  %3 = alloca %struct.ablkcipher_request*, align 8
  %4 = alloca %struct.crypto_ablkcipher*, align 8
  %5 = alloca %struct.rk_cipher_ctx*, align 8
  %6 = alloca i64, align 8
  store %struct.rk_crypto_info* %0, %struct.rk_crypto_info** %2, align 8
  %7 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %8 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.ablkcipher_request* @ablkcipher_request_cast(i32 %9)
  store %struct.ablkcipher_request* %10, %struct.ablkcipher_request** %3, align 8
  %11 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %12 = call %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %11)
  store %struct.crypto_ablkcipher* %12, %struct.crypto_ablkcipher** %4, align 8
  %13 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %14 = call %struct.rk_cipher_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %13)
  store %struct.rk_cipher_ctx* %14, %struct.rk_cipher_ctx** %5, align 8
  %15 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %4, align 8
  %16 = call i64 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher* %15)
  store i64 %16, i64* %6, align 8
  %17 = load %struct.rk_cipher_ctx*, %struct.rk_cipher_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.rk_cipher_ctx, %struct.rk_cipher_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @RK_CRYPTO_DEC, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %62, label %23

23:                                               ; preds = %1
  %24 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %25 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %23
  %29 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %30 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %33 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = call i64 @sg_virt(%struct.TYPE_2__* %34)
  %36 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %37 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %35, %40
  %42 = load i64, i64* %6, align 8
  %43 = sub nsw i64 %41, %42
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @memcpy(i32 %31, i64 %43, i64 %44)
  br label %61

46:                                               ; preds = %23
  %47 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %48 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %51 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %54 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = load i64, i64* %6, align 8
  %58 = sub nsw i64 %56, %57
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @memcpy(i32 %49, i64 %58, i64 %59)
  br label %61

61:                                               ; preds = %46, %28
  br label %62

62:                                               ; preds = %61, %1
  ret void
}

declare dso_local %struct.ablkcipher_request* @ablkcipher_request_cast(i32) #1

declare dso_local %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local %struct.rk_cipher_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local i64 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @memcpy(i32, i64, i64) #1

declare dso_local i64 @sg_virt(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
