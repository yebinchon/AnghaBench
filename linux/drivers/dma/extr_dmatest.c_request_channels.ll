; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dmatest.c_request_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dmatest.c_request_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmatest_info = type { i64, %struct.dmatest_params }
%struct.dmatest_params = type { i64 }
%struct.dma_chan = type { i32 }

@filter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmatest_info*, i32)* @request_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @request_channels(%struct.dmatest_info* %0, i32 %1) #0 {
  %3 = alloca %struct.dmatest_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dmatest_params*, align 8
  %7 = alloca %struct.dma_chan*, align 8
  store %struct.dmatest_info* %0, %struct.dmatest_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @dma_cap_zero(i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @dma_cap_set(i32 %10, i32 %11)
  br label %13

13:                                               ; preds = %46, %2
  %14 = load %struct.dmatest_info*, %struct.dmatest_info** %3, align 8
  %15 = getelementptr inbounds %struct.dmatest_info, %struct.dmatest_info* %14, i32 0, i32 1
  store %struct.dmatest_params* %15, %struct.dmatest_params** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @filter, align 4
  %18 = load %struct.dmatest_params*, %struct.dmatest_params** %6, align 8
  %19 = call %struct.dma_chan* @dma_request_channel(i32 %16, i32 %17, %struct.dmatest_params* %18)
  store %struct.dma_chan* %19, %struct.dma_chan** %7, align 8
  %20 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %21 = icmp ne %struct.dma_chan* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %13
  %23 = load %struct.dmatest_info*, %struct.dmatest_info** %3, align 8
  %24 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %25 = call i64 @dmatest_add_channel(%struct.dmatest_info* %23, %struct.dma_chan* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %29 = call i32 @dma_release_channel(%struct.dma_chan* %28)
  br label %47

30:                                               ; preds = %22
  br label %32

31:                                               ; preds = %13
  br label %47

32:                                               ; preds = %30
  %33 = load %struct.dmatest_params*, %struct.dmatest_params** %6, align 8
  %34 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.dmatest_info*, %struct.dmatest_info** %3, align 8
  %39 = getelementptr inbounds %struct.dmatest_info, %struct.dmatest_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.dmatest_params*, %struct.dmatest_params** %6, align 8
  %42 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sge i64 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %47

46:                                               ; preds = %37, %32
  br label %13

47:                                               ; preds = %45, %31, %27
  ret void
}

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local %struct.dma_chan* @dma_request_channel(i32, i32, %struct.dmatest_params*) #1

declare dso_local i64 @dmatest_add_channel(%struct.dmatest_info*, %struct.dma_chan*) #1

declare dso_local i32 @dma_release_channel(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
