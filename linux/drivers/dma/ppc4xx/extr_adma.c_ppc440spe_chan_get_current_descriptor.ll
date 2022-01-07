; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_chan_get_current_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_chan_get_current_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc440spe_adma_chan = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.xor_regs*, %struct.dma_regs* }
%struct.xor_regs = type { i32 }
%struct.dma_regs = type { i32 }

@DMA_CDB_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ppc440spe_adma_chan*)* @ppc440spe_chan_get_current_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc440spe_chan_get_current_descriptor(%struct.ppc440spe_adma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ppc440spe_adma_chan*, align 8
  %4 = alloca %struct.dma_regs*, align 8
  %5 = alloca %struct.xor_regs*, align 8
  store %struct.ppc440spe_adma_chan* %0, %struct.ppc440spe_adma_chan** %3, align 8
  %6 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %3, align 8
  %7 = getelementptr inbounds %struct.ppc440spe_adma_chan, %struct.ppc440spe_adma_chan* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

15:                                               ; preds = %1
  %16 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %3, align 8
  %17 = getelementptr inbounds %struct.ppc440spe_adma_chan, %struct.ppc440spe_adma_chan* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %42 [
    i32 130, label %21
    i32 129, label %21
    i32 128, label %33
  ]

21:                                               ; preds = %15, %15
  %22 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %3, align 8
  %23 = getelementptr inbounds %struct.ppc440spe_adma_chan, %struct.ppc440spe_adma_chan* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load %struct.dma_regs*, %struct.dma_regs** %25, align 8
  store %struct.dma_regs* %26, %struct.dma_regs** %4, align 8
  %27 = load %struct.dma_regs*, %struct.dma_regs** %4, align 8
  %28 = getelementptr inbounds %struct.dma_regs, %struct.dma_regs* %27, i32 0, i32 0
  %29 = call i32 @ioread32(i32* %28)
  %30 = load i32, i32* @DMA_CDB_MSK, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  store i32 %32, i32* %2, align 4
  br label %43

33:                                               ; preds = %15
  %34 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %3, align 8
  %35 = getelementptr inbounds %struct.ppc440spe_adma_chan, %struct.ppc440spe_adma_chan* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load %struct.xor_regs*, %struct.xor_regs** %37, align 8
  store %struct.xor_regs* %38, %struct.xor_regs** %5, align 8
  %39 = load %struct.xor_regs*, %struct.xor_regs** %5, align 8
  %40 = getelementptr inbounds %struct.xor_regs, %struct.xor_regs* %39, i32 0, i32 0
  %41 = call i32 @ioread32be(i32* %40)
  store i32 %41, i32* %2, align 4
  br label %43

42:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %33, %21, %14
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @ioread32be(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
