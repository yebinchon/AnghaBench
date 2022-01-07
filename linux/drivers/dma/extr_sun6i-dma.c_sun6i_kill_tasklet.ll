; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sun6i-dma.c_sun6i_kill_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sun6i-dma.c_sun6i_kill_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun6i_dma_dev = type { i32, i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sun6i_dma_dev*)* @sun6i_kill_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun6i_kill_tasklet(%struct.sun6i_dma_dev* %0) #0 {
  %2 = alloca %struct.sun6i_dma_dev*, align 8
  store %struct.sun6i_dma_dev* %0, %struct.sun6i_dma_dev** %2, align 8
  %3 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %2, align 8
  %4 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %3, i32 0, i32 4
  %5 = load i64, i64* %4, align 8
  %6 = call i64 @DMA_IRQ_EN(i32 0)
  %7 = add nsw i64 %5, %6
  %8 = call i32 @writel(i32 0, i64 %7)
  %9 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %2, align 8
  %10 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = call i64 @DMA_IRQ_EN(i32 1)
  %13 = add nsw i64 %11, %12
  %14 = call i32 @writel(i32 0, i64 %13)
  %15 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %2, align 8
  %16 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %15, i32 0, i32 3
  %17 = call i32 @atomic_inc(i32* %16)
  %18 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %2, align 8
  %19 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %2, align 8
  %23 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %2, align 8
  %26 = call i32 @devm_free_irq(i32 %21, i32 %24, %struct.sun6i_dma_dev* %25)
  %27 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %2, align 8
  %28 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %27, i32 0, i32 0
  %29 = call i32 @tasklet_kill(i32* %28)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @DMA_IRQ_EN(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @devm_free_irq(i32, i32, %struct.sun6i_dma_dev*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
