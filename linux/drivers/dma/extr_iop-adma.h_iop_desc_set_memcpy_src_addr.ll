; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_iop-adma.h_iop_desc_set_memcpy_src_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_iop-adma.h_iop_desc_set_memcpy_src_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iop_adma_desc_slot = type { %struct.iop3xx_desc_dma* }
%struct.iop3xx_desc_dma = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iop_adma_desc_slot*, i32)* @iop_desc_set_memcpy_src_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iop_desc_set_memcpy_src_addr(%struct.iop_adma_desc_slot* %0, i32 %1) #0 {
  %3 = alloca %struct.iop_adma_desc_slot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iop3xx_desc_dma*, align 8
  store %struct.iop_adma_desc_slot* %0, %struct.iop_adma_desc_slot** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %3, align 8
  %7 = getelementptr inbounds %struct.iop_adma_desc_slot, %struct.iop_adma_desc_slot* %6, i32 0, i32 0
  %8 = load %struct.iop3xx_desc_dma*, %struct.iop3xx_desc_dma** %7, align 8
  store %struct.iop3xx_desc_dma* %8, %struct.iop3xx_desc_dma** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.iop3xx_desc_dma*, %struct.iop3xx_desc_dma** %5, align 8
  %11 = getelementptr inbounds %struct.iop3xx_desc_dma, %struct.iop3xx_desc_dma* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
