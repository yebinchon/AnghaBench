; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_tx_state = type { i32 }
%struct.omap_chan = type { %struct.TYPE_5__, i64, i64, %struct.omap_desc* }
%struct.TYPE_5__ = type { i32 }
%struct.omap_desc = type { i64, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.virt_dma_desc = type { i32 }

@DMA_COMPLETE = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i64 0, align 8
@DMA_DEV_TO_MEM = common dso_local global i64 0, align 8
@DMA_MEM_TO_MEM = common dso_local global i64 0, align 8
@DMA_IN_PROGRESS = common dso_local global i32 0, align 4
@DMA_PAUSED = common dso_local global i32 0, align 4
@CCR = common dso_local global i32 0, align 4
@CCR_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i64, %struct.dma_tx_state*)* @omap_dma_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_dma_tx_status(%struct.dma_chan* %0, i64 %1, %struct.dma_tx_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dma_tx_state*, align 8
  %8 = alloca %struct.omap_chan*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.omap_desc*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.virt_dma_desc*, align 8
  %14 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.dma_tx_state* %2, %struct.dma_tx_state** %7, align 8
  %15 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %16 = call %struct.omap_chan* @to_omap_dma_chan(%struct.dma_chan* %15)
  store %struct.omap_chan* %16, %struct.omap_chan** %8, align 8
  store %struct.omap_desc* null, %struct.omap_desc** %11, align 8
  %17 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %20 = call i32 @dma_cookie_status(%struct.dma_chan* %17, i64 %18, %struct.dma_tx_state* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @DMA_COMPLETE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %4, align 4
  br label %156

26:                                               ; preds = %3
  %27 = load %struct.omap_chan*, %struct.omap_chan** %8, align 8
  %28 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.omap_chan*, %struct.omap_chan** %8, align 8
  %33 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %32, i32 0, i32 3
  %34 = load %struct.omap_desc*, %struct.omap_desc** %33, align 8
  %35 = icmp ne %struct.omap_desc* %34, null
  br i1 %35, label %36, label %50

36:                                               ; preds = %26
  %37 = load %struct.omap_chan*, %struct.omap_chan** %8, align 8
  %38 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %37, i32 0, i32 3
  %39 = load %struct.omap_desc*, %struct.omap_desc** %38, align 8
  %40 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = load %struct.omap_chan*, %struct.omap_chan** %8, align 8
  %48 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %47, i32 0, i32 3
  %49 = load %struct.omap_desc*, %struct.omap_desc** %48, align 8
  store %struct.omap_desc* %49, %struct.omap_desc** %11, align 8
  br label %50

50:                                               ; preds = %46, %36, %26
  %51 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %52 = icmp ne %struct.dma_tx_state* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  br label %108

54:                                               ; preds = %50
  %55 = load %struct.omap_desc*, %struct.omap_desc** %11, align 8
  %56 = icmp ne %struct.omap_desc* %55, null
  br i1 %56, label %57, label %89

57:                                               ; preds = %54
  %58 = load %struct.omap_desc*, %struct.omap_desc** %11, align 8
  %59 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @DMA_MEM_TO_DEV, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load %struct.omap_chan*, %struct.omap_chan** %8, align 8
  %65 = call i64 @omap_dma_get_src_pos(%struct.omap_chan* %64)
  store i64 %65, i64* %12, align 8
  br label %83

66:                                               ; preds = %57
  %67 = load %struct.omap_desc*, %struct.omap_desc** %11, align 8
  %68 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @DMA_DEV_TO_MEM, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %66
  %73 = load %struct.omap_desc*, %struct.omap_desc** %11, align 8
  %74 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @DMA_MEM_TO_MEM, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %72, %66
  %79 = load %struct.omap_chan*, %struct.omap_chan** %8, align 8
  %80 = call i64 @omap_dma_get_dst_pos(%struct.omap_chan* %79)
  store i64 %80, i64* %12, align 8
  br label %82

81:                                               ; preds = %72
  store i64 0, i64* %12, align 8
  br label %82

82:                                               ; preds = %81, %78
  br label %83

83:                                               ; preds = %82, %63
  %84 = load %struct.omap_desc*, %struct.omap_desc** %11, align 8
  %85 = load i64, i64* %12, align 8
  %86 = call i32 @omap_dma_desc_size_pos(%struct.omap_desc* %84, i64 %85)
  %87 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %88 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  br label %107

89:                                               ; preds = %54
  %90 = load %struct.omap_chan*, %struct.omap_chan** %8, align 8
  %91 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %90, i32 0, i32 0
  %92 = load i64, i64* %6, align 8
  %93 = call %struct.virt_dma_desc* @vchan_find_desc(%struct.TYPE_5__* %91, i64 %92)
  store %struct.virt_dma_desc* %93, %struct.virt_dma_desc** %13, align 8
  %94 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %13, align 8
  %95 = icmp ne %struct.virt_dma_desc* %94, null
  br i1 %95, label %96, label %103

96:                                               ; preds = %89
  %97 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %13, align 8
  %98 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %97, i32 0, i32 0
  %99 = call i32 @to_omap_dma_desc(i32* %98)
  %100 = call i32 @omap_dma_desc_size(i32 %99)
  %101 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %102 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  br label %106

103:                                              ; preds = %89
  %104 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %105 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %104, i32 0, i32 0
  store i32 0, i32* %105, align 4
  br label %106

106:                                              ; preds = %103, %96
  br label %107

107:                                              ; preds = %106, %83
  br label %108

108:                                              ; preds = %107, %53
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @DMA_IN_PROGRESS, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %108
  %113 = load %struct.omap_chan*, %struct.omap_chan** %8, align 8
  %114 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = load i32, i32* @DMA_PAUSED, align 4
  store i32 %118, i32* %9, align 4
  br label %149

119:                                              ; preds = %112, %108
  %120 = load %struct.omap_desc*, %struct.omap_desc** %11, align 8
  %121 = icmp ne %struct.omap_desc* %120, null
  br i1 %121, label %122, label %148

122:                                              ; preds = %119
  %123 = load %struct.omap_desc*, %struct.omap_desc** %11, align 8
  %124 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %148

127:                                              ; preds = %122
  %128 = load %struct.omap_chan*, %struct.omap_chan** %8, align 8
  %129 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %148

132:                                              ; preds = %127
  %133 = load %struct.omap_chan*, %struct.omap_chan** %8, align 8
  %134 = load i32, i32* @CCR, align 4
  %135 = call i32 @omap_dma_chan_read(%struct.omap_chan* %133, i32 %134)
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* @CCR_ENABLE, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %147, label %140

140:                                              ; preds = %132
  %141 = load i32, i32* @DMA_COMPLETE, align 4
  store i32 %141, i32* %9, align 4
  %142 = load %struct.omap_chan*, %struct.omap_chan** %8, align 8
  %143 = call i32 @omap_dma_start_desc(%struct.omap_chan* %142)
  %144 = load %struct.omap_desc*, %struct.omap_desc** %11, align 8
  %145 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %144, i32 0, i32 1
  %146 = call i32 @vchan_cookie_complete(%struct.TYPE_6__* %145)
  br label %147

147:                                              ; preds = %140, %132
  br label %148

148:                                              ; preds = %147, %127, %122, %119
  br label %149

149:                                              ; preds = %148, %117
  %150 = load %struct.omap_chan*, %struct.omap_chan** %8, align 8
  %151 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load i64, i64* %10, align 8
  %154 = call i32 @spin_unlock_irqrestore(i32* %152, i64 %153)
  %155 = load i32, i32* %9, align 4
  store i32 %155, i32* %4, align 4
  br label %156

156:                                              ; preds = %149, %24
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local %struct.omap_chan* @to_omap_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dma_cookie_status(%struct.dma_chan*, i64, %struct.dma_tx_state*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @omap_dma_get_src_pos(%struct.omap_chan*) #1

declare dso_local i64 @omap_dma_get_dst_pos(%struct.omap_chan*) #1

declare dso_local i32 @omap_dma_desc_size_pos(%struct.omap_desc*, i64) #1

declare dso_local %struct.virt_dma_desc* @vchan_find_desc(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @omap_dma_desc_size(i32) #1

declare dso_local i32 @to_omap_dma_desc(i32*) #1

declare dso_local i32 @omap_dma_chan_read(%struct.omap_chan*, i32) #1

declare dso_local i32 @omap_dma_start_desc(%struct.omap_chan*) #1

declare dso_local i32 @vchan_cookie_complete(%struct.TYPE_6__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
