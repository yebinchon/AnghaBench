; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_coh901318.c_coh901318_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_coh901318.c_coh901318_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_tx_state = type { i32 }
%struct.coh901318_chan = type { i64 }

@DMA_COMPLETE = common dso_local global i32 0, align 4
@DMA_IN_PROGRESS = common dso_local global i32 0, align 4
@DMA_PAUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i32, %struct.dma_tx_state*)* @coh901318_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coh901318_tx_status(%struct.dma_chan* %0, i32 %1, %struct.dma_tx_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_tx_state*, align 8
  %8 = alloca %struct.coh901318_chan*, align 8
  %9 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dma_tx_state* %2, %struct.dma_tx_state** %7, align 8
  %10 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %11 = call %struct.coh901318_chan* @to_coh901318_chan(%struct.dma_chan* %10)
  store %struct.coh901318_chan* %11, %struct.coh901318_chan** %8, align 8
  %12 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %15 = call i32 @dma_cookie_status(%struct.dma_chan* %12, i32 %13, %struct.dma_tx_state* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @DMA_COMPLETE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %21 = icmp ne %struct.dma_tx_state* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19, %3
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %41

24:                                               ; preds = %19
  %25 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %26 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %27 = call i32 @coh901318_get_bytes_left(%struct.dma_chan* %26)
  %28 = call i32 @dma_set_residue(%struct.dma_tx_state* %25, i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @DMA_IN_PROGRESS, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = load %struct.coh901318_chan*, %struct.coh901318_chan** %8, align 8
  %34 = getelementptr inbounds %struct.coh901318_chan, %struct.coh901318_chan* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @DMA_PAUSED, align 4
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %37, %32, %24
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %39, %22
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.coh901318_chan* @to_coh901318_chan(%struct.dma_chan*) #1

declare dso_local i32 @dma_cookie_status(%struct.dma_chan*, i32, %struct.dma_tx_state*) #1

declare dso_local i32 @dma_set_residue(%struct.dma_tx_state*, i32) #1

declare dso_local i32 @coh901318_get_bytes_left(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
