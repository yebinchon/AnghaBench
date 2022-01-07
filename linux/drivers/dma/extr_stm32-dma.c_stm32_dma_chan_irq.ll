; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-dma.c_stm32_dma_chan_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-dma.c_stm32_dma_chan_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_dma_chan = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.stm32_dma_device = type { i32 }

@STM32_DMA_TCI = common dso_local global i32 0, align 4
@STM32_DMA_SCR_TCIE = common dso_local global i32 0, align 4
@STM32_DMA_HTI = common dso_local global i32 0, align 4
@STM32_DMA_FEI = common dso_local global i32 0, align 4
@STM32_DMA_SFCR_FEIE = common dso_local global i32 0, align 4
@STM32_DMA_SCR_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"FIFO Error\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"FIFO over/underrun\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"DMA error: status=0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"chan disabled by HW\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @stm32_dma_chan_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_dma_chan_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stm32_dma_chan*, align 8
  %6 = alloca %struct.stm32_dma_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.stm32_dma_chan*
  store %struct.stm32_dma_chan* %11, %struct.stm32_dma_chan** %5, align 8
  %12 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %5, align 8
  %13 = call %struct.stm32_dma_device* @stm32_dma_get_dev(%struct.stm32_dma_chan* %12)
  store %struct.stm32_dma_device* %13, %struct.stm32_dma_device** %6, align 8
  %14 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %5, align 8
  %15 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %5, align 8
  %19 = call i32 @stm32_dma_irq_status(%struct.stm32_dma_chan* %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.stm32_dma_device*, %struct.stm32_dma_device** %6, align 8
  %21 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %5, align 8
  %22 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @STM32_DMA_SCR(i32 %23)
  %25 = call i32 @stm32_dma_read(%struct.stm32_dma_device* %20, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.stm32_dma_device*, %struct.stm32_dma_device** %6, align 8
  %27 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %5, align 8
  %28 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @STM32_DMA_SFCR(i32 %29)
  %31 = call i32 @stm32_dma_read(%struct.stm32_dma_device* %26, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @STM32_DMA_TCI, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %2
  %37 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %5, align 8
  %38 = load i32, i32* @STM32_DMA_TCI, align 4
  %39 = call i32 @stm32_dma_irq_clear(%struct.stm32_dma_chan* %37, i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @STM32_DMA_SCR_TCIE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %5, align 8
  %46 = call i32 @stm32_dma_handle_chan_done(%struct.stm32_dma_chan* %45)
  br label %47

47:                                               ; preds = %44, %36
  %48 = load i32, i32* @STM32_DMA_TCI, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %47, %2
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @STM32_DMA_HTI, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %5, align 8
  %59 = load i32, i32* @STM32_DMA_HTI, align 4
  %60 = call i32 @stm32_dma_irq_clear(%struct.stm32_dma_chan* %58, i32 %59)
  %61 = load i32, i32* @STM32_DMA_HTI, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %57, %52
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @STM32_DMA_FEI, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %97

70:                                               ; preds = %65
  %71 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %5, align 8
  %72 = load i32, i32* @STM32_DMA_FEI, align 4
  %73 = call i32 @stm32_dma_irq_clear(%struct.stm32_dma_chan* %71, i32 %72)
  %74 = load i32, i32* @STM32_DMA_FEI, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %7, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @STM32_DMA_SFCR_FEIE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %70
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @STM32_DMA_SCR_EN, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %82
  %88 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %5, align 8
  %89 = call i32 @chan2dev(%struct.stm32_dma_chan* %88)
  %90 = call i32 (i32, i8*, ...) @dev_err(i32 %89, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %95

91:                                               ; preds = %82
  %92 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %5, align 8
  %93 = call i32 @chan2dev(%struct.stm32_dma_chan* %92)
  %94 = call i32 @dev_dbg(i32 %93, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %95

95:                                               ; preds = %91, %87
  br label %96

96:                                               ; preds = %95, %70
  br label %97

97:                                               ; preds = %96, %65
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %117

100:                                              ; preds = %97
  %101 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %5, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @stm32_dma_irq_clear(%struct.stm32_dma_chan* %101, i32 %102)
  %104 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %5, align 8
  %105 = call i32 @chan2dev(%struct.stm32_dma_chan* %104)
  %106 = load i32, i32* %7, align 4
  %107 = call i32 (i32, i8*, ...) @dev_err(i32 %105, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @STM32_DMA_SCR_EN, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %100
  %113 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %5, align 8
  %114 = call i32 @chan2dev(%struct.stm32_dma_chan* %113)
  %115 = call i32 (i32, i8*, ...) @dev_err(i32 %114, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %116

116:                                              ; preds = %112, %100
  br label %117

117:                                              ; preds = %116, %97
  %118 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %5, align 8
  %119 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = call i32 @spin_unlock(i32* %120)
  %122 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %122
}

declare dso_local %struct.stm32_dma_device* @stm32_dma_get_dev(%struct.stm32_dma_chan*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @stm32_dma_irq_status(%struct.stm32_dma_chan*) #1

declare dso_local i32 @stm32_dma_read(%struct.stm32_dma_device*, i32) #1

declare dso_local i32 @STM32_DMA_SCR(i32) #1

declare dso_local i32 @STM32_DMA_SFCR(i32) #1

declare dso_local i32 @stm32_dma_irq_clear(%struct.stm32_dma_chan*, i32) #1

declare dso_local i32 @stm32_dma_handle_chan_done(%struct.stm32_dma_chan*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @chan2dev(%struct.stm32_dma_chan*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
