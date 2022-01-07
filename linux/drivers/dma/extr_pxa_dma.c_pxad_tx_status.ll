; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pxa_dma.c_pxad_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pxa_dma.c_pxad_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_tx_state = type { i32 }
%struct.pxad_chan = type { i64 }

@DMA_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i64, %struct.dma_tx_state*)* @pxad_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxad_tx_status(%struct.dma_chan* %0, i64 %1, %struct.dma_tx_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dma_tx_state*, align 8
  %8 = alloca %struct.pxad_chan*, align 8
  %9 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.dma_tx_state* %2, %struct.dma_tx_state** %7, align 8
  %10 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %11 = call %struct.pxad_chan* @to_pxad_chan(%struct.dma_chan* %10)
  store %struct.pxad_chan* %11, %struct.pxad_chan** %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.pxad_chan*, %struct.pxad_chan** %8, align 8
  %14 = getelementptr inbounds %struct.pxad_chan, %struct.pxad_chan* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @DMA_ERROR, align 4
  store i32 %18, i32* %4, align 4
  br label %43

19:                                               ; preds = %3
  %20 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %23 = call i32 @dma_cookie_status(%struct.dma_chan* %20, i64 %21, %struct.dma_tx_state* %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %25 = icmp ne %struct.dma_tx_state* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @DMA_ERROR, align 4
  %29 = icmp ne i32 %27, %28
  br label %30

30:                                               ; preds = %26, %19
  %31 = phi i1 [ false, %19 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i64 @likely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %37 = load %struct.pxad_chan*, %struct.pxad_chan** %8, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @pxad_residue(%struct.pxad_chan* %37, i64 %38)
  %40 = call i32 @dma_set_residue(%struct.dma_tx_state* %36, i32 %39)
  br label %41

41:                                               ; preds = %35, %30
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %17
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.pxad_chan* @to_pxad_chan(%struct.dma_chan*) #1

declare dso_local i32 @dma_cookie_status(%struct.dma_chan*, i64, %struct.dma_tx_state*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @dma_set_residue(%struct.dma_tx_state*, i32) #1

declare dso_local i32 @pxad_residue(%struct.pxad_chan*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
