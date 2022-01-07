; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_d40_prep_slave_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_d40_prep_slave_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }
%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, %struct.scatterlist*, i32, i32, i64, i8*)* @d40_prep_slave_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @d40_prep_slave_sg(%struct.dma_chan* %0, %struct.scatterlist* %1, i32 %2, i32 %3, i64 %4, i8* %5) #0 {
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %8, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  %14 = load i32, i32* %11, align 4
  %15 = call i32 @is_slave_direction(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %6
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %26

18:                                               ; preds = %6
  %19 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %20 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %21 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i64, i64* %12, align 8
  %25 = call %struct.dma_async_tx_descriptor* @d40_prep_sg(%struct.dma_chan* %19, %struct.scatterlist* %20, %struct.scatterlist* %21, i32 %22, i32 %23, i64 %24)
  store %struct.dma_async_tx_descriptor* %25, %struct.dma_async_tx_descriptor** %7, align 8
  br label %26

26:                                               ; preds = %18, %17
  %27 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  ret %struct.dma_async_tx_descriptor* %27
}

declare dso_local i32 @is_slave_direction(i32) #1

declare dso_local %struct.dma_async_tx_descriptor* @d40_prep_sg(%struct.dma_chan*, %struct.scatterlist*, %struct.scatterlist*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
