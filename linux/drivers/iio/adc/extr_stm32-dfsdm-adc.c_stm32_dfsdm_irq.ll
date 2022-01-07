; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-adc.c_stm32_dfsdm_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-adc.c_stm32_dfsdm_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_dfsdm_adc = type { i32*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.regmap* }
%struct.regmap = type { i32 }
%struct.iio_dev = type { i32 }

@DFSDM_ISR_REOCF_MASK = common dso_local global i32 0, align 4
@DFSDM_ISR_ROVRF_MASK = common dso_local global i32 0, align 4
@DFSDM_CR2_ROVRIE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Overrun detected\0A\00", align 1
@DFSDM_ICR_CLRROVRF_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @stm32_dfsdm_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_dfsdm_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stm32_dfsdm_adc*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.stm32_dfsdm_adc*
  store %struct.stm32_dfsdm_adc* %11, %struct.stm32_dfsdm_adc** %5, align 8
  %12 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %5, align 8
  %13 = call %struct.iio_dev* @iio_priv_to_dev(%struct.stm32_dfsdm_adc* %12)
  store %struct.iio_dev* %13, %struct.iio_dev** %6, align 8
  %14 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %5, align 8
  %15 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.regmap*, %struct.regmap** %17, align 8
  store %struct.regmap* %18, %struct.regmap** %7, align 8
  %19 = load %struct.regmap*, %struct.regmap** %7, align 8
  %20 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %5, align 8
  %21 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @DFSDM_ISR(i32 %22)
  %24 = call i32 @regmap_read(%struct.regmap* %19, i32 %23, i32* %8)
  %25 = load %struct.regmap*, %struct.regmap** %7, align 8
  %26 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %5, align 8
  %27 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @DFSDM_CR2(i32 %28)
  %30 = call i32 @regmap_read(%struct.regmap* %25, i32 %29, i32* %9)
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @DFSDM_ISR_REOCF_MASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %2
  %36 = load %struct.regmap*, %struct.regmap** %7, align 8
  %37 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %5, align 8
  %38 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @DFSDM_RDATAR(i32 %39)
  %41 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %5, align 8
  %42 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @regmap_read(%struct.regmap* %36, i32 %40, i32* %43)
  %45 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %5, align 8
  %46 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %45, i32 0, i32 2
  %47 = call i32 @complete(i32* %46)
  br label %48

48:                                               ; preds = %35, %2
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @DFSDM_ISR_ROVRF_MASK, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %48
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @DFSDM_CR2_ROVRIE_MASK, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %60 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %59, i32 0, i32 0
  %61 = call i32 @dev_warn(i32* %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %58, %53
  %63 = load %struct.regmap*, %struct.regmap** %7, align 8
  %64 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %5, align 8
  %65 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @DFSDM_ICR(i32 %66)
  %68 = load i32, i32* @DFSDM_ICR_CLRROVRF_MASK, align 4
  %69 = load i32, i32* @DFSDM_ICR_CLRROVRF_MASK, align 4
  %70 = call i32 @regmap_update_bits(%struct.regmap* %63, i32 %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %62, %48
  %72 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %72
}

declare dso_local %struct.iio_dev* @iio_priv_to_dev(%struct.stm32_dfsdm_adc*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @DFSDM_ISR(i32) #1

declare dso_local i32 @DFSDM_CR2(i32) #1

declare dso_local i32 @DFSDM_RDATAR(i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @DFSDM_ICR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
