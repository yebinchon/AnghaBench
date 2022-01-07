; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_imx7d_adc.c_imx7d_adc_sample_rate_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_imx7d_adc.c_imx7d_adc_sample_rate_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx7d_adc_analogue_core_clk = type { i32, i32 }
%struct.imx7d_adc = type { i64, i32, %struct.imx7d_adc_feature }
%struct.imx7d_adc_feature = type { i64, i32 }

@IMX7D_EACH_CHANNEL_REG_OFFSET = common dso_local global i32 0, align 4
@IMX7D_REG_ADC_CH_CFG1_CHANNEL_EN = common dso_local global i32 0, align 4
@imx7d_adc_analogue_clk = common dso_local global %struct.imx7d_adc_analogue_core_clk* null, align 8
@IMX7D_REG_ADC_TIMER_UNIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx7d_adc*)* @imx7d_adc_sample_rate_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx7d_adc_sample_rate_set(%struct.imx7d_adc* %0) #0 {
  %2 = alloca %struct.imx7d_adc*, align 8
  %3 = alloca %struct.imx7d_adc_feature*, align 8
  %4 = alloca %struct.imx7d_adc_analogue_core_clk, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.imx7d_adc* %0, %struct.imx7d_adc** %2, align 8
  %8 = load %struct.imx7d_adc*, %struct.imx7d_adc** %2, align 8
  %9 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %8, i32 0, i32 2
  store %struct.imx7d_adc_feature* %9, %struct.imx7d_adc_feature** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %37, %1
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %40

13:                                               ; preds = %10
  %14 = load %struct.imx7d_adc*, %struct.imx7d_adc** %2, align 8
  %15 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @IMX7D_EACH_CHANNEL_REG_OFFSET, align 4
  %19 = mul nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %16, %20
  %22 = call i32 @readl(i64 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @IMX7D_REG_ADC_CH_CFG1_CHANNEL_EN, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.imx7d_adc*, %struct.imx7d_adc** %2, align 8
  %29 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @IMX7D_EACH_CHANNEL_REG_OFFSET, align 4
  %33 = mul nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %30, %34
  %36 = call i32 @writel(i32 %27, i64 %35)
  br label %37

37:                                               ; preds = %13
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %10

40:                                               ; preds = %10
  %41 = load %struct.imx7d_adc_analogue_core_clk*, %struct.imx7d_adc_analogue_core_clk** @imx7d_adc_analogue_clk, align 8
  %42 = load %struct.imx7d_adc_feature*, %struct.imx7d_adc_feature** %3, align 8
  %43 = getelementptr inbounds %struct.imx7d_adc_feature, %struct.imx7d_adc_feature* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.imx7d_adc_analogue_core_clk, %struct.imx7d_adc_analogue_core_clk* %41, i64 %44
  %46 = bitcast %struct.imx7d_adc_analogue_core_clk* %4 to i8*
  %47 = bitcast %struct.imx7d_adc_analogue_core_clk* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 8, i1 false)
  %48 = getelementptr inbounds %struct.imx7d_adc_analogue_core_clk, %struct.imx7d_adc_analogue_core_clk* %4, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  %52 = getelementptr inbounds %struct.imx7d_adc_analogue_core_clk, %struct.imx7d_adc_analogue_core_clk* %4, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.imx7d_adc*, %struct.imx7d_adc** %2, align 8
  %55 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.imx7d_adc_feature*, %struct.imx7d_adc_feature** %3, align 8
  %57 = getelementptr inbounds %struct.imx7d_adc_feature, %struct.imx7d_adc_feature* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.imx7d_adc*, %struct.imx7d_adc** %2, align 8
  %63 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @IMX7D_REG_ADC_TIMER_UNIT, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i32 %61, i64 %66)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
