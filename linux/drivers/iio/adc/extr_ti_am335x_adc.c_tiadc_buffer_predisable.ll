; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti_am335x_adc.c_tiadc_buffer_predisable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti_am335x_adc.c_tiadc_buffer_predisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.tiadc_device = type { i64, i64, i32, %struct.tiadc_dma }
%struct.tiadc_dma = type { i64 }

@REG_IRQCLR = common dso_local global i32 0, align 4
@IRQENB_FIFO1THRES = common dso_local global i32 0, align 4
@IRQENB_FIFO1OVRRUN = common dso_local global i32 0, align 4
@IRQENB_FIFO1UNDRFLW = common dso_local global i32 0, align 4
@REG_DMAENABLE_CLEAR = common dso_local global i32 0, align 4
@REG_FIFO1CNT = common dso_local global i32 0, align 4
@REG_FIFO1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @tiadc_buffer_predisable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tiadc_buffer_predisable(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  %3 = alloca %struct.tiadc_device*, align 8
  %4 = alloca %struct.tiadc_dma*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %2, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %9 = call %struct.tiadc_device* @iio_priv(%struct.iio_dev* %8)
  store %struct.tiadc_device* %9, %struct.tiadc_device** %3, align 8
  %10 = load %struct.tiadc_device*, %struct.tiadc_device** %3, align 8
  %11 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %10, i32 0, i32 3
  store %struct.tiadc_dma* %11, %struct.tiadc_dma** %4, align 8
  %12 = load %struct.tiadc_device*, %struct.tiadc_device** %3, align 8
  %13 = load i32, i32* @REG_IRQCLR, align 4
  %14 = load i32, i32* @IRQENB_FIFO1THRES, align 4
  %15 = load i32, i32* @IRQENB_FIFO1OVRRUN, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @IRQENB_FIFO1UNDRFLW, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @tiadc_writel(%struct.tiadc_device* %12, i32 %13, i32 %18)
  %20 = load %struct.tiadc_device*, %struct.tiadc_device** %3, align 8
  %21 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.tiadc_device*, %struct.tiadc_device** %3, align 8
  %24 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @am335x_tsc_se_clr(i32 %22, i64 %25)
  %27 = load %struct.tiadc_device*, %struct.tiadc_device** %3, align 8
  %28 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.tiadc_device*, %struct.tiadc_device** %3, align 8
  %30 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.tiadc_dma*, %struct.tiadc_dma** %4, align 8
  %32 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %1
  %36 = load %struct.tiadc_device*, %struct.tiadc_device** %3, align 8
  %37 = load i32, i32* @REG_DMAENABLE_CLEAR, align 4
  %38 = call i32 @tiadc_writel(%struct.tiadc_device* %36, i32 %37, i32 2)
  %39 = load %struct.tiadc_dma*, %struct.tiadc_dma** %4, align 8
  %40 = getelementptr inbounds %struct.tiadc_dma, %struct.tiadc_dma* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @dmaengine_terminate_async(i64 %41)
  br label %43

43:                                               ; preds = %35, %1
  %44 = load %struct.tiadc_device*, %struct.tiadc_device** %3, align 8
  %45 = load i32, i32* @REG_FIFO1CNT, align 4
  %46 = call i32 @tiadc_readl(%struct.tiadc_device* %44, i32 %45)
  store i32 %46, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %55, %43
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load %struct.tiadc_device*, %struct.tiadc_device** %3, align 8
  %53 = load i32, i32* @REG_FIFO1, align 4
  %54 = call i32 @tiadc_readl(%struct.tiadc_device* %52, i32 %53)
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %47

58:                                               ; preds = %47
  ret i32 0
}

declare dso_local %struct.tiadc_device* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @tiadc_writel(%struct.tiadc_device*, i32, i32) #1

declare dso_local i32 @am335x_tsc_se_clr(i32, i64) #1

declare dso_local i32 @dmaengine_terminate_async(i64) #1

declare dso_local i32 @tiadc_readl(%struct.tiadc_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
