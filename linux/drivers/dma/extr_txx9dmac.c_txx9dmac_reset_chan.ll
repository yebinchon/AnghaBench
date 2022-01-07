; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_txx9dmac.c_txx9dmac_reset_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_txx9dmac.c_txx9dmac_reset_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.txx9dmac_chan = type { i32 }

@CCR = common dso_local global i32 0, align 4
@TXX9_DMA_CCR_CHRST = common dso_local global i32 0, align 4
@SAR = common dso_local global i32 0, align 4
@DAR = common dso_local global i32 0, align 4
@CHAR = common dso_local global i32 0, align 4
@CNTR = common dso_local global i32 0, align 4
@SAIR = common dso_local global i32 0, align 4
@DAIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.txx9dmac_chan*)* @txx9dmac_reset_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @txx9dmac_reset_chan(%struct.txx9dmac_chan* %0) #0 {
  %2 = alloca %struct.txx9dmac_chan*, align 8
  store %struct.txx9dmac_chan* %0, %struct.txx9dmac_chan** %2, align 8
  %3 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %2, align 8
  %4 = load i32, i32* @CCR, align 4
  %5 = load i32, i32* @TXX9_DMA_CCR_CHRST, align 4
  %6 = call i32 @channel_writel(%struct.txx9dmac_chan* %3, i32 %4, i32 %5)
  %7 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %2, align 8
  %8 = call i64 @is_dmac64(%struct.txx9dmac_chan* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %2, align 8
  %12 = call i32 @channel64_clear_CHAR(%struct.txx9dmac_chan* %11)
  %13 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %2, align 8
  %14 = load i32, i32* @SAR, align 4
  %15 = call i32 @channel_writeq(%struct.txx9dmac_chan* %13, i32 %14, i32 0)
  %16 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %2, align 8
  %17 = load i32, i32* @DAR, align 4
  %18 = call i32 @channel_writeq(%struct.txx9dmac_chan* %16, i32 %17, i32 0)
  br label %29

19:                                               ; preds = %1
  %20 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %2, align 8
  %21 = load i32, i32* @CHAR, align 4
  %22 = call i32 @channel_writel(%struct.txx9dmac_chan* %20, i32 %21, i32 0)
  %23 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %2, align 8
  %24 = load i32, i32* @SAR, align 4
  %25 = call i32 @channel_writel(%struct.txx9dmac_chan* %23, i32 %24, i32 0)
  %26 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %2, align 8
  %27 = load i32, i32* @DAR, align 4
  %28 = call i32 @channel_writel(%struct.txx9dmac_chan* %26, i32 %27, i32 0)
  br label %29

29:                                               ; preds = %19, %10
  %30 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %2, align 8
  %31 = load i32, i32* @CNTR, align 4
  %32 = call i32 @channel_writel(%struct.txx9dmac_chan* %30, i32 %31, i32 0)
  %33 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %2, align 8
  %34 = load i32, i32* @SAIR, align 4
  %35 = call i32 @channel_writel(%struct.txx9dmac_chan* %33, i32 %34, i32 0)
  %36 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %2, align 8
  %37 = load i32, i32* @DAIR, align 4
  %38 = call i32 @channel_writel(%struct.txx9dmac_chan* %36, i32 %37, i32 0)
  %39 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %2, align 8
  %40 = load i32, i32* @CCR, align 4
  %41 = call i32 @channel_writel(%struct.txx9dmac_chan* %39, i32 %40, i32 0)
  ret void
}

declare dso_local i32 @channel_writel(%struct.txx9dmac_chan*, i32, i32) #1

declare dso_local i64 @is_dmac64(%struct.txx9dmac_chan*) #1

declare dso_local i32 @channel64_clear_CHAR(%struct.txx9dmac_chan*) #1

declare dso_local i32 @channel_writeq(%struct.txx9dmac_chan*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
