; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_moxart-dma.c_moxart_of_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_moxart-dma.c_moxart_of_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.of_phandle_args = type { i32* }
%struct.of_dma = type { %struct.moxart_dmadev* }
%struct.moxart_dmadev = type { i32 }
%struct.moxart_chan = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_chan* (%struct.of_phandle_args*, %struct.of_dma*)* @moxart_of_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_chan* @moxart_of_xlate(%struct.of_phandle_args* %0, %struct.of_dma* %1) #0 {
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.of_phandle_args*, align 8
  %5 = alloca %struct.of_dma*, align 8
  %6 = alloca %struct.moxart_dmadev*, align 8
  %7 = alloca %struct.dma_chan*, align 8
  %8 = alloca %struct.moxart_chan*, align 8
  store %struct.of_phandle_args* %0, %struct.of_phandle_args** %4, align 8
  store %struct.of_dma* %1, %struct.of_dma** %5, align 8
  %9 = load %struct.of_dma*, %struct.of_dma** %5, align 8
  %10 = getelementptr inbounds %struct.of_dma, %struct.of_dma* %9, i32 0, i32 0
  %11 = load %struct.moxart_dmadev*, %struct.moxart_dmadev** %10, align 8
  store %struct.moxart_dmadev* %11, %struct.moxart_dmadev** %6, align 8
  %12 = load %struct.moxart_dmadev*, %struct.moxart_dmadev** %6, align 8
  %13 = getelementptr inbounds %struct.moxart_dmadev, %struct.moxart_dmadev* %12, i32 0, i32 0
  %14 = call %struct.dma_chan* @dma_get_any_slave_channel(i32* %13)
  store %struct.dma_chan* %14, %struct.dma_chan** %7, align 8
  %15 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %16 = icmp ne %struct.dma_chan* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %29

18:                                               ; preds = %2
  %19 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %20 = call %struct.moxart_chan* @to_moxart_dma_chan(%struct.dma_chan* %19)
  store %struct.moxart_chan* %20, %struct.moxart_chan** %8, align 8
  %21 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %22 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.moxart_chan*, %struct.moxart_chan** %8, align 8
  %27 = getelementptr inbounds %struct.moxart_chan, %struct.moxart_chan* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  store %struct.dma_chan* %28, %struct.dma_chan** %3, align 8
  br label %29

29:                                               ; preds = %18, %17
  %30 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  ret %struct.dma_chan* %30
}

declare dso_local %struct.dma_chan* @dma_get_any_slave_channel(i32*) #1

declare dso_local %struct.moxart_chan* @to_moxart_dma_chan(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
