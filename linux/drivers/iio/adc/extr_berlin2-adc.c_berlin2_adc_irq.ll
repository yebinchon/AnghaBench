; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_berlin2-adc.c_berlin2_adc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_berlin2-adc.c_berlin2_adc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.berlin2_adc_priv = type { i32, i32, i32, i32 }

@BERLIN2_SM_ADC_STATUS = common dso_local global i32 0, align 4
@BERLIN2_SM_ADC_STATUS_DATA_RDY_MASK = common dso_local global i32 0, align 4
@BERLIN2_SM_ADC_DATA = common dso_local global i32 0, align 4
@BERLIN2_SM_ADC_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @berlin2_adc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @berlin2_adc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.berlin2_adc_priv*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call %struct.berlin2_adc_priv* @iio_priv(i8* %7)
  store %struct.berlin2_adc_priv* %8, %struct.berlin2_adc_priv** %5, align 8
  %9 = load %struct.berlin2_adc_priv*, %struct.berlin2_adc_priv** %5, align 8
  %10 = getelementptr inbounds %struct.berlin2_adc_priv, %struct.berlin2_adc_priv* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @BERLIN2_SM_ADC_STATUS, align 4
  %13 = call i32 @regmap_read(i32 %11, i32 %12, i32* %6)
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @BERLIN2_SM_ADC_STATUS_DATA_RDY_MASK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %2
  %19 = load %struct.berlin2_adc_priv*, %struct.berlin2_adc_priv** %5, align 8
  %20 = getelementptr inbounds %struct.berlin2_adc_priv, %struct.berlin2_adc_priv* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BERLIN2_SM_ADC_DATA, align 4
  %23 = load %struct.berlin2_adc_priv*, %struct.berlin2_adc_priv** %5, align 8
  %24 = getelementptr inbounds %struct.berlin2_adc_priv, %struct.berlin2_adc_priv* %23, i32 0, i32 0
  %25 = call i32 @regmap_read(i32 %21, i32 %22, i32* %24)
  %26 = load i32, i32* @BERLIN2_SM_ADC_MASK, align 4
  %27 = load %struct.berlin2_adc_priv*, %struct.berlin2_adc_priv** %5, align 8
  %28 = getelementptr inbounds %struct.berlin2_adc_priv, %struct.berlin2_adc_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* @BERLIN2_SM_ADC_STATUS_DATA_RDY_MASK, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load %struct.berlin2_adc_priv*, %struct.berlin2_adc_priv** %5, align 8
  %36 = getelementptr inbounds %struct.berlin2_adc_priv, %struct.berlin2_adc_priv* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @BERLIN2_SM_ADC_STATUS, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @regmap_write(i32 %37, i32 %38, i32 %39)
  %41 = load %struct.berlin2_adc_priv*, %struct.berlin2_adc_priv** %5, align 8
  %42 = getelementptr inbounds %struct.berlin2_adc_priv, %struct.berlin2_adc_priv* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  %43 = load %struct.berlin2_adc_priv*, %struct.berlin2_adc_priv** %5, align 8
  %44 = getelementptr inbounds %struct.berlin2_adc_priv, %struct.berlin2_adc_priv* %43, i32 0, i32 2
  %45 = call i32 @wake_up_interruptible(i32* %44)
  br label %46

46:                                               ; preds = %18, %2
  %47 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %47
}

declare dso_local %struct.berlin2_adc_priv* @iio_priv(i8*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
