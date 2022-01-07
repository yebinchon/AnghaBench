; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dmaengine.c_dma_request_chan_by_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dmaengine.c_dma_request_chan_by_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@dma_list_mutex = common dso_local global i32 0, align 4
@dma_device_list = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dma_chan* @dma_request_chan_by_mask(i32* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.dma_chan*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  %10 = call %struct.dma_chan* @ERR_PTR(i32 %9)
  store %struct.dma_chan* %10, %struct.dma_chan** %2, align 8
  br label %32

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = call %struct.dma_chan* @__dma_request_channel(i32* %12, i32* null, i32* null, i32* null)
  store %struct.dma_chan* %13, %struct.dma_chan** %4, align 8
  %14 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %15 = icmp ne %struct.dma_chan* %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %11
  %17 = call i32 @mutex_lock(i32* @dma_list_mutex)
  %18 = call i64 @list_empty(i32* @dma_device_list)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* @EPROBE_DEFER, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.dma_chan* @ERR_PTR(i32 %22)
  store %struct.dma_chan* %23, %struct.dma_chan** %4, align 8
  br label %28

24:                                               ; preds = %16
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.dma_chan* @ERR_PTR(i32 %26)
  store %struct.dma_chan* %27, %struct.dma_chan** %4, align 8
  br label %28

28:                                               ; preds = %24, %20
  %29 = call i32 @mutex_unlock(i32* @dma_list_mutex)
  br label %30

30:                                               ; preds = %28, %11
  %31 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  store %struct.dma_chan* %31, %struct.dma_chan** %2, align 8
  br label %32

32:                                               ; preds = %30, %7
  %33 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  ret %struct.dma_chan* %33
}

declare dso_local %struct.dma_chan* @ERR_PTR(i32) #1

declare dso_local %struct.dma_chan* @__dma_request_channel(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
