; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sun6i-dma.c_sun6i_dma_dump_chan_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sun6i-dma.c_sun6i_dma_dump_chan_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun6i_dma_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sun6i_pchan = type { i64, i32 }

@.str = private unnamed_addr constant [195 x i8] c"Chan %d reg: %pa\0A\09___en(%04x): \090x%08x\0A\09pause(%04x): \090x%08x\0A\09start(%04x): \090x%08x\0A\09__cfg(%04x): \090x%08x\0A\09__src(%04x): \090x%08x\0A\09__dst(%04x): \090x%08x\0A\09count(%04x): \090x%08x\0A\09_para(%04x): \090x%08x\0A\0A\00", align 1
@DMA_CHAN_ENABLE = common dso_local global i64 0, align 8
@DMA_CHAN_PAUSE = common dso_local global i64 0, align 8
@DMA_CHAN_LLI_ADDR = common dso_local global i64 0, align 8
@DMA_CHAN_CUR_CFG = common dso_local global i64 0, align 8
@DMA_CHAN_CUR_SRC = common dso_local global i64 0, align 8
@DMA_CHAN_CUR_DST = common dso_local global i64 0, align 8
@DMA_CHAN_CUR_CNT = common dso_local global i64 0, align 8
@DMA_CHAN_CUR_PARA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sun6i_dma_dev*, %struct.sun6i_pchan*)* @sun6i_dma_dump_chan_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun6i_dma_dump_chan_regs(%struct.sun6i_dma_dev* %0, %struct.sun6i_pchan* %1) #0 {
  %3 = alloca %struct.sun6i_dma_dev*, align 8
  %4 = alloca %struct.sun6i_pchan*, align 8
  %5 = alloca i32, align 4
  store %struct.sun6i_dma_dev* %0, %struct.sun6i_dma_dev** %3, align 8
  store %struct.sun6i_pchan* %1, %struct.sun6i_pchan** %4, align 8
  %6 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %4, align 8
  %7 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @virt_to_phys(i64 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %3, align 8
  %11 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %4, align 8
  %15 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i64, i64* @DMA_CHAN_ENABLE, align 8
  %18 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %4, align 8
  %19 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DMA_CHAN_ENABLE, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl(i64 %22)
  %24 = load i64, i64* @DMA_CHAN_PAUSE, align 8
  %25 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %4, align 8
  %26 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DMA_CHAN_PAUSE, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @readl(i64 %29)
  %31 = load i64, i64* @DMA_CHAN_LLI_ADDR, align 8
  %32 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %4, align 8
  %33 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DMA_CHAN_LLI_ADDR, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @readl(i64 %36)
  %38 = load i64, i64* @DMA_CHAN_CUR_CFG, align 8
  %39 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %4, align 8
  %40 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DMA_CHAN_CUR_CFG, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @readl(i64 %43)
  %45 = load i64, i64* @DMA_CHAN_CUR_SRC, align 8
  %46 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %4, align 8
  %47 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @DMA_CHAN_CUR_SRC, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @readl(i64 %50)
  %52 = load i64, i64* @DMA_CHAN_CUR_DST, align 8
  %53 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %4, align 8
  %54 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @DMA_CHAN_CUR_DST, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @readl(i64 %57)
  %59 = load i64, i64* @DMA_CHAN_CUR_CNT, align 8
  %60 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %4, align 8
  %61 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @DMA_CHAN_CUR_CNT, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @readl(i64 %64)
  %66 = load i64, i64* @DMA_CHAN_CUR_PARA, align 8
  %67 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %4, align 8
  %68 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @DMA_CHAN_CUR_PARA, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @readl(i64 %71)
  %73 = call i32 @dev_dbg(i32 %13, i8* getelementptr inbounds ([195 x i8], [195 x i8]* @.str, i64 0, i64 0), i32 %16, i32* %5, i64 %17, i32 %23, i64 %24, i32 %30, i64 %31, i32 %37, i64 %38, i32 %44, i64 %45, i32 %51, i64 %52, i32 %58, i64 %59, i32 %65, i64 %66, i32 %72)
  ret void
}

declare dso_local i32 @virt_to_phys(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32*, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
