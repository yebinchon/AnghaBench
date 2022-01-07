; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw/extr_idma32.c_idma32_suspend_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw/extr_idma32.c_idma32_suspend_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_dma_chan = type { i32 }

@CFG_LO = common dso_local global i32 0, align 4
@IDMA32C_CFGL_CH_DRAIN = common dso_local global i32 0, align 4
@DWC_CFGL_CH_SUSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_dma_chan*, i32)* @idma32_suspend_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idma32_suspend_chan(%struct.dw_dma_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.dw_dma_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dw_dma_chan* %0, %struct.dw_dma_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %7 = load i32, i32* @CFG_LO, align 4
  %8 = call i32 @channel_readl(%struct.dw_dma_chan* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @IDMA32C_CFGL_CH_DRAIN, align 4
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %11, %2
  %16 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %17 = load i32, i32* @CFG_LO, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @DWC_CFGL_CH_SUSP, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @channel_writel(%struct.dw_dma_chan* %16, i32 %17, i32 %20)
  ret void
}

declare dso_local i32 @channel_readl(%struct.dw_dma_chan*, i32) #1

declare dso_local i32 @channel_writel(%struct.dw_dma_chan*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
