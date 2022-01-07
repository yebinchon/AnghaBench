; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_init.c_ioat_dma_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_init.c_ioat_dma_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioatdma_device = type { i32, %struct.dma_device }
%struct.dma_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ioatdma_device*)* @ioat_dma_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioat_dma_remove(%struct.ioatdma_device* %0) #0 {
  %2 = alloca %struct.ioatdma_device*, align 8
  %3 = alloca %struct.dma_device*, align 8
  store %struct.ioatdma_device* %0, %struct.ioatdma_device** %2, align 8
  %4 = load %struct.ioatdma_device*, %struct.ioatdma_device** %2, align 8
  %5 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %4, i32 0, i32 1
  store %struct.dma_device* %5, %struct.dma_device** %3, align 8
  %6 = load %struct.ioatdma_device*, %struct.ioatdma_device** %2, align 8
  %7 = call i32 @ioat_disable_interrupts(%struct.ioatdma_device* %6)
  %8 = load %struct.ioatdma_device*, %struct.ioatdma_device** %2, align 8
  %9 = call i32 @ioat_kobject_del(%struct.ioatdma_device* %8)
  %10 = load %struct.dma_device*, %struct.dma_device** %3, align 8
  %11 = call i32 @dma_async_device_unregister(%struct.dma_device* %10)
  %12 = load %struct.ioatdma_device*, %struct.ioatdma_device** %2, align 8
  %13 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dma_pool_destroy(i32 %14)
  %16 = load %struct.dma_device*, %struct.dma_device** %3, align 8
  %17 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %16, i32 0, i32 0
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  ret void
}

declare dso_local i32 @ioat_disable_interrupts(%struct.ioatdma_device*) #1

declare dso_local i32 @ioat_kobject_del(%struct.ioatdma_device*) #1

declare dso_local i32 @dma_async_device_unregister(%struct.dma_device*) #1

declare dso_local i32 @dma_pool_destroy(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
