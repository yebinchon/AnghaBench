; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mic_x100_dma.c_mic_dma_prep_memcpy_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mic_x100_dma.c_mic_dma_prep_memcpy_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }
%struct.mic_dma_chan = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Error enqueueing dma, error=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i32, i32, i64, i64)* @mic_dma_prep_memcpy_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @mic_dma_prep_memcpy_lock(%struct.dma_chan* %0, i32 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca %struct.dma_chan*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mic_dma_chan*, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %16 = call %struct.mic_dma_chan* @to_mic_dma_chan(%struct.dma_chan* %15)
  store %struct.mic_dma_chan* %16, %struct.mic_dma_chan** %12, align 8
  %17 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %12, align 8
  %18 = call %struct.device* @mic_dma_ch_to_device(%struct.mic_dma_chan* %17)
  store %struct.device* %18, %struct.device** %13, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %5
  %22 = load i64, i64* %11, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  br label %47

25:                                               ; preds = %21, %5
  %26 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %12, align 8
  %27 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %26, i32 0, i32 0
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %12, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @mic_dma_do_dma(%struct.mic_dma_chan* %29, i64 %30, i32 %31, i32 %32, i64 %33)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %12, align 8
  %39 = call %struct.dma_async_tx_descriptor* @allocate_tx(%struct.mic_dma_chan* %38)
  store %struct.dma_async_tx_descriptor* %39, %struct.dma_async_tx_descriptor** %6, align 8
  br label %47

40:                                               ; preds = %25
  %41 = load %struct.device*, %struct.device** %13, align 8
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %12, align 8
  %45 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock(i32* %45)
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  br label %47

47:                                               ; preds = %40, %37, %24
  %48 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  ret %struct.dma_async_tx_descriptor* %48
}

declare dso_local %struct.mic_dma_chan* @to_mic_dma_chan(%struct.dma_chan*) #1

declare dso_local %struct.device* @mic_dma_ch_to_device(%struct.mic_dma_chan*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mic_dma_do_dma(%struct.mic_dma_chan*, i64, i32, i32, i64) #1

declare dso_local %struct.dma_async_tx_descriptor* @allocate_tx(%struct.mic_dma_chan*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
