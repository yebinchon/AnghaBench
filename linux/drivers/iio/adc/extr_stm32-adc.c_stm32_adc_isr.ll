; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c_stm32_adc_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c_stm32_adc_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_adc = type { i64, i64, i32, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.stm32_adc_regspec* }
%struct.stm32_adc_regspec = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.iio_dev = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @stm32_adc_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_adc_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stm32_adc*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.stm32_adc_regspec*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.stm32_adc*
  store %struct.stm32_adc* %11, %struct.stm32_adc** %6, align 8
  %12 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %13 = call %struct.iio_dev* @iio_priv_to_dev(%struct.stm32_adc* %12)
  store %struct.iio_dev* %13, %struct.iio_dev** %7, align 8
  %14 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %15 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %14, i32 0, i32 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.stm32_adc_regspec*, %struct.stm32_adc_regspec** %17, align 8
  store %struct.stm32_adc_regspec* %18, %struct.stm32_adc_regspec** %8, align 8
  %19 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %20 = load %struct.stm32_adc_regspec*, %struct.stm32_adc_regspec** %8, align 8
  %21 = getelementptr inbounds %struct.stm32_adc_regspec, %struct.stm32_adc_regspec* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @stm32_adc_readl(%struct.stm32_adc* %19, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.stm32_adc_regspec*, %struct.stm32_adc_regspec** %8, align 8
  %27 = getelementptr inbounds %struct.stm32_adc_regspec, %struct.stm32_adc_regspec* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %25, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %74

32:                                               ; preds = %2
  %33 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %34 = load %struct.stm32_adc_regspec*, %struct.stm32_adc_regspec** %8, align 8
  %35 = getelementptr inbounds %struct.stm32_adc_regspec, %struct.stm32_adc_regspec* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @stm32_adc_readw(%struct.stm32_adc* %33, i32 %36)
  %38 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %39 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %42 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  store i32 %37, i32* %44, align 4
  %45 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %46 = call i64 @iio_buffer_enabled(%struct.iio_dev* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %32
  %49 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %50 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %50, align 8
  %53 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %54 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %57 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp uge i64 %55, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %48
  %61 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %62 = call i32 @stm32_adc_conv_irq_disable(%struct.stm32_adc* %61)
  %63 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %64 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @iio_trigger_poll(i32 %65)
  br label %67

67:                                               ; preds = %60, %48
  br label %72

68:                                               ; preds = %32
  %69 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %70 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %69, i32 0, i32 2
  %71 = call i32 @complete(i32* %70)
  br label %72

72:                                               ; preds = %68, %67
  %73 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %73, i32* %3, align 4
  br label %76

74:                                               ; preds = %2
  %75 = load i32, i32* @IRQ_NONE, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.iio_dev* @iio_priv_to_dev(%struct.stm32_adc*) #1

declare dso_local i32 @stm32_adc_readl(%struct.stm32_adc*, i32) #1

declare dso_local i32 @stm32_adc_readw(%struct.stm32_adc*, i32) #1

declare dso_local i64 @iio_buffer_enabled(%struct.iio_dev*) #1

declare dso_local i32 @stm32_adc_conv_irq_disable(%struct.stm32_adc*) #1

declare dso_local i32 @iio_trigger_poll(i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
