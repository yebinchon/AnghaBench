; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mxs-dma.c_mxs_dma_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mxs-dma.c_mxs_dma_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.of_phandle_args = type { i32, i64* }
%struct.of_dma = type { i32, %struct.mxs_dma_engine* }
%struct.mxs_dma_engine = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mxs_dma_filter_param = type { i64 }

@mxs_dma_filter_fn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_chan* (%struct.of_phandle_args*, %struct.of_dma*)* @mxs_dma_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_chan* @mxs_dma_xlate(%struct.of_phandle_args* %0, %struct.of_dma* %1) #0 {
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.of_phandle_args*, align 8
  %5 = alloca %struct.of_dma*, align 8
  %6 = alloca %struct.mxs_dma_engine*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mxs_dma_filter_param, align 8
  store %struct.of_phandle_args* %0, %struct.of_phandle_args** %4, align 8
  store %struct.of_dma* %1, %struct.of_dma** %5, align 8
  %9 = load %struct.of_dma*, %struct.of_dma** %5, align 8
  %10 = getelementptr inbounds %struct.of_dma, %struct.of_dma* %9, i32 0, i32 1
  %11 = load %struct.mxs_dma_engine*, %struct.mxs_dma_engine** %10, align 8
  store %struct.mxs_dma_engine* %11, %struct.mxs_dma_engine** %6, align 8
  %12 = load %struct.mxs_dma_engine*, %struct.mxs_dma_engine** %6, align 8
  %13 = getelementptr inbounds %struct.mxs_dma_engine, %struct.mxs_dma_engine* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %17 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %41

21:                                               ; preds = %2
  %22 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %23 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.mxs_dma_filter_param, %struct.mxs_dma_filter_param* %8, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = getelementptr inbounds %struct.mxs_dma_filter_param, %struct.mxs_dma_filter_param* %8, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.mxs_dma_engine*, %struct.mxs_dma_engine** %6, align 8
  %31 = getelementptr inbounds %struct.mxs_dma_engine, %struct.mxs_dma_engine* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %41

35:                                               ; preds = %21
  %36 = load i32, i32* @mxs_dma_filter_fn, align 4
  %37 = load %struct.of_dma*, %struct.of_dma** %5, align 8
  %38 = getelementptr inbounds %struct.of_dma, %struct.of_dma* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.dma_chan* @__dma_request_channel(i32* %7, i32 %36, %struct.mxs_dma_filter_param* %8, i32 %39)
  store %struct.dma_chan* %40, %struct.dma_chan** %3, align 8
  br label %41

41:                                               ; preds = %35, %34, %20
  %42 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  ret %struct.dma_chan* %42
}

declare dso_local %struct.dma_chan* @__dma_request_channel(i32*, i32, %struct.mxs_dma_filter_param*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
