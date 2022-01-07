; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dmaengine.c_dma_get_any_slave_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dmaengine.c_dma_get_any_slave_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_device = type { i32 }

@DMA_SLAVE = common dso_local global i32 0, align 4
@dma_list_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dma_chan* @dma_get_any_slave_channel(%struct.dma_device* %0) #0 {
  %2 = alloca %struct.dma_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_chan*, align 8
  store %struct.dma_device* %0, %struct.dma_device** %2, align 8
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @dma_cap_zero(i32 %5)
  %7 = load i32, i32* @DMA_SLAVE, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @dma_cap_set(i32 %7, i32 %8)
  %10 = call i32 @mutex_lock(i32* @dma_list_mutex)
  %11 = load %struct.dma_device*, %struct.dma_device** %2, align 8
  %12 = call %struct.dma_chan* @find_candidate(%struct.dma_device* %11, i32* %3, i32* null, i32* null)
  store %struct.dma_chan* %12, %struct.dma_chan** %4, align 8
  %13 = call i32 @mutex_unlock(i32* @dma_list_mutex)
  %14 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %15 = call i64 @IS_ERR(%struct.dma_chan* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %20

18:                                               ; preds = %1
  %19 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  br label %20

20:                                               ; preds = %18, %17
  %21 = phi %struct.dma_chan* [ null, %17 ], [ %19, %18 ]
  ret %struct.dma_chan* %21
}

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dma_chan* @find_candidate(%struct.dma_device*, i32*, i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @IS_ERR(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
