; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_moxart-dma.c_moxart_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_moxart-dma.c_moxart_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_tx_state = type { i32 }
%struct.moxart_chan = type { i64, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.virt_dma_desc = type { i32 }
%struct.moxart_desc = type { i32 }

@DMA_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i64, %struct.dma_tx_state*)* @moxart_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moxart_tx_status(%struct.dma_chan* %0, i64 %1, %struct.dma_tx_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dma_tx_state*, align 8
  %8 = alloca %struct.moxart_chan*, align 8
  %9 = alloca %struct.virt_dma_desc*, align 8
  %10 = alloca %struct.moxart_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.dma_tx_state* %2, %struct.dma_tx_state** %7, align 8
  %13 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %14 = call %struct.moxart_chan* @to_moxart_dma_chan(%struct.dma_chan* %13)
  store %struct.moxart_chan* %14, %struct.moxart_chan** %8, align 8
  %15 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %18 = call i32 @dma_cookie_status(%struct.dma_chan* %15, i64 %16, %struct.dma_tx_state* %17)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.moxart_chan*, %struct.moxart_chan** %8, align 8
  %20 = getelementptr inbounds %struct.moxart_chan, %struct.moxart_chan* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %12, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.moxart_chan*, %struct.moxart_chan** %8, align 8
  %25 = getelementptr inbounds %struct.moxart_chan, %struct.moxart_chan* %24, i32 0, i32 1
  %26 = load i64, i64* %6, align 8
  %27 = call %struct.virt_dma_desc* @vchan_find_desc(%struct.TYPE_8__* %25, i64 %26)
  store %struct.virt_dma_desc* %27, %struct.virt_dma_desc** %9, align 8
  %28 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %9, align 8
  %29 = icmp ne %struct.virt_dma_desc* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %3
  %31 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %9, align 8
  %32 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %31, i32 0, i32 0
  %33 = call %struct.moxart_desc* @to_moxart_dma_desc(i32* %32)
  store %struct.moxart_desc* %33, %struct.moxart_desc** %10, align 8
  %34 = load %struct.moxart_desc*, %struct.moxart_desc** %10, align 8
  %35 = call i32 @moxart_dma_desc_size(%struct.moxart_desc* %34, i32 0)
  %36 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %37 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %59

38:                                               ; preds = %3
  %39 = load %struct.moxart_chan*, %struct.moxart_chan** %8, align 8
  %40 = getelementptr inbounds %struct.moxart_chan, %struct.moxart_chan* %39, i32 0, i32 2
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = icmp ne %struct.TYPE_7__* %41, null
  br i1 %42, label %43, label %58

43:                                               ; preds = %38
  %44 = load %struct.moxart_chan*, %struct.moxart_chan** %8, align 8
  %45 = getelementptr inbounds %struct.moxart_chan, %struct.moxart_chan* %44, i32 0, i32 2
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %43
  %54 = load %struct.moxart_chan*, %struct.moxart_chan** %8, align 8
  %55 = call i32 @moxart_dma_desc_size_in_flight(%struct.moxart_chan* %54)
  %56 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %57 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %53, %43, %38
  br label %59

59:                                               ; preds = %58, %30
  %60 = load %struct.moxart_chan*, %struct.moxart_chan** %8, align 8
  %61 = getelementptr inbounds %struct.moxart_chan, %struct.moxart_chan* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %12, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  %65 = load %struct.moxart_chan*, %struct.moxart_chan** %8, align 8
  %66 = getelementptr inbounds %struct.moxart_chan, %struct.moxart_chan* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = load i32, i32* @DMA_ERROR, align 4
  store i32 %70, i32* %4, align 4
  br label %73

71:                                               ; preds = %59
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.moxart_chan* @to_moxart_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dma_cookie_status(%struct.dma_chan*, i64, %struct.dma_tx_state*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.virt_dma_desc* @vchan_find_desc(%struct.TYPE_8__*, i64) #1

declare dso_local %struct.moxart_desc* @to_moxart_dma_desc(i32*) #1

declare dso_local i32 @moxart_dma_desc_size(%struct.moxart_desc*, i32) #1

declare dso_local i32 @moxart_dma_desc_size_in_flight(%struct.moxart_chan*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
