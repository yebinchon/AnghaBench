; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mic_x100_dma.c_mic_dma_prep_status_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mic_x100_dma.c_mic_dma_prep_status_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }
%struct.mic_dma_chan = type { i64, i32, i32* }

@.str = private unnamed_addr constant [50 x i8] c"Error enqueueing dma status descriptor, error=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i32, i32, i64)* @mic_dma_prep_status_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @mic_dma_prep_status_lock(%struct.dma_chan* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.dma_async_tx_descriptor*, align 8
  %6 = alloca %struct.dma_chan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.mic_dma_chan*, align 8
  %11 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %13 = call %struct.mic_dma_chan* @to_mic_dma_chan(%struct.dma_chan* %12)
  store %struct.mic_dma_chan* %13, %struct.mic_dma_chan** %10, align 8
  %14 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %10, align 8
  %15 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %14, i32 0, i32 1
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %10, align 8
  %18 = call i32 @mic_dma_avail_desc_ring_space(%struct.mic_dma_chan* %17, i32 4)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %44

22:                                               ; preds = %4
  %23 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %10, align 8
  %24 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %10, align 8
  %27 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @mic_dma_prep_status_desc(i32* %29, i32 %30, i32 %31, i32 0)
  %33 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %10, align 8
  %34 = call i32 @mic_dma_hw_ring_inc_head(%struct.mic_dma_chan* %33)
  %35 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %10, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @mic_dma_do_dma(%struct.mic_dma_chan* %35, i64 %36, i32 0, i32 0, i32 0)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %22
  br label %44

41:                                               ; preds = %22
  %42 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %10, align 8
  %43 = call %struct.dma_async_tx_descriptor* @allocate_tx(%struct.mic_dma_chan* %42)
  store %struct.dma_async_tx_descriptor* %43, %struct.dma_async_tx_descriptor** %5, align 8
  br label %52

44:                                               ; preds = %40, %21
  %45 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %10, align 8
  %46 = call i32 @mic_dma_ch_to_device(%struct.mic_dma_chan* %45)
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %10, align 8
  %50 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %49, i32 0, i32 1
  %51 = call i32 @spin_unlock(i32* %50)
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %5, align 8
  br label %52

52:                                               ; preds = %44, %41
  %53 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  ret %struct.dma_async_tx_descriptor* %53
}

declare dso_local %struct.mic_dma_chan* @to_mic_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mic_dma_avail_desc_ring_space(%struct.mic_dma_chan*, i32) #1

declare dso_local i32 @mic_dma_prep_status_desc(i32*, i32, i32, i32) #1

declare dso_local i32 @mic_dma_hw_ring_inc_head(%struct.mic_dma_chan*) #1

declare dso_local i32 @mic_dma_do_dma(%struct.mic_dma_chan*, i64, i32, i32, i32) #1

declare dso_local %struct.dma_async_tx_descriptor* @allocate_tx(%struct.mic_dma_chan*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mic_dma_ch_to_device(%struct.mic_dma_chan*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
