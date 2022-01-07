; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_at_hdmac.c_atc_chain_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_at_hdmac.c_atc_chain_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at_dma_chan = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.at_desc = type { i32, i32, i32, i32, i32, %struct.dma_async_tx_descriptor }
%struct.dma_async_tx_descriptor = type { i32 }
%struct.at_dma = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"descriptor %u complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at_dma_chan*, %struct.at_desc*)* @atc_chain_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atc_chain_complete(%struct.at_dma_chan* %0, %struct.at_desc* %1) #0 {
  %3 = alloca %struct.at_dma_chan*, align 8
  %4 = alloca %struct.at_desc*, align 8
  %5 = alloca %struct.dma_async_tx_descriptor*, align 8
  %6 = alloca %struct.at_dma*, align 8
  store %struct.at_dma_chan* %0, %struct.at_dma_chan** %3, align 8
  store %struct.at_desc* %1, %struct.at_desc** %4, align 8
  %7 = load %struct.at_desc*, %struct.at_desc** %4, align 8
  %8 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %7, i32 0, i32 5
  store %struct.dma_async_tx_descriptor* %8, %struct.dma_async_tx_descriptor** %5, align 8
  %9 = load %struct.at_dma_chan*, %struct.at_dma_chan** %3, align 8
  %10 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.at_dma* @to_at_dma(i32 %12)
  store %struct.at_dma* %13, %struct.at_dma** %6, align 8
  %14 = load %struct.at_dma_chan*, %struct.at_dma_chan** %3, align 8
  %15 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %14, i32 0, i32 1
  %16 = call i32 @chan2dev(%struct.TYPE_2__* %15)
  %17 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %18 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_vdbg(i32 %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.at_dma_chan*, %struct.at_dma_chan** %3, align 8
  %22 = call i32 @atc_chan_is_cyclic(%struct.at_dma_chan* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %26 = call i32 @dma_cookie_complete(%struct.dma_async_tx_descriptor* %25)
  br label %27

27:                                               ; preds = %24, %2
  %28 = load %struct.at_desc*, %struct.at_desc** %4, align 8
  %29 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = load %struct.at_dma*, %struct.at_dma** %6, align 8
  %34 = getelementptr inbounds %struct.at_dma, %struct.at_dma* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.at_desc*, %struct.at_desc** %4, align 8
  %37 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.at_desc*, %struct.at_desc** %4, align 8
  %40 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dma_pool_free(i32 %35, i32 %38, i32 %41)
  %43 = load %struct.at_desc*, %struct.at_desc** %4, align 8
  %44 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %43, i32 0, i32 0
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %32, %27
  %46 = load %struct.at_desc*, %struct.at_desc** %4, align 8
  %47 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %46, i32 0, i32 2
  %48 = load %struct.at_dma_chan*, %struct.at_dma_chan** %3, align 8
  %49 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %48, i32 0, i32 0
  %50 = call i32 @list_splice_init(i32* %47, i32* %49)
  %51 = load %struct.at_desc*, %struct.at_desc** %4, align 8
  %52 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %51, i32 0, i32 1
  %53 = load %struct.at_dma_chan*, %struct.at_dma_chan** %3, align 8
  %54 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %53, i32 0, i32 0
  %55 = call i32 @list_move(i32* %52, i32* %54)
  %56 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %57 = call i32 @dma_descriptor_unmap(%struct.dma_async_tx_descriptor* %56)
  %58 = load %struct.at_dma_chan*, %struct.at_dma_chan** %3, align 8
  %59 = call i32 @atc_chan_is_cyclic(%struct.at_dma_chan* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %45
  %62 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %63 = call i32 @dmaengine_desc_get_callback_invoke(%struct.dma_async_tx_descriptor* %62, i32* null)
  br label %64

64:                                               ; preds = %61, %45
  %65 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %66 = call i32 @dma_run_dependencies(%struct.dma_async_tx_descriptor* %65)
  ret void
}

declare dso_local %struct.at_dma* @to_at_dma(i32) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32) #1

declare dso_local i32 @chan2dev(%struct.TYPE_2__*) #1

declare dso_local i32 @atc_chan_is_cyclic(%struct.at_dma_chan*) #1

declare dso_local i32 @dma_cookie_complete(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_pool_free(i32, i32, i32) #1

declare dso_local i32 @list_splice_init(i32*, i32*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @dma_descriptor_unmap(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dmaengine_desc_get_callback_invoke(%struct.dma_async_tx_descriptor*, i32*) #1

declare dso_local i32 @dma_run_dependencies(%struct.dma_async_tx_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
