; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/hsu/extr_hsu.c_hsu_chan_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/hsu/extr_hsu.c_hsu_chan_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsu_dma_chan = type { i64 }

@HSU_CH_CR_CHA = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i64 0, align 8
@HSU_CH_CR_CHD = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i64 0, align 8
@HSU_CH_CR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hsu_dma_chan*)* @hsu_chan_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hsu_chan_enable(%struct.hsu_dma_chan* %0) #0 {
  %2 = alloca %struct.hsu_dma_chan*, align 8
  %3 = alloca i32, align 4
  store %struct.hsu_dma_chan* %0, %struct.hsu_dma_chan** %2, align 8
  %4 = load i32, i32* @HSU_CH_CR_CHA, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %2, align 8
  %6 = getelementptr inbounds %struct.hsu_dma_chan, %struct.hsu_dma_chan* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @DMA_MEM_TO_DEV, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32, i32* @HSU_CH_CR_CHD, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %3, align 4
  br label %26

15:                                               ; preds = %1
  %16 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %2, align 8
  %17 = getelementptr inbounds %struct.hsu_dma_chan, %struct.hsu_dma_chan* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DMA_DEV_TO_MEM, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i32, i32* @HSU_CH_CR_CHD, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %15
  br label %26

26:                                               ; preds = %25, %10
  %27 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %2, align 8
  %28 = load i32, i32* @HSU_CH_CR, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @hsu_chan_writel(%struct.hsu_dma_chan* %27, i32 %28, i32 %29)
  ret void
}

declare dso_local i32 @hsu_chan_writel(%struct.hsu_dma_chan*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
