; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ep93xx_dma.c_m2p_hw_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ep93xx_dma.c_m2p_hw_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep93xx_dma_chan = type { i64 }

@M2P_CONTROL = common dso_local global i64 0, align 8
@M2P_CONTROL_STALLINT = common dso_local global i32 0, align 4
@M2P_CONTROL_NFBINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ep93xx_dma_chan*)* @m2p_hw_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m2p_hw_submit(%struct.ep93xx_dma_chan* %0) #0 {
  %2 = alloca %struct.ep93xx_dma_chan*, align 8
  %3 = alloca i32, align 4
  store %struct.ep93xx_dma_chan* %0, %struct.ep93xx_dma_chan** %2, align 8
  %4 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %5 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @M2P_CONTROL, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %11 = call i32 @m2p_fill_desc(%struct.ep93xx_dma_chan* %10)
  %12 = load i32, i32* @M2P_CONTROL_STALLINT, align 4
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %16 = call i64 @ep93xx_dma_advance_active(%struct.ep93xx_dma_chan* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %20 = call i32 @m2p_fill_desc(%struct.ep93xx_dma_chan* %19)
  %21 = load i32, i32* @M2P_CONTROL_NFBINT, align 4
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %18, %1
  %25 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @m2p_set_control(%struct.ep93xx_dma_chan* %25, i32 %26)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @m2p_fill_desc(%struct.ep93xx_dma_chan*) #1

declare dso_local i64 @ep93xx_dma_advance_active(%struct.ep93xx_dma_chan*) #1

declare dso_local i32 @m2p_set_control(%struct.ep93xx_dma_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
