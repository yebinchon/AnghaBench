; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_k3dma.c_k3_dma_transfer_pause.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_k3dma.c_k3_dma_transfer_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.k3_dma_chan = type { i64, i32, i32, %struct.k3_dma_phy* }
%struct.k3_dma_phy = type { i32 }
%struct.k3_dma_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"vchan %p: pause\0A\00", align 1
@DMA_IN_PROGRESS = common dso_local global i64 0, align 8
@DMA_PAUSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @k3_dma_transfer_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @k3_dma_transfer_pause(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.k3_dma_chan*, align 8
  %4 = alloca %struct.k3_dma_dev*, align 8
  %5 = alloca %struct.k3_dma_phy*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %7 = call %struct.k3_dma_chan* @to_k3_chan(%struct.dma_chan* %6)
  store %struct.k3_dma_chan* %7, %struct.k3_dma_chan** %3, align 8
  %8 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %9 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.k3_dma_dev* @to_k3_dma(i32 %10)
  store %struct.k3_dma_dev* %11, %struct.k3_dma_dev** %4, align 8
  %12 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %3, align 8
  %13 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %12, i32 0, i32 3
  %14 = load %struct.k3_dma_phy*, %struct.k3_dma_phy** %13, align 8
  store %struct.k3_dma_phy* %14, %struct.k3_dma_phy** %5, align 8
  %15 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %4, align 8
  %16 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %3, align 8
  %20 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %19, i32 0, i32 2
  %21 = call i32 @dev_dbg(i32 %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %20)
  %22 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %3, align 8
  %23 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DMA_IN_PROGRESS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %1
  %28 = load i64, i64* @DMA_PAUSED, align 8
  %29 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %3, align 8
  %30 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.k3_dma_phy*, %struct.k3_dma_phy** %5, align 8
  %32 = icmp ne %struct.k3_dma_phy* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.k3_dma_phy*, %struct.k3_dma_phy** %5, align 8
  %35 = call i32 @k3_dma_pause_dma(%struct.k3_dma_phy* %34, i32 0)
  br label %46

36:                                               ; preds = %27
  %37 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %4, align 8
  %38 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %37, i32 0, i32 0
  %39 = call i32 @spin_lock(i32* %38)
  %40 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %3, align 8
  %41 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %40, i32 0, i32 1
  %42 = call i32 @list_del_init(i32* %41)
  %43 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %4, align 8
  %44 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock(i32* %44)
  br label %46

46:                                               ; preds = %36, %33
  br label %47

47:                                               ; preds = %46, %1
  ret i32 0
}

declare dso_local %struct.k3_dma_chan* @to_k3_chan(%struct.dma_chan*) #1

declare dso_local %struct.k3_dma_dev* @to_k3_dma(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32*) #1

declare dso_local i32 @k3_dma_pause_dma(%struct.k3_dma_phy*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
