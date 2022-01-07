; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_chan_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_chan_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc440spe_adma_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.xor_regs* }
%struct.xor_regs = type { i32 }

@XOR_CRSR_64BA_BIT = common dso_local global i32 0, align 4
@XOR_CRSR_XAE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ppc440spe_adma_chan*)* @ppc440spe_chan_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppc440spe_chan_run(%struct.ppc440spe_adma_chan* %0) #0 {
  %2 = alloca %struct.ppc440spe_adma_chan*, align 8
  %3 = alloca %struct.xor_regs*, align 8
  store %struct.ppc440spe_adma_chan* %0, %struct.ppc440spe_adma_chan** %2, align 8
  %4 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %2, align 8
  %5 = getelementptr inbounds %struct.ppc440spe_adma_chan, %struct.ppc440spe_adma_chan* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %22 [
    i32 130, label %9
    i32 129, label %9
    i32 128, label %10
  ]

9:                                                ; preds = %1, %1
  br label %22

10:                                               ; preds = %1
  %11 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %2, align 8
  %12 = getelementptr inbounds %struct.ppc440spe_adma_chan, %struct.ppc440spe_adma_chan* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.xor_regs*, %struct.xor_regs** %14, align 8
  store %struct.xor_regs* %15, %struct.xor_regs** %3, align 8
  %16 = load i32, i32* @XOR_CRSR_64BA_BIT, align 4
  %17 = load i32, i32* @XOR_CRSR_XAE_BIT, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.xor_regs*, %struct.xor_regs** %3, align 8
  %20 = getelementptr inbounds %struct.xor_regs, %struct.xor_regs* %19, i32 0, i32 0
  %21 = call i32 @iowrite32be(i32 %18, i32* %20)
  br label %22

22:                                               ; preds = %1, %10, %9
  ret void
}

declare dso_local i32 @iowrite32be(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
