; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_owl-dma.c_owl_dma_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_owl-dma.c_owl_dma_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.owl_dma = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@OWL_DMA_IRQ_EN0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @owl_dma_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @owl_dma_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.owl_dma*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.owl_dma* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.owl_dma* %5, %struct.owl_dma** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @of_dma_controller_free(i32 %9)
  %11 = load %struct.owl_dma*, %struct.owl_dma** %3, align 8
  %12 = getelementptr inbounds %struct.owl_dma, %struct.owl_dma* %11, i32 0, i32 2
  %13 = call i32 @dma_async_device_unregister(%struct.TYPE_4__* %12)
  %14 = load %struct.owl_dma*, %struct.owl_dma** %3, align 8
  %15 = load i32, i32* @OWL_DMA_IRQ_EN0, align 4
  %16 = call i32 @dma_writel(%struct.owl_dma* %14, i32 %15, i32 0)
  %17 = load %struct.owl_dma*, %struct.owl_dma** %3, align 8
  %18 = getelementptr inbounds %struct.owl_dma, %struct.owl_dma* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.owl_dma*, %struct.owl_dma** %3, align 8
  %22 = getelementptr inbounds %struct.owl_dma, %struct.owl_dma* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.owl_dma*, %struct.owl_dma** %3, align 8
  %25 = call i32 @devm_free_irq(i32 %20, i32 %23, %struct.owl_dma* %24)
  %26 = load %struct.owl_dma*, %struct.owl_dma** %3, align 8
  %27 = call i32 @owl_dma_free(%struct.owl_dma* %26)
  %28 = load %struct.owl_dma*, %struct.owl_dma** %3, align 8
  %29 = getelementptr inbounds %struct.owl_dma, %struct.owl_dma* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @clk_disable_unprepare(i32 %30)
  ret i32 0
}

declare dso_local %struct.owl_dma* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @of_dma_controller_free(i32) #1

declare dso_local i32 @dma_async_device_unregister(%struct.TYPE_4__*) #1

declare dso_local i32 @dma_writel(%struct.owl_dma*, i32, i32) #1

declare dso_local i32 @devm_free_irq(i32, i32, %struct.owl_dma*) #1

declare dso_local i32 @owl_dma_free(%struct.owl_dma*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
