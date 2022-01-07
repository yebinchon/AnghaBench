; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ep93xx_dma.c_m2p_hw_synchronize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ep93xx_dma.c_m2p_hw_synchronize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep93xx_dma_chan = type { i32, i64 }

@M2P_CONTROL = common dso_local global i64 0, align 8
@M2P_CONTROL_STALLINT = common dso_local global i32 0, align 4
@M2P_CONTROL_NFBINT = common dso_local global i32 0, align 4
@M2P_STATE_ON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ep93xx_dma_chan*)* @m2p_hw_synchronize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m2p_hw_synchronize(%struct.ep93xx_dma_chan* %0) #0 {
  %2 = alloca %struct.ep93xx_dma_chan*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.ep93xx_dma_chan* %0, %struct.ep93xx_dma_chan** %2, align 8
  %5 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %6 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %5, i32 0, i32 0
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %10 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @M2P_CONTROL, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @M2P_CONTROL_STALLINT, align 4
  %16 = load i32, i32* @M2P_CONTROL_NFBINT, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @m2p_set_control(%struct.ep93xx_dma_chan* %21, i32 %22)
  %24 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %25 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %24, i32 0, i32 0
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  br label %28

28:                                               ; preds = %33, %1
  %29 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %30 = call i64 @m2p_channel_state(%struct.ep93xx_dma_chan* %29)
  %31 = load i64, i64* @M2P_STATE_ON, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 (...) @schedule()
  br label %28

35:                                               ; preds = %28
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @m2p_set_control(%struct.ep93xx_dma_chan*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @m2p_channel_state(%struct.ep93xx_dma_chan*) #1

declare dso_local i32 @schedule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
