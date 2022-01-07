; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_dma_slave_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_dma_slave_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl08x_dma_chan = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pl08x_dma_chan*)* @pl08x_dma_slave_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl08x_dma_slave_init(%struct.pl08x_dma_chan* %0) #0 {
  %2 = alloca %struct.pl08x_dma_chan*, align 8
  store %struct.pl08x_dma_chan* %0, %struct.pl08x_dma_chan** %2, align 8
  %3 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %2, align 8
  %4 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %3, i32 0, i32 0
  store i32 1, i32* %4, align 8
  %5 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %2, align 8
  %6 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %2, align 8
  %11 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 8
  %12 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %2, align 8
  %13 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %2, align 8
  %18 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store i32 %16, i32* %19, align 4
  %20 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %2, align 8
  %21 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %2, align 8
  %26 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
