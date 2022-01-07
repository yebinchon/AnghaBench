; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mic_x100_dma.c_mic_dma_alloc_status_dest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mic_x100_dma.c_mic_dma_alloc_status_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_dma_chan = type { i32*, i32 }
%struct.device = type { i32 }
%struct.TYPE_2__ = type { %struct.device }

@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mic_dma_chan*)* @mic_dma_alloc_status_dest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mic_dma_alloc_status_dest(%struct.mic_dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mic_dma_chan*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.mic_dma_chan* %0, %struct.mic_dma_chan** %3, align 8
  %5 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %3, align 8
  %6 = call %struct.TYPE_2__* @to_mbus_device(%struct.mic_dma_chan* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load i32, i32* @L1_CACHE_BYTES, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i32* @kzalloc(i32 %8, i32 %9)
  %11 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %3, align 8
  %12 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %11, i32 0, i32 0
  store i32* %10, i32** %12, align 8
  %13 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %3, align 8
  %14 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %46

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %3, align 8
  %23 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* @L1_CACHE_BYTES, align 4
  %26 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %27 = call i32 @dma_map_single(%struct.device* %21, i32* %24, i32 %25, i32 %26)
  %28 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %3, align 8
  %29 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %3, align 8
  %32 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @dma_mapping_error(%struct.device* %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %20
  %37 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %3, align 8
  %38 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @kfree(i32* %39)
  %41 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %3, align 8
  %42 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %46

45:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %36, %17
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.TYPE_2__* @to_mbus_device(%struct.mic_dma_chan*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @dma_map_single(%struct.device*, i32*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
