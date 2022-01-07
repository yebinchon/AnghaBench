; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_at_hdmac.c_atc_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_at_hdmac.c_atc_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_tx_state = type { i32 }
%struct.at_dma_chan = type { i32 }

@DMA_COMPLETE = common dso_local global i32 0, align 4
@DMA_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"get residual bytes error\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"tx_status %d: cookie = %d residue = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i32, %struct.dma_tx_state*)* @atc_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atc_tx_status(%struct.dma_chan* %0, i32 %1, %struct.dma_tx_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_tx_state*, align 8
  %8 = alloca %struct.at_dma_chan*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dma_tx_state* %2, %struct.dma_tx_state** %7, align 8
  %12 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %13 = call %struct.at_dma_chan* @to_at_dma_chan(%struct.dma_chan* %12)
  store %struct.at_dma_chan* %13, %struct.at_dma_chan** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %17 = call i32 @dma_cookie_status(%struct.dma_chan* %14, i32 %15, %struct.dma_tx_state* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @DMA_COMPLETE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %4, align 4
  br label %62

23:                                               ; preds = %3
  %24 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %25 = icmp ne %struct.dma_tx_state* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @DMA_ERROR, align 4
  store i32 %27, i32* %4, align 4
  br label %62

28:                                               ; preds = %23
  %29 = load %struct.at_dma_chan*, %struct.at_dma_chan** %8, align 8
  %30 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %29, i32 0, i32 0
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @atc_get_bytes_left(%struct.dma_chan* %33, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load %struct.at_dma_chan*, %struct.at_dma_chan** %8, align 8
  %37 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %36, i32 0, i32 0
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %28
  %46 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %47 = call i32 @chan2dev(%struct.dma_chan* %46)
  %48 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @DMA_ERROR, align 4
  store i32 %49, i32* %4, align 4
  br label %62

50:                                               ; preds = %28
  %51 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @dma_set_residue(%struct.dma_tx_state* %51, i32 %52)
  br label %54

54:                                               ; preds = %50
  %55 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %56 = call i32 @chan2dev(%struct.dma_chan* %55)
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %56, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58, i32 %59)
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %54, %45, %26, %21
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.at_dma_chan* @to_at_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dma_cookie_status(%struct.dma_chan*, i32, %struct.dma_tx_state*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atc_get_bytes_left(%struct.dma_chan*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_vdbg(i32, i8*, ...) #1

declare dso_local i32 @chan2dev(%struct.dma_chan*) #1

declare dso_local i32 @dma_set_residue(%struct.dma_tx_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
