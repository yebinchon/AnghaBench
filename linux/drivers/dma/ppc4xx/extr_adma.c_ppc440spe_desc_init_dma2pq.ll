; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_desc_init_dma2pq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_desc_init_dma2pq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc440spe_adma_desc_slot = type { i32, i32, i64, %struct.xor_cb*, i32*, %struct.xor_cb* }
%struct.xor_cb = type { i32 }

@XOR_CBCR_TGT_BIT = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i64 0, align 8
@XOR_CBCR_CBCE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ppc440spe_adma_desc_slot*, i32, i32, i64)* @ppc440spe_desc_init_dma2pq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppc440spe_desc_init_dma2pq(%struct.ppc440spe_adma_desc_slot* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.ppc440spe_adma_desc_slot*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.xor_cb*, align 8
  store %struct.ppc440spe_adma_desc_slot* %0, %struct.ppc440spe_adma_desc_slot** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %10 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %5, align 8
  %11 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %10, i32 0, i32 5
  %12 = load %struct.xor_cb*, %struct.xor_cb** %11, align 8
  store %struct.xor_cb* %12, %struct.xor_cb** %9, align 8
  %13 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %5, align 8
  %14 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %13, i32 0, i32 5
  %15 = load %struct.xor_cb*, %struct.xor_cb** %14, align 8
  %16 = call i32 @memset(%struct.xor_cb* %15, i32 0, i32 4)
  %17 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %5, align 8
  %18 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %17, i32 0, i32 4
  store i32* null, i32** %18, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %5, align 8
  %21 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %5, align 8
  %24 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %5, align 8
  %26 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %25, i32 0, i32 3
  %27 = load %struct.xor_cb*, %struct.xor_cb** %26, align 8
  %28 = call i32 @memset(%struct.xor_cb* %27, i32 0, i32 8)
  %29 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %5, align 8
  %30 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @XOR_CBCR_TGT_BIT, align 4
  %32 = load %struct.xor_cb*, %struct.xor_cb** %9, align 8
  %33 = getelementptr inbounds %struct.xor_cb, %struct.xor_cb* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @DMA_PREP_INTERRUPT, align 8
  %36 = and i64 %34, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %4
  %39 = load i32, i32* @XOR_CBCR_CBCE_BIT, align 4
  %40 = load %struct.xor_cb*, %struct.xor_cb** %9, align 8
  %41 = getelementptr inbounds %struct.xor_cb, %struct.xor_cb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %38, %4
  ret void
}

declare dso_local i32 @memset(%struct.xor_cb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
