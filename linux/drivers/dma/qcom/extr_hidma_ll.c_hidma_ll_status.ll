; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_ll.c_hidma_ll_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_ll.c_hidma_ll_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidma_lldev = type { i32, %struct.hidma_tre* }
%struct.hidma_tre = type { i32 }

@DMA_ERROR = common dso_local global i32 0, align 4
@HIDMA_EVRE_STATUS_COMPLETE = common dso_local global i32 0, align 4
@DMA_COMPLETE = common dso_local global i32 0, align 4
@HIDMA_EVRE_STATUS_ERROR = common dso_local global i32 0, align 4
@DMA_IN_PROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hidma_ll_status(%struct.hidma_lldev* %0, i64 %1) #0 {
  %3 = alloca %struct.hidma_lldev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hidma_tre*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.hidma_lldev* %0, %struct.hidma_lldev** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i32, i32* @DMA_ERROR, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %11 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %10, i32 0, i32 0
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %15 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %14, i32 0, i32 1
  %16 = load %struct.hidma_tre*, %struct.hidma_tre** %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds %struct.hidma_tre, %struct.hidma_tre* %16, i64 %17
  store %struct.hidma_tre* %18, %struct.hidma_tre** %6, align 8
  %19 = load %struct.hidma_tre*, %struct.hidma_tre** %6, align 8
  %20 = getelementptr inbounds %struct.hidma_tre, %struct.hidma_tre* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @HIDMA_EVRE_STATUS_COMPLETE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @DMA_COMPLETE, align 4
  store i32 %27, i32* %5, align 4
  br label %38

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @HIDMA_EVRE_STATUS_ERROR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @DMA_ERROR, align 4
  store i32 %34, i32* %5, align 4
  br label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @DMA_IN_PROGRESS, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %35, %33
  br label %38

38:                                               ; preds = %37, %26
  %39 = load %struct.hidma_lldev*, %struct.hidma_lldev** %3, align 8
  %40 = getelementptr inbounds %struct.hidma_lldev, %struct.hidma_lldev* %39, i32 0, i32 0
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
