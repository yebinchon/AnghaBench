; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_alloc_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_alloc_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edma_chan = type { i32, %struct.edma_cc* }
%struct.edma_cc = type { i32 }

@EDMA_DRAE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.edma_chan*, i32)* @edma_alloc_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edma_alloc_channel(%struct.edma_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.edma_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.edma_cc*, align 8
  %6 = alloca i32, align 4
  store %struct.edma_chan* %0, %struct.edma_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %8 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %7, i32 0, i32 1
  %9 = load %struct.edma_cc*, %struct.edma_cc** %8, align 8
  store %struct.edma_cc* %9, %struct.edma_cc** %5, align 8
  %10 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %11 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @EDMA_CHAN_SLOT(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.edma_cc*, %struct.edma_cc** %5, align 8
  %15 = load i32, i32* @EDMA_DRAE, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @EDMA_REG_ARRAY_INDEX(i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @EDMA_CHANNEL_BIT(i32 %18)
  %20 = call i32 @edma_or_array2(%struct.edma_cc* %14, i32 %15, i32 0, i32 %17, i32 %19)
  %21 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %22 = call i32 @edma_stop(%struct.edma_chan* %21)
  %23 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %24 = call i32 @edma_setup_interrupt(%struct.edma_chan* %23, i32 1)
  %25 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @edma_assign_channel_eventq(%struct.edma_chan* %25, i32 %26)
  ret i32 0
}

declare dso_local i32 @EDMA_CHAN_SLOT(i32) #1

declare dso_local i32 @edma_or_array2(%struct.edma_cc*, i32, i32, i32, i32) #1

declare dso_local i32 @EDMA_REG_ARRAY_INDEX(i32) #1

declare dso_local i32 @EDMA_CHANNEL_BIT(i32) #1

declare dso_local i32 @edma_stop(%struct.edma_chan*) #1

declare dso_local i32 @edma_setup_interrupt(%struct.edma_chan*, i32) #1

declare dso_local i32 @edma_assign_channel_eventq(%struct.edma_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
