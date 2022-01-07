; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_timb_dma.c___td_dma_done_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_timb_dma.c___td_dma_done_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timb_dma_chan = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.timb_dma = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"Checking irq: %d, td: %p\0A\00", align 1
@TIMBDMA_ISR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timb_dma_chan*)* @__td_dma_done_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__td_dma_done_ack(%struct.timb_dma_chan* %0) #0 {
  %2 = alloca %struct.timb_dma_chan*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.timb_dma*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.timb_dma_chan* %0, %struct.timb_dma_chan** %2, align 8
  %7 = load %struct.timb_dma_chan*, %struct.timb_dma_chan** %2, align 8
  %8 = getelementptr inbounds %struct.timb_dma_chan, %struct.timb_dma_chan* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  %11 = load %struct.timb_dma_chan*, %struct.timb_dma_chan** %2, align 8
  %12 = bitcast %struct.timb_dma_chan* %11 to i32*
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = sub i64 0, %15
  %17 = getelementptr inbounds i32, i32* %12, i64 %16
  %18 = getelementptr inbounds i32, i32* %17, i64 -8
  %19 = bitcast i32* %18 to %struct.timb_dma*
  store %struct.timb_dma* %19, %struct.timb_dma** %4, align 8
  store i32 0, i32* %6, align 4
  %20 = load %struct.timb_dma_chan*, %struct.timb_dma_chan** %2, align 8
  %21 = getelementptr inbounds %struct.timb_dma_chan, %struct.timb_dma_chan* %20, i32 0, i32 0
  %22 = call i32 @chan2dev(%struct.TYPE_2__* %21)
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.timb_dma*, %struct.timb_dma** %4, align 8
  %25 = call i32 @dev_dbg(i32 %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %23, %struct.timb_dma* %24)
  %26 = load %struct.timb_dma*, %struct.timb_dma** %4, align 8
  %27 = getelementptr inbounds %struct.timb_dma, %struct.timb_dma* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TIMBDMA_ISR, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @ioread32(i64 %30)
  %32 = load i32, i32* %3, align 4
  %33 = shl i32 1, %32
  %34 = and i32 %31, %33
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %1
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.timb_dma*, %struct.timb_dma** %4, align 8
  %40 = getelementptr inbounds %struct.timb_dma, %struct.timb_dma* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TIMBDMA_ISR, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @iowrite32(i32 %38, i64 %43)
  store i32 1, i32* %6, align 4
  br label %45

45:                                               ; preds = %37, %1
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, %struct.timb_dma*) #1

declare dso_local i32 @chan2dev(%struct.TYPE_2__*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
