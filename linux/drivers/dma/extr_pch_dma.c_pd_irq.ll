; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pch_dma.c_pd_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pch_dma.c_pd_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_dma = type { %struct.pch_dma_chan*, %struct.TYPE_2__ }
%struct.pch_dma_chan = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@STS0 = common dso_local global i32 0, align 4
@STS2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"pd_irq sts0: %x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pd_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pd_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pch_dma*, align 8
  %6 = alloca %struct.pch_dma_chan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.pch_dma*
  store %struct.pch_dma* %13, %struct.pch_dma** %5, align 8
  %14 = load i32, i32* @IRQ_NONE, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @IRQ_NONE, align 4
  store i32 %15, i32* %11, align 4
  %16 = load %struct.pch_dma*, %struct.pch_dma** %5, align 8
  %17 = load i32, i32* @STS0, align 4
  %18 = call i32 @dma_readl(%struct.pch_dma* %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.pch_dma*, %struct.pch_dma** %5, align 8
  %20 = load i32, i32* @STS2, align 4
  %21 = call i32 @dma_readl(%struct.pch_dma* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.pch_dma*, %struct.pch_dma** %5, align 8
  %23 = getelementptr inbounds %struct.pch_dma, %struct.pch_dma* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @dev_dbg(i32 %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %90, %2
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.pch_dma*, %struct.pch_dma** %5, align 8
  %31 = getelementptr inbounds %struct.pch_dma, %struct.pch_dma* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %35, label %93

35:                                               ; preds = %28
  %36 = load %struct.pch_dma*, %struct.pch_dma** %5, align 8
  %37 = getelementptr inbounds %struct.pch_dma, %struct.pch_dma* %36, i32 0, i32 0
  %38 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %38, i64 %40
  store %struct.pch_dma_chan* %41, %struct.pch_dma_chan** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 8
  br i1 %43, label %44, label %66

44:                                               ; preds = %35
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @DMA_STATUS_IRQ(i32 %46)
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %44
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @DMA_STATUS0_ERR(i32 %52)
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %6, align 8
  %58 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %57, i32 0, i32 1
  %59 = call i32 @set_bit(i32 0, i32* %58)
  br label %60

60:                                               ; preds = %56, %50
  %61 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %6, align 8
  %62 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %61, i32 0, i32 0
  %63 = call i32 @tasklet_schedule(i32* %62)
  %64 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %60, %44
  br label %89

66:                                               ; preds = %35
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = sub nsw i32 %68, 8
  %70 = call i32 @DMA_STATUS_IRQ(i32 %69)
  %71 = and i32 %67, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %66
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @DMA_STATUS2_ERR(i32 %75)
  %77 = and i32 %74, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %6, align 8
  %81 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %80, i32 0, i32 1
  %82 = call i32 @set_bit(i32 0, i32* %81)
  br label %83

83:                                               ; preds = %79, %73
  %84 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %6, align 8
  %85 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %84, i32 0, i32 0
  %86 = call i32 @tasklet_schedule(i32* %85)
  %87 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %83, %66
  br label %89

89:                                               ; preds = %88, %65
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %28

93:                                               ; preds = %28
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load %struct.pch_dma*, %struct.pch_dma** %5, align 8
  %98 = load i32, i32* @STS0, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @dma_writel(%struct.pch_dma* %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %96, %93
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load %struct.pch_dma*, %struct.pch_dma** %5, align 8
  %106 = load i32, i32* @STS2, align 4
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @dma_writel(%struct.pch_dma* %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %104, %101
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %11, align 4
  %112 = or i32 %110, %111
  ret i32 %112
}

declare dso_local i32 @dma_readl(%struct.pch_dma*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @DMA_STATUS_IRQ(i32) #1

declare dso_local i32 @DMA_STATUS0_ERR(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @DMA_STATUS2_ERR(i32) #1

declare dso_local i32 @dma_writel(%struct.pch_dma*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
