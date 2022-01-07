; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_bcm2835-dma.c_bcm2835_dma_alloc_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_bcm2835-dma.c_bcm2835_dma_alloc_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.bcm2835_chan = type { i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Allocating DMA channel %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"unable to allocate descriptor pool\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@bcm2835_dma_callback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"DMA IRQ\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @bcm2835_dma_alloc_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_dma_alloc_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.bcm2835_chan*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %7 = call %struct.bcm2835_chan* @to_bcm2835_dma_chan(%struct.dma_chan* %6)
  store %struct.bcm2835_chan* %7, %struct.bcm2835_chan** %4, align 8
  %8 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %4, align 8
  %9 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %4, align 8
  %17 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_dbg(%struct.device* %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = call i32 @dev_name(%struct.device* %20)
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = call i32 @dma_pool_create(i32 %21, %struct.device* %22, i32 4, i32 32, i32 0)
  %24 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %4, align 8
  %25 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %4, align 8
  %27 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %1
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %45

35:                                               ; preds = %1
  %36 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %4, align 8
  %37 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @bcm2835_dma_callback, align 4
  %40 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %4, align 8
  %41 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %4, align 8
  %44 = call i32 @request_irq(i32 %38, i32 %39, i32 %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.bcm2835_chan* %43)
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %35, %30
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.bcm2835_chan* @to_bcm2835_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @dma_pool_create(i32, %struct.device*, i32, i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.bcm2835_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
