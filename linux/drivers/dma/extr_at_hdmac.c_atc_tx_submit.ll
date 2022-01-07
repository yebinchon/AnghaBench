; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_at_hdmac.c_atc_tx_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_at_hdmac.c_atc_tx_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.at_desc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.at_dma_chan = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"tx_submit: started %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"tx_submit: queued %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_async_tx_descriptor*)* @atc_tx_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atc_tx_submit(%struct.dma_async_tx_descriptor* %0) #0 {
  %2 = alloca %struct.dma_async_tx_descriptor*, align 8
  %3 = alloca %struct.at_desc*, align 8
  %4 = alloca %struct.at_dma_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.dma_async_tx_descriptor* %0, %struct.dma_async_tx_descriptor** %2, align 8
  %7 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %2, align 8
  %8 = call %struct.at_desc* @txd_to_at_desc(%struct.dma_async_tx_descriptor* %7)
  store %struct.at_desc* %8, %struct.at_desc** %3, align 8
  %9 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %2, align 8
  %10 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.at_dma_chan* @to_at_dma_chan(i32 %11)
  store %struct.at_dma_chan* %12, %struct.at_dma_chan** %4, align 8
  %13 = load %struct.at_dma_chan*, %struct.at_dma_chan** %4, align 8
  %14 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %13, i32 0, i32 0
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %2, align 8
  %18 = call i32 @dma_cookie_assign(%struct.dma_async_tx_descriptor* %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.at_dma_chan*, %struct.at_dma_chan** %4, align 8
  %20 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %19, i32 0, i32 2
  %21 = call i64 @list_empty(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %1
  %24 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %2, align 8
  %25 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @chan2dev(i32 %26)
  %28 = load %struct.at_desc*, %struct.at_desc** %3, align 8
  %29 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_vdbg(i32 %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.at_dma_chan*, %struct.at_dma_chan** %4, align 8
  %34 = load %struct.at_desc*, %struct.at_desc** %3, align 8
  %35 = call i32 @atc_dostart(%struct.at_dma_chan* %33, %struct.at_desc* %34)
  %36 = load %struct.at_desc*, %struct.at_desc** %3, align 8
  %37 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %36, i32 0, i32 0
  %38 = load %struct.at_dma_chan*, %struct.at_dma_chan** %4, align 8
  %39 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %38, i32 0, i32 2
  %40 = call i32 @list_add_tail(i32* %37, i32* %39)
  br label %56

41:                                               ; preds = %1
  %42 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %2, align 8
  %43 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @chan2dev(i32 %44)
  %46 = load %struct.at_desc*, %struct.at_desc** %3, align 8
  %47 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dev_vdbg(i32 %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load %struct.at_desc*, %struct.at_desc** %3, align 8
  %52 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %51, i32 0, i32 0
  %53 = load %struct.at_dma_chan*, %struct.at_dma_chan** %4, align 8
  %54 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %53, i32 0, i32 1
  %55 = call i32 @list_add_tail(i32* %52, i32* %54)
  br label %56

56:                                               ; preds = %41, %23
  %57 = load %struct.at_dma_chan*, %struct.at_dma_chan** %4, align 8
  %58 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %57, i32 0, i32 0
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local %struct.at_desc* @txd_to_at_desc(%struct.dma_async_tx_descriptor*) #1

declare dso_local %struct.at_dma_chan* @to_at_dma_chan(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dma_cookie_assign(%struct.dma_async_tx_descriptor*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32) #1

declare dso_local i32 @chan2dev(i32) #1

declare dso_local i32 @atc_dostart(%struct.at_dma_chan*, %struct.at_desc*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
