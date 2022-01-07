; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_adma_dma2rxor_inc_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_adma_dma2rxor_inc_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc440spe_adma_desc_slot = type { i32 }
%struct.ppc440spe_rxor = type { i64, i32 }

@XOR_MAX_OPS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_rxor*, i32, i32)* @ppc440spe_adma_dma2rxor_inc_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppc440spe_adma_dma2rxor_inc_addr(%struct.ppc440spe_adma_desc_slot* %0, %struct.ppc440spe_rxor* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ppc440spe_adma_desc_slot*, align 8
  %6 = alloca %struct.ppc440spe_rxor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ppc440spe_adma_desc_slot* %0, %struct.ppc440spe_adma_desc_slot** %5, align 8
  store %struct.ppc440spe_rxor* %1, %struct.ppc440spe_rxor** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.ppc440spe_rxor*, %struct.ppc440spe_rxor** %6, align 8
  %10 = getelementptr inbounds %struct.ppc440spe_rxor, %struct.ppc440spe_rxor* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 1
  store i64 %12, i64* %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = sub nsw i32 %14, 1
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %5, align 8
  %19 = load %struct.ppc440spe_rxor*, %struct.ppc440spe_rxor** %6, align 8
  %20 = getelementptr inbounds %struct.ppc440spe_rxor, %struct.ppc440spe_rxor* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @ppc440spe_desc_set_xor_src_cnt(%struct.ppc440spe_adma_desc_slot* %18, i64 %21)
  br label %42

23:                                               ; preds = %4
  %24 = load %struct.ppc440spe_rxor*, %struct.ppc440spe_rxor** %6, align 8
  %25 = getelementptr inbounds %struct.ppc440spe_rxor, %struct.ppc440spe_rxor* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @XOR_MAX_OPS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %5, align 8
  %31 = load %struct.ppc440spe_rxor*, %struct.ppc440spe_rxor** %6, align 8
  %32 = getelementptr inbounds %struct.ppc440spe_rxor, %struct.ppc440spe_rxor* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @ppc440spe_desc_set_xor_src_cnt(%struct.ppc440spe_adma_desc_slot* %30, i64 %33)
  %35 = load %struct.ppc440spe_rxor*, %struct.ppc440spe_rxor** %6, align 8
  %36 = getelementptr inbounds %struct.ppc440spe_rxor, %struct.ppc440spe_rxor* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.ppc440spe_rxor*, %struct.ppc440spe_rxor** %6, align 8
  %38 = getelementptr inbounds %struct.ppc440spe_rxor, %struct.ppc440spe_rxor* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %29, %23
  br label %42

42:                                               ; preds = %41, %17
  ret void
}

declare dso_local i32 @ppc440spe_desc_set_xor_src_cnt(%struct.ppc440spe_adma_desc_slot*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
