; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_altera-msgdma.c_msgdma_alloc_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_altera-msgdma.c_msgdma_alloc_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.msgdma_device = type { i32, i32, i32, i32, %struct.msgdma_sw_desc* }
%struct.msgdma_sw_desc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MSGDMA_DESC_NUM = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@msgdma_tx_submit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @msgdma_alloc_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msgdma_alloc_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.msgdma_device*, align 8
  %5 = alloca %struct.msgdma_sw_desc*, align 8
  %6 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %8 = call %struct.msgdma_device* @to_mdev(%struct.dma_chan* %7)
  store %struct.msgdma_device* %8, %struct.msgdma_device** %4, align 8
  %9 = load i32, i32* @MSGDMA_DESC_NUM, align 4
  %10 = load i32, i32* @GFP_NOWAIT, align 4
  %11 = call %struct.msgdma_sw_desc* @kcalloc(i32 %9, i32 8, i32 %10)
  %12 = load %struct.msgdma_device*, %struct.msgdma_device** %4, align 8
  %13 = getelementptr inbounds %struct.msgdma_device, %struct.msgdma_device* %12, i32 0, i32 4
  store %struct.msgdma_sw_desc* %11, %struct.msgdma_sw_desc** %13, align 8
  %14 = load %struct.msgdma_device*, %struct.msgdma_device** %4, align 8
  %15 = getelementptr inbounds %struct.msgdma_device, %struct.msgdma_device* %14, i32 0, i32 4
  %16 = load %struct.msgdma_sw_desc*, %struct.msgdma_sw_desc** %15, align 8
  %17 = icmp ne %struct.msgdma_sw_desc* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %60

21:                                               ; preds = %1
  %22 = load %struct.msgdma_device*, %struct.msgdma_device** %4, align 8
  %23 = getelementptr inbounds %struct.msgdma_device, %struct.msgdma_device* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load i32, i32* @MSGDMA_DESC_NUM, align 4
  %25 = load %struct.msgdma_device*, %struct.msgdma_device** %4, align 8
  %26 = getelementptr inbounds %struct.msgdma_device, %struct.msgdma_device* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.msgdma_device*, %struct.msgdma_device** %4, align 8
  %28 = getelementptr inbounds %struct.msgdma_device, %struct.msgdma_device* %27, i32 0, i32 2
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %55, %21
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @MSGDMA_DESC_NUM, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %30
  %35 = load %struct.msgdma_device*, %struct.msgdma_device** %4, align 8
  %36 = getelementptr inbounds %struct.msgdma_device, %struct.msgdma_device* %35, i32 0, i32 4
  %37 = load %struct.msgdma_sw_desc*, %struct.msgdma_sw_desc** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.msgdma_sw_desc, %struct.msgdma_sw_desc* %37, i64 %39
  store %struct.msgdma_sw_desc* %40, %struct.msgdma_sw_desc** %5, align 8
  %41 = load %struct.msgdma_sw_desc*, %struct.msgdma_sw_desc** %5, align 8
  %42 = getelementptr inbounds %struct.msgdma_sw_desc, %struct.msgdma_sw_desc* %41, i32 0, i32 1
  %43 = load %struct.msgdma_device*, %struct.msgdma_device** %4, align 8
  %44 = getelementptr inbounds %struct.msgdma_device, %struct.msgdma_device* %43, i32 0, i32 3
  %45 = call i32 @dma_async_tx_descriptor_init(%struct.TYPE_2__* %42, i32* %44)
  %46 = load i32, i32* @msgdma_tx_submit, align 4
  %47 = load %struct.msgdma_sw_desc*, %struct.msgdma_sw_desc** %5, align 8
  %48 = getelementptr inbounds %struct.msgdma_sw_desc, %struct.msgdma_sw_desc* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  %50 = load %struct.msgdma_sw_desc*, %struct.msgdma_sw_desc** %5, align 8
  %51 = getelementptr inbounds %struct.msgdma_sw_desc, %struct.msgdma_sw_desc* %50, i32 0, i32 0
  %52 = load %struct.msgdma_device*, %struct.msgdma_device** %4, align 8
  %53 = getelementptr inbounds %struct.msgdma_device, %struct.msgdma_device* %52, i32 0, i32 2
  %54 = call i32 @list_add_tail(i32* %51, i32* %53)
  br label %55

55:                                               ; preds = %34
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %30

58:                                               ; preds = %30
  %59 = load i32, i32* @MSGDMA_DESC_NUM, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %18
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.msgdma_device* @to_mdev(%struct.dma_chan*) #1

declare dso_local %struct.msgdma_sw_desc* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dma_async_tx_descriptor_init(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
