; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_adma_run_tx_complete_actions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_adma_run_tx_complete_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc440spe_adma_desc_slot = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ppc440spe_adma_chan = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_chan*, i64)* @ppc440spe_adma_run_tx_complete_actions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ppc440spe_adma_run_tx_complete_actions(%struct.ppc440spe_adma_desc_slot* %0, %struct.ppc440spe_adma_chan* %1, i64 %2) #0 {
  %4 = alloca %struct.ppc440spe_adma_desc_slot*, align 8
  %5 = alloca %struct.ppc440spe_adma_chan*, align 8
  %6 = alloca i64, align 8
  store %struct.ppc440spe_adma_desc_slot* %0, %struct.ppc440spe_adma_desc_slot** %4, align 8
  store %struct.ppc440spe_adma_chan* %1, %struct.ppc440spe_adma_chan** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %8 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %15 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %3
  %20 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %21 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %6, align 8
  %24 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %25 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %28 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %27, i32 0, i32 0
  %29 = call i32 @dma_descriptor_unmap(%struct.TYPE_4__* %28)
  %30 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %31 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %30, i32 0, i32 0
  %32 = call i32 @dmaengine_desc_get_callback_invoke(%struct.TYPE_4__* %31, i32* null)
  br label %33

33:                                               ; preds = %19, %3
  %34 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %35 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %34, i32 0, i32 0
  %36 = call i32 @dma_run_dependencies(%struct.TYPE_4__* %35)
  %37 = load i64, i64* %6, align 8
  ret i64 %37
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dma_descriptor_unmap(%struct.TYPE_4__*) #1

declare dso_local i32 @dmaengine_desc_get_callback_invoke(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @dma_run_dependencies(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
