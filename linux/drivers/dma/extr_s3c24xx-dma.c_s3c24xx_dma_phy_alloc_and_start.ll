; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_s3c24xx-dma.c_s3c24xx_dma_phy_alloc_and_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_s3c24xx-dma.c_s3c24xx_dma_phy_alloc_and_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_dma_chan = type { i32, %struct.s3c24xx_dma_phy*, i32, %struct.s3c24xx_dma_engine* }
%struct.s3c24xx_dma_phy = type { i32 }
%struct.s3c24xx_dma_engine = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"no physical channel available for xfer on %s\0A\00", align 1
@S3C24XX_DMA_CHAN_WAITING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"allocated physical channel %d for xfer on %s\0A\00", align 1
@S3C24XX_DMA_CHAN_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c24xx_dma_chan*)* @s3c24xx_dma_phy_alloc_and_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c24xx_dma_phy_alloc_and_start(%struct.s3c24xx_dma_chan* %0) #0 {
  %2 = alloca %struct.s3c24xx_dma_chan*, align 8
  %3 = alloca %struct.s3c24xx_dma_engine*, align 8
  %4 = alloca %struct.s3c24xx_dma_phy*, align 8
  store %struct.s3c24xx_dma_chan* %0, %struct.s3c24xx_dma_chan** %2, align 8
  %5 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %2, align 8
  %6 = getelementptr inbounds %struct.s3c24xx_dma_chan, %struct.s3c24xx_dma_chan* %5, i32 0, i32 3
  %7 = load %struct.s3c24xx_dma_engine*, %struct.s3c24xx_dma_engine** %6, align 8
  store %struct.s3c24xx_dma_engine* %7, %struct.s3c24xx_dma_engine** %3, align 8
  %8 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %2, align 8
  %9 = call %struct.s3c24xx_dma_phy* @s3c24xx_dma_get_phy(%struct.s3c24xx_dma_chan* %8)
  store %struct.s3c24xx_dma_phy* %9, %struct.s3c24xx_dma_phy** %4, align 8
  %10 = load %struct.s3c24xx_dma_phy*, %struct.s3c24xx_dma_phy** %4, align 8
  %11 = icmp ne %struct.s3c24xx_dma_phy* %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %1
  %13 = load %struct.s3c24xx_dma_engine*, %struct.s3c24xx_dma_engine** %3, align 8
  %14 = getelementptr inbounds %struct.s3c24xx_dma_engine, %struct.s3c24xx_dma_engine* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %2, align 8
  %18 = getelementptr inbounds %struct.s3c24xx_dma_chan, %struct.s3c24xx_dma_chan* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @S3C24XX_DMA_CHAN_WAITING, align 4
  %22 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %2, align 8
  %23 = getelementptr inbounds %struct.s3c24xx_dma_chan, %struct.s3c24xx_dma_chan* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  br label %44

24:                                               ; preds = %1
  %25 = load %struct.s3c24xx_dma_engine*, %struct.s3c24xx_dma_engine** %3, align 8
  %26 = getelementptr inbounds %struct.s3c24xx_dma_engine, %struct.s3c24xx_dma_engine* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.s3c24xx_dma_phy*, %struct.s3c24xx_dma_phy** %4, align 8
  %30 = getelementptr inbounds %struct.s3c24xx_dma_phy, %struct.s3c24xx_dma_phy* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %2, align 8
  %33 = getelementptr inbounds %struct.s3c24xx_dma_chan, %struct.s3c24xx_dma_chan* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %28, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %34)
  %36 = load %struct.s3c24xx_dma_phy*, %struct.s3c24xx_dma_phy** %4, align 8
  %37 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %2, align 8
  %38 = getelementptr inbounds %struct.s3c24xx_dma_chan, %struct.s3c24xx_dma_chan* %37, i32 0, i32 1
  store %struct.s3c24xx_dma_phy* %36, %struct.s3c24xx_dma_phy** %38, align 8
  %39 = load i32, i32* @S3C24XX_DMA_CHAN_RUNNING, align 4
  %40 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %2, align 8
  %41 = getelementptr inbounds %struct.s3c24xx_dma_chan, %struct.s3c24xx_dma_chan* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %2, align 8
  %43 = call i32 @s3c24xx_dma_start_next_txd(%struct.s3c24xx_dma_chan* %42)
  br label %44

44:                                               ; preds = %24, %12
  ret void
}

declare dso_local %struct.s3c24xx_dma_phy* @s3c24xx_dma_get_phy(%struct.s3c24xx_dma_chan*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @s3c24xx_dma_start_next_txd(%struct.s3c24xx_dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
