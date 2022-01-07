; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-adc.c_stm32_dfsdm_filter_set_trig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-adc.c_stm32_dfsdm_filter_set_trig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_dfsdm_adc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.regmap* }
%struct.regmap = type { i32 }
%struct.iio_trigger = type { i32 }
%struct.iio_dev = type { i32 }

@STM32_DFSDM_JEXTEN_DISABLED = common dso_local global i32 0, align 4
@STM32_DFSDM_JEXTEN_RISING_EDGE = common dso_local global i32 0, align 4
@DFSDM_CR1_JEXTSEL_MASK = common dso_local global i32 0, align 4
@DFSDM_CR1_JEXTEN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_dfsdm_adc*, i32, %struct.iio_trigger*)* @stm32_dfsdm_filter_set_trig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_dfsdm_filter_set_trig(%struct.stm32_dfsdm_adc* %0, i32 %1, %struct.iio_trigger* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stm32_dfsdm_adc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_trigger*, align 8
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca %struct.regmap*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.stm32_dfsdm_adc* %0, %struct.stm32_dfsdm_adc** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.iio_trigger* %2, %struct.iio_trigger** %7, align 8
  %13 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %5, align 8
  %14 = call %struct.iio_dev* @iio_priv_to_dev(%struct.stm32_dfsdm_adc* %13)
  store %struct.iio_dev* %14, %struct.iio_dev** %8, align 8
  %15 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %5, align 8
  %16 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.regmap*, %struct.regmap** %18, align 8
  store %struct.regmap* %19, %struct.regmap** %9, align 8
  store i32 0, i32* %10, align 4
  %20 = load i32, i32* @STM32_DFSDM_JEXTEN_DISABLED, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.iio_trigger*, %struct.iio_trigger** %7, align 8
  %22 = icmp ne %struct.iio_trigger* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %3
  %24 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %25 = load %struct.iio_trigger*, %struct.iio_trigger** %7, align 8
  %26 = call i32 @stm32_dfsdm_get_jextsel(%struct.iio_dev* %24, %struct.iio_trigger* %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %4, align 4
  br label %52

31:                                               ; preds = %23
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* @STM32_DFSDM_JEXTEN_RISING_EDGE, align 4
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %31, %3
  %35 = load %struct.regmap*, %struct.regmap** %9, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @DFSDM_CR1(i32 %36)
  %38 = load i32, i32* @DFSDM_CR1_JEXTSEL_MASK, align 4
  %39 = load i32, i32* @DFSDM_CR1_JEXTEN_MASK, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @DFSDM_CR1_JEXTSEL(i32 %41)
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @DFSDM_CR1_JEXTEN(i32 %43)
  %45 = or i32 %42, %44
  %46 = call i32 @regmap_update_bits(%struct.regmap* %35, i32 %37, i32 %40, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %34
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %4, align 4
  br label %52

51:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %49, %29
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.iio_dev* @iio_priv_to_dev(%struct.stm32_dfsdm_adc*) #1

declare dso_local i32 @stm32_dfsdm_get_jextsel(%struct.iio_dev*, %struct.iio_trigger*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @DFSDM_CR1(i32) #1

declare dso_local i32 @DFSDM_CR1_JEXTSEL(i32) #1

declare dso_local i32 @DFSDM_CR1_JEXTEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
