; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ingenic-adc.c_jz4725b_adc_init_clk_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ingenic-adc.c_jz4725b_adc_init_clk_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ingenic_adc = type { i64, i32 }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"ADC clock has no parent\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"No valid divider for ADC main clock\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@JZ_ADC_REG_ADCLK_CLKDIV10US_LSB = common dso_local global i32 0, align 4
@JZ_ADC_REG_ADCLK_CLKDIV_LSB = common dso_local global i32 0, align 4
@JZ_ADC_REG_ADCLK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.ingenic_adc*)* @jz4725b_adc_init_clk_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4725b_adc_init_clk_div(%struct.device* %0, %struct.ingenic_adc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ingenic_adc*, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.ingenic_adc* %1, %struct.ingenic_adc** %5, align 8
  %11 = load %struct.ingenic_adc*, %struct.ingenic_adc** %5, align 8
  %12 = getelementptr inbounds %struct.ingenic_adc, %struct.ingenic_adc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.clk* @clk_get_parent(i32 %13)
  store %struct.clk* %14, %struct.clk** %6, align 8
  %15 = load %struct.clk*, %struct.clk** %6, align 8
  %16 = icmp ne %struct.clk* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call i32 @dev_err(%struct.device* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %61

22:                                               ; preds = %2
  %23 = load %struct.clk*, %struct.clk** %6, align 8
  %24 = call i64 @clk_get_rate(%struct.clk* %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @DIV_ROUND_UP(i64 %25, i32 8000000)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @clamp(i32 %27, i32 1, i32 64)
  store i32 %28, i32* %9, align 4
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* %9, align 4
  %31 = zext i32 %30 to i64
  %32 = udiv i64 %29, %31
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp ult i64 %33, 500000
  br i1 %34, label %38, label %35

35:                                               ; preds = %22
  %36 = load i64, i64* %8, align 8
  %37 = icmp ugt i64 %36, 8000000
  br i1 %37, label %38, label %43

38:                                               ; preds = %35, %22
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %61

43:                                               ; preds = %35
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @DIV_ROUND_UP(i64 %44, i32 100000)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = sub i32 %46, 1
  %48 = load i32, i32* @JZ_ADC_REG_ADCLK_CLKDIV10US_LSB, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* %9, align 4
  %51 = sub i32 %50, 1
  %52 = load i32, i32* @JZ_ADC_REG_ADCLK_CLKDIV_LSB, align 4
  %53 = shl i32 %51, %52
  %54 = or i32 %49, %53
  %55 = load %struct.ingenic_adc*, %struct.ingenic_adc** %5, align 8
  %56 = getelementptr inbounds %struct.ingenic_adc, %struct.ingenic_adc* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @JZ_ADC_REG_ADCLK, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 %54, i64 %59)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %43, %38, %17
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.clk* @clk_get_parent(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
