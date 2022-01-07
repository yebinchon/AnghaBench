; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_desc_set_byte_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_desc_set_byte_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc440spe_adma_desc_slot = type { %struct.xor_cb* }
%struct.xor_cb = type { i32, i32 }
%struct.ppc440spe_adma_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dma_cdb = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_chan*, i32)* @ppc440spe_desc_set_byte_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppc440spe_desc_set_byte_count(%struct.ppc440spe_adma_desc_slot* %0, %struct.ppc440spe_adma_chan* %1, i32 %2) #0 {
  %4 = alloca %struct.ppc440spe_adma_desc_slot*, align 8
  %5 = alloca %struct.ppc440spe_adma_chan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_cdb*, align 8
  %8 = alloca %struct.xor_cb*, align 8
  store %struct.ppc440spe_adma_desc_slot* %0, %struct.ppc440spe_adma_desc_slot** %4, align 8
  store %struct.ppc440spe_adma_chan* %1, %struct.ppc440spe_adma_chan** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %5, align 8
  %10 = getelementptr inbounds %struct.ppc440spe_adma_chan, %struct.ppc440spe_adma_chan* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %30 [
    i32 130, label %14
    i32 129, label %14
    i32 128, label %23
  ]

14:                                               ; preds = %3, %3
  %15 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %16 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %15, i32 0, i32 0
  %17 = load %struct.xor_cb*, %struct.xor_cb** %16, align 8
  %18 = bitcast %struct.xor_cb* %17 to %struct.dma_cdb*
  store %struct.dma_cdb* %18, %struct.dma_cdb** %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @cpu_to_le32(i32 %19)
  %21 = load %struct.dma_cdb*, %struct.dma_cdb** %7, align 8
  %22 = getelementptr inbounds %struct.dma_cdb, %struct.dma_cdb* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  br label %30

23:                                               ; preds = %3
  %24 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %25 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %24, i32 0, i32 0
  %26 = load %struct.xor_cb*, %struct.xor_cb** %25, align 8
  store %struct.xor_cb* %26, %struct.xor_cb** %8, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.xor_cb*, %struct.xor_cb** %8, align 8
  %29 = getelementptr inbounds %struct.xor_cb, %struct.xor_cb* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %3, %23, %14
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
