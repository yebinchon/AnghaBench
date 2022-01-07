; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_request_channel0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_request_channel0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_engine = type { i32*, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MXC_SDMA_DEFAULT_PRIORITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdma_engine*)* @sdma_request_channel0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_request_channel0(%struct.sdma_engine* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdma_engine*, align 8
  %4 = alloca i32, align 4
  store %struct.sdma_engine* %0, %struct.sdma_engine** %3, align 8
  %5 = load i32, i32* @EBUSY, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %8 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @PAGE_SIZE, align 4
  %11 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %12 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %11, i32 0, i32 1
  %13 = load i32, i32* @GFP_NOWAIT, align 4
  %14 = call i32 @dma_alloc_coherent(i32 %9, i32 %10, i32* %12, i32 %13)
  %15 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %16 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 8
  %17 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %18 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %47

24:                                               ; preds = %1
  %25 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %26 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %29 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32 %27, i32* %32, align 4
  %33 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %34 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %37 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %35, i32* %40, align 4
  %41 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %42 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* @MXC_SDMA_DEFAULT_PRIORITY, align 4
  %46 = call i32 @sdma_set_channel_priority(i32* %44, i32 %45)
  store i32 0, i32* %2, align 4
  br label %49

47:                                               ; preds = %21
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %24
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @sdma_set_channel_priority(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
