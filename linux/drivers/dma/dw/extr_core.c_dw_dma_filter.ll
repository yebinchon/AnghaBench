; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw/extr_core.c_dw_dma_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw/extr_core.c_dw_dma_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.dw_dma_chan = type { i32 }
%struct.dw_dma_slave = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dw_dma_filter(%struct.dma_chan* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dw_dma_chan*, align 8
  %7 = alloca %struct.dw_dma_slave*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %9 = call %struct.dw_dma_chan* @to_dw_dma_chan(%struct.dma_chan* %8)
  store %struct.dw_dma_chan* %9, %struct.dw_dma_chan** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.dw_dma_slave*
  store %struct.dw_dma_slave* %11, %struct.dw_dma_slave** %7, align 8
  %12 = load %struct.dw_dma_slave*, %struct.dw_dma_slave** %7, align 8
  %13 = getelementptr inbounds %struct.dw_dma_slave, %struct.dw_dma_slave* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %16 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %14, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

22:                                               ; preds = %2
  %23 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %6, align 8
  %24 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %23, i32 0, i32 0
  %25 = load %struct.dw_dma_slave*, %struct.dw_dma_slave** %7, align 8
  %26 = call i32 @memcpy(i32* %24, %struct.dw_dma_slave* %25, i32 8)
  store i32 1, i32* %3, align 4
  br label %27

27:                                               ; preds = %22, %21
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.dw_dma_chan* @to_dw_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @memcpy(i32*, %struct.dw_dma_slave*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
