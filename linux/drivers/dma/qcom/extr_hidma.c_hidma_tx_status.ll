; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma.c_hidma_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma.c_hidma_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_tx_state = type { i32 }
%struct.hidma_chan = type { i32, %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DMA_COMPLETE = common dso_local global i32 0, align 4
@DMA_ERROR = common dso_local global i32 0, align 4
@DMA_IN_PROGRESS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DMA_PAUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i32, %struct.dma_tx_state*)* @hidma_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidma_tx_status(%struct.dma_chan* %0, i32 %1, %struct.dma_tx_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_tx_state*, align 8
  %8 = alloca %struct.hidma_chan*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dma_tx_state* %2, %struct.dma_tx_state** %7, align 8
  %13 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %14 = call %struct.hidma_chan* @to_hidma_chan(%struct.dma_chan* %13)
  store %struct.hidma_chan* %14, %struct.hidma_chan** %8, align 8
  %15 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %18 = call i32 @dma_cookie_status(%struct.dma_chan* %15, i32 %16, %struct.dma_tx_state* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @DMA_COMPLETE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.hidma_chan*, %struct.hidma_chan** %8, align 8
  %25 = getelementptr inbounds %struct.hidma_chan, %struct.hidma_chan* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %28 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @hidma_txn_is_success(i32 %23, i32 %26, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i32, i32* %9, align 4
  br label %37

35:                                               ; preds = %22
  %36 = load i32, i32* @DMA_ERROR, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %4, align 4
  br label %80

39:                                               ; preds = %3
  %40 = load %struct.hidma_chan*, %struct.hidma_chan** %8, align 8
  %41 = getelementptr inbounds %struct.hidma_chan, %struct.hidma_chan* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %78

44:                                               ; preds = %39
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @DMA_IN_PROGRESS, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %78

48:                                               ; preds = %44
  %49 = load %struct.hidma_chan*, %struct.hidma_chan** %8, align 8
  %50 = getelementptr inbounds %struct.hidma_chan, %struct.hidma_chan* %49, i32 0, i32 0
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @spin_lock_irqsave(i32* %50, i64 %51)
  %53 = load %struct.hidma_chan*, %struct.hidma_chan** %8, align 8
  %54 = getelementptr inbounds %struct.hidma_chan, %struct.hidma_chan* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = icmp ne %struct.TYPE_4__* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %48
  %58 = load %struct.hidma_chan*, %struct.hidma_chan** %8, align 8
  %59 = getelementptr inbounds %struct.hidma_chan, %struct.hidma_chan* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %12, align 4
  br label %67

64:                                               ; preds = %48
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %64, %57
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* @DMA_PAUSED, align 4
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %71, %67
  %74 = load %struct.hidma_chan*, %struct.hidma_chan** %8, align 8
  %75 = getelementptr inbounds %struct.hidma_chan, %struct.hidma_chan* %74, i32 0, i32 0
  %76 = load i64, i64* %11, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  br label %78

78:                                               ; preds = %73, %44, %39
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %78, %37
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.hidma_chan* @to_hidma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dma_cookie_status(%struct.dma_chan*, i32, %struct.dma_tx_state*) #1

declare dso_local i32 @hidma_txn_is_success(i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
