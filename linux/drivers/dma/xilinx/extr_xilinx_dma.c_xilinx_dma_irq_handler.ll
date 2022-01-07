; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_xilinx_dma.c_xilinx_dma_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_xilinx_dma.c_xilinx_dma_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xilinx_dma_chan = type { i32, i32, i32, i32, i32 (%struct.xilinx_dma_chan*)*, i32, i32 }

@XILINX_DMA_REG_DMASR = common dso_local global i32 0, align 4
@XILINX_DMA_DMAXR_ALL_IRQ_MASK = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@XILINX_DMA_DMASR_ERR_IRQ = common dso_local global i32 0, align 4
@XILINX_DMA_DMASR_ALL_ERR_MASK = common dso_local global i32 0, align 4
@XILINX_DMA_DMASR_ERR_RECOVER_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Channel %p has errors %x, cdr %x tdr %x\0A\00", align 1
@XILINX_DMA_REG_CURDESC = common dso_local global i32 0, align 4
@XILINX_DMA_REG_TAILDESC = common dso_local global i32 0, align 4
@XILINX_DMA_DMASR_DLY_CNT_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Inter-packet latency too long\0A\00", align 1
@XILINX_DMA_DMASR_FRM_CNT_IRQ = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @xilinx_dma_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xilinx_dma_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.xilinx_dma_chan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.xilinx_dma_chan*
  store %struct.xilinx_dma_chan* %10, %struct.xilinx_dma_chan** %6, align 8
  %11 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %6, align 8
  %12 = load i32, i32* @XILINX_DMA_REG_DMASR, align 4
  %13 = call i32 @dma_ctrl_read(%struct.xilinx_dma_chan* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @XILINX_DMA_DMAXR_ALL_IRQ_MASK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %3, align 4
  br label %103

20:                                               ; preds = %2
  %21 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %6, align 8
  %22 = load i32, i32* @XILINX_DMA_REG_DMASR, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @XILINX_DMA_DMAXR_ALL_IRQ_MASK, align 4
  %25 = and i32 %23, %24
  %26 = call i32 @dma_ctrl_write(%struct.xilinx_dma_chan* %21, i32 %22, i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @XILINX_DMA_DMASR_ERR_IRQ, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %67

31:                                               ; preds = %20
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @XILINX_DMA_DMASR_ALL_ERR_MASK, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %8, align 4
  %35 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %6, align 8
  %36 = load i32, i32* @XILINX_DMA_REG_DMASR, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @XILINX_DMA_DMASR_ERR_RECOVER_MASK, align 4
  %39 = and i32 %37, %38
  %40 = call i32 @dma_ctrl_write(%struct.xilinx_dma_chan* %35, i32 %36, i32 %39)
  %41 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %6, align 8
  %42 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %31
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @XILINX_DMA_DMASR_ERR_RECOVER_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %45, %31
  %52 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %6, align 8
  %53 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %6, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %6, align 8
  %58 = load i32, i32* @XILINX_DMA_REG_CURDESC, align 4
  %59 = call i32 @dma_ctrl_read(%struct.xilinx_dma_chan* %57, i32 %58)
  %60 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %6, align 8
  %61 = load i32, i32* @XILINX_DMA_REG_TAILDESC, align 4
  %62 = call i32 @dma_ctrl_read(%struct.xilinx_dma_chan* %60, i32 %61)
  %63 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.xilinx_dma_chan* %55, i32 %56, i32 %59, i32 %62)
  %64 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %6, align 8
  %65 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  br label %66

66:                                               ; preds = %51, %45
  br label %67

67:                                               ; preds = %66, %20
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @XILINX_DMA_DMASR_DLY_CNT_IRQ, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %6, align 8
  %74 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @dev_dbg(i32 %75, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %77

77:                                               ; preds = %72, %67
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @XILINX_DMA_DMASR_FRM_CNT_IRQ, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %77
  %83 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %6, align 8
  %84 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %83, i32 0, i32 3
  %85 = call i32 @spin_lock(i32* %84)
  %86 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %6, align 8
  %87 = call i32 @xilinx_dma_complete_descriptor(%struct.xilinx_dma_chan* %86)
  %88 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %6, align 8
  %89 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %88, i32 0, i32 1
  store i32 1, i32* %89, align 4
  %90 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %6, align 8
  %91 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %90, i32 0, i32 4
  %92 = load i32 (%struct.xilinx_dma_chan*)*, i32 (%struct.xilinx_dma_chan*)** %91, align 8
  %93 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %6, align 8
  %94 = call i32 %92(%struct.xilinx_dma_chan* %93)
  %95 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %6, align 8
  %96 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %95, i32 0, i32 3
  %97 = call i32 @spin_unlock(i32* %96)
  br label %98

98:                                               ; preds = %82, %77
  %99 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %6, align 8
  %100 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %99, i32 0, i32 2
  %101 = call i32 @tasklet_schedule(i32* %100)
  %102 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %98, %18
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @dma_ctrl_read(%struct.xilinx_dma_chan*, i32) #1

declare dso_local i32 @dma_ctrl_write(%struct.xilinx_dma_chan*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, %struct.xilinx_dma_chan*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @xilinx_dma_complete_descriptor(%struct.xilinx_dma_chan*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
