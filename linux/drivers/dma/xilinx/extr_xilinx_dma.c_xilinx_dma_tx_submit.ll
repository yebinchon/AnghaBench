; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_xilinx_dma.c_xilinx_dma_tx_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_xilinx_dma.c_xilinx_dma_tx_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.xilinx_dma_tx_descriptor = type { i64 }
%struct.xilinx_dma_chan = type { i32, i32, i64 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_async_tx_descriptor*)* @xilinx_dma_tx_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xilinx_dma_tx_submit(%struct.dma_async_tx_descriptor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_async_tx_descriptor*, align 8
  %4 = alloca %struct.xilinx_dma_tx_descriptor*, align 8
  %5 = alloca %struct.xilinx_dma_chan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.dma_async_tx_descriptor* %0, %struct.dma_async_tx_descriptor** %3, align 8
  %9 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %10 = call %struct.xilinx_dma_tx_descriptor* @to_dma_tx_descriptor(%struct.dma_async_tx_descriptor* %9)
  store %struct.xilinx_dma_tx_descriptor* %10, %struct.xilinx_dma_tx_descriptor** %4, align 8
  %11 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %12 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.xilinx_dma_chan* @to_xilinx_chan(i32 %13)
  store %struct.xilinx_dma_chan* %14, %struct.xilinx_dma_chan** %5, align 8
  %15 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %5, align 8
  %16 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %5, align 8
  %21 = load %struct.xilinx_dma_tx_descriptor*, %struct.xilinx_dma_tx_descriptor** %4, align 8
  %22 = call i32 @xilinx_dma_free_tx_descriptor(%struct.xilinx_dma_chan* %20, %struct.xilinx_dma_tx_descriptor* %21)
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %61

25:                                               ; preds = %1
  %26 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %5, align 8
  %27 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %5, align 8
  %32 = call i32 @xilinx_dma_chan_reset(%struct.xilinx_dma_chan* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %2, align 4
  br label %61

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %25
  %39 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %5, align 8
  %40 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %39, i32 0, i32 1
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %44 = call i32 @dma_cookie_assign(%struct.dma_async_tx_descriptor* %43)
  store i32 %44, i32* %6, align 4
  %45 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %5, align 8
  %46 = load %struct.xilinx_dma_tx_descriptor*, %struct.xilinx_dma_tx_descriptor** %4, align 8
  %47 = call i32 @append_desc_queue(%struct.xilinx_dma_chan* %45, %struct.xilinx_dma_tx_descriptor* %46)
  %48 = load %struct.xilinx_dma_tx_descriptor*, %struct.xilinx_dma_tx_descriptor** %4, align 8
  %49 = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, %struct.xilinx_dma_tx_descriptor* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %38
  %53 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %5, align 8
  %54 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  br label %55

55:                                               ; preds = %52, %38
  %56 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %5, align 8
  %57 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %56, i32 0, i32 1
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %55, %35, %19
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.xilinx_dma_tx_descriptor* @to_dma_tx_descriptor(%struct.dma_async_tx_descriptor*) #1

declare dso_local %struct.xilinx_dma_chan* @to_xilinx_chan(i32) #1

declare dso_local i32 @xilinx_dma_free_tx_descriptor(%struct.xilinx_dma_chan*, %struct.xilinx_dma_tx_descriptor*) #1

declare dso_local i32 @xilinx_dma_chan_reset(%struct.xilinx_dma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dma_cookie_assign(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @append_desc_queue(%struct.xilinx_dma_chan*, %struct.xilinx_dma_tx_descriptor*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
