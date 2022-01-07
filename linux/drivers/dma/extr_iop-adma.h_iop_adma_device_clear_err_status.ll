; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_iop-adma.h_iop_adma_device_clear_err_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_iop-adma.h_iop_adma_device_clear_err_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iop_adma_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iop_adma_chan*)* @iop_adma_device_clear_err_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iop_adma_device_clear_err_status(%struct.iop_adma_chan* %0) #0 {
  %2 = alloca %struct.iop_adma_chan*, align 8
  %3 = alloca i32, align 4
  store %struct.iop_adma_chan* %0, %struct.iop_adma_chan** %2, align 8
  %4 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %2, align 8
  %5 = call i32 @DMA_CSR(%struct.iop_adma_chan* %4)
  %6 = call i32 @__raw_readl(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %2, align 8
  %8 = getelementptr inbounds %struct.iop_adma_chan, %struct.iop_adma_chan* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %18 [
    i32 129, label %12
    i32 128, label %12
    i32 130, label %15
  ]

12:                                               ; preds = %1, %1
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 46
  store i32 %14, i32* %3, align 4
  br label %20

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, 32
  store i32 %17, i32* %3, align 4
  br label %20

18:                                               ; preds = %1
  %19 = call i32 (...) @BUG()
  br label %20

20:                                               ; preds = %18, %15, %12
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %2, align 8
  %23 = call i32 @DMA_CSR(%struct.iop_adma_chan* %22)
  %24 = call i32 @__raw_writel(i32 %21, i32 %23)
  ret void
}

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @DMA_CSR(%struct.iop_adma_chan*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
