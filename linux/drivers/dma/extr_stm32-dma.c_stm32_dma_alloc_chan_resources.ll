; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-dma.c_stm32_dma_alloc_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-dma.c_stm32_dma_alloc_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.stm32_dma_chan = type { i32 }
%struct.stm32_dma_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @stm32_dma_alloc_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_dma_alloc_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.stm32_dma_chan*, align 8
  %5 = alloca %struct.stm32_dma_device*, align 8
  %6 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %8 = call %struct.stm32_dma_chan* @to_stm32_dma_chan(%struct.dma_chan* %7)
  store %struct.stm32_dma_chan* %8, %struct.stm32_dma_chan** %4, align 8
  %9 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %4, align 8
  %10 = call %struct.stm32_dma_device* @stm32_dma_get_dev(%struct.stm32_dma_chan* %9)
  store %struct.stm32_dma_device* %10, %struct.stm32_dma_device** %5, align 8
  %11 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %4, align 8
  %12 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = load %struct.stm32_dma_device*, %struct.stm32_dma_device** %5, align 8
  %14 = getelementptr inbounds %struct.stm32_dma_device, %struct.stm32_dma_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pm_runtime_get_sync(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %35

22:                                               ; preds = %1
  %23 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %4, align 8
  %24 = call i32 @stm32_dma_disable_chan(%struct.stm32_dma_chan* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.stm32_dma_device*, %struct.stm32_dma_device** %5, align 8
  %29 = getelementptr inbounds %struct.stm32_dma_device, %struct.stm32_dma_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pm_runtime_put(i32 %31)
  br label %33

33:                                               ; preds = %27, %22
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %20
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.stm32_dma_chan* @to_stm32_dma_chan(%struct.dma_chan*) #1

declare dso_local %struct.stm32_dma_device* @stm32_dma_get_dev(%struct.stm32_dma_chan*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @stm32_dma_disable_chan(%struct.stm32_dma_chan*) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
