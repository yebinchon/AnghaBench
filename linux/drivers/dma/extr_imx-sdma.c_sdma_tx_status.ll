; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32, i32 }
%struct.dma_tx_state = type { i32 }
%struct.sdma_channel = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.sdma_desc = type { i32, i32, i32, i64, i64 }
%struct.virt_dma_desc = type { i32 }

@DMA_COMPLETE = common dso_local global i32 0, align 4
@IMX_DMA_SG_LOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i64, %struct.dma_tx_state*)* @sdma_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_tx_status(%struct.dma_chan* %0, i64 %1, %struct.dma_tx_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dma_tx_state*, align 8
  %8 = alloca %struct.sdma_channel*, align 8
  %9 = alloca %struct.sdma_desc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.virt_dma_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.dma_tx_state* %2, %struct.dma_tx_state** %7, align 8
  %14 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %15 = call %struct.sdma_channel* @to_sdma_chan(%struct.dma_chan* %14)
  store %struct.sdma_channel* %15, %struct.sdma_channel** %8, align 8
  %16 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %19 = call i32 @dma_cookie_status(%struct.dma_chan* %16, i64 %17, %struct.dma_tx_state* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @DMA_COMPLETE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %25 = icmp ne %struct.dma_tx_state* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23, %3
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %4, align 4
  br label %123

28:                                               ; preds = %23
  %29 = load %struct.sdma_channel*, %struct.sdma_channel** %8, align 8
  %30 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %13, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.sdma_channel*, %struct.sdma_channel** %8, align 8
  %35 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %34, i32 0, i32 2
  %36 = load i64, i64* %6, align 8
  %37 = call %struct.virt_dma_desc* @vchan_find_desc(%struct.TYPE_8__* %35, i64 %36)
  store %struct.virt_dma_desc* %37, %struct.virt_dma_desc** %11, align 8
  %38 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %11, align 8
  %39 = icmp ne %struct.virt_dma_desc* %38, null
  br i1 %39, label %40, label %76

40:                                               ; preds = %28
  %41 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %11, align 8
  %42 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %41, i32 0, i32 0
  %43 = call %struct.sdma_desc* @to_sdma_desc(i32* %42)
  store %struct.sdma_desc* %43, %struct.sdma_desc** %9, align 8
  %44 = load %struct.sdma_channel*, %struct.sdma_channel** %8, align 8
  %45 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @IMX_DMA_SG_LOOP, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %40
  %51 = load %struct.sdma_desc*, %struct.sdma_desc** %9, align 8
  %52 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.sdma_desc*, %struct.sdma_desc** %9, align 8
  %55 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %53, %56
  %58 = load %struct.sdma_desc*, %struct.sdma_desc** %9, align 8
  %59 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = mul nsw i32 %57, %60
  %62 = sext i32 %61 to i64
  %63 = load %struct.sdma_desc*, %struct.sdma_desc** %9, align 8
  %64 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %62, %65
  store i64 %66, i64* %10, align 8
  br label %75

67:                                               ; preds = %40
  %68 = load %struct.sdma_desc*, %struct.sdma_desc** %9, align 8
  %69 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.sdma_desc*, %struct.sdma_desc** %9, align 8
  %72 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %70, %73
  store i64 %74, i64* %10, align 8
  br label %75

75:                                               ; preds = %67, %50
  br label %105

76:                                               ; preds = %28
  %77 = load %struct.sdma_channel*, %struct.sdma_channel** %8, align 8
  %78 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %77, i32 0, i32 3
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = icmp ne %struct.TYPE_7__* %79, null
  br i1 %80, label %81, label %103

81:                                               ; preds = %76
  %82 = load %struct.sdma_channel*, %struct.sdma_channel** %8, align 8
  %83 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %82, i32 0, i32 3
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %6, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %81
  %92 = load %struct.sdma_channel*, %struct.sdma_channel** %8, align 8
  %93 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %92, i32 0, i32 3
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.sdma_channel*, %struct.sdma_channel** %8, align 8
  %98 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %97, i32 0, i32 3
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %96, %101
  store i64 %102, i64* %10, align 8
  br label %104

103:                                              ; preds = %81, %76
  store i64 0, i64* %10, align 8
  br label %104

104:                                              ; preds = %103, %91
  br label %105

105:                                              ; preds = %104, %75
  %106 = load %struct.sdma_channel*, %struct.sdma_channel** %8, align 8
  %107 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i64, i64* %13, align 8
  %110 = call i32 @spin_unlock_irqrestore(i32* %108, i64 %109)
  %111 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %112 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %113 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %116 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i64, i64* %10, align 8
  %119 = call i32 @dma_set_tx_state(%struct.dma_tx_state* %111, i32 %114, i32 %117, i64 %118)
  %120 = load %struct.sdma_channel*, %struct.sdma_channel** %8, align 8
  %121 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %105, %26
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local %struct.sdma_channel* @to_sdma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dma_cookie_status(%struct.dma_chan*, i64, %struct.dma_tx_state*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.virt_dma_desc* @vchan_find_desc(%struct.TYPE_8__*, i64) #1

declare dso_local %struct.sdma_desc* @to_sdma_desc(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dma_set_tx_state(%struct.dma_tx_state*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
