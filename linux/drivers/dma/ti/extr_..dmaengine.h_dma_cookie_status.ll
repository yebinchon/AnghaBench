; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_..dmaengine.h_dma_cookie_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_..dmaengine.h_dma_cookie_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i8*, i8* }
%struct.dma_tx_state = type { i64, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i8*, %struct.dma_tx_state*)* @dma_cookie_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_cookie_status(%struct.dma_chan* %0, i8* %1, %struct.dma_tx_state* %2) #0 {
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dma_tx_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.dma_tx_state* %2, %struct.dma_tx_state** %6, align 8
  %9 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %10 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %9, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %7, align 8
  %12 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %13 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %8, align 8
  %15 = call i32 (...) @barrier()
  %16 = load %struct.dma_tx_state*, %struct.dma_tx_state** %6, align 8
  %17 = icmp ne %struct.dma_tx_state* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load i8*, i8** %8, align 8
  %20 = load %struct.dma_tx_state*, %struct.dma_tx_state** %6, align 8
  %21 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.dma_tx_state*, %struct.dma_tx_state** %6, align 8
  %24 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.dma_tx_state*, %struct.dma_tx_state** %6, align 8
  %26 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %18, %3
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @dma_async_is_complete(i8* %28, i8* %29, i8* %30)
  ret i32 %31
}

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @dma_async_is_complete(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
