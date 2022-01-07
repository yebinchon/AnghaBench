; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_imx-dma.c_imxdma_filter_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_imx-dma.c_imxdma_filter_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.imxdma_filter_data = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.imxdma_channel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i8*)* @imxdma_filter_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imxdma_filter_fn(%struct.dma_chan* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.imxdma_filter_data*, align 8
  %7 = alloca %struct.imxdma_channel*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.imxdma_filter_data*
  store %struct.imxdma_filter_data* %9, %struct.imxdma_filter_data** %6, align 8
  %10 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %11 = call %struct.imxdma_channel* @to_imxdma_chan(%struct.dma_chan* %10)
  store %struct.imxdma_channel* %11, %struct.imxdma_channel** %7, align 8
  %12 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %13 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.imxdma_filter_data*, %struct.imxdma_filter_data** %6, align 8
  %18 = getelementptr inbounds %struct.imxdma_filter_data, %struct.imxdma_filter_data* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %16, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

24:                                               ; preds = %2
  %25 = load %struct.imxdma_filter_data*, %struct.imxdma_filter_data** %6, align 8
  %26 = getelementptr inbounds %struct.imxdma_filter_data, %struct.imxdma_filter_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.imxdma_channel*, %struct.imxdma_channel** %7, align 8
  %29 = getelementptr inbounds %struct.imxdma_channel, %struct.imxdma_channel* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %31 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  store i32 1, i32* %3, align 4
  br label %32

32:                                               ; preds = %24, %23
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.imxdma_channel* @to_imxdma_chan(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
