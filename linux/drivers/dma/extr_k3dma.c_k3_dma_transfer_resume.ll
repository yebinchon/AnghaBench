; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_k3dma.c_k3_dma_transfer_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_k3dma.c_k3_dma_transfer_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.k3_dma_chan = type { i64, %struct.TYPE_4__, i32, %struct.k3_dma_phy* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.k3_dma_phy = type { i32 }
%struct.k3_dma_dev = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"vchan %p: resume\0A\00", align 1
@DMA_PAUSED = common dso_local global i64 0, align 8
@DMA_IN_PROGRESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @k3_dma_transfer_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @k3_dma_transfer_resume(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.k3_dma_chan*, align 8
  %4 = alloca %struct.k3_dma_dev*, align 8
  %5 = alloca %struct.k3_dma_phy*, align 8
  %6 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %8 = call %struct.k3_dma_chan* @to_k3_chan(%struct.dma_chan* %7)
  store %struct.k3_dma_chan* %8, %struct.k3_dma_chan** %3, align 8
  %9 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %10 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.k3_dma_dev* @to_k3_dma(i32 %11)
  store %struct.k3_dma_dev* %12, %struct.k3_dma_dev** %4, align 8
  %13 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %3, align 8
  %14 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %13, i32 0, i32 3
  %15 = load %struct.k3_dma_phy*, %struct.k3_dma_phy** %14, align 8
  store %struct.k3_dma_phy* %15, %struct.k3_dma_phy** %5, align 8
  %16 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %4, align 8
  %17 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %3, align 8
  %21 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %20, i32 0, i32 1
  %22 = call i32 @dev_dbg(i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %21)
  %23 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %3, align 8
  %24 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %3, align 8
  %29 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DMA_PAUSED, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %62

33:                                               ; preds = %1
  %34 = load i64, i64* @DMA_IN_PROGRESS, align 8
  %35 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %3, align 8
  %36 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.k3_dma_phy*, %struct.k3_dma_phy** %5, align 8
  %38 = icmp ne %struct.k3_dma_phy* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.k3_dma_phy*, %struct.k3_dma_phy** %5, align 8
  %41 = call i32 @k3_dma_pause_dma(%struct.k3_dma_phy* %40, i32 1)
  br label %61

42:                                               ; preds = %33
  %43 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %3, align 8
  %44 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = call i32 @list_empty(i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %42
  %49 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %4, align 8
  %50 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %49, i32 0, i32 0
  %51 = call i32 @spin_lock(i32* %50)
  %52 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %3, align 8
  %53 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %52, i32 0, i32 2
  %54 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %4, align 8
  %55 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %54, i32 0, i32 1
  %56 = call i32 @list_add_tail(i32* %53, i32* %55)
  %57 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %4, align 8
  %58 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock(i32* %58)
  br label %60

60:                                               ; preds = %48, %42
  br label %61

61:                                               ; preds = %60, %39
  br label %62

62:                                               ; preds = %61, %1
  %63 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %3, align 8
  %64 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  ret i32 0
}

declare dso_local %struct.k3_dma_chan* @to_k3_chan(%struct.dma_chan*) #1

declare dso_local %struct.k3_dma_dev* @to_k3_dma(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @k3_dma_pause_dma(%struct.k3_dma_phy*, i32) #1

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
