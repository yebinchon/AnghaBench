; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw-edma/extr_dw-edma-core.c_dw_edma_device_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw-edma/extr_dw-edma-core.c_dw_edma_device_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_tx_state = type { i32 }
%struct.dw_edma_chan = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dw_edma_desc = type { i64, i64 }
%struct.virt_dma_desc = type { i32 }

@DMA_COMPLETE = common dso_local global i32 0, align 4
@DMA_IN_PROGRESS = common dso_local global i32 0, align 4
@EDMA_ST_PAUSE = common dso_local global i64 0, align 8
@DMA_PAUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i32, %struct.dma_tx_state*)* @dw_edma_device_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_edma_device_tx_status(%struct.dma_chan* %0, i32 %1, %struct.dma_tx_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_tx_state*, align 8
  %8 = alloca %struct.dw_edma_chan*, align 8
  %9 = alloca %struct.dw_edma_desc*, align 8
  %10 = alloca %struct.virt_dma_desc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dma_tx_state* %2, %struct.dma_tx_state** %7, align 8
  %14 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %15 = call %struct.dw_edma_chan* @dchan2dw_edma_chan(%struct.dma_chan* %14)
  store %struct.dw_edma_chan* %15, %struct.dw_edma_chan** %8, align 8
  store i64 0, i64* %13, align 8
  %16 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %19 = call i32 @dma_cookie_status(%struct.dma_chan* %16, i32 %17, %struct.dma_tx_state* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @DMA_COMPLETE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %4, align 4
  br label %78

25:                                               ; preds = %3
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @DMA_IN_PROGRESS, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %8, align 8
  %31 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @EDMA_ST_PAUSE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @DMA_PAUSED, align 4
  store i32 %36, i32* %12, align 4
  br label %37

37:                                               ; preds = %35, %29, %25
  %38 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %39 = icmp ne %struct.dma_tx_state* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  br label %73

41:                                               ; preds = %37
  %42 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %8, align 8
  %43 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %11, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %8, align 8
  %48 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %47, i32 0, i32 1
  %49 = load i32, i32* %6, align 4
  %50 = call %struct.virt_dma_desc* @vchan_find_desc(%struct.TYPE_2__* %48, i32 %49)
  store %struct.virt_dma_desc* %50, %struct.virt_dma_desc** %10, align 8
  %51 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %10, align 8
  %52 = icmp ne %struct.virt_dma_desc* %51, null
  br i1 %52, label %53, label %67

53:                                               ; preds = %41
  %54 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %10, align 8
  %55 = call %struct.dw_edma_desc* @vd2dw_edma_desc(%struct.virt_dma_desc* %54)
  store %struct.dw_edma_desc* %55, %struct.dw_edma_desc** %9, align 8
  %56 = load %struct.dw_edma_desc*, %struct.dw_edma_desc** %9, align 8
  %57 = icmp ne %struct.dw_edma_desc* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load %struct.dw_edma_desc*, %struct.dw_edma_desc** %9, align 8
  %60 = getelementptr inbounds %struct.dw_edma_desc, %struct.dw_edma_desc* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.dw_edma_desc*, %struct.dw_edma_desc** %9, align 8
  %63 = getelementptr inbounds %struct.dw_edma_desc, %struct.dw_edma_desc* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %61, %64
  store i64 %65, i64* %13, align 8
  br label %66

66:                                               ; preds = %58, %53
  br label %67

67:                                               ; preds = %66, %41
  %68 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %8, align 8
  %69 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %11, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  br label %73

73:                                               ; preds = %67, %40
  %74 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %75 = load i64, i64* %13, align 8
  %76 = call i32 @dma_set_residue(%struct.dma_tx_state* %74, i64 %75)
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %73, %23
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.dw_edma_chan* @dchan2dw_edma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dma_cookie_status(%struct.dma_chan*, i32, %struct.dma_tx_state*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.virt_dma_desc* @vchan_find_desc(%struct.TYPE_2__*, i32) #1

declare dso_local %struct.dw_edma_desc* @vd2dw_edma_desc(%struct.virt_dma_desc*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dma_set_residue(%struct.dma_tx_state*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
