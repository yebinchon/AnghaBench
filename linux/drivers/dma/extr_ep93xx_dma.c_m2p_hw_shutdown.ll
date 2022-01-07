; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ep93xx_dma.c_m2p_hw_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ep93xx_dma.c_m2p_hw_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep93xx_dma_chan = type { i32 }

@M2P_STATE_IDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"M2P: Not yet IDLE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ep93xx_dma_chan*)* @m2p_hw_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m2p_hw_shutdown(%struct.ep93xx_dma_chan* %0) #0 {
  %2 = alloca %struct.ep93xx_dma_chan*, align 8
  store %struct.ep93xx_dma_chan* %0, %struct.ep93xx_dma_chan** %2, align 8
  %3 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %4 = call i32 @m2p_set_control(%struct.ep93xx_dma_chan* %3, i32 0)
  br label %5

5:                                                ; preds = %10, %1
  %6 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %7 = call i64 @m2p_channel_state(%struct.ep93xx_dma_chan* %6)
  %8 = load i64, i64* @M2P_STATE_IDLE, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %12 = call i32 @chan2dev(%struct.ep93xx_dma_chan* %11)
  %13 = call i32 @dev_warn(i32 %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %5

14:                                               ; preds = %5
  ret void
}

declare dso_local i32 @m2p_set_control(%struct.ep93xx_dma_chan*, i32) #1

declare dso_local i64 @m2p_channel_state(%struct.ep93xx_dma_chan*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @chan2dev(%struct.ep93xx_dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
