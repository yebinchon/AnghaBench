; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_cppi41.c_cppi41_dma_free_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_cppi41.c_cppi41_dma_free_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.cppi41_channel = type { %struct.cppi41_dd* }
%struct.cppi41_dd = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @cppi41_dma_free_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cppi41_dma_free_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.cppi41_channel*, align 8
  %4 = alloca %struct.cppi41_dd*, align 8
  %5 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %7 = call %struct.cppi41_channel* @to_cpp41_chan(%struct.dma_chan* %6)
  store %struct.cppi41_channel* %7, %struct.cppi41_channel** %3, align 8
  %8 = load %struct.cppi41_channel*, %struct.cppi41_channel** %3, align 8
  %9 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %8, i32 0, i32 0
  %10 = load %struct.cppi41_dd*, %struct.cppi41_dd** %9, align 8
  store %struct.cppi41_dd* %10, %struct.cppi41_dd** %4, align 8
  %11 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %12 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pm_runtime_get_sync(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %20 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pm_runtime_put_noidle(i32 %22)
  br label %42

24:                                               ; preds = %1
  %25 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %26 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %25, i32 0, i32 1
  %27 = call i32 @list_empty(i32* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @WARN_ON(i32 %30)
  %32 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %33 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pm_runtime_mark_last_busy(i32 %35)
  %37 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %38 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pm_runtime_put_autosuspend(i32 %40)
  br label %42

42:                                               ; preds = %24, %18
  ret void
}

declare dso_local %struct.cppi41_channel* @to_cpp41_chan(%struct.dma_chan*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
