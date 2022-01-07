; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_tx_state = type { i32 }
%struct.edma_chan = type { %struct.TYPE_7__, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.virt_dma_desc = type { i32 }
%struct.TYPE_9__ = type { i32 }

@DMA_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i64, %struct.dma_tx_state*)* @edma_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edma_tx_status(%struct.dma_chan* %0, i64 %1, %struct.dma_tx_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dma_tx_state*, align 8
  %8 = alloca %struct.edma_chan*, align 8
  %9 = alloca %struct.dma_tx_state, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.virt_dma_desc*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.dma_tx_state* %2, %struct.dma_tx_state** %7, align 8
  %13 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %14 = call %struct.edma_chan* @to_edma_chan(%struct.dma_chan* %13)
  store %struct.edma_chan* %14, %struct.edma_chan** %8, align 8
  %15 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %18 = call i32 @dma_cookie_status(%struct.dma_chan* %15, i64 %16, %struct.dma_tx_state* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @DMA_COMPLETE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  br label %125

24:                                               ; preds = %3
  %25 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %26 = icmp ne %struct.dma_tx_state* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  store %struct.dma_tx_state* %9, %struct.dma_tx_state** %7, align 8
  br label %28

28:                                               ; preds = %27, %24
  %29 = load %struct.edma_chan*, %struct.edma_chan** %8, align 8
  %30 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.edma_chan*, %struct.edma_chan** %8, align 8
  %35 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %34, i32 0, i32 1
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = icmp ne %struct.TYPE_10__* %36, null
  br i1 %37, label %38, label %55

38:                                               ; preds = %28
  %39 = load %struct.edma_chan*, %struct.edma_chan** %8, align 8
  %40 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %39, i32 0, i32 1
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %38
  %49 = load %struct.edma_chan*, %struct.edma_chan** %8, align 8
  %50 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %49, i32 0, i32 1
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = call i32 @edma_residue(%struct.TYPE_10__* %51)
  %53 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %54 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %74

55:                                               ; preds = %38, %28
  %56 = load %struct.edma_chan*, %struct.edma_chan** %8, align 8
  %57 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %56, i32 0, i32 0
  %58 = load i64, i64* %6, align 8
  %59 = call %struct.virt_dma_desc* @vchan_find_desc(%struct.TYPE_7__* %57, i64 %58)
  store %struct.virt_dma_desc* %59, %struct.virt_dma_desc** %12, align 8
  %60 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %12, align 8
  %61 = icmp ne %struct.virt_dma_desc* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %55
  %63 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %12, align 8
  %64 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %63, i32 0, i32 0
  %65 = call %struct.TYPE_9__* @to_edma_desc(i32* %64)
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %69 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %73

70:                                               ; preds = %55
  %71 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %72 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %71, i32 0, i32 0
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %62
  br label %74

74:                                               ; preds = %73, %48
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @DMA_COMPLETE, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %118

78:                                               ; preds = %74
  %79 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %80 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %118, label %83

83:                                               ; preds = %78
  %84 = load %struct.edma_chan*, %struct.edma_chan** %8, align 8
  %85 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %84, i32 0, i32 1
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = icmp ne %struct.TYPE_10__* %86, null
  br i1 %87, label %88, label %118

88:                                               ; preds = %83
  %89 = load %struct.edma_chan*, %struct.edma_chan** %8, align 8
  %90 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %89, i32 0, i32 1
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %118

95:                                               ; preds = %88
  %96 = load %struct.edma_chan*, %struct.edma_chan** %8, align 8
  %97 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %96, i32 0, i32 1
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %6, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %95
  %106 = load %struct.edma_chan*, %struct.edma_chan** %8, align 8
  %107 = call i32 @edma_stop(%struct.edma_chan* %106)
  %108 = load %struct.edma_chan*, %struct.edma_chan** %8, align 8
  %109 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %108, i32 0, i32 1
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = call i32 @vchan_cookie_complete(%struct.TYPE_8__* %111)
  %113 = load %struct.edma_chan*, %struct.edma_chan** %8, align 8
  %114 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %113, i32 0, i32 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %114, align 8
  %115 = load %struct.edma_chan*, %struct.edma_chan** %8, align 8
  %116 = call i32 @edma_execute(%struct.edma_chan* %115)
  %117 = load i32, i32* @DMA_COMPLETE, align 4
  store i32 %117, i32* %10, align 4
  br label %118

118:                                              ; preds = %105, %95, %88, %83, %78, %74
  %119 = load %struct.edma_chan*, %struct.edma_chan** %8, align 8
  %120 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i64, i64* %11, align 8
  %123 = call i32 @spin_unlock_irqrestore(i32* %121, i64 %122)
  %124 = load i32, i32* %10, align 4
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %118, %22
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local %struct.edma_chan* @to_edma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dma_cookie_status(%struct.dma_chan*, i64, %struct.dma_tx_state*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @edma_residue(%struct.TYPE_10__*) #1

declare dso_local %struct.virt_dma_desc* @vchan_find_desc(%struct.TYPE_7__*, i64) #1

declare dso_local %struct.TYPE_9__* @to_edma_desc(i32*) #1

declare dso_local i32 @edma_stop(%struct.edma_chan*) #1

declare dso_local i32 @vchan_cookie_complete(%struct.TYPE_8__*) #1

declare dso_local i32 @edma_execute(%struct.edma_chan*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
