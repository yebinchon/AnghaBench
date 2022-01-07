; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mic_x100_dma.c_mic_dma_chan_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mic_x100_dma.c_mic_dma_chan_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_dma_chan = type { i64, i64, i32, i32 }

@MIC_DMA_CHAN_MIC = common dso_local global i64 0, align 8
@MIC_DMA_REG_DCHERRMSK = common dso_local global i32 0, align 4
@MIC_DMA_REG_DTPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mic_dma_chan*)* @mic_dma_chan_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mic_dma_chan_setup(%struct.mic_dma_chan* %0) #0 {
  %2 = alloca %struct.mic_dma_chan*, align 8
  store %struct.mic_dma_chan* %0, %struct.mic_dma_chan** %2, align 8
  %3 = load i64, i64* @MIC_DMA_CHAN_MIC, align 8
  %4 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %2, align 8
  %5 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %3, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %2, align 8
  %10 = call i32 @mic_dma_chan_set_owner(%struct.mic_dma_chan* %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %2, align 8
  %13 = call i32 @mic_dma_disable_chan(%struct.mic_dma_chan* %12)
  %14 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %2, align 8
  %15 = call i32 @mic_dma_chan_mask_intr(%struct.mic_dma_chan* %14)
  %16 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %2, align 8
  %17 = load i32, i32* @MIC_DMA_REG_DCHERRMSK, align 4
  %18 = call i32 @mic_dma_write_reg(%struct.mic_dma_chan* %16, i32 %17, i32 0)
  %19 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %2, align 8
  %20 = call i32 @mic_dma_chan_set_desc_ring(%struct.mic_dma_chan* %19)
  %21 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %2, align 8
  %22 = load i32, i32* @MIC_DMA_REG_DTPR, align 4
  %23 = call i32 @mic_dma_read_reg(%struct.mic_dma_chan* %21, i32 %22)
  %24 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %2, align 8
  %25 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %2, align 8
  %27 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %2, align 8
  %30 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %2, align 8
  %32 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %2, align 8
  %34 = call i32 @mic_dma_chan_unmask_intr(%struct.mic_dma_chan* %33)
  %35 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %2, align 8
  %36 = call i32 @mic_dma_enable_chan(%struct.mic_dma_chan* %35)
  %37 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %2, align 8
  %38 = call i32 @mic_dma_check_chan(%struct.mic_dma_chan* %37)
  ret i32 %38
}

declare dso_local i32 @mic_dma_chan_set_owner(%struct.mic_dma_chan*) #1

declare dso_local i32 @mic_dma_disable_chan(%struct.mic_dma_chan*) #1

declare dso_local i32 @mic_dma_chan_mask_intr(%struct.mic_dma_chan*) #1

declare dso_local i32 @mic_dma_write_reg(%struct.mic_dma_chan*, i32, i32) #1

declare dso_local i32 @mic_dma_chan_set_desc_ring(%struct.mic_dma_chan*) #1

declare dso_local i32 @mic_dma_read_reg(%struct.mic_dma_chan*, i32) #1

declare dso_local i32 @mic_dma_chan_unmask_intr(%struct.mic_dma_chan*) #1

declare dso_local i32 @mic_dma_enable_chan(%struct.mic_dma_chan*) #1

declare dso_local i32 @mic_dma_check_chan(%struct.mic_dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
