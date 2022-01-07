; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_tdma.c_mmp_tdma_enable_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_tdma.c_mmp_tdma_enable_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmp_tdma_chan = type { i32, i64 }

@TDCR = common dso_local global i64 0, align 8
@TDCR_CHANEN = common dso_local global i32 0, align 4
@DMA_IN_PROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmp_tdma_chan*)* @mmp_tdma_enable_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmp_tdma_enable_chan(%struct.mmp_tdma_chan* %0) #0 {
  %2 = alloca %struct.mmp_tdma_chan*, align 8
  store %struct.mmp_tdma_chan* %0, %struct.mmp_tdma_chan** %2, align 8
  %3 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %2, align 8
  %4 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @TDCR, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @readl(i64 %7)
  %9 = load i32, i32* @TDCR_CHANEN, align 4
  %10 = or i32 %8, %9
  %11 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %2, align 8
  %12 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TDCR, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writel(i32 %10, i64 %15)
  %17 = load i32, i32* @DMA_IN_PROGRESS, align 4
  %18 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %2, align 8
  %19 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
