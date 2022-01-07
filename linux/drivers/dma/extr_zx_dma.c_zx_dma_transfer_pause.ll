; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_zx_dma.c_zx_dma_transfer_pause.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_zx_dma.c_zx_dma_transfer_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.zx_dma_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@REG_ZX_CTRL = common dso_local global i64 0, align 8
@ZX_CH_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @zx_dma_transfer_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_dma_transfer_pause(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.zx_dma_chan*, align 8
  %4 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %5 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %6 = call %struct.zx_dma_chan* @to_zx_chan(%struct.dma_chan* %5)
  store %struct.zx_dma_chan* %6, %struct.zx_dma_chan** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.zx_dma_chan*, %struct.zx_dma_chan** %3, align 8
  %8 = getelementptr inbounds %struct.zx_dma_chan, %struct.zx_dma_chan* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @REG_ZX_CTRL, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl_relaxed(i64 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @ZX_CH_ENABLE, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.zx_dma_chan*, %struct.zx_dma_chan** %3, align 8
  %21 = getelementptr inbounds %struct.zx_dma_chan, %struct.zx_dma_chan* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @REG_ZX_CTRL, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel_relaxed(i32 %19, i64 %26)
  ret i32 0
}

declare dso_local %struct.zx_dma_chan* @to_zx_chan(%struct.dma_chan*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
