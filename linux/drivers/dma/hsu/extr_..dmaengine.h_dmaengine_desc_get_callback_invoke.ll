; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/hsu/extr_..dmaengine.h_dmaengine_desc_get_callback_invoke.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/hsu/extr_..dmaengine.h_dmaengine_desc_get_callback_invoke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dmaengine_result = type { i32 }
%struct.dmaengine_desc_callback = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_async_tx_descriptor*, %struct.dmaengine_result*)* @dmaengine_desc_get_callback_invoke to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmaengine_desc_get_callback_invoke(%struct.dma_async_tx_descriptor* %0, %struct.dmaengine_result* %1) #0 {
  %3 = alloca %struct.dma_async_tx_descriptor*, align 8
  %4 = alloca %struct.dmaengine_result*, align 8
  %5 = alloca %struct.dmaengine_desc_callback, align 4
  store %struct.dma_async_tx_descriptor* %0, %struct.dma_async_tx_descriptor** %3, align 8
  store %struct.dmaengine_result* %1, %struct.dmaengine_result** %4, align 8
  %6 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %7 = call i32 @dmaengine_desc_get_callback(%struct.dma_async_tx_descriptor* %6, %struct.dmaengine_desc_callback* %5)
  %8 = load %struct.dmaengine_result*, %struct.dmaengine_result** %4, align 8
  %9 = call i32 @dmaengine_desc_callback_invoke(%struct.dmaengine_desc_callback* %5, %struct.dmaengine_result* %8)
  ret void
}

declare dso_local i32 @dmaengine_desc_get_callback(%struct.dma_async_tx_descriptor*, %struct.dmaengine_desc_callback*) #1

declare dso_local i32 @dmaengine_desc_callback_invoke(%struct.dmaengine_desc_callback*, %struct.dmaengine_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
