; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto_ablkcipher.c_rk_ablk_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto_ablkcipher.c_rk_ablk_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_crypto_info = type { i32, i32, i8*, i32, i8*, i32, i32, i32, i32, i32 }
%struct.ablkcipher_request = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rk_crypto_info*)* @rk_ablk_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_ablk_start(%struct.rk_crypto_info* %0) #0 {
  %2 = alloca %struct.rk_crypto_info*, align 8
  %3 = alloca %struct.ablkcipher_request*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.rk_crypto_info* %0, %struct.rk_crypto_info** %2, align 8
  %6 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %7 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %6, i32 0, i32 9
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.ablkcipher_request* @ablkcipher_request_cast(i32 %8)
  store %struct.ablkcipher_request* %9, %struct.ablkcipher_request** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %11 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %14 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %13, i32 0, i32 8
  store i32 %12, i32* %14, align 4
  %15 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %16 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %19 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 8
  %20 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %21 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %24 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %26 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %29 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 8
  %30 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %31 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @sg_nents(i32 %32)
  %34 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %35 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %34, i32 0, i32 4
  store i8* %33, i8** %35, align 8
  %36 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %37 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %40 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %42 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @sg_nents(i32 %43)
  %45 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %46 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %48 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %50 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %49, i32 0, i32 1
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @spin_lock_irqsave(i32* %50, i64 %51)
  %53 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %54 = call i32 @rk_ablk_hw_init(%struct.rk_crypto_info* %53)
  %55 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %56 = call i32 @rk_set_data_start(%struct.rk_crypto_info* %55)
  store i32 %56, i32* %5, align 4
  %57 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %2, align 8
  %58 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %57, i32 0, i32 1
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local %struct.ablkcipher_request* @ablkcipher_request_cast(i32) #1

declare dso_local i8* @sg_nents(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rk_ablk_hw_init(%struct.rk_crypto_info*) #1

declare dso_local i32 @rk_set_data_start(%struct.rk_crypto_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
