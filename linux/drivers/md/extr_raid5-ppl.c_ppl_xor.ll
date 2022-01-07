; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-ppl.c_ppl_xor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-ppl.c_ppl_xor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.async_submit_ctl = type { i32 }
%struct.dma_async_tx_descriptor = type { i32 }

@ASYNC_TX_ACK = common dso_local global i32 0, align 4
@ASYNC_TX_XOR_DROP_DST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.page*, %struct.page*)* @ppl_xor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppl_xor(i32 %0, %struct.page* %1, %struct.page* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.async_submit_ctl, align 4
  %8 = alloca %struct.dma_async_tx_descriptor*, align 8
  %9 = alloca [2 x %struct.page*], align 16
  store i32 %0, i32* %4, align 4
  store %struct.page* %1, %struct.page** %5, align 8
  store %struct.page* %2, %struct.page** %6, align 8
  %10 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %9, i64 0, i64 0
  %11 = load %struct.page*, %struct.page** %5, align 8
  store %struct.page* %11, %struct.page** %10, align 8
  %12 = getelementptr inbounds %struct.page*, %struct.page** %10, i64 1
  %13 = load %struct.page*, %struct.page** %6, align 8
  store %struct.page* %13, %struct.page** %12, align 8
  %14 = load i32, i32* @ASYNC_TX_ACK, align 4
  %15 = load i32, i32* @ASYNC_TX_XOR_DROP_DST, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @init_async_submit(%struct.async_submit_ctl* %7, i32 %16, i32* null, i32* null, i32* null, i32* null)
  %18 = load %struct.page*, %struct.page** %5, align 8
  %19 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %9, i64 0, i64 0
  %20 = load i32, i32* %4, align 4
  %21 = call %struct.dma_async_tx_descriptor* @async_xor(%struct.page* %18, %struct.page** %19, i32 0, i32 2, i32 %20, %struct.async_submit_ctl* %7)
  store %struct.dma_async_tx_descriptor* %21, %struct.dma_async_tx_descriptor** %8, align 8
  %22 = call i32 @async_tx_quiesce(%struct.dma_async_tx_descriptor** %8)
  ret void
}

declare dso_local i32 @init_async_submit(%struct.async_submit_ctl*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.dma_async_tx_descriptor* @async_xor(%struct.page*, %struct.page**, i32, i32, i32, %struct.async_submit_ctl*) #1

declare dso_local i32 @async_tx_quiesce(%struct.dma_async_tx_descriptor**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
