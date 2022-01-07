; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_tdma.c_mmp_tdma_alloc_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_tdma.c_mmp_tdma_alloc_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.mmp_tdma_chan = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@mmp_tdma_tx_submit = common dso_local global i32 0, align 4
@mmp_tdma_chan_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"tdma\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @mmp_tdma_alloc_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmp_tdma_alloc_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.mmp_tdma_chan*, align 8
  %5 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %7 = call %struct.mmp_tdma_chan* @to_mmp_tdma_chan(%struct.dma_chan* %6)
  store %struct.mmp_tdma_chan* %7, %struct.mmp_tdma_chan** %4, align 8
  %8 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %4, align 8
  %9 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %8, i32 0, i32 2
  %10 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %11 = call i32 @dma_async_tx_descriptor_init(%struct.TYPE_2__* %9, %struct.dma_chan* %10)
  %12 = load i32, i32* @mmp_tdma_tx_submit, align 4
  %13 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %4, align 8
  %14 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 4
  %16 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %4, align 8
  %17 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %1
  %21 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %4, align 8
  %22 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %4, align 8
  %25 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @mmp_tdma_chan_handler, align 4
  %28 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %4, align 8
  %29 = call i32 @devm_request_irq(i32 %23, i64 %26, i32 %27, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.mmp_tdma_chan* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %36

34:                                               ; preds = %20
  br label %35

35:                                               ; preds = %34, %1
  store i32 1, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %32
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.mmp_tdma_chan* @to_mmp_tdma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dma_async_tx_descriptor_init(%struct.TYPE_2__*, %struct.dma_chan*) #1

declare dso_local i32 @devm_request_irq(i32, i64, i32, i32, i8*, %struct.mmp_tdma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
