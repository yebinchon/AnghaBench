; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_vf610_adc.c_vf610_adc_cfg_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_vf610_adc.c_vf610_adc_cfg_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vf610_adc = type { i64, %struct.vf610_adc_feature }
%struct.vf610_adc_feature = type { i64 }

@VF610_REG_ADC_CFG = common dso_local global i64 0, align 8
@VF610_ADC_ADLPC_EN = common dso_local global i32 0, align 4
@VF610_ADC_CONV_LOW_POWER = common dso_local global i64 0, align 8
@VF610_ADC_ADHSC_EN = common dso_local global i32 0, align 4
@VF610_ADC_CONV_HIGH_SPEED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vf610_adc*)* @vf610_adc_cfg_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vf610_adc_cfg_set(%struct.vf610_adc* %0) #0 {
  %2 = alloca %struct.vf610_adc*, align 8
  %3 = alloca %struct.vf610_adc_feature*, align 8
  %4 = alloca i32, align 4
  store %struct.vf610_adc* %0, %struct.vf610_adc** %2, align 8
  %5 = load %struct.vf610_adc*, %struct.vf610_adc** %2, align 8
  %6 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %5, i32 0, i32 1
  store %struct.vf610_adc_feature* %6, %struct.vf610_adc_feature** %3, align 8
  %7 = load %struct.vf610_adc*, %struct.vf610_adc** %2, align 8
  %8 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @VF610_REG_ADC_CFG, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @VF610_ADC_ADLPC_EN, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load %struct.vf610_adc_feature*, %struct.vf610_adc_feature** %3, align 8
  %18 = getelementptr inbounds %struct.vf610_adc_feature, %struct.vf610_adc_feature* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VF610_ADC_CONV_LOW_POWER, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* @VF610_ADC_ADLPC_EN, align 4
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %22, %1
  %27 = load i32, i32* @VF610_ADC_ADHSC_EN, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load %struct.vf610_adc_feature*, %struct.vf610_adc_feature** %3, align 8
  %32 = getelementptr inbounds %struct.vf610_adc_feature, %struct.vf610_adc_feature* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @VF610_ADC_CONV_HIGH_SPEED, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = load i32, i32* @VF610_ADC_ADHSC_EN, align 4
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %36, %26
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.vf610_adc*, %struct.vf610_adc** %2, align 8
  %43 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @VF610_REG_ADC_CFG, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 %41, i64 %46)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
