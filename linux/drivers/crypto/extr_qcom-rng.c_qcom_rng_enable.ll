; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_qcom-rng.c_qcom_rng_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_qcom-rng.c_qcom_rng_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_rng = type { i32, i64 }

@PRNG_CONFIG = common dso_local global i64 0, align 8
@PRNG_CONFIG_HW_ENABLE = common dso_local global i32 0, align 4
@PRNG_LFSR_CFG = common dso_local global i64 0, align 8
@PRNG_LFSR_CFG_MASK = common dso_local global i32 0, align 4
@PRNG_LFSR_CFG_CLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_rng*)* @qcom_rng_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_rng_enable(%struct.qcom_rng* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qcom_rng*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qcom_rng* %0, %struct.qcom_rng** %3, align 8
  %6 = load %struct.qcom_rng*, %struct.qcom_rng** %3, align 8
  %7 = getelementptr inbounds %struct.qcom_rng, %struct.qcom_rng* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @clk_prepare_enable(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %68

14:                                               ; preds = %1
  %15 = load %struct.qcom_rng*, %struct.qcom_rng** %3, align 8
  %16 = getelementptr inbounds %struct.qcom_rng, %struct.qcom_rng* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PRNG_CONFIG, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl_relaxed(i64 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @PRNG_CONFIG_HW_ENABLE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %63

26:                                               ; preds = %14
  %27 = load %struct.qcom_rng*, %struct.qcom_rng** %3, align 8
  %28 = getelementptr inbounds %struct.qcom_rng, %struct.qcom_rng* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PRNG_LFSR_CFG, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @readl_relaxed(i64 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* @PRNG_LFSR_CFG_MASK, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* @PRNG_LFSR_CFG_CLOCKS, align 4
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.qcom_rng*, %struct.qcom_rng** %3, align 8
  %42 = getelementptr inbounds %struct.qcom_rng, %struct.qcom_rng* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PRNG_LFSR_CFG, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 %40, i64 %45)
  %47 = load %struct.qcom_rng*, %struct.qcom_rng** %3, align 8
  %48 = getelementptr inbounds %struct.qcom_rng, %struct.qcom_rng* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PRNG_CONFIG, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @readl_relaxed(i64 %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* @PRNG_CONFIG_HW_ENABLE, align 4
  %54 = load i32, i32* %4, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.qcom_rng*, %struct.qcom_rng** %3, align 8
  %58 = getelementptr inbounds %struct.qcom_rng, %struct.qcom_rng* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PRNG_CONFIG, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 %56, i64 %61)
  br label %63

63:                                               ; preds = %26, %25
  %64 = load %struct.qcom_rng*, %struct.qcom_rng** %3, align 8
  %65 = getelementptr inbounds %struct.qcom_rng, %struct.qcom_rng* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @clk_disable_unprepare(i32 %66)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %63, %12
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
