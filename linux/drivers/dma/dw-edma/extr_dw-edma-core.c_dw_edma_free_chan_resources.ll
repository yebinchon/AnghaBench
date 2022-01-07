; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw-edma/extr_dw-edma-core.c_dw_edma_free_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw-edma/extr_dw-edma-core.c_dw_edma_free_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dw_edma_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @dw_edma_free_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_edma_free_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.dw_edma_chan*, align 8
  %5 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %6 = load i64, i64* @jiffies, align 8
  %7 = call i64 @msecs_to_jiffies(i32 5000)
  %8 = add i64 %6, %7
  store i64 %8, i64* %3, align 8
  %9 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %10 = call %struct.dw_edma_chan* @dchan2dw_edma_chan(%struct.dma_chan* %9)
  store %struct.dw_edma_chan* %10, %struct.dw_edma_chan** %4, align 8
  br label %11

11:                                               ; preds = %28, %1
  %12 = load i64, i64* @jiffies, align 8
  %13 = load i64, i64* %3, align 8
  %14 = call i64 @time_before(i64 %12, i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %11
  %17 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %18 = call i32 @dw_edma_device_terminate_all(%struct.dma_chan* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %30

22:                                               ; preds = %16
  %23 = load i64, i64* @jiffies, align 8
  %24 = load i64, i64* %3, align 8
  %25 = call i64 @time_after_eq(i64 %23, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %37

28:                                               ; preds = %22
  %29 = call i32 (...) @cpu_relax()
  br label %11

30:                                               ; preds = %21, %11
  %31 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %4, align 8
  %32 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pm_runtime_put(i32 %35)
  br label %37

37:                                               ; preds = %30, %27
  ret void
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local %struct.dw_edma_chan* @dchan2dw_edma_chan(%struct.dma_chan*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @dw_edma_device_terminate_all(%struct.dma_chan*) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
