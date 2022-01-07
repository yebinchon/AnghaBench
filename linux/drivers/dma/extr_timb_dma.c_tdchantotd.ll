; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_timb_dma.c_tdchantotd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_timb_dma.c_tdchantotd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timb_dma = type { i32 }
%struct.timb_dma_chan = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.timb_dma* (%struct.timb_dma_chan*)* @tdchantotd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.timb_dma* @tdchantotd(%struct.timb_dma_chan* %0) #0 {
  %2 = alloca %struct.timb_dma_chan*, align 8
  %3 = alloca i32, align 4
  store %struct.timb_dma_chan* %0, %struct.timb_dma_chan** %2, align 8
  %4 = load %struct.timb_dma_chan*, %struct.timb_dma_chan** %2, align 8
  %5 = getelementptr inbounds %struct.timb_dma_chan, %struct.timb_dma_chan* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.timb_dma_chan*, %struct.timb_dma_chan** %2, align 8
  %9 = bitcast %struct.timb_dma_chan* %8 to i32*
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = sub i64 0, %12
  %14 = getelementptr inbounds i32, i32* %9, i64 %13
  %15 = getelementptr inbounds i32, i32* %14, i64 -4
  %16 = bitcast i32* %15 to %struct.timb_dma*
  ret %struct.timb_dma* %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
