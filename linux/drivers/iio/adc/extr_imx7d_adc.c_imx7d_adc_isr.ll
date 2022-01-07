; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_imx7d_adc.c_imx7d_adc_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_imx7d_adc.c_imx7d_adc_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx7d_adc = type { i64, i32, i32, i32 }

@IMX7D_REG_ADC_INT_STATUS = common dso_local global i64 0, align 8
@IMX7D_REG_ADC_INT_STATUS_CHANNEL_INT_STATUS = common dso_local global i32 0, align 4
@IMX7D_REG_ADC_INT_STATUS_CHANNEL_CONV_TIME_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"ADC got conversion time out interrupt: 0x%08x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @imx7d_adc_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx7d_adc_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.imx7d_adc*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.imx7d_adc*
  store %struct.imx7d_adc* %8, %struct.imx7d_adc** %5, align 8
  %9 = load %struct.imx7d_adc*, %struct.imx7d_adc** %5, align 8
  %10 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @IMX7D_REG_ADC_INT_STATUS, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @IMX7D_REG_ADC_INT_STATUS_CHANNEL_INT_STATUS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %2
  %20 = load %struct.imx7d_adc*, %struct.imx7d_adc** %5, align 8
  %21 = call i32 @imx7d_adc_read_data(%struct.imx7d_adc* %20)
  %22 = load %struct.imx7d_adc*, %struct.imx7d_adc** %5, align 8
  %23 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load %struct.imx7d_adc*, %struct.imx7d_adc** %5, align 8
  %25 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %24, i32 0, i32 2
  %26 = call i32 @complete(i32* %25)
  %27 = load i32, i32* @IMX7D_REG_ADC_INT_STATUS_CHANNEL_INT_STATUS, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.imx7d_adc*, %struct.imx7d_adc** %5, align 8
  %33 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IMX7D_REG_ADC_INT_STATUS, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 %31, i64 %36)
  br label %38

38:                                               ; preds = %19, %2
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @IMX7D_REG_ADC_INT_STATUS_CHANNEL_CONV_TIME_OUT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %38
  %44 = load %struct.imx7d_adc*, %struct.imx7d_adc** %5, align 8
  %45 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @IMX7D_REG_ADC_INT_STATUS_CHANNEL_CONV_TIME_OUT, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.imx7d_adc*, %struct.imx7d_adc** %5, align 8
  %55 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @IMX7D_REG_ADC_INT_STATUS, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %53, i64 %58)
  br label %60

60:                                               ; preds = %43, %38
  %61 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %61
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @imx7d_adc_read_data(%struct.imx7d_adc*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
