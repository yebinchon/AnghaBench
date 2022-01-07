; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sun6i-dma.c_sun6i_dma_pause.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sun6i-dma.c_sun6i_dma_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.sun6i_dma_dev = type { i32 }
%struct.sun6i_vchan = type { i32, i32, %struct.sun6i_pchan* }
%struct.sun6i_pchan = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"vchan %p: pause\0A\00", align 1
@DMA_CHAN_PAUSE_PAUSE = common dso_local global i32 0, align 4
@DMA_CHAN_PAUSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @sun6i_dma_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun6i_dma_pause(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.sun6i_dma_dev*, align 8
  %4 = alloca %struct.sun6i_vchan*, align 8
  %5 = alloca %struct.sun6i_pchan*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %7 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.sun6i_dma_dev* @to_sun6i_dma_dev(i32 %8)
  store %struct.sun6i_dma_dev* %9, %struct.sun6i_dma_dev** %3, align 8
  %10 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %11 = call %struct.sun6i_vchan* @to_sun6i_vchan(%struct.dma_chan* %10)
  store %struct.sun6i_vchan* %11, %struct.sun6i_vchan** %4, align 8
  %12 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %4, align 8
  %13 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %12, i32 0, i32 2
  %14 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %13, align 8
  store %struct.sun6i_pchan* %14, %struct.sun6i_pchan** %5, align 8
  %15 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %16 = call i32 @chan2dev(%struct.dma_chan* %15)
  %17 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %4, align 8
  %18 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %17, i32 0, i32 1
  %19 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %18)
  %20 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %5, align 8
  %21 = icmp ne %struct.sun6i_pchan* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load i32, i32* @DMA_CHAN_PAUSE_PAUSE, align 4
  %24 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %5, align 8
  %25 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DMA_CHAN_PAUSE, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 %23, i64 %28)
  br label %40

30:                                               ; preds = %1
  %31 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %3, align 8
  %32 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %31, i32 0, i32 0
  %33 = call i32 @spin_lock(i32* %32)
  %34 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %4, align 8
  %35 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %34, i32 0, i32 0
  %36 = call i32 @list_del_init(i32* %35)
  %37 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %3, align 8
  %38 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock(i32* %38)
  br label %40

40:                                               ; preds = %30, %22
  ret i32 0
}

declare dso_local %struct.sun6i_dma_dev* @to_sun6i_dma_dev(i32) #1

declare dso_local %struct.sun6i_vchan* @to_sun6i_vchan(%struct.dma_chan*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32*) #1

declare dso_local i32 @chan2dev(%struct.dma_chan*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
