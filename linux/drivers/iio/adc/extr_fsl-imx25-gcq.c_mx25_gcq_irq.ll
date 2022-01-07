; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_fsl-imx25-gcq.c_mx25_gcq_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_fsl-imx25-gcq.c_mx25_gcq_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mx25_gcq_priv = type { i32, i32 }

@MX25_ADCQ_SR = common dso_local global i32 0, align 4
@MX25_ADCQ_SR_EOQ = common dso_local global i32 0, align 4
@MX25_ADCQ_MR = common dso_local global i32 0, align 4
@MX25_ADCQ_MR_EOQ_IRQ = common dso_local global i32 0, align 4
@MX25_ADCQ_CR = common dso_local global i32 0, align 4
@MX25_ADCQ_CR_FQS = common dso_local global i32 0, align 4
@MX25_ADCQ_SR_FRR = common dso_local global i32 0, align 4
@MX25_ADCQ_SR_FUR = common dso_local global i32 0, align 4
@MX25_ADCQ_SR_FOR = common dso_local global i32 0, align 4
@MX25_ADCQ_SR_PD = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mx25_gcq_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx25_gcq_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mx25_gcq_priv*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.mx25_gcq_priv*
  store %struct.mx25_gcq_priv* %8, %struct.mx25_gcq_priv** %5, align 8
  %9 = load %struct.mx25_gcq_priv*, %struct.mx25_gcq_priv** %5, align 8
  %10 = getelementptr inbounds %struct.mx25_gcq_priv, %struct.mx25_gcq_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MX25_ADCQ_SR, align 4
  %13 = call i32 @regmap_read(i32 %11, i32 %12, i32* %6)
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @MX25_ADCQ_SR_EOQ, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load %struct.mx25_gcq_priv*, %struct.mx25_gcq_priv** %5, align 8
  %20 = getelementptr inbounds %struct.mx25_gcq_priv, %struct.mx25_gcq_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MX25_ADCQ_MR, align 4
  %23 = load i32, i32* @MX25_ADCQ_MR_EOQ_IRQ, align 4
  %24 = load i32, i32* @MX25_ADCQ_MR_EOQ_IRQ, align 4
  %25 = call i32 @regmap_update_bits(i32 %21, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.mx25_gcq_priv*, %struct.mx25_gcq_priv** %5, align 8
  %27 = getelementptr inbounds %struct.mx25_gcq_priv, %struct.mx25_gcq_priv* %26, i32 0, i32 1
  %28 = call i32 @complete(i32* %27)
  br label %29

29:                                               ; preds = %18, %2
  %30 = load %struct.mx25_gcq_priv*, %struct.mx25_gcq_priv** %5, align 8
  %31 = getelementptr inbounds %struct.mx25_gcq_priv, %struct.mx25_gcq_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MX25_ADCQ_CR, align 4
  %34 = load i32, i32* @MX25_ADCQ_CR_FQS, align 4
  %35 = call i32 @regmap_update_bits(i32 %32, i32 %33, i32 %34, i32 0)
  %36 = load %struct.mx25_gcq_priv*, %struct.mx25_gcq_priv** %5, align 8
  %37 = getelementptr inbounds %struct.mx25_gcq_priv, %struct.mx25_gcq_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MX25_ADCQ_SR, align 4
  %40 = load i32, i32* @MX25_ADCQ_SR_FRR, align 4
  %41 = load i32, i32* @MX25_ADCQ_SR_FUR, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @MX25_ADCQ_SR_FOR, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @MX25_ADCQ_SR_EOQ, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @MX25_ADCQ_SR_PD, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @regmap_write(i32 %38, i32 %39, i32 %48)
  %50 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %50
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
