; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mic_x100_dma.c_mic_dma_register_dma_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mic_x100_dma.c_mic_dma_register_dma_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_dma_device = type { i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }

@DMA_MEMCPY = common dso_local global i32 0, align 4
@MIC_DMA_CHAN_HOST = common dso_local global i32 0, align 4
@DMA_PRIVATE = common dso_local global i32 0, align 4
@mic_dma_alloc_chan_resources = common dso_local global i32 0, align 4
@mic_dma_free_chan_resources = common dso_local global i32 0, align 4
@mic_dma_tx_status = common dso_local global i32 0, align 4
@mic_dma_prep_memcpy_lock = common dso_local global i32 0, align 4
@mic_dma_prep_status_lock = common dso_local global i32 0, align 4
@mic_dma_prep_interrupt_lock = common dso_local global i32 0, align 4
@mic_dma_issue_pending = common dso_local global i32 0, align 4
@MIC_DMA_ALIGN_SHIFT = common dso_local global i32 0, align 4
@MIC_DMA_NUM_CHAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mic_dma_device*, i32)* @mic_dma_register_dma_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mic_dma_register_dma_device(%struct.mic_dma_device* %0, i32 %1) #0 {
  %3 = alloca %struct.mic_dma_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mic_dma_device* %0, %struct.mic_dma_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mic_dma_device*, %struct.mic_dma_device** %3, align 8
  %8 = getelementptr inbounds %struct.mic_dma_device, %struct.mic_dma_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.mic_dma_device*, %struct.mic_dma_device** %3, align 8
  %11 = getelementptr inbounds %struct.mic_dma_device, %struct.mic_dma_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 9
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dma_cap_zero(i32 %13)
  %15 = load i32, i32* @DMA_MEMCPY, align 4
  %16 = load %struct.mic_dma_device*, %struct.mic_dma_device** %3, align 8
  %17 = getelementptr inbounds %struct.mic_dma_device, %struct.mic_dma_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dma_cap_set(i32 %15, i32 %19)
  %21 = load i32, i32* @MIC_DMA_CHAN_HOST, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load i32, i32* @DMA_PRIVATE, align 4
  %26 = load %struct.mic_dma_device*, %struct.mic_dma_device** %3, align 8
  %27 = getelementptr inbounds %struct.mic_dma_device, %struct.mic_dma_device* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 9
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dma_cap_set(i32 %25, i32 %29)
  br label %31

31:                                               ; preds = %24, %2
  %32 = load i32, i32* @mic_dma_alloc_chan_resources, align 4
  %33 = load %struct.mic_dma_device*, %struct.mic_dma_device** %3, align 8
  %34 = getelementptr inbounds %struct.mic_dma_device, %struct.mic_dma_device* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 8
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* @mic_dma_free_chan_resources, align 4
  %37 = load %struct.mic_dma_device*, %struct.mic_dma_device** %3, align 8
  %38 = getelementptr inbounds %struct.mic_dma_device, %struct.mic_dma_device* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 7
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* @mic_dma_tx_status, align 4
  %41 = load %struct.mic_dma_device*, %struct.mic_dma_device** %3, align 8
  %42 = getelementptr inbounds %struct.mic_dma_device, %struct.mic_dma_device* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 6
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* @mic_dma_prep_memcpy_lock, align 4
  %45 = load %struct.mic_dma_device*, %struct.mic_dma_device** %3, align 8
  %46 = getelementptr inbounds %struct.mic_dma_device, %struct.mic_dma_device* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 5
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* @mic_dma_prep_status_lock, align 4
  %49 = load %struct.mic_dma_device*, %struct.mic_dma_device** %3, align 8
  %50 = getelementptr inbounds %struct.mic_dma_device, %struct.mic_dma_device* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 4
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* @mic_dma_prep_interrupt_lock, align 4
  %53 = load %struct.mic_dma_device*, %struct.mic_dma_device** %3, align 8
  %54 = getelementptr inbounds %struct.mic_dma_device, %struct.mic_dma_device* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 3
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @mic_dma_issue_pending, align 4
  %57 = load %struct.mic_dma_device*, %struct.mic_dma_device** %3, align 8
  %58 = getelementptr inbounds %struct.mic_dma_device, %struct.mic_dma_device* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* @MIC_DMA_ALIGN_SHIFT, align 4
  %61 = load %struct.mic_dma_device*, %struct.mic_dma_device** %3, align 8
  %62 = getelementptr inbounds %struct.mic_dma_device, %struct.mic_dma_device* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load %struct.mic_dma_device*, %struct.mic_dma_device** %3, align 8
  %65 = getelementptr inbounds %struct.mic_dma_device, %struct.mic_dma_device* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = call i32 @INIT_LIST_HEAD(i32* %66)
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %106, %31
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @MIC_DMA_NUM_CHAN, align 4
  %73 = add nsw i32 %71, %72
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %109

75:                                               ; preds = %69
  %76 = load %struct.mic_dma_device*, %struct.mic_dma_device** %3, align 8
  %77 = getelementptr inbounds %struct.mic_dma_device, %struct.mic_dma_device* %76, i32 0, i32 1
  %78 = load %struct.mic_dma_device*, %struct.mic_dma_device** %3, align 8
  %79 = getelementptr inbounds %struct.mic_dma_device, %struct.mic_dma_device* %78, i32 0, i32 2
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  store %struct.TYPE_5__* %77, %struct.TYPE_5__** %85, align 8
  %86 = load %struct.mic_dma_device*, %struct.mic_dma_device** %3, align 8
  %87 = getelementptr inbounds %struct.mic_dma_device, %struct.mic_dma_device* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = call i32 @dma_cookie_init(%struct.TYPE_6__* %92)
  %94 = load %struct.mic_dma_device*, %struct.mic_dma_device** %3, align 8
  %95 = getelementptr inbounds %struct.mic_dma_device, %struct.mic_dma_device* %94, i32 0, i32 2
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load %struct.mic_dma_device*, %struct.mic_dma_device** %3, align 8
  %103 = getelementptr inbounds %struct.mic_dma_device, %struct.mic_dma_device* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = call i32 @list_add_tail(i32* %101, i32* %104)
  br label %106

106:                                              ; preds = %75
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %5, align 4
  br label %69

109:                                              ; preds = %69
  %110 = load %struct.mic_dma_device*, %struct.mic_dma_device** %3, align 8
  %111 = getelementptr inbounds %struct.mic_dma_device, %struct.mic_dma_device* %110, i32 0, i32 1
  %112 = call i32 @dmaenginem_async_device_register(%struct.TYPE_5__* %111)
  ret i32 %112
}

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dma_cookie_init(%struct.TYPE_6__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dmaenginem_async_device_register(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
