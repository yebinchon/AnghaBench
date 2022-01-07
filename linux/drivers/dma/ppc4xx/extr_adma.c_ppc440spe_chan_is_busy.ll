; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_chan_is_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_chan_is_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc440spe_adma_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.xor_regs*, %struct.dma_regs* }
%struct.xor_regs = type { i32 }
%struct.dma_regs = type { i32, i32, i32 }

@XOR_SR_XCP_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ppc440spe_adma_chan*)* @ppc440spe_chan_is_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc440spe_chan_is_busy(%struct.ppc440spe_adma_chan* %0) #0 {
  %2 = alloca %struct.ppc440spe_adma_chan*, align 8
  %3 = alloca %struct.dma_regs*, align 8
  %4 = alloca %struct.xor_regs*, align 8
  %5 = alloca i32, align 4
  store %struct.ppc440spe_adma_chan* %0, %struct.ppc440spe_adma_chan** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %2, align 8
  %7 = getelementptr inbounds %struct.ppc440spe_adma_chan, %struct.ppc440spe_adma_chan* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %48 [
    i32 130, label %11
    i32 129, label %11
    i32 128, label %34
  ]

11:                                               ; preds = %1, %1
  %12 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %2, align 8
  %13 = getelementptr inbounds %struct.ppc440spe_adma_chan, %struct.ppc440spe_adma_chan* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load %struct.dma_regs*, %struct.dma_regs** %15, align 8
  store %struct.dma_regs* %16, %struct.dma_regs** %3, align 8
  %17 = load %struct.dma_regs*, %struct.dma_regs** %3, align 8
  %18 = getelementptr inbounds %struct.dma_regs, %struct.dma_regs* %17, i32 0, i32 2
  %19 = call i32 @ioread16(i32* %18)
  %20 = load %struct.dma_regs*, %struct.dma_regs** %3, align 8
  %21 = getelementptr inbounds %struct.dma_regs, %struct.dma_regs* %20, i32 0, i32 1
  %22 = call i32 @ioread16(i32* %21)
  %23 = icmp ne i32 %19, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %11
  %25 = load %struct.dma_regs*, %struct.dma_regs** %3, align 8
  %26 = getelementptr inbounds %struct.dma_regs, %struct.dma_regs* %25, i32 0, i32 1
  %27 = call i32 @ioread16(i32* %26)
  %28 = load %struct.dma_regs*, %struct.dma_regs** %3, align 8
  %29 = getelementptr inbounds %struct.dma_regs, %struct.dma_regs* %28, i32 0, i32 0
  %30 = call i32 @ioread16(i32* %29)
  %31 = icmp ne i32 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24, %11
  store i32 1, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %24
  br label %48

34:                                               ; preds = %1
  %35 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %2, align 8
  %36 = getelementptr inbounds %struct.ppc440spe_adma_chan, %struct.ppc440spe_adma_chan* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load %struct.xor_regs*, %struct.xor_regs** %38, align 8
  store %struct.xor_regs* %39, %struct.xor_regs** %4, align 8
  %40 = load %struct.xor_regs*, %struct.xor_regs** %4, align 8
  %41 = getelementptr inbounds %struct.xor_regs, %struct.xor_regs* %40, i32 0, i32 0
  %42 = call i32 @ioread32be(i32* %41)
  %43 = load i32, i32* @XOR_SR_XCP_BIT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 0
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %1, %34, %33
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @ioread16(i32*) #1

declare dso_local i32 @ioread32be(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
