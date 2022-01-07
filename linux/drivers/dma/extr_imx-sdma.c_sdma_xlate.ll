; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.of_phandle_args = type { i32, i32* }
%struct.of_dma = type { i32, %struct.sdma_engine* }
%struct.sdma_engine = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.imx_dma_data = type { i64, i32, i32, i32 }

@sdma_filter_fn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_chan* (%struct.of_phandle_args*, %struct.of_dma*)* @sdma_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_chan* @sdma_xlate(%struct.of_phandle_args* %0, %struct.of_dma* %1) #0 {
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.of_phandle_args*, align 8
  %5 = alloca %struct.of_dma*, align 8
  %6 = alloca %struct.sdma_engine*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.imx_dma_data, align 8
  store %struct.of_phandle_args* %0, %struct.of_phandle_args** %4, align 8
  store %struct.of_dma* %1, %struct.of_dma** %5, align 8
  %9 = load %struct.of_dma*, %struct.of_dma** %5, align 8
  %10 = getelementptr inbounds %struct.of_dma, %struct.of_dma* %9, i32 0, i32 1
  %11 = load %struct.sdma_engine*, %struct.sdma_engine** %10, align 8
  store %struct.sdma_engine* %11, %struct.sdma_engine** %6, align 8
  %12 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %13 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %17 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 3
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %46

21:                                               ; preds = %2
  %22 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %23 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.imx_dma_data, %struct.imx_dma_data* %8, i32 0, i32 3
  store i32 %26, i32* %27, align 8
  %28 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %29 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.imx_dma_data, %struct.imx_dma_data* %8, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %35 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.imx_dma_data, %struct.imx_dma_data* %8, i32 0, i32 1
  store i32 %38, i32* %39, align 8
  %40 = getelementptr inbounds %struct.imx_dma_data, %struct.imx_dma_data* %8, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* @sdma_filter_fn, align 4
  %42 = load %struct.of_dma*, %struct.of_dma** %5, align 8
  %43 = getelementptr inbounds %struct.of_dma, %struct.of_dma* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call %struct.dma_chan* @__dma_request_channel(i32* %7, i32 %41, %struct.imx_dma_data* %8, i32 %44)
  store %struct.dma_chan* %45, %struct.dma_chan** %3, align 8
  br label %46

46:                                               ; preds = %21, %20
  %47 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  ret %struct.dma_chan* %47
}

declare dso_local %struct.dma_chan* @__dma_request_channel(i32*, i32, %struct.imx_dma_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
