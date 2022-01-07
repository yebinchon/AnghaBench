; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mic_x100_dma.c_mic_dma_prog_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mic_x100_dma.c_mic_dma_prog_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_dma_chan = type { i64, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mic_dma_chan*)* @mic_dma_prog_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mic_dma_prog_intr(%struct.mic_dma_chan* %0) #0 {
  %2 = alloca %struct.mic_dma_chan*, align 8
  store %struct.mic_dma_chan* %0, %struct.mic_dma_chan** %2, align 8
  %3 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %2, align 8
  %4 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %3, i32 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %2, align 8
  %7 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds i32, i32* %5, i64 %8
  %10 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %2, align 8
  %11 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @mic_dma_prep_status_desc(i32* %9, i32 0, i32 %12, i32 0)
  %14 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %2, align 8
  %15 = call i32 @mic_dma_hw_ring_inc_head(%struct.mic_dma_chan* %14)
  %16 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %2, align 8
  %17 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %2, align 8
  %20 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %2, align 8
  %24 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @mic_dma_prep_status_desc(i32* %22, i32 0, i32 %25, i32 1)
  %27 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %2, align 8
  %28 = call i32 @mic_dma_hw_ring_inc_head(%struct.mic_dma_chan* %27)
  ret void
}

declare dso_local i32 @mic_dma_prep_status_desc(i32*, i32, i32, i32) #1

declare dso_local i32 @mic_dma_hw_ring_inc_head(%struct.mic_dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
