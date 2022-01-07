; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-adc.c_stm32_dfsdm_start_conv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-adc.c_stm32_dfsdm_start_conv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_dfsdm_adc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.regmap* }
%struct.regmap = type { i32 }
%struct.iio_trigger = type { i32 }

@DFSDM_CR1_CFG_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_dfsdm_adc*, %struct.iio_trigger*)* @stm32_dfsdm_start_conv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_dfsdm_start_conv(%struct.stm32_dfsdm_adc* %0, %struct.iio_trigger* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stm32_dfsdm_adc*, align 8
  %5 = alloca %struct.iio_trigger*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  store %struct.stm32_dfsdm_adc* %0, %struct.stm32_dfsdm_adc** %4, align 8
  store %struct.iio_trigger* %1, %struct.iio_trigger** %5, align 8
  %8 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %4, align 8
  %9 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.regmap*, %struct.regmap** %11, align 8
  store %struct.regmap* %12, %struct.regmap** %6, align 8
  %13 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %4, align 8
  %14 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %4, align 8
  %15 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.iio_trigger*, %struct.iio_trigger** %5, align 8
  %18 = call i32 @stm32_dfsdm_channels_configure(%struct.stm32_dfsdm_adc* %13, i32 %16, %struct.iio_trigger* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %63

23:                                               ; preds = %2
  %24 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %4, align 8
  %25 = call i32 @stm32_dfsdm_start_channel(%struct.stm32_dfsdm_adc* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %63

30:                                               ; preds = %23
  %31 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %4, align 8
  %32 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %4, align 8
  %33 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.iio_trigger*, %struct.iio_trigger** %5, align 8
  %36 = call i32 @stm32_dfsdm_filter_configure(%struct.stm32_dfsdm_adc* %31, i32 %34, %struct.iio_trigger* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %59

40:                                               ; preds = %30
  %41 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %4, align 8
  %42 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %4, align 8
  %43 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.iio_trigger*, %struct.iio_trigger** %5, align 8
  %46 = call i32 @stm32_dfsdm_start_filter(%struct.stm32_dfsdm_adc* %41, i32 %44, %struct.iio_trigger* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %51

50:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %63

51:                                               ; preds = %49
  %52 = load %struct.regmap*, %struct.regmap** %6, align 8
  %53 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %4, align 8
  %54 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @DFSDM_CR1(i32 %55)
  %57 = load i32, i32* @DFSDM_CR1_CFG_MASK, align 4
  %58 = call i32 @regmap_update_bits(%struct.regmap* %52, i32 %56, i32 %57, i32 0)
  br label %59

59:                                               ; preds = %51, %39
  %60 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %4, align 8
  %61 = call i32 @stm32_dfsdm_stop_channel(%struct.stm32_dfsdm_adc* %60)
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %59, %50, %28, %21
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @stm32_dfsdm_channels_configure(%struct.stm32_dfsdm_adc*, i32, %struct.iio_trigger*) #1

declare dso_local i32 @stm32_dfsdm_start_channel(%struct.stm32_dfsdm_adc*) #1

declare dso_local i32 @stm32_dfsdm_filter_configure(%struct.stm32_dfsdm_adc*, i32, %struct.iio_trigger*) #1

declare dso_local i32 @stm32_dfsdm_start_filter(%struct.stm32_dfsdm_adc*, i32, %struct.iio_trigger*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @DFSDM_CR1(i32) #1

declare dso_local i32 @stm32_dfsdm_stop_channel(%struct.stm32_dfsdm_adc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
