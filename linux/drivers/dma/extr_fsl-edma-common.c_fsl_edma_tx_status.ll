; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma-common.c_fsl_edma_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma-common.c_fsl_edma_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_tx_state = type { i8* }
%struct.fsl_edma_chan = type { i32, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.virt_dma_desc = type { i32 }

@DMA_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsl_edma_tx_status(%struct.dma_chan* %0, i64 %1, %struct.dma_tx_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dma_tx_state*, align 8
  %8 = alloca %struct.fsl_edma_chan*, align 8
  %9 = alloca %struct.virt_dma_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.dma_tx_state* %2, %struct.dma_tx_state** %7, align 8
  %12 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %13 = call %struct.fsl_edma_chan* @to_fsl_edma_chan(%struct.dma_chan* %12)
  store %struct.fsl_edma_chan* %13, %struct.fsl_edma_chan** %8, align 8
  %14 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %17 = call i32 @dma_cookie_status(%struct.dma_chan* %14, i64 %15, %struct.dma_tx_state* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @DMA_COMPLETE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %4, align 4
  br label %82

23:                                               ; preds = %3
  %24 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %25 = icmp ne %struct.dma_tx_state* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %8, align 8
  %28 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %4, align 4
  br label %82

30:                                               ; preds = %23
  %31 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %8, align 8
  %32 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %11, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %8, align 8
  %37 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %36, i32 0, i32 1
  %38 = load i64, i64* %6, align 8
  %39 = call %struct.virt_dma_desc* @vchan_find_desc(%struct.TYPE_8__* %37, i64 %38)
  store %struct.virt_dma_desc* %39, %struct.virt_dma_desc** %9, align 8
  %40 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %8, align 8
  %41 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %40, i32 0, i32 2
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = icmp ne %struct.TYPE_7__* %42, null
  br i1 %43, label %44, label %60

44:                                               ; preds = %30
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %8, align 8
  %47 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %46, i32 0, i32 2
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %45, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %44
  %55 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %8, align 8
  %56 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %9, align 8
  %57 = call i8* @fsl_edma_desc_residue(%struct.fsl_edma_chan* %55, %struct.virt_dma_desc* %56, i32 1)
  %58 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %59 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  br label %73

60:                                               ; preds = %44, %30
  %61 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %9, align 8
  %62 = icmp ne %struct.virt_dma_desc* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %8, align 8
  %65 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %9, align 8
  %66 = call i8* @fsl_edma_desc_residue(%struct.fsl_edma_chan* %64, %struct.virt_dma_desc* %65, i32 0)
  %67 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %68 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  br label %72

69:                                               ; preds = %60
  %70 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %71 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %70, i32 0, i32 0
  store i8* null, i8** %71, align 8
  br label %72

72:                                               ; preds = %69, %63
  br label %73

73:                                               ; preds = %72, %54
  %74 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %8, align 8
  %75 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %11, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  %79 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %8, align 8
  %80 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %73, %26, %21
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.fsl_edma_chan* @to_fsl_edma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dma_cookie_status(%struct.dma_chan*, i64, %struct.dma_tx_state*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.virt_dma_desc* @vchan_find_desc(%struct.TYPE_8__*, i64) #1

declare dso_local i8* @fsl_edma_desc_residue(%struct.fsl_edma_chan*, %struct.virt_dma_desc*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
