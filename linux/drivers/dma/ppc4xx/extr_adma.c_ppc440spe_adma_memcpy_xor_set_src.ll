; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_adma_memcpy_xor_set_src.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_adma_memcpy_xor_set_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc440spe_adma_desc_slot = type { %struct.ppc440spe_adma_desc_slot*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ppc440spe_adma_chan = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ppc440spe_adma_desc_slot*, i32, i32)* @ppc440spe_adma_memcpy_xor_set_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppc440spe_adma_memcpy_xor_set_src(%struct.ppc440spe_adma_desc_slot* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ppc440spe_adma_desc_slot*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ppc440spe_adma_chan*, align 8
  store %struct.ppc440spe_adma_desc_slot* %0, %struct.ppc440spe_adma_desc_slot** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %9 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.ppc440spe_adma_chan* @to_ppc440spe_adma_chan(i32 %11)
  store %struct.ppc440spe_adma_chan* %12, %struct.ppc440spe_adma_chan** %7, align 8
  %13 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %14 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %13, i32 0, i32 0
  %15 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %14, align 8
  store %struct.ppc440spe_adma_desc_slot* %15, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %16 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %17 = call i64 @likely(%struct.ppc440spe_adma_desc_slot* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %21 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %7, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @ppc440spe_desc_set_src_addr(%struct.ppc440spe_adma_desc_slot* %20, %struct.ppc440spe_adma_chan* %21, i32 %22, i32 0, i32 %23)
  br label %25

25:                                               ; preds = %19, %3
  ret void
}

declare dso_local %struct.ppc440spe_adma_chan* @to_ppc440spe_adma_chan(i32) #1

declare dso_local i64 @likely(%struct.ppc440spe_adma_desc_slot*) #1

declare dso_local i32 @ppc440spe_desc_set_src_addr(%struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_chan*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
