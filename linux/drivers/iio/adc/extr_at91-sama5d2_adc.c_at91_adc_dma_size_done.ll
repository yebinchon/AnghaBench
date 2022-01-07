; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91-sama5d2_adc.c_at91_adc_dma_size_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91-sama5d2_adc.c_at91_adc_dma_size_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_adc_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.dma_tx_state = type { i32 }

@DMA_IN_PROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.at91_adc_state*)* @at91_adc_dma_size_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_adc_dma_size_done(%struct.at91_adc_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.at91_adc_state*, align 8
  %4 = alloca %struct.dma_tx_state, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.at91_adc_state* %0, %struct.at91_adc_state** %3, align 8
  %8 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %9 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %13 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dmaengine_tx_status(%struct.TYPE_4__* %11, i32 %17, %struct.dma_tx_state* %4)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @DMA_IN_PROGRESS, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %58

23:                                               ; preds = %1
  %24 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %25 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %4, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %27, %29
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %33 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp sge i32 %31, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %23
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %40 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %38, %42
  store i32 %43, i32* %7, align 4
  br label %56

44:                                               ; preds = %23
  %45 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %46 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %48, %49
  %51 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %52 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %50, %54
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %44, %37
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %22
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @dmaengine_tx_status(%struct.TYPE_4__*, i32, %struct.dma_tx_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
