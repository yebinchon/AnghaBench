; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c_get_burst_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c_get_burst_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_pl330_desc = type { %struct.TYPE_3__, %struct.dma_pl330_chan* }
%struct.TYPE_3__ = type { i32 }
%struct.dma_pl330_chan = type { %struct.pl330_dmac* }
%struct.pl330_dmac = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@PL330_MAX_BURST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_pl330_desc*, i64)* @get_burst_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_burst_len(%struct.dma_pl330_desc* %0, i64 %1) #0 {
  %3 = alloca %struct.dma_pl330_desc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dma_pl330_chan*, align 8
  %6 = alloca %struct.pl330_dmac*, align 8
  %7 = alloca i32, align 4
  store %struct.dma_pl330_desc* %0, %struct.dma_pl330_desc** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.dma_pl330_desc*, %struct.dma_pl330_desc** %3, align 8
  %9 = getelementptr inbounds %struct.dma_pl330_desc, %struct.dma_pl330_desc* %8, i32 0, i32 1
  %10 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %9, align 8
  store %struct.dma_pl330_chan* %10, %struct.dma_pl330_chan** %5, align 8
  %11 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %5, align 8
  %12 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %11, i32 0, i32 0
  %13 = load %struct.pl330_dmac*, %struct.pl330_dmac** %12, align 8
  store %struct.pl330_dmac* %13, %struct.pl330_dmac** %6, align 8
  %14 = load %struct.pl330_dmac*, %struct.pl330_dmac** %6, align 8
  %15 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sdiv i32 %17, 8
  store i32 %18, i32* %7, align 4
  %19 = load %struct.pl330_dmac*, %struct.pl330_dmac** %6, align 8
  %20 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.pl330_dmac*, %struct.pl330_dmac** %6, align 8
  %24 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %22, %26
  %28 = load i32, i32* %7, align 4
  %29 = mul nsw i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load %struct.dma_pl330_desc*, %struct.dma_pl330_desc** %3, align 8
  %31 = getelementptr inbounds %struct.dma_pl330_desc, %struct.dma_pl330_desc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = ashr i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @PL330_MAX_BURST, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %2
  %40 = load i32, i32* @PL330_MAX_BURST, align 4
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %39, %2
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
