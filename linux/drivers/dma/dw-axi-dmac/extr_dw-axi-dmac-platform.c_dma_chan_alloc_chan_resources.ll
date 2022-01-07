; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw-axi-dmac/extr_dw-axi-dmac-platform.c_dma_chan_alloc_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw-axi-dmac/extr_dw-axi-dmac-platform.c_dma_chan_alloc_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.axi_dma_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"%s is non-idle!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"%s: allocating\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @dma_chan_alloc_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_chan_alloc_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.axi_dma_chan*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %5 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %6 = call %struct.axi_dma_chan* @dchan_to_axi_dma_chan(%struct.dma_chan* %5)
  store %struct.axi_dma_chan* %6, %struct.axi_dma_chan** %4, align 8
  %7 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %4, align 8
  %8 = call i64 @axi_chan_is_hw_enable(%struct.axi_dma_chan* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %4, align 8
  %12 = call i32 @chan2dev(%struct.axi_dma_chan* %11)
  %13 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %4, align 8
  %14 = call i32 @axi_chan_name(%struct.axi_dma_chan* %13)
  %15 = call i32 @dev_err(i32 %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %30

18:                                               ; preds = %1
  %19 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %20 = call i32 @dchan2dev(%struct.dma_chan* %19)
  %21 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %4, align 8
  %22 = call i32 @axi_chan_name(%struct.axi_dma_chan* %21)
  %23 = call i32 @dev_vdbg(i32 %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %4, align 8
  %25 = getelementptr inbounds %struct.axi_dma_chan, %struct.axi_dma_chan* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pm_runtime_get(i32 %28)
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %18, %10
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.axi_dma_chan* @dchan_to_axi_dma_chan(%struct.dma_chan*) #1

declare dso_local i64 @axi_chan_is_hw_enable(%struct.axi_dma_chan*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @chan2dev(%struct.axi_dma_chan*) #1

declare dso_local i32 @axi_chan_name(%struct.axi_dma_chan*) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32) #1

declare dso_local i32 @dchan2dev(%struct.dma_chan*) #1

declare dso_local i32 @pm_runtime_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
