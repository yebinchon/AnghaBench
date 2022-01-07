; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pch_dma.c_pd_tx_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pch_dma.c_pd_tx_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.pch_dma_desc = type { i32 }
%struct.pch_dma_chan = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_async_tx_descriptor*)* @pd_tx_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pd_tx_submit(%struct.dma_async_tx_descriptor* %0) #0 {
  %2 = alloca %struct.dma_async_tx_descriptor*, align 8
  %3 = alloca %struct.pch_dma_desc*, align 8
  %4 = alloca %struct.pch_dma_chan*, align 8
  store %struct.dma_async_tx_descriptor* %0, %struct.dma_async_tx_descriptor** %2, align 8
  %5 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %2, align 8
  %6 = call %struct.pch_dma_desc* @to_pd_desc(%struct.dma_async_tx_descriptor* %5)
  store %struct.pch_dma_desc* %6, %struct.pch_dma_desc** %3, align 8
  %7 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %2, align 8
  %8 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.pch_dma_chan* @to_pd_chan(i32 %9)
  store %struct.pch_dma_chan* %10, %struct.pch_dma_chan** %4, align 8
  %11 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %4, align 8
  %12 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %4, align 8
  %15 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %14, i32 0, i32 2
  %16 = call i64 @list_empty(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.pch_dma_desc*, %struct.pch_dma_desc** %3, align 8
  %20 = getelementptr inbounds %struct.pch_dma_desc, %struct.pch_dma_desc* %19, i32 0, i32 0
  %21 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %4, align 8
  %22 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %21, i32 0, i32 2
  %23 = call i32 @list_add_tail(i32* %20, i32* %22)
  %24 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %4, align 8
  %25 = load %struct.pch_dma_desc*, %struct.pch_dma_desc** %3, align 8
  %26 = call i32 @pdc_dostart(%struct.pch_dma_chan* %24, %struct.pch_dma_desc* %25)
  br label %33

27:                                               ; preds = %1
  %28 = load %struct.pch_dma_desc*, %struct.pch_dma_desc** %3, align 8
  %29 = getelementptr inbounds %struct.pch_dma_desc, %struct.pch_dma_desc* %28, i32 0, i32 0
  %30 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %4, align 8
  %31 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %30, i32 0, i32 1
  %32 = call i32 @list_add_tail(i32* %29, i32* %31)
  br label %33

33:                                               ; preds = %27, %18
  %34 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %4, align 8
  %35 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock(i32* %35)
  ret i32 0
}

declare dso_local %struct.pch_dma_desc* @to_pd_desc(%struct.dma_async_tx_descriptor*) #1

declare dso_local %struct.pch_dma_chan* @to_pd_chan(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @pdc_dostart(%struct.pch_dma_chan*, %struct.pch_dma_desc*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
