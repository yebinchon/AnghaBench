; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_stm32-dac.c_stm32_dac_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_stm32-dac.c_stm32_dac_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.stm32_dac = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@STM32_DAC_CR = common dso_local global i32 0, align 4
@STM32_DAC_CR_EN1 = common dso_local global i32 0, align 4
@STM32_DAC_CR_EN2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32)* @stm32_dac_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_dac_is_enabled(%struct.iio_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stm32_dac*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %11 = call %struct.stm32_dac* @iio_priv(%struct.iio_dev* %10)
  store %struct.stm32_dac* %11, %struct.stm32_dac** %6, align 8
  %12 = load %struct.stm32_dac*, %struct.stm32_dac** %6, align 8
  %13 = getelementptr inbounds %struct.stm32_dac, %struct.stm32_dac* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @STM32_DAC_CR, align 4
  %18 = call i32 @regmap_read(i32 %16, i32 %17, i32* %8)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %3, align 4
  br label %41

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @STM32_DAC_IS_CHAN_1(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* @STM32_DAC_CR_EN1, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @FIELD_GET(i32 %28, i32 %29)
  store i32 %30, i32* %7, align 4
  br label %35

31:                                               ; preds = %23
  %32 = load i32, i32* @STM32_DAC_CR_EN2, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @FIELD_GET(i32 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %35, %21
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.stm32_dac* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i64 @STM32_DAC_IS_CHAN_1(i32) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
