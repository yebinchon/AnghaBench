; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_ppc4xx_prng_data_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_ppc4xx_prng_data_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto4xx_device = type { i64 }

@PPC4XX_PRNG_CTRL_AUTO_EN = common dso_local global i32 0, align 4
@CRYPTO4XX_PRNG_CTRL = common dso_local global i64 0, align 8
@CRYPTO4XX_PRNG_STAT = common dso_local global i64 0, align 8
@CRYPTO4XX_PRNG_STAT_BUSY = common dso_local global i32 0, align 4
@CRYPTO4XX_PRNG_RES_0 = common dso_local global i64 0, align 8
@CRYPTO4XX_PRNG_RES_1 = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto4xx_device*, i32*, i32)* @ppc4xx_prng_data_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc4xx_prng_data_read(%struct.crypto4xx_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto4xx_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  store %struct.crypto4xx_device* %0, %struct.crypto4xx_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %78, %3
  %12 = load i32, i32* @PPC4XX_PRNG_CTRL_AUTO_EN, align 4
  %13 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %5, align 8
  %14 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CRYPTO4XX_PRNG_CTRL, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 %12, i64 %17)
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %48, %11
  %20 = load i32, i32* %8, align 4
  %21 = icmp ult i32 %20, 1024
  br i1 %21, label %22, label %51

22:                                               ; preds = %19
  %23 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %5, align 8
  %24 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CRYPTO4XX_PRNG_STAT, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @readl(i64 %27)
  %29 = load i32, i32* @CRYPTO4XX_PRNG_STAT_BUSY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %48

33:                                               ; preds = %22
  %34 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %5, align 8
  %35 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CRYPTO4XX_PRNG_RES_0, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @readl_be(i64 %38)
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %39, i32* %40, align 4
  %41 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %5, align 8
  %42 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @CRYPTO4XX_PRNG_RES_1, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @readl_be(i64 %45)
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %46, i32* %47, align 4
  br label %51

48:                                               ; preds = %32
  %49 = load i32, i32* %8, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %19

51:                                               ; preds = %33, %19
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %52, 1024
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* @ETIMEDOUT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %84

57:                                               ; preds = %51
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %9, align 4
  %60 = sub i32 %58, %59
  %61 = icmp uge i32 %60, 8
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load i32*, i32** %6, align 8
  %64 = bitcast [2 x i32]* %10 to i32**
  %65 = call i32 @memcpy(i32* %63, i32** %64, i32 8)
  %66 = load i32*, i32** %6, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 8
  store i32* %67, i32** %6, align 8
  %68 = load i32, i32* %9, align 4
  %69 = add i32 %68, 8
  store i32 %69, i32* %9, align 4
  br label %77

70:                                               ; preds = %57
  %71 = load i32*, i32** %6, align 8
  %72 = bitcast [2 x i32]* %10 to i32**
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %9, align 4
  %75 = sub i32 %73, %74
  %76 = call i32 @memcpy(i32* %71, i32** %72, i32 %75)
  br label %82

77:                                               ; preds = %62
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %11, label %82

82:                                               ; preds = %78, %70
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %54
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @readl_be(i64) #1

declare dso_local i32 @memcpy(i32*, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
