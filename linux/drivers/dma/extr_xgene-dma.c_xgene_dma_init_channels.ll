; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_init_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_init_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_dma = type { i32, %struct.xgene_dma_chan*, i32 }
%struct.xgene_dma_chan = type { i32, i32, %struct.xgene_dma*, i32 }

@XGENE_DMA_RING_NUM = common dso_local global i32 0, align 4
@XGENE_DMA_MAX_CHANNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"dmachan%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_dma*)* @xgene_dma_init_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_dma_init_channels(%struct.xgene_dma* %0) #0 {
  %2 = alloca %struct.xgene_dma*, align 8
  %3 = alloca %struct.xgene_dma_chan*, align 8
  %4 = alloca i32, align 4
  store %struct.xgene_dma* %0, %struct.xgene_dma** %2, align 8
  %5 = load i32, i32* @XGENE_DMA_RING_NUM, align 4
  %6 = load %struct.xgene_dma*, %struct.xgene_dma** %2, align 8
  %7 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %6, i32 0, i32 2
  store i32 %5, i32* %7, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %37, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @XGENE_DMA_MAX_CHANNEL, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %40

12:                                               ; preds = %8
  %13 = load %struct.xgene_dma*, %struct.xgene_dma** %2, align 8
  %14 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %13, i32 0, i32 1
  %15 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %15, i64 %17
  store %struct.xgene_dma_chan* %18, %struct.xgene_dma_chan** %3, align 8
  %19 = load %struct.xgene_dma*, %struct.xgene_dma** %2, align 8
  %20 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %23 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load %struct.xgene_dma*, %struct.xgene_dma** %2, align 8
  %25 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %26 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %25, i32 0, i32 2
  store %struct.xgene_dma* %24, %struct.xgene_dma** %26, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %29 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %31 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %34 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @snprintf(i32 %32, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %12
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %8

40:                                               ; preds = %8
  ret void
}

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
