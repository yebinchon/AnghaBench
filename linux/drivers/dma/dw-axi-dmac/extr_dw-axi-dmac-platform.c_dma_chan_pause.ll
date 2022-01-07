; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw-axi-dmac/extr_dw-axi-dmac-platform.c_dma_chan_pause.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw-axi-dmac/extr_dw-axi-dmac-platform.c_dma_chan_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.axi_dma_chan = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@DMAC_CHEN = common dso_local global i32 0, align 4
@DMAC_CHAN_SUSP_SHIFT = common dso_local global i32 0, align 4
@DMAC_CHAN_SUSP_WE_SHIFT = common dso_local global i32 0, align 4
@DWAXIDMAC_IRQ_SUSPENDED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @dma_chan_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_chan_pause(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.axi_dma_chan*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %8 = call %struct.axi_dma_chan* @dchan_to_axi_dma_chan(%struct.dma_chan* %7)
  store %struct.axi_dma_chan* %8, %struct.axi_dma_chan** %3, align 8
  store i32 20, i32* %5, align 4
  %9 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %10 = getelementptr inbounds %struct.axi_dma_chan, %struct.axi_dma_chan* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %15 = getelementptr inbounds %struct.axi_dma_chan, %struct.axi_dma_chan* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DMAC_CHEN, align 4
  %18 = call i32 @axi_dma_ioread32(i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %20 = getelementptr inbounds %struct.axi_dma_chan, %struct.axi_dma_chan* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @BIT(i32 %21)
  %23 = load i32, i32* @DMAC_CHAN_SUSP_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %26 = getelementptr inbounds %struct.axi_dma_chan, %struct.axi_dma_chan* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @BIT(i32 %27)
  %29 = load i32, i32* @DMAC_CHAN_SUSP_WE_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = or i32 %24, %30
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %35 = getelementptr inbounds %struct.axi_dma_chan, %struct.axi_dma_chan* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @DMAC_CHEN, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @axi_dma_iowrite32(i32 %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %49, %1
  %41 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %42 = call i32 @axi_chan_irq_read(%struct.axi_dma_chan* %41)
  %43 = load i32, i32* @DWAXIDMAC_IRQ_SUSPENDED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %53

47:                                               ; preds = %40
  %48 = call i32 @udelay(i32 2)
  br label %49

49:                                               ; preds = %47
  %50 = load i32, i32* %5, align 4
  %51 = add i32 %50, -1
  store i32 %51, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %40, label %53

53:                                               ; preds = %49, %46
  %54 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %55 = load i32, i32* @DWAXIDMAC_IRQ_SUSPENDED, align 4
  %56 = call i32 @axi_chan_irq_clear(%struct.axi_dma_chan* %54, i32 %55)
  %57 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %58 = getelementptr inbounds %struct.axi_dma_chan, %struct.axi_dma_chan* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  %59 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %60 = getelementptr inbounds %struct.axi_dma_chan, %struct.axi_dma_chan* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %53
  br label %70

67:                                               ; preds = %53
  %68 = load i32, i32* @EAGAIN, align 4
  %69 = sub nsw i32 0, %68
  br label %70

70:                                               ; preds = %67, %66
  %71 = phi i32 [ 0, %66 ], [ %69, %67 ]
  ret i32 %71
}

declare dso_local %struct.axi_dma_chan* @dchan_to_axi_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @axi_dma_ioread32(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @axi_dma_iowrite32(i32, i32, i32) #1

declare dso_local i32 @axi_chan_irq_read(%struct.axi_dma_chan*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @axi_chan_irq_clear(%struct.axi_dma_chan*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
