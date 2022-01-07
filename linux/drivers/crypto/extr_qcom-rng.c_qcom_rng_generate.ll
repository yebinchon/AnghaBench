; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_qcom-rng.c_qcom_rng_generate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_qcom-rng.c_qcom_rng_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_rng = type { i32 }
%struct.qcom_rng_ctx = type { %struct.qcom_rng* }
%struct.qcom_rng = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_rng*, i32*, i32, i32*, i32)* @qcom_rng_generate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_rng_generate(%struct.crypto_rng* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.crypto_rng*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.qcom_rng_ctx*, align 8
  %13 = alloca %struct.qcom_rng*, align 8
  %14 = alloca i32, align 4
  store %struct.crypto_rng* %0, %struct.crypto_rng** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.crypto_rng*, %struct.crypto_rng** %7, align 8
  %16 = call %struct.qcom_rng_ctx* @crypto_rng_ctx(%struct.crypto_rng* %15)
  store %struct.qcom_rng_ctx* %16, %struct.qcom_rng_ctx** %12, align 8
  %17 = load %struct.qcom_rng_ctx*, %struct.qcom_rng_ctx** %12, align 8
  %18 = getelementptr inbounds %struct.qcom_rng_ctx, %struct.qcom_rng_ctx* %17, i32 0, i32 0
  %19 = load %struct.qcom_rng*, %struct.qcom_rng** %18, align 8
  store %struct.qcom_rng* %19, %struct.qcom_rng** %13, align 8
  %20 = load %struct.qcom_rng*, %struct.qcom_rng** %13, align 8
  %21 = getelementptr inbounds %struct.qcom_rng, %struct.qcom_rng* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @clk_prepare_enable(i32 %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %6, align 4
  br label %43

28:                                               ; preds = %5
  %29 = load %struct.qcom_rng*, %struct.qcom_rng** %13, align 8
  %30 = getelementptr inbounds %struct.qcom_rng, %struct.qcom_rng* %29, i32 0, i32 1
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.qcom_rng*, %struct.qcom_rng** %13, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @qcom_rng_read(%struct.qcom_rng* %32, i32* %33, i32 %34)
  store i32 %35, i32* %14, align 4
  %36 = load %struct.qcom_rng*, %struct.qcom_rng** %13, align 8
  %37 = getelementptr inbounds %struct.qcom_rng, %struct.qcom_rng* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load %struct.qcom_rng*, %struct.qcom_rng** %13, align 8
  %40 = getelementptr inbounds %struct.qcom_rng, %struct.qcom_rng* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @clk_disable_unprepare(i32 %41)
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %28, %26
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local %struct.qcom_rng_ctx* @crypto_rng_ctx(%struct.crypto_rng*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @qcom_rng_read(%struct.qcom_rng*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
