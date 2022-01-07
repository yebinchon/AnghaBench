; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto_ablkcipher.c_rk_set_data_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto_ablkcipher.c_rk_set_data_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_crypto_info = type { i32, i32 (%struct.rk_crypto_info*, %struct.TYPE_3__*, i32)*, i32, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ablkcipher_request = type { i32 }
%struct.crypto_ablkcipher = type { i32 }
%struct.rk_cipher_ctx = type { i32, i32 }

@RK_CRYPTO_DEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rk_crypto_info*)* @rk_set_data_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_set_data_start(%struct.rk_crypto_info* %0) #0 {
  %2 = alloca %struct.rk_crypto_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ablkcipher_request*, align 8
  %5 = alloca %struct.crypto_ablkcipher*, align 8
  %6 = alloca %struct.rk_cipher_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.rk_crypto_info* %0, %struct.rk_crypto_info** %2, align 8
  %9 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %10 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.ablkcipher_request* @ablkcipher_request_cast(i32 %11)
  store %struct.ablkcipher_request* %12, %struct.ablkcipher_request** %4, align 8
  %13 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %14 = call %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %13)
  store %struct.crypto_ablkcipher* %14, %struct.crypto_ablkcipher** %5, align 8
  %15 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %16 = call %struct.rk_cipher_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %15)
  store %struct.rk_cipher_ctx* %16, %struct.rk_cipher_ctx** %6, align 8
  %17 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %18 = call i32 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher* %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %20 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %19, i32 0, i32 3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = call i32 @sg_page(%struct.TYPE_3__* %21)
  %23 = call i32 @page_address(i32 %22)
  %24 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %25 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %24, i32 0, i32 3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %23, %28
  %30 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %31 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %30, i32 0, i32 3
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %29, %34
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** %8, align 8
  %40 = load %struct.rk_cipher_ctx*, %struct.rk_cipher_ctx** %6, align 8
  %41 = getelementptr inbounds %struct.rk_cipher_ctx, %struct.rk_cipher_ctx* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @RK_CRYPTO_DEC, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %1
  %47 = load %struct.rk_cipher_ctx*, %struct.rk_cipher_ctx** %6, align 8
  %48 = getelementptr inbounds %struct.rk_cipher_ctx, %struct.rk_cipher_ctx* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @memcpy(i32 %49, i32* %50, i32 %51)
  %53 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %54 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %57 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %60 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %64 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sub nsw i32 %65, %66
  %68 = call i32 @sg_pcopy_to_buffer(i32 %55, i32 %58, i32 %61, i32 %62, i32 %67)
  br label %69

69:                                               ; preds = %46, %1
  %70 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %71 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %70, i32 0, i32 1
  %72 = load i32 (%struct.rk_crypto_info*, %struct.TYPE_3__*, i32)*, i32 (%struct.rk_crypto_info*, %struct.TYPE_3__*, i32)** %71, align 8
  %73 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %74 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %75 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %74, i32 0, i32 3
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %78 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 %72(%struct.rk_crypto_info* %73, %struct.TYPE_3__* %76, i32 %79)
  store i32 %80, i32* %3, align 4
  %81 = load i32, i32* %3, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %69
  %84 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %85 = call i32 @crypto_dma_start(%struct.rk_crypto_info* %84)
  br label %86

86:                                               ; preds = %83, %69
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.ablkcipher_request* @ablkcipher_request_cast(i32) #1

declare dso_local %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local %struct.rk_cipher_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @page_address(i32) #1

declare dso_local i32 @sg_page(%struct.TYPE_3__*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @sg_pcopy_to_buffer(i32, i32, i32, i32, i32) #1

declare dso_local i32 @crypto_dma_start(%struct.rk_crypto_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
