; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-mdma.c_stm32_mdma_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-mdma.c_stm32_mdma_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_tx_state = type { i32 }
%struct.stm32_mdma_chan = type { %struct.TYPE_8__, i32, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.virt_dma_desc = type { i32 }

@DMA_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i64, %struct.dma_tx_state*)* @stm32_mdma_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_mdma_tx_status(%struct.dma_chan* %0, i64 %1, %struct.dma_tx_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dma_tx_state*, align 8
  %8 = alloca %struct.stm32_mdma_chan*, align 8
  %9 = alloca %struct.virt_dma_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.dma_tx_state* %2, %struct.dma_tx_state** %7, align 8
  %13 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %14 = call %struct.stm32_mdma_chan* @to_stm32_mdma_chan(%struct.dma_chan* %13)
  store %struct.stm32_mdma_chan* %14, %struct.stm32_mdma_chan** %8, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %18 = call i32 @dma_cookie_status(%struct.dma_chan* %15, i64 %16, %struct.dma_tx_state* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @DMA_COMPLETE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %24 = icmp ne %struct.dma_tx_state* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %22, %3
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %4, align 4
  br label %79

27:                                               ; preds = %22
  %28 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %8, align 8
  %29 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %8, align 8
  %34 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %33, i32 0, i32 0
  %35 = load i64, i64* %6, align 8
  %36 = call %struct.virt_dma_desc* @vchan_find_desc(%struct.TYPE_8__* %34, i64 %35)
  store %struct.virt_dma_desc* %36, %struct.virt_dma_desc** %9, align 8
  %37 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %8, align 8
  %38 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %37, i32 0, i32 2
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = icmp ne %struct.TYPE_9__* %39, null
  br i1 %40, label %41, label %60

41:                                               ; preds = %27
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %8, align 8
  %44 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %43, i32 0, i32 2
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %42, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %41
  %52 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %8, align 8
  %53 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %8, align 8
  %54 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %53, i32 0, i32 2
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %8, align 8
  %57 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @stm32_mdma_desc_residue(%struct.stm32_mdma_chan* %52, %struct.TYPE_9__* %55, i32 %58)
  store i32 %59, i32* %12, align 4
  br label %69

60:                                               ; preds = %41, %27
  %61 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %9, align 8
  %62 = icmp ne %struct.virt_dma_desc* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %8, align 8
  %65 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %9, align 8
  %66 = call %struct.TYPE_9__* @to_stm32_mdma_desc(%struct.virt_dma_desc* %65)
  %67 = call i32 @stm32_mdma_desc_residue(%struct.stm32_mdma_chan* %64, %struct.TYPE_9__* %66, i32 0)
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %63, %60
  br label %69

69:                                               ; preds = %68, %51
  %70 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @dma_set_residue(%struct.dma_tx_state* %70, i32 %71)
  %73 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %8, align 8
  %74 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i64, i64* %11, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %69, %25
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.stm32_mdma_chan* @to_stm32_mdma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dma_cookie_status(%struct.dma_chan*, i64, %struct.dma_tx_state*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.virt_dma_desc* @vchan_find_desc(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @stm32_mdma_desc_residue(%struct.stm32_mdma_chan*, %struct.TYPE_9__*, i32) #1

declare dso_local %struct.TYPE_9__* @to_stm32_mdma_desc(%struct.virt_dma_desc*) #1

declare dso_local i32 @dma_set_residue(%struct.dma_tx_state*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
