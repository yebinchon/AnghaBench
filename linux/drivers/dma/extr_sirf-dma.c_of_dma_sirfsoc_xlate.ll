; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sirf-dma.c_of_dma_sirfsoc_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sirf-dma.c_of_dma_sirfsoc_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.of_phandle_args = type { i32* }
%struct.of_dma = type { %struct.sirfsoc_dma* }
%struct.sirfsoc_dma = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SIRFSOC_DMA_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_chan* (%struct.of_phandle_args*, %struct.of_dma*)* @of_dma_sirfsoc_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_chan* @of_dma_sirfsoc_xlate(%struct.of_phandle_args* %0, %struct.of_dma* %1) #0 {
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.of_phandle_args*, align 8
  %5 = alloca %struct.of_dma*, align 8
  %6 = alloca %struct.sirfsoc_dma*, align 8
  %7 = alloca i32, align 4
  store %struct.of_phandle_args* %0, %struct.of_phandle_args** %4, align 8
  store %struct.of_dma* %1, %struct.of_dma** %5, align 8
  %8 = load %struct.of_dma*, %struct.of_dma** %5, align 8
  %9 = getelementptr inbounds %struct.of_dma, %struct.of_dma* %8, i32 0, i32 0
  %10 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %9, align 8
  store %struct.sirfsoc_dma* %10, %struct.sirfsoc_dma** %6, align 8
  %11 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %12 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @SIRFSOC_DMA_CHANNELS, align 4
  %18 = icmp uge i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %29

20:                                               ; preds = %2
  %21 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %6, align 8
  %22 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call %struct.dma_chan* @dma_get_slave_channel(i32* %27)
  store %struct.dma_chan* %28, %struct.dma_chan** %3, align 8
  br label %29

29:                                               ; preds = %20, %19
  %30 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  ret %struct.dma_chan* %30
}

declare dso_local %struct.dma_chan* @dma_get_slave_channel(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
