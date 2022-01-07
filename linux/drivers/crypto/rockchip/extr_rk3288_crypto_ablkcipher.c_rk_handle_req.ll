; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto_ablkcipher.c_rk_handle_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto_ablkcipher.c_rk_handle_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_crypto_info = type { i32 (%struct.rk_crypto_info*, i32*)*, i32 }
%struct.ablkcipher_request = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rk_crypto_info*, %struct.ablkcipher_request*)* @rk_handle_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_handle_req(%struct.rk_crypto_info* %0, %struct.ablkcipher_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rk_crypto_info*, align 8
  %5 = alloca %struct.ablkcipher_request*, align 8
  store %struct.rk_crypto_info* %0, %struct.rk_crypto_info** %4, align 8
  store %struct.ablkcipher_request* %1, %struct.ablkcipher_request** %5, align 8
  %6 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %7 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %4, align 8
  %10 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @IS_ALIGNED(i32 %8, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %25

17:                                               ; preds = %2
  %18 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %4, align 8
  %19 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %18, i32 0, i32 0
  %20 = load i32 (%struct.rk_crypto_info*, i32*)*, i32 (%struct.rk_crypto_info*, i32*)** %19, align 8
  %21 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %4, align 8
  %22 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %23 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %22, i32 0, i32 0
  %24 = call i32 %20(%struct.rk_crypto_info* %21, i32* %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %17, %14
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
