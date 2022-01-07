; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-adc.c_stm32_dfsdm_adc_dma_residue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-adc.c_stm32_dfsdm_adc_dma_residue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_dfsdm_adc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dma_tx_state = type { i32 }

@DMA_IN_PROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_dfsdm_adc*)* @stm32_dfsdm_adc_dma_residue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_dfsdm_adc_dma_residue(%struct.stm32_dfsdm_adc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stm32_dfsdm_adc*, align 8
  %4 = alloca %struct.dma_tx_state, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.stm32_dfsdm_adc* %0, %struct.stm32_dfsdm_adc** %3, align 8
  %8 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %3, align 8
  %9 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %3, align 8
  %12 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dmaengine_tx_status(%struct.TYPE_2__* %10, i32 %15, %struct.dma_tx_state* %4)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @DMA_IN_PROGRESS, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %50

20:                                               ; preds = %1
  %21 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %3, align 8
  %22 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %4, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub i32 %23, %25
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %3, align 8
  %29 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp uge i32 %27, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %20
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %3, align 8
  %35 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sub i32 %33, %36
  store i32 %37, i32* %7, align 4
  br label %48

38:                                               ; preds = %20
  %39 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %3, align 8
  %40 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = add i32 %41, %42
  %44 = load %struct.stm32_dfsdm_adc*, %struct.stm32_dfsdm_adc** %3, align 8
  %45 = getelementptr inbounds %struct.stm32_dfsdm_adc, %struct.stm32_dfsdm_adc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sub i32 %43, %46
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %38, %32
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %2, align 4
  br label %51

50:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %48
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @dmaengine_tx_status(%struct.TYPE_2__*, i32, %struct.dma_tx_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
