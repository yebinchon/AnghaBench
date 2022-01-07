; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-mdma.c_stm32_mdma_free_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-mdma.c_stm32_mdma_free_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.stm32_mdma_chan = type { i32*, %struct.TYPE_3__, i32*, i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.stm32_mdma_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Freeing channel %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @stm32_mdma_free_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_mdma_free_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.stm32_mdma_chan*, align 8
  %4 = alloca %struct.stm32_mdma_device*, align 8
  %5 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %7 = call %struct.stm32_mdma_chan* @to_stm32_mdma_chan(%struct.dma_chan* %6)
  store %struct.stm32_mdma_chan* %7, %struct.stm32_mdma_chan** %3, align 8
  %8 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %3, align 8
  %9 = call %struct.stm32_mdma_device* @stm32_mdma_get_dev(%struct.stm32_mdma_chan* %8)
  store %struct.stm32_mdma_device* %9, %struct.stm32_mdma_device** %4, align 8
  %10 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %3, align 8
  %11 = call i32 @chan2dev(%struct.stm32_mdma_chan* %10)
  %12 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %3, align 8
  %13 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @dev_dbg(i32 %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %3, align 8
  %17 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %1
  %21 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %3, align 8
  %22 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %3, align 8
  %27 = call i32 @stm32_mdma_stop(%struct.stm32_mdma_chan* %26)
  %28 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %3, align 8
  %29 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %28, i32 0, i32 2
  store i32* null, i32** %29, align 8
  %30 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %3, align 8
  %31 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  br label %35

35:                                               ; preds = %20, %1
  %36 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %4, align 8
  %37 = getelementptr inbounds %struct.stm32_mdma_device, %struct.stm32_mdma_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pm_runtime_put(i32 %39)
  %41 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %42 = call i32 @to_virt_chan(%struct.dma_chan* %41)
  %43 = call i32 @vchan_free_chan_resources(i32 %42)
  %44 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %3, align 8
  %45 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @dmam_pool_destroy(i32* %46)
  %48 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %3, align 8
  %49 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  ret void
}

declare dso_local %struct.stm32_mdma_chan* @to_stm32_mdma_chan(%struct.dma_chan*) #1

declare dso_local %struct.stm32_mdma_device* @stm32_mdma_get_dev(%struct.stm32_mdma_chan*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @chan2dev(%struct.stm32_mdma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @stm32_mdma_stop(%struct.stm32_mdma_chan*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pm_runtime_put(i32) #1

declare dso_local i32 @vchan_free_chan_resources(i32) #1

declare dso_local i32 @to_virt_chan(%struct.dma_chan*) #1

declare dso_local i32 @dmam_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
