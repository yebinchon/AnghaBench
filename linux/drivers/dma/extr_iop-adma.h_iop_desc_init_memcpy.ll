; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_iop-adma.h_iop_desc_init_memcpy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_iop-adma.h_iop_desc_init_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iop_adma_desc_slot = type { %struct.iop3xx_desc_dma* }
%struct.iop3xx_desc_dma = type { i64, i64, i64 }
%union.anon = type { %struct.iop3xx_dma_desc_ctrl }
%struct.iop3xx_dma_desc_ctrl = type { i32, i32, i64 }

@DMA_PREP_INTERRUPT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iop_adma_desc_slot*, i64)* @iop_desc_init_memcpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iop_desc_init_memcpy(%struct.iop_adma_desc_slot* %0, i64 %1) #0 {
  %3 = alloca %struct.iop_adma_desc_slot*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.iop3xx_desc_dma*, align 8
  %6 = alloca %union.anon, align 8
  store %struct.iop_adma_desc_slot* %0, %struct.iop_adma_desc_slot** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %3, align 8
  %8 = getelementptr inbounds %struct.iop_adma_desc_slot, %struct.iop_adma_desc_slot* %7, i32 0, i32 0
  %9 = load %struct.iop3xx_desc_dma*, %struct.iop3xx_desc_dma** %8, align 8
  store %struct.iop3xx_desc_dma* %9, %struct.iop3xx_desc_dma** %5, align 8
  %10 = bitcast %union.anon* %6 to i64*
  store i64 0, i64* %10, align 8
  %11 = bitcast %union.anon* %6 to %struct.iop3xx_dma_desc_ctrl*
  %12 = getelementptr inbounds %struct.iop3xx_dma_desc_ctrl, %struct.iop3xx_dma_desc_ctrl* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = bitcast %union.anon* %6 to %struct.iop3xx_dma_desc_ctrl*
  %14 = getelementptr inbounds %struct.iop3xx_dma_desc_ctrl, %struct.iop3xx_dma_desc_ctrl* %13, i32 0, i32 1
  store i32 14, i32* %14, align 4
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @DMA_PREP_INTERRUPT, align 8
  %17 = and i64 %15, %16
  %18 = bitcast %union.anon* %6 to %struct.iop3xx_dma_desc_ctrl*
  %19 = getelementptr inbounds %struct.iop3xx_dma_desc_ctrl, %struct.iop3xx_dma_desc_ctrl* %18, i32 0, i32 2
  store i64 %17, i64* %19, align 8
  %20 = bitcast %union.anon* %6 to i64*
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.iop3xx_desc_dma*, %struct.iop3xx_desc_dma** %5, align 8
  %23 = getelementptr inbounds %struct.iop3xx_desc_dma, %struct.iop3xx_desc_dma* %22, i32 0, i32 2
  store i64 %21, i64* %23, align 8
  %24 = load %struct.iop3xx_desc_dma*, %struct.iop3xx_desc_dma** %5, align 8
  %25 = getelementptr inbounds %struct.iop3xx_desc_dma, %struct.iop3xx_desc_dma* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.iop3xx_desc_dma*, %struct.iop3xx_desc_dma** %5, align 8
  %27 = getelementptr inbounds %struct.iop3xx_desc_dma, %struct.iop3xx_desc_dma* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
