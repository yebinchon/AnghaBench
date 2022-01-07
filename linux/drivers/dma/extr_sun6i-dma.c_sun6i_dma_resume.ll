; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sun6i-dma.c_sun6i_dma_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sun6i-dma.c_sun6i_dma_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.sun6i_dma_dev = type { i32, i32 }
%struct.sun6i_vchan = type { %struct.TYPE_2__, i32, %struct.sun6i_pchan* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sun6i_pchan = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"vchan %p: resume\0A\00", align 1
@DMA_CHAN_PAUSE_RESUME = common dso_local global i32 0, align 4
@DMA_CHAN_PAUSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @sun6i_dma_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun6i_dma_resume(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.sun6i_dma_dev*, align 8
  %4 = alloca %struct.sun6i_vchan*, align 8
  %5 = alloca %struct.sun6i_pchan*, align 8
  %6 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %8 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.sun6i_dma_dev* @to_sun6i_dma_dev(i32 %9)
  store %struct.sun6i_dma_dev* %10, %struct.sun6i_dma_dev** %3, align 8
  %11 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %12 = call %struct.sun6i_vchan* @to_sun6i_vchan(%struct.dma_chan* %11)
  store %struct.sun6i_vchan* %12, %struct.sun6i_vchan** %4, align 8
  %13 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %4, align 8
  %14 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %13, i32 0, i32 2
  %15 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %14, align 8
  store %struct.sun6i_pchan* %15, %struct.sun6i_pchan** %5, align 8
  %16 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %17 = call i32 @chan2dev(%struct.dma_chan* %16)
  %18 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %4, align 8
  %19 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %18, i32 0, i32 0
  %20 = call i32 @dev_dbg(i32 %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.TYPE_2__* %19)
  %21 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %4, align 8
  %22 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %5, align 8
  %27 = icmp ne %struct.sun6i_pchan* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %1
  %29 = load i32, i32* @DMA_CHAN_PAUSE_RESUME, align 4
  %30 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %5, align 8
  %31 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DMA_CHAN_PAUSE, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 %29, i64 %34)
  br label %55

36:                                               ; preds = %1
  %37 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %4, align 8
  %38 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = call i32 @list_empty(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %36
  %43 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %3, align 8
  %44 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %43, i32 0, i32 0
  %45 = call i32 @spin_lock(i32* %44)
  %46 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %4, align 8
  %47 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %46, i32 0, i32 1
  %48 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %3, align 8
  %49 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %48, i32 0, i32 1
  %50 = call i32 @list_add_tail(i32* %47, i32* %49)
  %51 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %3, align 8
  %52 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock(i32* %52)
  br label %54

54:                                               ; preds = %42, %36
  br label %55

55:                                               ; preds = %54, %28
  %56 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %4, align 8
  %57 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  ret i32 0
}

declare dso_local %struct.sun6i_dma_dev* @to_sun6i_dma_dev(i32) #1

declare dso_local %struct.sun6i_vchan* @to_sun6i_vchan(%struct.dma_chan*) #1

declare dso_local i32 @dev_dbg(i32, i8*, %struct.TYPE_2__*) #1

declare dso_local i32 @chan2dev(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
