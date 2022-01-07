; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dmatest.c_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dmatest.c_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dmatest_params = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i8*)* @filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter(%struct.dma_chan* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dmatest_params*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.dmatest_params*
  store %struct.dmatest_params* %8, %struct.dmatest_params** %6, align 8
  %9 = load %struct.dmatest_params*, %struct.dmatest_params** %6, align 8
  %10 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %11 = call i32 @dmatest_match_channel(%struct.dmatest_params* %9, %struct.dma_chan* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.dmatest_params*, %struct.dmatest_params** %6, align 8
  %15 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %16 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dmatest_match_device(%struct.dmatest_params* %14, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %22

21:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %20
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @dmatest_match_channel(%struct.dmatest_params*, %struct.dma_chan*) #1

declare dso_local i32 @dmatest_match_device(%struct.dmatest_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
