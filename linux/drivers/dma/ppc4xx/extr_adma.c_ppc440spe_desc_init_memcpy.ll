; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_desc_init_memcpy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_desc_init_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc440spe_adma_desc_slot = type { i32, i32, i32, i32*, %struct.dma_cdb* }
%struct.dma_cdb = type { i32 }

@DMA_PREP_INTERRUPT = common dso_local global i64 0, align 8
@PPC440SPE_DESC_INT = common dso_local global i32 0, align 4
@DMA_CDB_OPC_MV_SG1_SG2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ppc440spe_adma_desc_slot*, i64)* @ppc440spe_desc_init_memcpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppc440spe_desc_init_memcpy(%struct.ppc440spe_adma_desc_slot* %0, i64 %1) #0 {
  %3 = alloca %struct.ppc440spe_adma_desc_slot*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dma_cdb*, align 8
  store %struct.ppc440spe_adma_desc_slot* %0, %struct.ppc440spe_adma_desc_slot** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %3, align 8
  %7 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %6, i32 0, i32 4
  %8 = load %struct.dma_cdb*, %struct.dma_cdb** %7, align 8
  store %struct.dma_cdb* %8, %struct.dma_cdb** %5, align 8
  %9 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %3, align 8
  %10 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %9, i32 0, i32 4
  %11 = load %struct.dma_cdb*, %struct.dma_cdb** %10, align 8
  %12 = call i32 @memset(%struct.dma_cdb* %11, i32 0, i32 4)
  %13 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %3, align 8
  %14 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %13, i32 0, i32 3
  store i32* null, i32** %14, align 8
  %15 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %3, align 8
  %16 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %3, align 8
  %18 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %17, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @DMA_PREP_INTERRUPT, align 8
  %21 = and i64 %19, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load i32, i32* @PPC440SPE_DESC_INT, align 4
  %25 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %3, align 8
  %26 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %25, i32 0, i32 2
  %27 = call i32 @set_bit(i32 %24, i32* %26)
  br label %33

28:                                               ; preds = %2
  %29 = load i32, i32* @PPC440SPE_DESC_INT, align 4
  %30 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %3, align 8
  %31 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %30, i32 0, i32 2
  %32 = call i32 @clear_bit(i32 %29, i32* %31)
  br label %33

33:                                               ; preds = %28, %23
  %34 = load i32, i32* @DMA_CDB_OPC_MV_SG1_SG2, align 4
  %35 = load %struct.dma_cdb*, %struct.dma_cdb** %5, align 8
  %36 = getelementptr inbounds %struct.dma_cdb, %struct.dma_cdb* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  ret void
}

declare dso_local i32 @memset(%struct.dma_cdb*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
