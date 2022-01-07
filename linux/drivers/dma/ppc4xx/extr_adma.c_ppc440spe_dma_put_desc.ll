; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_dma_put_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_dma_put_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc440spe_adma_desc_slot = type { i32, i32, i32 }
%struct.ppc440spe_adma_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.dma_regs* }
%struct.dma_regs = type { i32 }

@PPC440SPE_DESC_INT = common dso_local global i32 0, align 4
@DMA_CDB_NO_INT = common dso_local global i32 0, align 4
@chan_last_sub = common dso_local global %struct.ppc440spe_adma_desc_slot** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_desc_slot*)* @ppc440spe_dma_put_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppc440spe_dma_put_desc(%struct.ppc440spe_adma_chan* %0, %struct.ppc440spe_adma_desc_slot* %1) #0 {
  %3 = alloca %struct.ppc440spe_adma_chan*, align 8
  %4 = alloca %struct.ppc440spe_adma_desc_slot*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dma_regs*, align 8
  store %struct.ppc440spe_adma_chan* %0, %struct.ppc440spe_adma_chan** %3, align 8
  store %struct.ppc440spe_adma_desc_slot* %1, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %7 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %3, align 8
  %8 = getelementptr inbounds %struct.ppc440spe_adma_chan, %struct.ppc440spe_adma_chan* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.dma_regs*, %struct.dma_regs** %10, align 8
  store %struct.dma_regs* %11, %struct.dma_regs** %6, align 8
  %12 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %13 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @PPC440SPE_DESC_INT, align 4
  %16 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %17 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %16, i32 0, i32 1
  %18 = call i32 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @DMA_CDB_NO_INT, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %20, %2
  %25 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %26 = load %struct.ppc440spe_adma_desc_slot**, %struct.ppc440spe_adma_desc_slot*** @chan_last_sub, align 8
  %27 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %3, align 8
  %28 = getelementptr inbounds %struct.ppc440spe_adma_chan, %struct.ppc440spe_adma_chan* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %26, i64 %31
  store %struct.ppc440spe_adma_desc_slot* %25, %struct.ppc440spe_adma_desc_slot** %32, align 8
  %33 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %3, align 8
  %34 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %35 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @print_cb(%struct.ppc440spe_adma_chan* %33, i32 %36)
  %38 = call i32 @ADMA_LL_DBG(i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.dma_regs*, %struct.dma_regs** %6, align 8
  %41 = getelementptr inbounds %struct.dma_regs, %struct.dma_regs* %40, i32 0, i32 0
  %42 = call i32 @iowrite32(i32 %39, i32* %41)
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ADMA_LL_DBG(i32) #1

declare dso_local i32 @print_cb(%struct.ppc440spe_adma_chan*, i32) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
