; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_bcm2835-dma.c_bcm2835_dma_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_bcm2835-dma.c_bcm2835_dma_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_tx_state = type { i32 }
%struct.bcm2835_chan = type { %struct.TYPE_6__, i64, %struct.bcm2835_desc* }
%struct.TYPE_6__ = type { i32 }
%struct.bcm2835_desc = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.virt_dma_desc = type { i32 }

@DMA_COMPLETE = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i64 0, align 8
@BCM2835_DMA_SOURCE_AD = common dso_local global i64 0, align 8
@DMA_DEV_TO_MEM = common dso_local global i64 0, align 8
@BCM2835_DMA_DEST_AD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i64, %struct.dma_tx_state*)* @bcm2835_dma_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_dma_tx_status(%struct.dma_chan* %0, i64 %1, %struct.dma_tx_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dma_tx_state*, align 8
  %8 = alloca %struct.bcm2835_chan*, align 8
  %9 = alloca %struct.virt_dma_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.bcm2835_desc*, align 8
  %13 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.dma_tx_state* %2, %struct.dma_tx_state** %7, align 8
  %14 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %15 = call %struct.bcm2835_chan* @to_bcm2835_dma_chan(%struct.dma_chan* %14)
  store %struct.bcm2835_chan* %15, %struct.bcm2835_chan** %8, align 8
  %16 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %19 = call i32 @dma_cookie_status(%struct.dma_chan* %16, i64 %17, %struct.dma_tx_state* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @DMA_COMPLETE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %25 = icmp ne %struct.dma_tx_state* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23, %3
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %4, align 4
  br label %110

28:                                               ; preds = %23
  %29 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %8, align 8
  %30 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %8, align 8
  %35 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %34, i32 0, i32 0
  %36 = load i64, i64* %6, align 8
  %37 = call %struct.virt_dma_desc* @vchan_find_desc(%struct.TYPE_6__* %35, i64 %36)
  store %struct.virt_dma_desc* %37, %struct.virt_dma_desc** %9, align 8
  %38 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %9, align 8
  %39 = icmp ne %struct.virt_dma_desc* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %28
  %41 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %9, align 8
  %42 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %41, i32 0, i32 0
  %43 = call i32 @to_bcm2835_dma_desc(i32* %42)
  %44 = call i32 @bcm2835_dma_desc_size(i32 %43)
  %45 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %46 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %103

47:                                               ; preds = %28
  %48 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %8, align 8
  %49 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %48, i32 0, i32 2
  %50 = load %struct.bcm2835_desc*, %struct.bcm2835_desc** %49, align 8
  %51 = icmp ne %struct.bcm2835_desc* %50, null
  br i1 %51, label %52, label %99

52:                                               ; preds = %47
  %53 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %8, align 8
  %54 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %53, i32 0, i32 2
  %55 = load %struct.bcm2835_desc*, %struct.bcm2835_desc** %54, align 8
  %56 = getelementptr inbounds %struct.bcm2835_desc, %struct.bcm2835_desc* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %6, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %99

62:                                               ; preds = %52
  %63 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %8, align 8
  %64 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %63, i32 0, i32 2
  %65 = load %struct.bcm2835_desc*, %struct.bcm2835_desc** %64, align 8
  store %struct.bcm2835_desc* %65, %struct.bcm2835_desc** %12, align 8
  %66 = load %struct.bcm2835_desc*, %struct.bcm2835_desc** %12, align 8
  %67 = getelementptr inbounds %struct.bcm2835_desc, %struct.bcm2835_desc* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @DMA_MEM_TO_DEV, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %62
  %72 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %8, align 8
  %73 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @BCM2835_DMA_SOURCE_AD, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i64 @readl(i64 %76)
  store i64 %77, i64* %13, align 8
  br label %93

78:                                               ; preds = %62
  %79 = load %struct.bcm2835_desc*, %struct.bcm2835_desc** %12, align 8
  %80 = getelementptr inbounds %struct.bcm2835_desc, %struct.bcm2835_desc* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @DMA_DEV_TO_MEM, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %8, align 8
  %86 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @BCM2835_DMA_DEST_AD, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i64 @readl(i64 %89)
  store i64 %90, i64* %13, align 8
  br label %92

91:                                               ; preds = %78
  store i64 0, i64* %13, align 8
  br label %92

92:                                               ; preds = %91, %84
  br label %93

93:                                               ; preds = %92, %71
  %94 = load %struct.bcm2835_desc*, %struct.bcm2835_desc** %12, align 8
  %95 = load i64, i64* %13, align 8
  %96 = call i32 @bcm2835_dma_desc_size_pos(%struct.bcm2835_desc* %94, i64 %95)
  %97 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %98 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  br label %102

99:                                               ; preds = %52, %47
  %100 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %101 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %100, i32 0, i32 0
  store i32 0, i32* %101, align 4
  br label %102

102:                                              ; preds = %99, %93
  br label %103

103:                                              ; preds = %102, %40
  %104 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %8, align 8
  %105 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i64, i64* %11, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* %106, i64 %107)
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %103, %26
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local %struct.bcm2835_chan* @to_bcm2835_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dma_cookie_status(%struct.dma_chan*, i64, %struct.dma_tx_state*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.virt_dma_desc* @vchan_find_desc(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @bcm2835_dma_desc_size(i32) #1

declare dso_local i32 @to_bcm2835_dma_desc(i32*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @bcm2835_dma_desc_size_pos(%struct.bcm2835_desc*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
