; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw-axi-dmac/extr_dw-axi-dmac-platform.c_axi_chan_block_xfer_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw-axi-dmac/extr_dw-axi-dmac-platform.c_axi_chan_block_xfer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axi_dma_chan = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }
%struct.axi_dma_desc = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"%s is non-idle!\0A\00", align 1
@DWAXIDMAC_MBLK_TYPE_LL = common dso_local global i32 0, align 4
@CH_CFG_L_DST_MULTBLK_TYPE_POS = common dso_local global i32 0, align 4
@CH_CFG_L_SRC_MULTBLK_TYPE_POS = common dso_local global i32 0, align 4
@CH_CFG_L = common dso_local global i32 0, align 4
@DWAXIDMAC_TT_FC_MEM_TO_MEM_DMAC = common dso_local global i32 0, align 4
@CH_CFG_H_TT_FC_POS = common dso_local global i32 0, align 4
@CH_CFG_H_PRIORITY_POS = common dso_local global i32 0, align 4
@DWAXIDMAC_HS_SEL_HW = common dso_local global i32 0, align 4
@CH_CFG_H_HS_SEL_DST_POS = common dso_local global i32 0, align 4
@CH_CFG_H_HS_SEL_SRC_POS = common dso_local global i32 0, align 4
@CH_CFG_H = common dso_local global i32 0, align 4
@DWAXIDMAC_IRQ_DMA_TRF = common dso_local global i32 0, align 4
@DWAXIDMAC_IRQ_ALL_ERR = common dso_local global i32 0, align 4
@DWAXIDMAC_IRQ_SUSPENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.axi_dma_chan*, %struct.axi_dma_desc*)* @axi_chan_block_xfer_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axi_chan_block_xfer_start(%struct.axi_dma_chan* %0, %struct.axi_dma_desc* %1) #0 {
  %3 = alloca %struct.axi_dma_chan*, align 8
  %4 = alloca %struct.axi_dma_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.axi_dma_chan* %0, %struct.axi_dma_chan** %3, align 8
  store %struct.axi_dma_desc* %1, %struct.axi_dma_desc** %4, align 8
  %9 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %10 = getelementptr inbounds %struct.axi_dma_chan, %struct.axi_dma_chan* %9, i32 0, i32 1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %19 = getelementptr inbounds %struct.axi_dma_chan, %struct.axi_dma_chan* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %23 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %24 = call i32 @axi_chan_is_hw_enable(%struct.axi_dma_chan* %23)
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %29 = call i32 @chan2dev(%struct.axi_dma_chan* %28)
  %30 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %31 = call i32 @axi_chan_name(%struct.axi_dma_chan* %30)
  %32 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %91

33:                                               ; preds = %2
  %34 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %35 = getelementptr inbounds %struct.axi_dma_chan, %struct.axi_dma_chan* %34, i32 0, i32 1
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = call i32 @axi_dma_enable(%struct.TYPE_10__* %36)
  %38 = load i32, i32* @DWAXIDMAC_MBLK_TYPE_LL, align 4
  %39 = load i32, i32* @CH_CFG_L_DST_MULTBLK_TYPE_POS, align 4
  %40 = shl i32 %38, %39
  %41 = load i32, i32* @DWAXIDMAC_MBLK_TYPE_LL, align 4
  %42 = load i32, i32* @CH_CFG_L_SRC_MULTBLK_TYPE_POS, align 4
  %43 = shl i32 %41, %42
  %44 = or i32 %40, %43
  store i32 %44, i32* %6, align 4
  %45 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %46 = load i32, i32* @CH_CFG_L, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @axi_chan_iowrite32(%struct.axi_dma_chan* %45, i32 %46, i32 %47)
  %49 = load i32, i32* @DWAXIDMAC_TT_FC_MEM_TO_MEM_DMAC, align 4
  %50 = load i32, i32* @CH_CFG_H_TT_FC_POS, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @CH_CFG_H_PRIORITY_POS, align 4
  %54 = shl i32 %52, %53
  %55 = or i32 %51, %54
  %56 = load i32, i32* @DWAXIDMAC_HS_SEL_HW, align 4
  %57 = load i32, i32* @CH_CFG_H_HS_SEL_DST_POS, align 4
  %58 = shl i32 %56, %57
  %59 = or i32 %55, %58
  %60 = load i32, i32* @DWAXIDMAC_HS_SEL_HW, align 4
  %61 = load i32, i32* @CH_CFG_H_HS_SEL_SRC_POS, align 4
  %62 = shl i32 %60, %61
  %63 = or i32 %59, %62
  store i32 %63, i32* %6, align 4
  %64 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %65 = load i32, i32* @CH_CFG_H, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @axi_chan_iowrite32(%struct.axi_dma_chan* %64, i32 %65, i32 %66)
  %68 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %69 = load %struct.axi_dma_desc*, %struct.axi_dma_desc** %4, align 8
  %70 = getelementptr inbounds %struct.axi_dma_desc, %struct.axi_dma_desc* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @write_chan_llp(%struct.axi_dma_chan* %68, i32 %75)
  %77 = load i32, i32* @DWAXIDMAC_IRQ_DMA_TRF, align 4
  %78 = load i32, i32* @DWAXIDMAC_IRQ_ALL_ERR, align 4
  %79 = or i32 %77, %78
  store i32 %79, i32* %7, align 4
  %80 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @axi_chan_irq_sig_set(%struct.axi_dma_chan* %80, i32 %81)
  %83 = load i32, i32* @DWAXIDMAC_IRQ_SUSPENDED, align 4
  %84 = load i32, i32* %7, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %7, align 4
  %86 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @axi_chan_irq_set(%struct.axi_dma_chan* %86, i32 %87)
  %89 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %90 = call i32 @axi_chan_enable(%struct.axi_dma_chan* %89)
  br label %91

91:                                               ; preds = %33, %27
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @axi_chan_is_hw_enable(%struct.axi_dma_chan*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @chan2dev(%struct.axi_dma_chan*) #1

declare dso_local i32 @axi_chan_name(%struct.axi_dma_chan*) #1

declare dso_local i32 @axi_dma_enable(%struct.TYPE_10__*) #1

declare dso_local i32 @axi_chan_iowrite32(%struct.axi_dma_chan*, i32, i32) #1

declare dso_local i32 @write_chan_llp(%struct.axi_dma_chan*, i32) #1

declare dso_local i32 @axi_chan_irq_sig_set(%struct.axi_dma_chan*, i32) #1

declare dso_local i32 @axi_chan_irq_set(%struct.axi_dma_chan*, i32) #1

declare dso_local i32 @axi_chan_enable(%struct.axi_dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
