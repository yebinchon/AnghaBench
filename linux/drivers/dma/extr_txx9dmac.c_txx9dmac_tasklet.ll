; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_txx9dmac.c_txx9dmac_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_txx9dmac.c_txx9dmac_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.txx9dmac_chan = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.txx9dmac_dev = type { i32, %struct.txx9dmac_chan** }

@MCR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"tasklet: mcr=%x\0A\00", align 1
@TXX9_DMA_MAX_NR_CHANNELS = common dso_local global i32 0, align 4
@CSR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"tasklet: status=%x\0A\00", align 1
@TXX9_DMA_CSR_ABCHC = common dso_local global i32 0, align 4
@TXX9_DMA_CSR_NCHNC = common dso_local global i32 0, align 4
@TXX9_DMA_CSR_NTRNFC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @txx9dmac_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @txx9dmac_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.txx9dmac_chan*, align 8
  %6 = alloca %struct.txx9dmac_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = inttoptr i64 %9 to %struct.txx9dmac_dev*
  store %struct.txx9dmac_dev* %10, %struct.txx9dmac_dev** %6, align 8
  %11 = load %struct.txx9dmac_dev*, %struct.txx9dmac_dev** %6, align 8
  %12 = load i32, i32* @MCR, align 4
  %13 = call i32 @dma_readl(%struct.txx9dmac_dev* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.txx9dmac_dev*, %struct.txx9dmac_dev** %6, align 8
  %15 = getelementptr inbounds %struct.txx9dmac_dev, %struct.txx9dmac_dev* %14, i32 0, i32 1
  %16 = load %struct.txx9dmac_chan**, %struct.txx9dmac_chan*** %15, align 8
  %17 = getelementptr inbounds %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %16, i64 0
  %18 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %17, align 8
  %19 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @dev_vdbg(i32 %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %70, %1
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @TXX9_DMA_MAX_NR_CHANNELS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %73

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 24, %30
  %32 = ashr i32 %29, %31
  %33 = and i32 %32, 17
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %69

35:                                               ; preds = %28
  %36 = load %struct.txx9dmac_dev*, %struct.txx9dmac_dev** %6, align 8
  %37 = getelementptr inbounds %struct.txx9dmac_dev, %struct.txx9dmac_dev* %36, i32 0, i32 1
  %38 = load %struct.txx9dmac_chan**, %struct.txx9dmac_chan*** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %38, i64 %40
  %42 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %41, align 8
  store %struct.txx9dmac_chan* %42, %struct.txx9dmac_chan** %5, align 8
  %43 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %5, align 8
  %44 = load i32, i32* @CSR, align 4
  %45 = call i32 @channel_readl(%struct.txx9dmac_chan* %43, i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %5, align 8
  %47 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %46, i32 0, i32 1
  %48 = call i32 @chan2dev(i32* %47)
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @dev_vdbg(i32 %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %5, align 8
  %52 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %51, i32 0, i32 0
  %53 = call i32 @spin_lock(i32* %52)
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @TXX9_DMA_CSR_ABCHC, align 4
  %56 = load i32, i32* @TXX9_DMA_CSR_NCHNC, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @TXX9_DMA_CSR_NTRNFC, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %54, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %35
  %63 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %5, align 8
  %64 = call i32 @txx9dmac_scan_descriptors(%struct.txx9dmac_chan* %63)
  br label %65

65:                                               ; preds = %62, %35
  %66 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %5, align 8
  %67 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %66, i32 0, i32 0
  %68 = call i32 @spin_unlock(i32* %67)
  br label %69

69:                                               ; preds = %65, %28
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %24

73:                                               ; preds = %24
  %74 = load %struct.txx9dmac_dev*, %struct.txx9dmac_dev** %6, align 8
  %75 = getelementptr inbounds %struct.txx9dmac_dev, %struct.txx9dmac_dev* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %3, align 4
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @enable_irq(i32 %77)
  ret void
}

declare dso_local i32 @dma_readl(%struct.txx9dmac_dev*, i32) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32) #1

declare dso_local i32 @channel_readl(%struct.txx9dmac_chan*, i32) #1

declare dso_local i32 @chan2dev(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @txx9dmac_scan_descriptors(%struct.txx9dmac_chan*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
