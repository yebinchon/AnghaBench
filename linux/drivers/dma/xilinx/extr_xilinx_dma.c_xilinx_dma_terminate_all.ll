; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_xilinx_dma.c_xilinx_dma_terminate_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_xilinx_dma.c_xilinx_dma_terminate_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.xilinx_dma_chan = type { i32, i32 (%struct.xilinx_dma_chan*)*, i32, i32, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"Cannot stop channel %p: %x\0A\00", align 1
@XILINX_DMA_REG_DMASR = common dso_local global i32 0, align 4
@XILINX_DMA_REG_DMACR = common dso_local global i32 0, align 4
@XILINX_DMA_CR_CYCLIC_BD_EN_MASK = common dso_local global i32 0, align 4
@XDMA_TYPE_CDMA = common dso_local global i64 0, align 8
@XILINX_CDMA_CR_SGMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @xilinx_dma_terminate_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xilinx_dma_terminate_all(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.xilinx_dma_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %7 = call %struct.xilinx_dma_chan* @to_xilinx_chan(%struct.dma_chan* %6)
  store %struct.xilinx_dma_chan* %7, %struct.xilinx_dma_chan** %3, align 8
  %8 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %3, align 8
  %9 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %3, align 8
  %14 = call i32 @xilinx_dma_chan_reset(%struct.xilinx_dma_chan* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %3, align 8
  %17 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %16, i32 0, i32 1
  %18 = load i32 (%struct.xilinx_dma_chan*)*, i32 (%struct.xilinx_dma_chan*)** %17, align 8
  %19 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %3, align 8
  %20 = call i32 %18(%struct.xilinx_dma_chan* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %15
  %24 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %3, align 8
  %25 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %3, align 8
  %28 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %3, align 8
  %29 = load i32, i32* @XILINX_DMA_REG_DMASR, align 4
  %30 = call i32 @dma_ctrl_read(%struct.xilinx_dma_chan* %28, i32 %29)
  %31 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.xilinx_dma_chan* %27, i32 %30)
  %32 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %3, align 8
  %33 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %32, i32 0, i32 2
  store i32 1, i32* %33, align 8
  br label %34

34:                                               ; preds = %23, %15
  %35 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %3, align 8
  %36 = call i32 @xilinx_dma_free_descriptors(%struct.xilinx_dma_chan* %35)
  %37 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %3, align 8
  %38 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %37, i32 0, i32 3
  store i32 1, i32* %38, align 4
  %39 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %3, align 8
  %40 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %34
  %44 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %3, align 8
  %45 = load i32, i32* @XILINX_DMA_REG_DMACR, align 4
  %46 = call i32 @dma_ctrl_read(%struct.xilinx_dma_chan* %44, i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* @XILINX_DMA_CR_CYCLIC_BD_EN_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %4, align 4
  %51 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %3, align 8
  %52 = load i32, i32* @XILINX_DMA_REG_DMACR, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @dma_ctrl_write(%struct.xilinx_dma_chan* %51, i32 %52, i32 %53)
  %55 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %3, align 8
  %56 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  br label %57

57:                                               ; preds = %43, %34
  %58 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %3, align 8
  %59 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %58, i32 0, i32 5
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @XDMA_TYPE_CDMA, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %57
  %68 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %3, align 8
  %69 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %3, align 8
  %74 = load i32, i32* @XILINX_DMA_REG_DMACR, align 4
  %75 = load i32, i32* @XILINX_CDMA_CR_SGMODE, align 4
  %76 = call i32 @dma_ctrl_clr(%struct.xilinx_dma_chan* %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %72, %67, %57
  ret i32 0
}

declare dso_local %struct.xilinx_dma_chan* @to_xilinx_chan(%struct.dma_chan*) #1

declare dso_local i32 @xilinx_dma_chan_reset(%struct.xilinx_dma_chan*) #1

declare dso_local i32 @dev_err(i32, i8*, %struct.xilinx_dma_chan*, i32) #1

declare dso_local i32 @dma_ctrl_read(%struct.xilinx_dma_chan*, i32) #1

declare dso_local i32 @xilinx_dma_free_descriptors(%struct.xilinx_dma_chan*) #1

declare dso_local i32 @dma_ctrl_write(%struct.xilinx_dma_chan*, i32, i32) #1

declare dso_local i32 @dma_ctrl_clr(%struct.xilinx_dma_chan*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
