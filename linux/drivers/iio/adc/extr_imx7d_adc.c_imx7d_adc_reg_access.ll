; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_imx7d_adc.c_imx7d_adc_reg_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_imx7d_adc.c_imx7d_adc_reg_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.imx7d_adc = type { i32 }

@IMX7D_REG_ADC_ADC_CFG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i32, i32*)* @imx7d_adc_reg_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx7d_adc_reg_access(%struct.iio_dev* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.imx7d_adc*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %12 = call %struct.imx7d_adc* @iio_priv(%struct.iio_dev* %11)
  store %struct.imx7d_adc* %12, %struct.imx7d_adc** %10, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = urem i32 %16, 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @IMX7D_REG_ADC_ADC_CFG, align 4
  %22 = icmp ugt i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %15, %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %34

26:                                               ; preds = %19
  %27 = load %struct.imx7d_adc*, %struct.imx7d_adc** %10, align 8
  %28 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add i32 %29, %30
  %32 = call i32 @readl(i32 %31)
  %33 = load i32*, i32** %9, align 8
  store i32 %32, i32* %33, align 4
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %26, %23
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local %struct.imx7d_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
