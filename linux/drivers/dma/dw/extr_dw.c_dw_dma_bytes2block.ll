; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw/extr_dw.c_dw_dma_bytes2block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw/extr_dw.c_dw_dma_bytes2block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_dma_chan = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dw_dma_chan*, i64, i32, i64*)* @dw_dma_bytes2block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dw_dma_bytes2block(%struct.dw_dma_chan* %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca %struct.dw_dma_chan*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store %struct.dw_dma_chan* %0, %struct.dw_dma_chan** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = zext i32 %11 to i64
  %13 = lshr i64 %10, %12
  %14 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %5, align 8
  %15 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ugt i64 %13, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %4
  %19 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %5, align 8
  %20 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  %22 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %5, align 8
  %23 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = shl i64 %24, %26
  %28 = load i64*, i64** %8, align 8
  store i64 %27, i64* %28, align 8
  br label %36

29:                                               ; preds = %4
  %30 = load i64, i64* %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = lshr i64 %30, %32
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64*, i64** %8, align 8
  store i64 %34, i64* %35, align 8
  br label %36

36:                                               ; preds = %29, %18
  %37 = load i64, i64* %9, align 8
  ret i64 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
