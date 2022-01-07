; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_free_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_free_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.sdma_channel = type { i64, i64, %struct.sdma_engine* }
%struct.sdma_engine = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @sdma_free_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_free_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.sdma_channel*, align 8
  %4 = alloca %struct.sdma_engine*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %5 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %6 = call %struct.sdma_channel* @to_sdma_chan(%struct.dma_chan* %5)
  store %struct.sdma_channel* %6, %struct.sdma_channel** %3, align 8
  %7 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %8 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %7, i32 0, i32 2
  %9 = load %struct.sdma_engine*, %struct.sdma_engine** %8, align 8
  store %struct.sdma_engine* %9, %struct.sdma_engine** %4, align 8
  %10 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %11 = call i32 @sdma_disable_channel_async(%struct.dma_chan* %10)
  %12 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %13 = call i32 @sdma_channel_synchronize(%struct.dma_chan* %12)
  %14 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %15 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %20 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %21 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @sdma_event_disable(%struct.sdma_channel* %19, i64 %22)
  br label %24

24:                                               ; preds = %18, %1
  %25 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %26 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %31 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %32 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @sdma_event_disable(%struct.sdma_channel* %30, i64 %33)
  br label %35

35:                                               ; preds = %29, %24
  %36 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %37 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %39 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %41 = call i32 @sdma_set_channel_priority(%struct.sdma_channel* %40, i32 0)
  %42 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %43 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @clk_disable(i32 %44)
  %46 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %47 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @clk_disable(i32 %48)
  ret void
}

declare dso_local %struct.sdma_channel* @to_sdma_chan(%struct.dma_chan*) #1

declare dso_local i32 @sdma_disable_channel_async(%struct.dma_chan*) #1

declare dso_local i32 @sdma_channel_synchronize(%struct.dma_chan*) #1

declare dso_local i32 @sdma_event_disable(%struct.sdma_channel*, i64) #1

declare dso_local i32 @sdma_set_channel_priority(%struct.sdma_channel*, i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
