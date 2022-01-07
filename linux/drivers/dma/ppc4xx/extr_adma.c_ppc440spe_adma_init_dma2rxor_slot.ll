; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_adma_init_dma2rxor_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_adma_init_dma2rxor_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc440spe_adma_desc_slot = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ppc440spe_adma_desc_slot*, i64*, i32)* @ppc440spe_adma_init_dma2rxor_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppc440spe_adma_init_dma2rxor_slot(%struct.ppc440spe_adma_desc_slot* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.ppc440spe_adma_desc_slot*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ppc440spe_adma_desc_slot* %0, %struct.ppc440spe_adma_desc_slot** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %27, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %8
  %13 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %14 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %15 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %14, i32 0, i32 1
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %18 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64*, i64** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @ppc440spe_adma_dma2rxor_prep_src(%struct.ppc440spe_adma_desc_slot* %13, i32* %15, i32 %16, i32 %19, i32 %25)
  br label %27

27:                                               ; preds = %12
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %8

30:                                               ; preds = %8
  ret void
}

declare dso_local i32 @ppc440spe_adma_dma2rxor_prep_src(%struct.ppc440spe_adma_desc_slot*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
