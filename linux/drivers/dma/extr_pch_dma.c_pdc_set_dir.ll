; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pch_dma.c_pdc_set_dir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pch_dma.c_pdc_set_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32, i32 }
%struct.pch_dma_chan = type { i64 }
%struct.pch_dma = type { i32 }

@CTL0 = common dso_local global i32 0, align 4
@DMA_CTL0_MODE_MASK_BITS = common dso_local global i32 0, align 4
@DMA_CTL0_BITS_PER_CH = common dso_local global i32 0, align 4
@DMA_MASK_CTL0_MODE = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i64 0, align 8
@DMA_CTL0_DIR_SHIFT_BITS = common dso_local global i32 0, align 4
@CTL3 = common dso_local global i32 0, align 4
@DMA_MASK_CTL2_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"pdc_set_dir: chan %d -> %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @pdc_set_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdc_set_dir(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.pch_dma_chan*, align 8
  %4 = alloca %struct.pch_dma*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %9 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %10 = call %struct.pch_dma_chan* @to_pd_chan(%struct.dma_chan* %9)
  store %struct.pch_dma_chan* %10, %struct.pch_dma_chan** %3, align 8
  %11 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %12 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.pch_dma* @to_pd(i32 %13)
  store %struct.pch_dma* %14, %struct.pch_dma** %4, align 8
  %15 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %16 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %19, label %79

19:                                               ; preds = %1
  %20 = load %struct.pch_dma*, %struct.pch_dma** %4, align 8
  %21 = load i32, i32* @CTL0, align 4
  %22 = call i32 @dma_readl(%struct.pch_dma* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @DMA_CTL0_MODE_MASK_BITS, align 4
  %24 = load i32, i32* @DMA_CTL0_BITS_PER_CH, align 4
  %25 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %26 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %24, %27
  %29 = shl i32 %23, %28
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @DMA_MASK_CTL0_MODE, align 4
  %31 = load i32, i32* @DMA_CTL0_MODE_MASK_BITS, align 4
  %32 = load i32, i32* @DMA_CTL0_BITS_PER_CH, align 4
  %33 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %34 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %32, %35
  %37 = shl i32 %31, %36
  %38 = xor i32 %37, -1
  %39 = and i32 %30, %38
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %3, align 8
  %44 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DMA_MEM_TO_DEV, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %19
  %49 = load i32, i32* @DMA_CTL0_BITS_PER_CH, align 4
  %50 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %51 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %49, %52
  %54 = load i32, i32* @DMA_CTL0_DIR_SHIFT_BITS, align 4
  %55 = add nsw i32 %53, %54
  %56 = shl i32 1, %55
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  br label %71

59:                                               ; preds = %19
  %60 = load i32, i32* @DMA_CTL0_BITS_PER_CH, align 4
  %61 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %62 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %60, %63
  %65 = load i32, i32* @DMA_CTL0_DIR_SHIFT_BITS, align 4
  %66 = add nsw i32 %64, %65
  %67 = shl i32 1, %66
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %5, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %59, %48
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  %75 = load %struct.pch_dma*, %struct.pch_dma** %4, align 8
  %76 = load i32, i32* @CTL0, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @dma_writel(%struct.pch_dma* %75, i32 %76, i32 %77)
  br label %135

79:                                               ; preds = %1
  %80 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %81 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %82, 8
  store i32 %83, i32* %8, align 4
  %84 = load %struct.pch_dma*, %struct.pch_dma** %4, align 8
  %85 = load i32, i32* @CTL3, align 4
  %86 = call i32 @dma_readl(%struct.pch_dma* %84, i32 %85)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* @DMA_CTL0_MODE_MASK_BITS, align 4
  %88 = load i32, i32* @DMA_CTL0_BITS_PER_CH, align 4
  %89 = load i32, i32* %8, align 4
  %90 = mul nsw i32 %88, %89
  %91 = shl i32 %87, %90
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* @DMA_MASK_CTL2_MODE, align 4
  %93 = load i32, i32* @DMA_CTL0_MODE_MASK_BITS, align 4
  %94 = load i32, i32* @DMA_CTL0_BITS_PER_CH, align 4
  %95 = load i32, i32* %8, align 4
  %96 = mul nsw i32 %94, %95
  %97 = shl i32 %93, %96
  %98 = xor i32 %97, -1
  %99 = and i32 %92, %98
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %5, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %5, align 4
  %103 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %3, align 8
  %104 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @DMA_MEM_TO_DEV, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %79
  %109 = load i32, i32* @DMA_CTL0_BITS_PER_CH, align 4
  %110 = load i32, i32* %8, align 4
  %111 = mul nsw i32 %109, %110
  %112 = load i32, i32* @DMA_CTL0_DIR_SHIFT_BITS, align 4
  %113 = add nsw i32 %111, %112
  %114 = shl i32 1, %113
  %115 = load i32, i32* %5, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %5, align 4
  br label %127

117:                                              ; preds = %79
  %118 = load i32, i32* @DMA_CTL0_BITS_PER_CH, align 4
  %119 = load i32, i32* %8, align 4
  %120 = mul nsw i32 %118, %119
  %121 = load i32, i32* @DMA_CTL0_DIR_SHIFT_BITS, align 4
  %122 = add nsw i32 %120, %121
  %123 = shl i32 1, %122
  %124 = xor i32 %123, -1
  %125 = load i32, i32* %5, align 4
  %126 = and i32 %125, %124
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %117, %108
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %5, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %5, align 4
  %131 = load %struct.pch_dma*, %struct.pch_dma** %4, align 8
  %132 = load i32, i32* @CTL3, align 4
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @dma_writel(%struct.pch_dma* %131, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %127, %71
  %136 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %137 = call i32 @chan2dev(%struct.dma_chan* %136)
  %138 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %139 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %5, align 4
  %142 = call i32 @dev_dbg(i32 %137, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %140, i32 %141)
  ret void
}

declare dso_local %struct.pch_dma_chan* @to_pd_chan(%struct.dma_chan*) #1

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
