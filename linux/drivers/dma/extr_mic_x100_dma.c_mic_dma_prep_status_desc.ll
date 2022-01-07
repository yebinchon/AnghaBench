; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mic_x100_dma.c_mic_dma_prep_status_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mic_x100_dma.c_mic_dma_prep_status_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_dma_desc = type { i64, i64 }

@MIC_DMA_STATUS = common dso_local global i64 0, align 8
@MIC_DMA_DESC_TYPE_SHIFT = common dso_local global i64 0, align 8
@MIC_DMA_STAT_INTR_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mic_dma_desc*, i64, i64, i32)* @mic_dma_prep_status_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mic_dma_prep_status_desc(%struct.mic_dma_desc* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.mic_dma_desc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.mic_dma_desc* %0, %struct.mic_dma_desc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i64, i64* %6, align 8
  store i64 %11, i64* %9, align 8
  %12 = load i64, i64* @MIC_DMA_STATUS, align 8
  %13 = load i64, i64* @MIC_DMA_DESC_TYPE_SHIFT, align 8
  %14 = shl i64 %12, %13
  %15 = load i64, i64* %7, align 8
  %16 = or i64 %14, %15
  store i64 %16, i64* %10, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load i64, i64* @MIC_DMA_STAT_INTR_SHIFT, align 8
  %21 = shl i64 1, %20
  %22 = load i64, i64* %10, align 8
  %23 = or i64 %22, %21
  store i64 %23, i64* %10, align 8
  br label %24

24:                                               ; preds = %19, %4
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.mic_dma_desc*, %struct.mic_dma_desc** %5, align 8
  %27 = getelementptr inbounds %struct.mic_dma_desc, %struct.mic_dma_desc* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load %struct.mic_dma_desc*, %struct.mic_dma_desc** %5, align 8
  %30 = getelementptr inbounds %struct.mic_dma_desc, %struct.mic_dma_desc* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
