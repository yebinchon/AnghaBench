; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_of-dma.c_of_dma_simple_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_of-dma.c_of_dma_simple_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.of_phandle_args = type { i32, i32, i32* }
%struct.of_dma = type { %struct.of_dma_filter_info* }
%struct.of_dma_filter_info = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dma_chan* @of_dma_simple_xlate(%struct.of_phandle_args* %0, %struct.of_dma* %1) #0 {
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.of_phandle_args*, align 8
  %5 = alloca %struct.of_dma*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.of_dma_filter_info*, align 8
  store %struct.of_phandle_args* %0, %struct.of_phandle_args** %4, align 8
  store %struct.of_dma* %1, %struct.of_dma** %5, align 8
  %8 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %9 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load %struct.of_dma*, %struct.of_dma** %5, align 8
  %12 = getelementptr inbounds %struct.of_dma, %struct.of_dma* %11, i32 0, i32 0
  %13 = load %struct.of_dma_filter_info*, %struct.of_dma_filter_info** %12, align 8
  store %struct.of_dma_filter_info* %13, %struct.of_dma_filter_info** %7, align 8
  %14 = load %struct.of_dma_filter_info*, %struct.of_dma_filter_info** %7, align 8
  %15 = icmp ne %struct.of_dma_filter_info* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.of_dma_filter_info*, %struct.of_dma_filter_info** %7, align 8
  %18 = getelementptr inbounds %struct.of_dma_filter_info, %struct.of_dma_filter_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %2
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %40

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %40

26:                                               ; preds = %22
  %27 = load %struct.of_dma_filter_info*, %struct.of_dma_filter_info** %7, align 8
  %28 = getelementptr inbounds %struct.of_dma_filter_info, %struct.of_dma_filter_info* %27, i32 0, i32 1
  %29 = load %struct.of_dma_filter_info*, %struct.of_dma_filter_info** %7, align 8
  %30 = getelementptr inbounds %struct.of_dma_filter_info, %struct.of_dma_filter_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %33 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %37 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.dma_chan* @__dma_request_channel(i32* %28, i32 %31, i32* %35, i32 %38)
  store %struct.dma_chan* %39, %struct.dma_chan** %3, align 8
  br label %40

40:                                               ; preds = %26, %25, %21
  %41 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  ret %struct.dma_chan* %41
}

declare dso_local %struct.dma_chan* @__dma_request_channel(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
