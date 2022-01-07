; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pch_dma.c_pdc_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pch_dma.c_pdc_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32, i32 }
%struct.pch_dma = type { i32 }

@DMA_MASK_CTL0_MODE = common dso_local global i32 0, align 4
@DMA_CTL0_MODE_MASK_BITS = common dso_local global i32 0, align 4
@DMA_CTL0_BITS_PER_CH = common dso_local global i32 0, align 4
@DMA_CTL0_DIR_SHIFT_BITS = common dso_local global i32 0, align 4
@CTL0 = common dso_local global i32 0, align 4
@DMA_MASK_CTL2_MODE = common dso_local global i32 0, align 4
@CTL3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"pdc_set_mode: chan %d -> %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*, i32)* @pdc_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdc_set_mode(%struct.dma_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pch_dma*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %11 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.pch_dma* @to_pd(i32 %12)
  store %struct.pch_dma* %13, %struct.pch_dma** %5, align 8
  %14 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %15 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %16, 8
  br i1 %17, label %18, label %59

18:                                               ; preds = %2
  %19 = load i32, i32* @DMA_MASK_CTL0_MODE, align 4
  %20 = load i32, i32* @DMA_CTL0_MODE_MASK_BITS, align 4
  %21 = load i32, i32* @DMA_CTL0_BITS_PER_CH, align 4
  %22 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %23 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %21, %24
  %26 = shl i32 %20, %25
  %27 = xor i32 %26, -1
  %28 = and i32 %19, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @DMA_CTL0_BITS_PER_CH, align 4
  %30 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %31 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %29, %32
  %34 = load i32, i32* @DMA_CTL0_DIR_SHIFT_BITS, align 4
  %35 = add nsw i32 %33, %34
  %36 = shl i32 1, %35
  store i32 %36, i32* %8, align 4
  %37 = load %struct.pch_dma*, %struct.pch_dma** %5, align 8
  %38 = load i32, i32* @CTL0, align 4
  %39 = call i32 @dma_readl(%struct.pch_dma* %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @DMA_CTL0_BITS_PER_CH, align 4
  %45 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %46 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %44, %47
  %49 = shl i32 %43, %48
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %6, align 4
  %55 = load %struct.pch_dma*, %struct.pch_dma** %5, align 8
  %56 = load i32, i32* @CTL0, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @dma_writel(%struct.pch_dma* %55, i32 %56, i32 %57)
  br label %98

59:                                               ; preds = %2
  %60 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %61 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %62, 8
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* @DMA_MASK_CTL2_MODE, align 4
  %65 = load i32, i32* @DMA_CTL0_MODE_MASK_BITS, align 4
  %66 = load i32, i32* @DMA_CTL0_BITS_PER_CH, align 4
  %67 = load i32, i32* %9, align 4
  %68 = mul nsw i32 %66, %67
  %69 = shl i32 %65, %68
  %70 = xor i32 %69, -1
  %71 = and i32 %64, %70
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* @DMA_CTL0_BITS_PER_CH, align 4
  %73 = load i32, i32* %9, align 4
  %74 = mul nsw i32 %72, %73
  %75 = load i32, i32* @DMA_CTL0_DIR_SHIFT_BITS, align 4
  %76 = add nsw i32 %74, %75
  %77 = shl i32 1, %76
  store i32 %77, i32* %8, align 4
  %78 = load %struct.pch_dma*, %struct.pch_dma** %5, align 8
  %79 = load i32, i32* @CTL3, align 4
  %80 = call i32 @dma_readl(%struct.pch_dma* %78, i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %6, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @DMA_CTL0_BITS_PER_CH, align 4
  %86 = load i32, i32* %9, align 4
  %87 = mul nsw i32 %85, %86
  %88 = shl i32 %84, %87
  %89 = load i32, i32* %6, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %6, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %6, align 4
  %94 = load %struct.pch_dma*, %struct.pch_dma** %5, align 8
  %95 = load i32, i32* @CTL3, align 4
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @dma_writel(%struct.pch_dma* %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %59, %18
  %99 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %100 = call i32 @chan2dev(%struct.dma_chan* %99)
  %101 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %102 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @dev_dbg(i32 %100, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %103, i32 %104)
  ret void
}

declare dso_local %struct.pch_dma* @to_pd(i32) #1

declare dso_local i32 @dma_readl(%struct.pch_dma*, i32) #1

declare dso_local i32 @dma_writel(%struct.pch_dma*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @chan2dev(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
