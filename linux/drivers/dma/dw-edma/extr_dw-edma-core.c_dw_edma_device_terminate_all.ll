; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw-edma/extr_dw-edma-core.c_dw_edma_device_terminate_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw-edma/extr_dw-edma-core.c_dw_edma_device_terminate_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dw_edma_chan = type { i32, i64, i64 }

@head = common dso_local global i32 0, align 4
@EDMA_ST_PAUSE = common dso_local global i64 0, align 8
@EDMA_ST_IDLE = common dso_local global i64 0, align 8
@DMA_COMPLETE = common dso_local global i64 0, align 8
@EDMA_REQ_PAUSE = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@EDMA_REQ_STOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @dw_edma_device_terminate_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_edma_device_terminate_all(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.dw_edma_chan*, align 8
  %4 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %5 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %6 = call %struct.dw_edma_chan* @dchan2dw_edma_chan(%struct.dma_chan* %5)
  store %struct.dw_edma_chan* %6, %struct.dw_edma_chan** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* @head, align 4
  %8 = call i32 @LIST_HEAD(i32 %7)
  %9 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %3, align 8
  %10 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %63

14:                                               ; preds = %1
  %15 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %3, align 8
  %16 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @EDMA_ST_PAUSE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load i64, i64* @EDMA_ST_IDLE, align 8
  %22 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %3, align 8
  %23 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %3, align 8
  %25 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  br label %62

26:                                               ; preds = %14
  %27 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %3, align 8
  %28 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @EDMA_ST_IDLE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %3, align 8
  %34 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  br label %61

35:                                               ; preds = %26
  %36 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %3, align 8
  %37 = call i64 @dw_edma_v0_core_ch_status(%struct.dw_edma_chan* %36)
  %38 = load i64, i64* @DMA_COMPLETE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i64, i64* @EDMA_ST_IDLE, align 8
  %42 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %3, align 8
  %43 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %3, align 8
  %45 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  br label %60

46:                                               ; preds = %35
  %47 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %3, align 8
  %48 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @EDMA_REQ_PAUSE, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @EPERM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %59

55:                                               ; preds = %46
  %56 = load i64, i64* @EDMA_REQ_STOP, align 8
  %57 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %3, align 8
  %58 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %55, %52
  br label %60

60:                                               ; preds = %59, %40
  br label %61

61:                                               ; preds = %60, %32
  br label %62

62:                                               ; preds = %61, %20
  br label %63

63:                                               ; preds = %62, %13
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.dw_edma_chan* @dchan2dw_edma_chan(%struct.dma_chan*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i64 @dw_edma_v0_core_ch_status(%struct.dw_edma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
