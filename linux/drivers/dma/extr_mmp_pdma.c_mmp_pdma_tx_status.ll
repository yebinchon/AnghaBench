; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_pdma.c_mmp_pdma_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_pdma.c_mmp_pdma_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_tx_state = type { i32 }
%struct.mmp_pdma_chan = type { i32 }

@DMA_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i32, %struct.dma_tx_state*)* @mmp_pdma_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmp_pdma_tx_status(%struct.dma_chan* %0, i32 %1, %struct.dma_tx_state* %2) #0 {
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dma_tx_state*, align 8
  %7 = alloca %struct.mmp_pdma_chan*, align 8
  %8 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dma_tx_state* %2, %struct.dma_tx_state** %6, align 8
  %9 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %10 = call %struct.mmp_pdma_chan* @to_mmp_pdma_chan(%struct.dma_chan* %9)
  store %struct.mmp_pdma_chan* %10, %struct.mmp_pdma_chan** %7, align 8
  %11 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.dma_tx_state*, %struct.dma_tx_state** %6, align 8
  %14 = call i32 @dma_cookie_status(%struct.dma_chan* %11, i32 %12, %struct.dma_tx_state* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @DMA_ERROR, align 4
  %17 = icmp ne i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @likely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.dma_tx_state*, %struct.dma_tx_state** %6, align 8
  %23 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %7, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @mmp_pdma_residue(%struct.mmp_pdma_chan* %23, i32 %24)
  %26 = call i32 @dma_set_residue(%struct.dma_tx_state* %22, i32 %25)
  br label %27

27:                                               ; preds = %21, %3
  %28 = load i32, i32* %8, align 4
  ret i32 %28
}

declare dso_local %struct.mmp_pdma_chan* @to_mmp_pdma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dma_cookie_status(%struct.dma_chan*, i32, %struct.dma_tx_state*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @dma_set_residue(%struct.dma_tx_state*, i32) #1

declare dso_local i32 @mmp_pdma_residue(%struct.mmp_pdma_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
