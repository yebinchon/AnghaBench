; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_zynqmp_dma.c_zynqmp_dma_chan_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_zynqmp_dma.c_zynqmp_dma_chan_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zynqmp_dma_chan = type { %struct.TYPE_4__, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zynqmp_dma_chan*)* @zynqmp_dma_chan_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zynqmp_dma_chan_remove(%struct.zynqmp_dma_chan* %0) #0 {
  %2 = alloca %struct.zynqmp_dma_chan*, align 8
  store %struct.zynqmp_dma_chan* %0, %struct.zynqmp_dma_chan** %2, align 8
  %3 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %2, align 8
  %4 = icmp ne %struct.zynqmp_dma_chan* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %30

6:                                                ; preds = %1
  %7 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %2, align 8
  %8 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %6
  %12 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %2, align 8
  %13 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %12, i32 0, i32 3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %2, align 8
  %18 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %2, align 8
  %21 = call i32 @devm_free_irq(i32 %16, i64 %19, %struct.zynqmp_dma_chan* %20)
  br label %22

22:                                               ; preds = %11, %6
  %23 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %2, align 8
  %24 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %23, i32 0, i32 1
  %25 = call i32 @tasklet_kill(i32* %24)
  %26 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %2, align 8
  %27 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @list_del(i32* %28)
  br label %30

30:                                               ; preds = %22, %5
  ret void
}

declare dso_local i32 @devm_free_irq(i32, i64, %struct.zynqmp_dma_chan*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
