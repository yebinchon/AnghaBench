; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw-edma/extr_dw-edma-core.c_dw_edma_device_pause.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw-edma/extr_dw-edma-core.c_dw_edma_device_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dw_edma_chan = type { i64, i64, i32 }

@EPERM = common dso_local global i32 0, align 4
@EDMA_ST_BUSY = common dso_local global i64 0, align 8
@EDMA_REQ_NONE = common dso_local global i64 0, align 8
@EDMA_REQ_PAUSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @dw_edma_device_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_edma_device_pause(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.dw_edma_chan*, align 8
  %4 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %5 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %6 = call %struct.dw_edma_chan* @dchan2dw_edma_chan(%struct.dma_chan* %5)
  store %struct.dw_edma_chan* %6, %struct.dw_edma_chan** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %3, align 8
  %8 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EPERM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %38

14:                                               ; preds = %1
  %15 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %3, align 8
  %16 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @EDMA_ST_BUSY, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @EPERM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %37

23:                                               ; preds = %14
  %24 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %3, align 8
  %25 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @EDMA_REQ_NONE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EPERM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %36

32:                                               ; preds = %23
  %33 = load i64, i64* @EDMA_REQ_PAUSE, align 8
  %34 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %3, align 8
  %35 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %32, %29
  br label %37

37:                                               ; preds = %36, %20
  br label %38

38:                                               ; preds = %37, %11
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.dw_edma_chan* @dchan2dw_edma_chan(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
