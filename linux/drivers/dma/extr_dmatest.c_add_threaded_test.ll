; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dmatest.c_add_threaded_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dmatest.c_add_threaded_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmatest_info = type { %struct.dmatest_params }
%struct.dmatest_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@test_buf_size = common dso_local global i32 0, align 4
@test_channel = common dso_local global i32 0, align 4
@test_device = common dso_local global i32 0, align 4
@threads_per_chan = common dso_local global i32 0, align 4
@max_channels = common dso_local global i32 0, align 4
@iterations = common dso_local global i32 0, align 4
@xor_sources = common dso_local global i32 0, align 4
@pq_sources = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@noverify = common dso_local global i32 0, align 4
@norandom = common dso_local global i32 0, align 4
@alignment = common dso_local global i32 0, align 4
@transfer_size = common dso_local global i32 0, align 4
@polled = common dso_local global i32 0, align 4
@DMA_MEMCPY = common dso_local global i32 0, align 4
@DMA_MEMSET = common dso_local global i32 0, align 4
@DMA_XOR = common dso_local global i32 0, align 4
@DMA_PQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmatest_info*)* @add_threaded_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_threaded_test(%struct.dmatest_info* %0) #0 {
  %2 = alloca %struct.dmatest_info*, align 8
  %3 = alloca %struct.dmatest_params*, align 8
  store %struct.dmatest_info* %0, %struct.dmatest_info** %2, align 8
  %4 = load %struct.dmatest_info*, %struct.dmatest_info** %2, align 8
  %5 = getelementptr inbounds %struct.dmatest_info, %struct.dmatest_info* %4, i32 0, i32 0
  store %struct.dmatest_params* %5, %struct.dmatest_params** %3, align 8
  %6 = load i32, i32* @test_buf_size, align 4
  %7 = load %struct.dmatest_params*, %struct.dmatest_params** %3, align 8
  %8 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %7, i32 0, i32 13
  store i32 %6, i32* %8, align 4
  %9 = load %struct.dmatest_params*, %struct.dmatest_params** %3, align 8
  %10 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %9, i32 0, i32 12
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @test_channel, align 4
  %13 = call i32 @strim(i32 %12)
  %14 = call i32 @strlcpy(i32 %11, i32 %13, i32 4)
  %15 = load %struct.dmatest_params*, %struct.dmatest_params** %3, align 8
  %16 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %15, i32 0, i32 11
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @test_device, align 4
  %19 = call i32 @strim(i32 %18)
  %20 = call i32 @strlcpy(i32 %17, i32 %19, i32 4)
  %21 = load i32, i32* @threads_per_chan, align 4
  %22 = load %struct.dmatest_params*, %struct.dmatest_params** %3, align 8
  %23 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %22, i32 0, i32 10
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @max_channels, align 4
  %25 = load %struct.dmatest_params*, %struct.dmatest_params** %3, align 8
  %26 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %25, i32 0, i32 9
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @iterations, align 4
  %28 = load %struct.dmatest_params*, %struct.dmatest_params** %3, align 8
  %29 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %28, i32 0, i32 8
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @xor_sources, align 4
  %31 = load %struct.dmatest_params*, %struct.dmatest_params** %3, align 8
  %32 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @pq_sources, align 4
  %34 = load %struct.dmatest_params*, %struct.dmatest_params** %3, align 8
  %35 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @timeout, align 4
  %37 = load %struct.dmatest_params*, %struct.dmatest_params** %3, align 8
  %38 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @noverify, align 4
  %40 = load %struct.dmatest_params*, %struct.dmatest_params** %3, align 8
  %41 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @norandom, align 4
  %43 = load %struct.dmatest_params*, %struct.dmatest_params** %3, align 8
  %44 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @alignment, align 4
  %46 = load %struct.dmatest_params*, %struct.dmatest_params** %3, align 8
  %47 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @transfer_size, align 4
  %49 = load %struct.dmatest_params*, %struct.dmatest_params** %3, align 8
  %50 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @polled, align 4
  %52 = load %struct.dmatest_params*, %struct.dmatest_params** %3, align 8
  %53 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.dmatest_info*, %struct.dmatest_info** %2, align 8
  %55 = load i32, i32* @DMA_MEMCPY, align 4
  %56 = call i32 @request_channels(%struct.dmatest_info* %54, i32 %55)
  %57 = load %struct.dmatest_info*, %struct.dmatest_info** %2, align 8
  %58 = load i32, i32* @DMA_MEMSET, align 4
  %59 = call i32 @request_channels(%struct.dmatest_info* %57, i32 %58)
  %60 = load %struct.dmatest_info*, %struct.dmatest_info** %2, align 8
  %61 = load i32, i32* @DMA_XOR, align 4
  %62 = call i32 @request_channels(%struct.dmatest_info* %60, i32 %61)
  %63 = load %struct.dmatest_info*, %struct.dmatest_info** %2, align 8
  %64 = load i32, i32* @DMA_PQ, align 4
  %65 = call i32 @request_channels(%struct.dmatest_info* %63, i32 %64)
  ret void
}

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @strim(i32) #1

declare dso_local i32 @request_channels(%struct.dmatest_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
