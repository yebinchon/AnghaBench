; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_txx9dmac.c_txx9dmac_tx_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_txx9dmac.c_txx9dmac_tx_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.txx9dmac_desc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.txx9dmac_chan = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"tx_submit: queued %u %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_async_tx_descriptor*)* @txx9dmac_tx_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txx9dmac_tx_submit(%struct.dma_async_tx_descriptor* %0) #0 {
  %2 = alloca %struct.dma_async_tx_descriptor*, align 8
  %3 = alloca %struct.txx9dmac_desc*, align 8
  %4 = alloca %struct.txx9dmac_chan*, align 8
  %5 = alloca i32, align 4
  store %struct.dma_async_tx_descriptor* %0, %struct.dma_async_tx_descriptor** %2, align 8
  %6 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %2, align 8
  %7 = call %struct.txx9dmac_desc* @txd_to_txx9dmac_desc(%struct.dma_async_tx_descriptor* %6)
  store %struct.txx9dmac_desc* %7, %struct.txx9dmac_desc** %3, align 8
  %8 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %2, align 8
  %9 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.txx9dmac_chan* @to_txx9dmac_chan(i32 %10)
  store %struct.txx9dmac_chan* %11, %struct.txx9dmac_chan** %4, align 8
  %12 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %13 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %12, i32 0, i32 0
  %14 = call i32 @spin_lock_bh(i32* %13)
  %15 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %2, align 8
  %16 = call i32 @dma_cookie_assign(%struct.dma_async_tx_descriptor* %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %2, align 8
  %18 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @chan2dev(i32 %19)
  %21 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %3, align 8
  %22 = getelementptr inbounds %struct.txx9dmac_desc, %struct.txx9dmac_desc* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %3, align 8
  %26 = call i32 @dev_vdbg(i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %24, %struct.txx9dmac_desc* %25)
  %27 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %3, align 8
  %28 = getelementptr inbounds %struct.txx9dmac_desc, %struct.txx9dmac_desc* %27, i32 0, i32 0
  %29 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %30 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %29, i32 0, i32 1
  %31 = call i32 @list_add_tail(i32* %28, i32* %30)
  %32 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %4, align 8
  %33 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock_bh(i32* %33)
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local %struct.txx9dmac_desc* @txd_to_txx9dmac_desc(%struct.dma_async_tx_descriptor*) #1

declare dso_local %struct.txx9dmac_chan* @to_txx9dmac_chan(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @dma_cookie_assign(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32, %struct.txx9dmac_desc*) #1

declare dso_local i32 @chan2dev(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
