; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_run_tx_complete_actions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_run_tx_complete_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_dma_chan = type { i32 }
%struct.xgene_dma_desc_sw = type { %struct.dma_async_tx_descriptor }
%struct.dma_async_tx_descriptor = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_dma_chan*, %struct.xgene_dma_desc_sw*)* @xgene_dma_run_tx_complete_actions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_dma_run_tx_complete_actions(%struct.xgene_dma_chan* %0, %struct.xgene_dma_desc_sw* %1) #0 {
  %3 = alloca %struct.xgene_dma_chan*, align 8
  %4 = alloca %struct.xgene_dma_desc_sw*, align 8
  %5 = alloca %struct.dma_async_tx_descriptor*, align 8
  store %struct.xgene_dma_chan* %0, %struct.xgene_dma_chan** %3, align 8
  store %struct.xgene_dma_desc_sw* %1, %struct.xgene_dma_desc_sw** %4, align 8
  %6 = load %struct.xgene_dma_desc_sw*, %struct.xgene_dma_desc_sw** %4, align 8
  %7 = getelementptr inbounds %struct.xgene_dma_desc_sw, %struct.xgene_dma_desc_sw* %6, i32 0, i32 0
  store %struct.dma_async_tx_descriptor* %7, %struct.dma_async_tx_descriptor** %5, align 8
  %8 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %9 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %22

13:                                               ; preds = %2
  %14 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %15 = call i32 @dma_cookie_complete(%struct.dma_async_tx_descriptor* %14)
  %16 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %17 = call i32 @dma_descriptor_unmap(%struct.dma_async_tx_descriptor* %16)
  %18 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %19 = call i32 @dmaengine_desc_get_callback_invoke(%struct.dma_async_tx_descriptor* %18, i32* null)
  %20 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %21 = call i32 @dma_run_dependencies(%struct.dma_async_tx_descriptor* %20)
  br label %22

22:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @dma_cookie_complete(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_descriptor_unmap(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dmaengine_desc_get_callback_invoke(%struct.dma_async_tx_descriptor*, i32*) #1

declare dso_local i32 @dma_run_dependencies(%struct.dma_async_tx_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
