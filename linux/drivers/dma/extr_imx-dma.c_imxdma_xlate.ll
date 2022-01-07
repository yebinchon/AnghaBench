; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_imx-dma.c_imxdma_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_imx-dma.c_imxdma_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.of_phandle_args = type { i32, i32* }
%struct.of_dma = type { %struct.imxdma_engine* }
%struct.imxdma_engine = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.imxdma_filter_data = type { i32, %struct.imxdma_engine* }

@imxdma_filter_fn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_chan* (%struct.of_phandle_args*, %struct.of_dma*)* @imxdma_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_chan* @imxdma_xlate(%struct.of_phandle_args* %0, %struct.of_dma* %1) #0 {
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.of_phandle_args*, align 8
  %5 = alloca %struct.of_dma*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.imxdma_engine*, align 8
  %8 = alloca %struct.imxdma_filter_data, align 8
  store %struct.of_phandle_args* %0, %struct.of_phandle_args** %4, align 8
  store %struct.of_dma* %1, %struct.of_dma** %5, align 8
  %9 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %10 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load %struct.of_dma*, %struct.of_dma** %5, align 8
  %13 = getelementptr inbounds %struct.of_dma, %struct.of_dma* %12, i32 0, i32 0
  %14 = load %struct.imxdma_engine*, %struct.imxdma_engine** %13, align 8
  store %struct.imxdma_engine* %14, %struct.imxdma_engine** %7, align 8
  %15 = getelementptr inbounds %struct.imxdma_filter_data, %struct.imxdma_filter_data* %8, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds %struct.imxdma_filter_data, %struct.imxdma_filter_data* %8, i32 0, i32 1
  %17 = load %struct.imxdma_engine*, %struct.imxdma_engine** %7, align 8
  store %struct.imxdma_engine* %17, %struct.imxdma_engine** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %34

21:                                               ; preds = %2
  %22 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %23 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.imxdma_filter_data, %struct.imxdma_filter_data* %8, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = load %struct.imxdma_engine*, %struct.imxdma_engine** %7, align 8
  %29 = getelementptr inbounds %struct.imxdma_engine, %struct.imxdma_engine* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @imxdma_filter_fn, align 4
  %33 = call %struct.dma_chan* @dma_request_channel(i32 %31, i32 %32, %struct.imxdma_filter_data* %8)
  store %struct.dma_chan* %33, %struct.dma_chan** %3, align 8
  br label %34

34:                                               ; preds = %21, %20
  %35 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  ret %struct.dma_chan* %35
}

declare dso_local %struct.dma_chan* @dma_request_channel(i32, i32, %struct.imxdma_filter_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
