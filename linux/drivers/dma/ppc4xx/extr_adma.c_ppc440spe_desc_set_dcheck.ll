; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_desc_set_dcheck.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_desc_set_dcheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc440spe_adma_desc_slot = type { %struct.dma_cdb* }
%struct.dma_cdb = type { i32, i32, i32, i32 }
%struct.ppc440spe_adma_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_chan*, i32*)* @ppc440spe_desc_set_dcheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppc440spe_desc_set_dcheck(%struct.ppc440spe_adma_desc_slot* %0, %struct.ppc440spe_adma_chan* %1, i32* %2) #0 {
  %4 = alloca %struct.ppc440spe_adma_desc_slot*, align 8
  %5 = alloca %struct.ppc440spe_adma_chan*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dma_cdb*, align 8
  store %struct.ppc440spe_adma_desc_slot* %0, %struct.ppc440spe_adma_desc_slot** %4, align 8
  store %struct.ppc440spe_adma_chan* %1, %struct.ppc440spe_adma_chan** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %5, align 8
  %9 = getelementptr inbounds %struct.ppc440spe_adma_chan, %struct.ppc440spe_adma_chan* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %41 [
    i32 129, label %13
    i32 128, label %13
  ]

13:                                               ; preds = %3, %3
  %14 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %15 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %14, i32 0, i32 0
  %16 = load %struct.dma_cdb*, %struct.dma_cdb** %15, align 8
  store %struct.dma_cdb* %16, %struct.dma_cdb** %7, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.dma_cdb*, %struct.dma_cdb** %7, align 8
  %21 = getelementptr inbounds %struct.dma_cdb, %struct.dma_cdb* %20, i32 0, i32 3
  %22 = call i32 @iowrite32(i32 %19, i32* %21)
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.dma_cdb*, %struct.dma_cdb** %7, align 8
  %27 = getelementptr inbounds %struct.dma_cdb, %struct.dma_cdb* %26, i32 0, i32 2
  %28 = call i32 @iowrite32(i32 %25, i32* %27)
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 8
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.dma_cdb*, %struct.dma_cdb** %7, align 8
  %33 = getelementptr inbounds %struct.dma_cdb, %struct.dma_cdb* %32, i32 0, i32 1
  %34 = call i32 @iowrite32(i32 %31, i32* %33)
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 12
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dma_cdb*, %struct.dma_cdb** %7, align 8
  %39 = getelementptr inbounds %struct.dma_cdb, %struct.dma_cdb* %38, i32 0, i32 0
  %40 = call i32 @iowrite32(i32 %37, i32* %39)
  br label %43

41:                                               ; preds = %3
  %42 = call i32 (...) @BUG()
  br label %43

43:                                               ; preds = %41, %13
  ret void
}

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
