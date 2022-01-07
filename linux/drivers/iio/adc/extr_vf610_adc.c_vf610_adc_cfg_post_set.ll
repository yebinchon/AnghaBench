; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_vf610_adc.c_vf610_adc_cfg_post_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_vf610_adc.c_vf610_adc_cfg_post_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vf610_adc = type { i64, i32, %struct.vf610_adc_feature }
%struct.vf610_adc_feature = type { i32, i32, i64 }

@VF610_ADC_ALTCLK_SEL = common dso_local global i32 0, align 4
@VF610_ADC_ADACK_SEL = common dso_local global i32 0, align 4
@VF610_ADC_ADLPC_EN = common dso_local global i32 0, align 4
@VF610_ADC_ADHSC_EN = common dso_local global i32 0, align 4
@VF610_ADC_REFSEL_VALT = common dso_local global i32 0, align 4
@VF610_ADC_REFSEL_VBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"error voltage reference\0A\00", align 1
@VF610_ADC_OVWREN = common dso_local global i32 0, align 4
@VF610_REG_ADC_CFG = common dso_local global i64 0, align 8
@VF610_REG_ADC_GC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vf610_adc*)* @vf610_adc_cfg_post_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vf610_adc_cfg_post_set(%struct.vf610_adc* %0) #0 {
  %2 = alloca %struct.vf610_adc*, align 8
  %3 = alloca %struct.vf610_adc_feature*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vf610_adc* %0, %struct.vf610_adc** %2, align 8
  %6 = load %struct.vf610_adc*, %struct.vf610_adc** %2, align 8
  %7 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %6, i32 0, i32 2
  store %struct.vf610_adc_feature* %7, %struct.vf610_adc_feature** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.vf610_adc_feature*, %struct.vf610_adc_feature** %3, align 8
  %9 = getelementptr inbounds %struct.vf610_adc_feature, %struct.vf610_adc_feature* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %19 [
    i32 131, label %11
    i32 132, label %15
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* @VF610_ADC_ALTCLK_SEL, align 4
  %13 = load i32, i32* %4, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %4, align 4
  br label %20

15:                                               ; preds = %1
  %16 = load i32, i32* @VF610_ADC_ADACK_SEL, align 4
  %17 = load i32, i32* %4, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %4, align 4
  br label %20

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19, %15, %11
  %21 = load i32, i32* @VF610_ADC_ADLPC_EN, align 4
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @VF610_ADC_ADHSC_EN, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load %struct.vf610_adc_feature*, %struct.vf610_adc_feature** %3, align 8
  %28 = getelementptr inbounds %struct.vf610_adc_feature, %struct.vf610_adc_feature* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %39 [
    i32 128, label %30
    i32 130, label %31
    i32 129, label %35
  ]

30:                                               ; preds = %20
  br label %44

31:                                               ; preds = %20
  %32 = load i32, i32* @VF610_ADC_REFSEL_VALT, align 4
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  br label %44

35:                                               ; preds = %20
  %36 = load i32, i32* @VF610_ADC_REFSEL_VBG, align 4
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  br label %44

39:                                               ; preds = %20
  %40 = load %struct.vf610_adc*, %struct.vf610_adc** %2, align 8
  %41 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %35, %31, %30
  %45 = load %struct.vf610_adc_feature*, %struct.vf610_adc_feature** %3, align 8
  %46 = getelementptr inbounds %struct.vf610_adc_feature, %struct.vf610_adc_feature* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* @VF610_ADC_OVWREN, align 4
  %51 = load i32, i32* %4, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %49, %44
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.vf610_adc*, %struct.vf610_adc** %2, align 8
  %56 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @VF610_REG_ADC_CFG, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 %54, i64 %59)
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.vf610_adc*, %struct.vf610_adc** %2, align 8
  %63 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @VF610_REG_ADC_GC, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i32 %61, i64 %66)
  ret void
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
