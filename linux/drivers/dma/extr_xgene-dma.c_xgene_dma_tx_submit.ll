; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_tx_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_tx_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.xgene_dma_desc_sw = type { i32 }
%struct.xgene_dma_chan = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_async_tx_descriptor*)* @xgene_dma_tx_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_dma_tx_submit(%struct.dma_async_tx_descriptor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_async_tx_descriptor*, align 8
  %4 = alloca %struct.xgene_dma_desc_sw*, align 8
  %5 = alloca %struct.xgene_dma_chan*, align 8
  %6 = alloca i32, align 4
  store %struct.dma_async_tx_descriptor* %0, %struct.dma_async_tx_descriptor** %3, align 8
  %7 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %8 = icmp ne %struct.dma_async_tx_descriptor* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %37

16:                                               ; preds = %1
  %17 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %18 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.xgene_dma_chan* @to_dma_chan(i32 %19)
  store %struct.xgene_dma_chan* %20, %struct.xgene_dma_chan** %5, align 8
  %21 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %22 = call %struct.xgene_dma_desc_sw* @to_dma_desc_sw(%struct.dma_async_tx_descriptor* %21)
  store %struct.xgene_dma_desc_sw* %22, %struct.xgene_dma_desc_sw** %4, align 8
  %23 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %5, align 8
  %24 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %23, i32 0, i32 0
  %25 = call i32 @spin_lock_bh(i32* %24)
  %26 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %27 = call i32 @dma_cookie_assign(%struct.dma_async_tx_descriptor* %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.xgene_dma_desc_sw*, %struct.xgene_dma_desc_sw** %4, align 8
  %29 = getelementptr inbounds %struct.xgene_dma_desc_sw, %struct.xgene_dma_desc_sw* %28, i32 0, i32 0
  %30 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %5, align 8
  %31 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %30, i32 0, i32 1
  %32 = call i32 @list_splice_tail_init(i32* %29, i32* %31)
  %33 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %5, align 8
  %34 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock_bh(i32* %34)
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %16, %13
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.xgene_dma_chan* @to_dma_chan(i32) #1

declare dso_local %struct.xgene_dma_desc_sw* @to_dma_desc_sw(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @dma_cookie_assign(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @list_splice_tail_init(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
