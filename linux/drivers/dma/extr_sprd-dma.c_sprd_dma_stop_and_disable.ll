; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sprd-dma.c_sprd_dma_stop_and_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sprd-dma.c_sprd_dma_stop_and_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_dma_chn = type { i64 }

@SPRD_DMA_CHN_CFG = common dso_local global i64 0, align 8
@SPRD_DMA_CHN_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sprd_dma_chn*)* @sprd_dma_stop_and_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprd_dma_stop_and_disable(%struct.sprd_dma_chn* %0) #0 {
  %2 = alloca %struct.sprd_dma_chn*, align 8
  %3 = alloca i32, align 4
  store %struct.sprd_dma_chn* %0, %struct.sprd_dma_chn** %2, align 8
  %4 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %2, align 8
  %5 = getelementptr inbounds %struct.sprd_dma_chn, %struct.sprd_dma_chn* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @SPRD_DMA_CHN_CFG, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @SPRD_DMA_CHN_EN, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %20

15:                                               ; preds = %1
  %16 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %2, align 8
  %17 = call i32 @sprd_dma_pause_resume(%struct.sprd_dma_chn* %16, i32 1)
  %18 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %2, align 8
  %19 = call i32 @sprd_dma_disable_chn(%struct.sprd_dma_chn* %18)
  br label %20

20:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @sprd_dma_pause_resume(%struct.sprd_dma_chn*, i32) #1

declare dso_local i32 @sprd_dma_disable_chn(%struct.sprd_dma_chn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
