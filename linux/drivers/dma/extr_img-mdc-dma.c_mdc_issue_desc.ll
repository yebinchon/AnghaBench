; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_img-mdc-dma.c_mdc_issue_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_img-mdc-dma.c_mdc_issue_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdc_chan = type { i32, i32, %struct.mdc_tx_desc*, i32, %struct.mdc_dma* }
%struct.mdc_tx_desc = type { i32 }
%struct.mdc_dma = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mdc_chan*)* }
%struct.virt_dma_desc = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Issuing descriptor on channel %d\0A\00", align 1
@MDC_GENERAL_CONFIG = common dso_local global i32 0, align 4
@MDC_GENERAL_CONFIG_LIST_IEN = common dso_local global i32 0, align 4
@MDC_GENERAL_CONFIG_IEN = common dso_local global i32 0, align 4
@MDC_GENERAL_CONFIG_LEVEL_INT = common dso_local global i32 0, align 4
@MDC_GENERAL_CONFIG_PHYSICAL_W = common dso_local global i32 0, align 4
@MDC_GENERAL_CONFIG_PHYSICAL_R = common dso_local global i32 0, align 4
@MDC_READ_PORT_CONFIG_STHREAD_SHIFT = common dso_local global i32 0, align 4
@MDC_READ_PORT_CONFIG_RTHREAD_SHIFT = common dso_local global i32 0, align 4
@MDC_READ_PORT_CONFIG_WTHREAD_SHIFT = common dso_local global i32 0, align 4
@MDC_READ_PORT_CONFIG = common dso_local global i32 0, align 4
@MDC_LIST_NODE_ADDRESS = common dso_local global i32 0, align 4
@MDC_CONTROL_AND_STATUS = common dso_local global i32 0, align 4
@MDC_CONTROL_AND_STATUS_LIST_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdc_chan*)* @mdc_issue_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdc_issue_desc(%struct.mdc_chan* %0) #0 {
  %2 = alloca %struct.mdc_chan*, align 8
  %3 = alloca %struct.mdc_dma*, align 8
  %4 = alloca %struct.virt_dma_desc*, align 8
  %5 = alloca %struct.mdc_tx_desc*, align 8
  %6 = alloca i32, align 4
  store %struct.mdc_chan* %0, %struct.mdc_chan** %2, align 8
  %7 = load %struct.mdc_chan*, %struct.mdc_chan** %2, align 8
  %8 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %7, i32 0, i32 4
  %9 = load %struct.mdc_dma*, %struct.mdc_dma** %8, align 8
  store %struct.mdc_dma* %9, %struct.mdc_dma** %3, align 8
  %10 = load %struct.mdc_chan*, %struct.mdc_chan** %2, align 8
  %11 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %10, i32 0, i32 3
  %12 = call %struct.virt_dma_desc* @vchan_next_desc(i32* %11)
  store %struct.virt_dma_desc* %12, %struct.virt_dma_desc** %4, align 8
  %13 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %14 = icmp ne %struct.virt_dma_desc* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %94

16:                                               ; preds = %1
  %17 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %18 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %17, i32 0, i32 1
  %19 = call i32 @list_del(i32* %18)
  %20 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %21 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %20, i32 0, i32 0
  %22 = call %struct.mdc_tx_desc* @to_mdc_desc(i32* %21)
  store %struct.mdc_tx_desc* %22, %struct.mdc_tx_desc** %5, align 8
  %23 = load %struct.mdc_tx_desc*, %struct.mdc_tx_desc** %5, align 8
  %24 = load %struct.mdc_chan*, %struct.mdc_chan** %2, align 8
  %25 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %24, i32 0, i32 2
  store %struct.mdc_tx_desc* %23, %struct.mdc_tx_desc** %25, align 8
  %26 = load %struct.mdc_dma*, %struct.mdc_dma** %3, align 8
  %27 = call i32 @mdma2dev(%struct.mdc_dma* %26)
  %28 = load %struct.mdc_chan*, %struct.mdc_chan** %2, align 8
  %29 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_dbg(i32 %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.mdc_dma*, %struct.mdc_dma** %3, align 8
  %33 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.mdc_chan*)*, i32 (%struct.mdc_chan*)** %35, align 8
  %37 = load %struct.mdc_chan*, %struct.mdc_chan** %2, align 8
  %38 = call i32 %36(%struct.mdc_chan* %37)
  %39 = load %struct.mdc_chan*, %struct.mdc_chan** %2, align 8
  %40 = load i32, i32* @MDC_GENERAL_CONFIG, align 4
  %41 = call i32 @mdc_chan_readl(%struct.mdc_chan* %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* @MDC_GENERAL_CONFIG_LIST_IEN, align 4
  %43 = load i32, i32* @MDC_GENERAL_CONFIG_IEN, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @MDC_GENERAL_CONFIG_LEVEL_INT, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @MDC_GENERAL_CONFIG_PHYSICAL_W, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @MDC_GENERAL_CONFIG_PHYSICAL_R, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = load %struct.mdc_chan*, %struct.mdc_chan** %2, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @MDC_GENERAL_CONFIG, align 4
  %56 = call i32 @mdc_chan_writel(%struct.mdc_chan* %53, i32 %54, i32 %55)
  %57 = load %struct.mdc_chan*, %struct.mdc_chan** %2, align 8
  %58 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @MDC_READ_PORT_CONFIG_STHREAD_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = load %struct.mdc_chan*, %struct.mdc_chan** %2, align 8
  %63 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @MDC_READ_PORT_CONFIG_RTHREAD_SHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = or i32 %61, %66
  %68 = load %struct.mdc_chan*, %struct.mdc_chan** %2, align 8
  %69 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @MDC_READ_PORT_CONFIG_WTHREAD_SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = or i32 %67, %72
  store i32 %73, i32* %6, align 4
  %74 = load %struct.mdc_chan*, %struct.mdc_chan** %2, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @MDC_READ_PORT_CONFIG, align 4
  %77 = call i32 @mdc_chan_writel(%struct.mdc_chan* %74, i32 %75, i32 %76)
  %78 = load %struct.mdc_chan*, %struct.mdc_chan** %2, align 8
  %79 = load %struct.mdc_tx_desc*, %struct.mdc_tx_desc** %5, align 8
  %80 = getelementptr inbounds %struct.mdc_tx_desc, %struct.mdc_tx_desc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @MDC_LIST_NODE_ADDRESS, align 4
  %83 = call i32 @mdc_chan_writel(%struct.mdc_chan* %78, i32 %81, i32 %82)
  %84 = load %struct.mdc_chan*, %struct.mdc_chan** %2, align 8
  %85 = load i32, i32* @MDC_CONTROL_AND_STATUS, align 4
  %86 = call i32 @mdc_chan_readl(%struct.mdc_chan* %84, i32 %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* @MDC_CONTROL_AND_STATUS_LIST_EN, align 4
  %88 = load i32, i32* %6, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %6, align 4
  %90 = load %struct.mdc_chan*, %struct.mdc_chan** %2, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @MDC_CONTROL_AND_STATUS, align 4
  %93 = call i32 @mdc_chan_writel(%struct.mdc_chan* %90, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.virt_dma_desc* @vchan_next_desc(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local %struct.mdc_tx_desc* @to_mdc_desc(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @mdma2dev(%struct.mdc_dma*) #1

declare dso_local i32 @mdc_chan_readl(%struct.mdc_chan*, i32) #1

declare dso_local i32 @mdc_chan_writel(%struct.mdc_chan*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
