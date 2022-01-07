; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw/extr_core.c_dwc_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw/extr_core.c_dwc_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_tx_state = type { i32 }
%struct.dw_dma_chan = type { i32 }

@DMA_COMPLETE = common dso_local global i32 0, align 4
@DW_DMA_IS_PAUSED = common dso_local global i32 0, align 4
@DMA_IN_PROGRESS = common dso_local global i32 0, align 4
@DMA_PAUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i32, %struct.dma_tx_state*)* @dwc_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc_tx_status(%struct.dma_chan* %0, i32 %1, %struct.dma_tx_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_tx_state*, align 8
  %8 = alloca %struct.dw_dma_chan*, align 8
  %9 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dma_tx_state* %2, %struct.dma_tx_state** %7, align 8
  %10 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %11 = call %struct.dw_dma_chan* @to_dw_dma_chan(%struct.dma_chan* %10)
  store %struct.dw_dma_chan* %11, %struct.dw_dma_chan** %8, align 8
  %12 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %15 = call i32 @dma_cookie_status(%struct.dma_chan* %12, i32 %13, %struct.dma_tx_state* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @DMA_COMPLETE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %56

21:                                               ; preds = %3
  %22 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %23 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @to_dw_dma(i32 %24)
  %26 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %8, align 8
  %27 = call i32 @dwc_scan_descriptors(i32 %25, %struct.dw_dma_chan* %26)
  %28 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %31 = call i32 @dma_cookie_status(%struct.dma_chan* %28, i32 %29, %struct.dma_tx_state* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @DMA_COMPLETE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %21
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %56

37:                                               ; preds = %21
  %38 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %39 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %8, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @dwc_get_residue(%struct.dw_dma_chan* %39, i32 %40)
  %42 = call i32 @dma_set_residue(%struct.dma_tx_state* %38, i32 %41)
  %43 = load i32, i32* @DW_DMA_IS_PAUSED, align 4
  %44 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %8, align 8
  %45 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %44, i32 0, i32 0
  %46 = call i64 @test_bit(i32 %43, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %37
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @DMA_IN_PROGRESS, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @DMA_PAUSED, align 4
  store i32 %53, i32* %4, align 4
  br label %56

54:                                               ; preds = %48, %37
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %52, %35, %19
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.dw_dma_chan* @to_dw_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dma_cookie_status(%struct.dma_chan*, i32, %struct.dma_tx_state*) #1

declare dso_local i32 @dwc_scan_descriptors(i32, %struct.dw_dma_chan*) #1

declare dso_local i32 @to_dw_dma(i32) #1

declare dso_local i32 @dma_set_residue(%struct.dma_tx_state*, i32) #1

declare dso_local i32 @dwc_get_residue(%struct.dw_dma_chan*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
