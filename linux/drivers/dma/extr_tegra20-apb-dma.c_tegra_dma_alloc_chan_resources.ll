; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_tegra20-apb-dma.c_tegra_dma_alloc_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_tegra20-apb-dma.c_tegra_dma_alloc_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.tegra_dma_channel = type { i32, i32, %struct.tegra_dma* }
%struct.tegra_dma = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @tegra_dma_alloc_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_dma_alloc_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.tegra_dma_channel*, align 8
  %5 = alloca %struct.tegra_dma*, align 8
  %6 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %8 = call %struct.tegra_dma_channel* @to_tegra_dma_chan(%struct.dma_chan* %7)
  store %struct.tegra_dma_channel* %8, %struct.tegra_dma_channel** %4, align 8
  %9 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %4, align 8
  %10 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %9, i32 0, i32 2
  %11 = load %struct.tegra_dma*, %struct.tegra_dma** %10, align 8
  store %struct.tegra_dma* %11, %struct.tegra_dma** %5, align 8
  %12 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %4, align 8
  %13 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %12, i32 0, i32 1
  %14 = call i32 @dma_cookie_init(i32* %13)
  %15 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %4, align 8
  %16 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.tegra_dma*, %struct.tegra_dma** %5, align 8
  %18 = getelementptr inbounds %struct.tegra_dma, %struct.tegra_dma* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pm_runtime_get_sync(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %26

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %23
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.tegra_dma_channel* @to_tegra_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dma_cookie_init(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
