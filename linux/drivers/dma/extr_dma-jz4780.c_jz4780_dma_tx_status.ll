; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dma-jz4780.c_jz4780_dma_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dma-jz4780.c_jz4780_dma_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_tx_state = type { i32 }
%struct.jz4780_dma_chan = type { %struct.TYPE_6__, %struct.TYPE_7__*, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.virt_dma_desc }
%struct.virt_dma_desc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@DMA_COMPLETE = common dso_local global i32 0, align 4
@JZ_DMA_DCS_AR = common dso_local global i32 0, align 4
@JZ_DMA_DCS_HLT = common dso_local global i32 0, align 4
@DMA_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i64, %struct.dma_tx_state*)* @jz4780_dma_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_dma_tx_status(%struct.dma_chan* %0, i64 %1, %struct.dma_tx_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dma_tx_state*, align 8
  %8 = alloca %struct.jz4780_dma_chan*, align 8
  %9 = alloca %struct.virt_dma_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.dma_tx_state* %2, %struct.dma_tx_state** %7, align 8
  %13 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %14 = call %struct.jz4780_dma_chan* @to_jz4780_dma_chan(%struct.dma_chan* %13)
  store %struct.jz4780_dma_chan* %14, %struct.jz4780_dma_chan** %8, align 8
  store i64 0, i64* %12, align 8
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
  %24 = icmp eq %struct.dma_tx_state* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %3
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %4, align 4
  br label %103

27:                                               ; preds = %22
  %28 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %8, align 8
  %29 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %8, align 8
  %34 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %33, i32 0, i32 0
  %35 = load i64, i64* %6, align 8
  %36 = call %struct.virt_dma_desc* @vchan_find_desc(%struct.TYPE_6__* %34, i64 %35)
  store %struct.virt_dma_desc* %36, %struct.virt_dma_desc** %9, align 8
  %37 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %9, align 8
  %38 = icmp ne %struct.virt_dma_desc* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %27
  %40 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %8, align 8
  %41 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %9, align 8
  %42 = call %struct.TYPE_7__* @to_jz4780_dma_desc(%struct.virt_dma_desc* %41)
  %43 = call i64 @jz4780_dma_desc_residue(%struct.jz4780_dma_chan* %40, %struct.TYPE_7__* %42, i64 0)
  store i64 %43, i64* %12, align 8
  br label %65

44:                                               ; preds = %27
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %8, align 8
  %47 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %46, i32 0, i32 1
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %45, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %44
  %55 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %8, align 8
  %56 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %8, align 8
  %57 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %56, i32 0, i32 1
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %8, align 8
  %60 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 1
  %63 = call i64 @jz4780_dma_desc_residue(%struct.jz4780_dma_chan* %55, %struct.TYPE_7__* %58, i64 %62)
  store i64 %63, i64* %12, align 8
  br label %64

64:                                               ; preds = %54, %44
  br label %65

65:                                               ; preds = %64, %39
  %66 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %67 = load i64, i64* %12, align 8
  %68 = call i32 @dma_set_residue(%struct.dma_tx_state* %66, i64 %67)
  %69 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %9, align 8
  %70 = icmp ne %struct.virt_dma_desc* %69, null
  br i1 %70, label %71, label %96

71:                                               ; preds = %65
  %72 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %8, align 8
  %73 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %72, i32 0, i32 1
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = icmp ne %struct.TYPE_7__* %74, null
  br i1 %75, label %76, label %96

76:                                               ; preds = %71
  %77 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %9, align 8
  %78 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %8, align 8
  %79 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %78, i32 0, i32 1
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = icmp eq %struct.virt_dma_desc* %77, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %76
  %84 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %8, align 8
  %85 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %84, i32 0, i32 1
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @JZ_DMA_DCS_AR, align 4
  %90 = load i32, i32* @JZ_DMA_DCS_HLT, align 4
  %91 = or i32 %89, %90
  %92 = and i32 %88, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %83
  %95 = load i32, i32* @DMA_ERROR, align 4
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %94, %83, %76, %71, %65
  %97 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %8, align 8
  %98 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64, i64* %11, align 8
  %101 = call i32 @spin_unlock_irqrestore(i32* %99, i64 %100)
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %96, %25
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local %struct.jz4780_dma_chan* @to_jz4780_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dma_cookie_status(%struct.dma_chan*, i64, %struct.dma_tx_state*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.virt_dma_desc* @vchan_find_desc(%struct.TYPE_6__*, i64) #1

declare dso_local i64 @jz4780_dma_desc_residue(%struct.jz4780_dma_chan*, %struct.TYPE_7__*, i64) #1

declare dso_local %struct.TYPE_7__* @to_jz4780_dma_desc(%struct.virt_dma_desc*) #1

declare dso_local i32 @dma_set_residue(%struct.dma_tx_state*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
