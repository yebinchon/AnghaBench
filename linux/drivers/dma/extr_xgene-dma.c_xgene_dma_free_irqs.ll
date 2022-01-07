; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_free_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_free_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_dma = type { i32, i32, %struct.xgene_dma*, i32 }
%struct.xgene_dma_chan = type { i32, i32, %struct.xgene_dma_chan*, i32 }

@XGENE_DMA_MAX_CHANNEL = common dso_local global i32 0, align 4
@IRQ_DISABLE_UNLAZY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_dma*)* @xgene_dma_free_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_dma_free_irqs(%struct.xgene_dma* %0) #0 {
  %2 = alloca %struct.xgene_dma*, align 8
  %3 = alloca %struct.xgene_dma_chan*, align 8
  %4 = alloca i32, align 4
  store %struct.xgene_dma* %0, %struct.xgene_dma** %2, align 8
  %5 = load %struct.xgene_dma*, %struct.xgene_dma** %2, align 8
  %6 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.xgene_dma*, %struct.xgene_dma** %2, align 8
  %9 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.xgene_dma*, %struct.xgene_dma** %2, align 8
  %12 = bitcast %struct.xgene_dma* %11 to %struct.xgene_dma_chan*
  %13 = call i32 @devm_free_irq(i32 %7, i32 %10, %struct.xgene_dma_chan* %12)
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %39, %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @XGENE_DMA_MAX_CHANNEL, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %14
  %19 = load %struct.xgene_dma*, %struct.xgene_dma** %2, align 8
  %20 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %19, i32 0, i32 2
  %21 = load %struct.xgene_dma*, %struct.xgene_dma** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %21, i64 %23
  %25 = bitcast %struct.xgene_dma* %24 to %struct.xgene_dma_chan*
  store %struct.xgene_dma_chan* %25, %struct.xgene_dma_chan** %3, align 8
  %26 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %27 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @IRQ_DISABLE_UNLAZY, align 4
  %30 = call i32 @irq_clear_status_flags(i32 %28, i32 %29)
  %31 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %32 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %35 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %38 = call i32 @devm_free_irq(i32 %33, i32 %36, %struct.xgene_dma_chan* %37)
  br label %39

39:                                               ; preds = %18
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %14

42:                                               ; preds = %14
  ret void
}

declare dso_local i32 @devm_free_irq(i32, i32, %struct.xgene_dma_chan*) #1

declare dso_local i32 @irq_clear_status_flags(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
