; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw/extr_core.c_dwc_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw/extr_core.c_dwc_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.dw_dma_chan = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dw_dma = type { i32 (%struct.dw_dma_chan*)* }

@DW_DMA_IS_INITIALIZED = common dso_local global i32 0, align 4
@MASK = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_dma_chan*)* @dwc_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_initialize(%struct.dw_dma_chan* %0) #0 {
  %2 = alloca %struct.dw_dma_chan*, align 8
  %3 = alloca %struct.dw_dma*, align 8
  store %struct.dw_dma_chan* %0, %struct.dw_dma_chan** %2, align 8
  %4 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %2, align 8
  %5 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.dw_dma* @to_dw_dma(i32 %7)
  store %struct.dw_dma* %8, %struct.dw_dma** %3, align 8
  %9 = load i32, i32* @DW_DMA_IS_INITIALIZED, align 4
  %10 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %2, align 8
  %11 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %10, i32 0, i32 0
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %37

15:                                               ; preds = %1
  %16 = load %struct.dw_dma*, %struct.dw_dma** %3, align 8
  %17 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %16, i32 0, i32 0
  %18 = load i32 (%struct.dw_dma_chan*)*, i32 (%struct.dw_dma_chan*)** %17, align 8
  %19 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %2, align 8
  %20 = call i32 %18(%struct.dw_dma_chan* %19)
  %21 = load %struct.dw_dma*, %struct.dw_dma** %3, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @MASK, i32 0, i32 1), align 4
  %23 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %2, align 8
  %24 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @channel_set_bit(%struct.dw_dma* %21, i32 %22, i32 %25)
  %27 = load %struct.dw_dma*, %struct.dw_dma** %3, align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @MASK, i32 0, i32 0), align 4
  %29 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %2, align 8
  %30 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @channel_set_bit(%struct.dw_dma* %27, i32 %28, i32 %31)
  %33 = load i32, i32* @DW_DMA_IS_INITIALIZED, align 4
  %34 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %2, align 8
  %35 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %34, i32 0, i32 0
  %36 = call i32 @set_bit(i32 %33, i32* %35)
  br label %37

37:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.dw_dma* @to_dw_dma(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @channel_set_bit(%struct.dw_dma*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
