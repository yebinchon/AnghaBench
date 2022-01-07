; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_get_phy_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_get_phy_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl08x_phy_chan = type { i32, %struct.pl08x_dma_chan*, i32 }
%struct.pl08x_driver_data = type { %struct.TYPE_2__*, %struct.pl08x_phy_chan* }
%struct.TYPE_2__ = type { i32 }
%struct.pl08x_dma_chan = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pl08x_phy_chan* (%struct.pl08x_driver_data*, %struct.pl08x_dma_chan*)* @pl08x_get_phy_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pl08x_phy_chan* @pl08x_get_phy_channel(%struct.pl08x_driver_data* %0, %struct.pl08x_dma_chan* %1) #0 {
  %3 = alloca %struct.pl08x_phy_chan*, align 8
  %4 = alloca %struct.pl08x_driver_data*, align 8
  %5 = alloca %struct.pl08x_dma_chan*, align 8
  %6 = alloca %struct.pl08x_phy_chan*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.pl08x_driver_data* %0, %struct.pl08x_driver_data** %4, align 8
  store %struct.pl08x_dma_chan* %1, %struct.pl08x_dma_chan** %5, align 8
  store %struct.pl08x_phy_chan* null, %struct.pl08x_phy_chan** %6, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %50, %2
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %4, align 8
  %12 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %10, %15
  br i1 %16, label %17, label %53

17:                                               ; preds = %9
  %18 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %4, align 8
  %19 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %18, i32 0, i32 1
  %20 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %20, i64 %22
  store %struct.pl08x_phy_chan* %23, %struct.pl08x_phy_chan** %6, align 8
  %24 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %6, align 8
  %25 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %24, i32 0, i32 0
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %6, align 8
  %29 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %17
  %33 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %6, align 8
  %34 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %33, i32 0, i32 1
  %35 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %34, align 8
  %36 = icmp ne %struct.pl08x_dma_chan* %35, null
  br i1 %36, label %45, label %37

37:                                               ; preds = %32
  %38 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %5, align 8
  %39 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %6, align 8
  %40 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %39, i32 0, i32 1
  store %struct.pl08x_dma_chan* %38, %struct.pl08x_dma_chan** %40, align 8
  %41 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %6, align 8
  %42 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %41, i32 0, i32 0
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  br label %53

45:                                               ; preds = %32, %17
  %46 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %6, align 8
  %47 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %46, i32 0, i32 0
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  br label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %9

53:                                               ; preds = %37, %9
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.pl08x_driver_data*, %struct.pl08x_driver_data** %4, align 8
  %56 = getelementptr inbounds %struct.pl08x_driver_data, %struct.pl08x_driver_data* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %54, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  store %struct.pl08x_phy_chan* null, %struct.pl08x_phy_chan** %3, align 8
  br label %64

62:                                               ; preds = %53
  %63 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %6, align 8
  store %struct.pl08x_phy_chan* %63, %struct.pl08x_phy_chan** %3, align 8
  br label %64

64:                                               ; preds = %62, %61
  %65 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %3, align 8
  ret %struct.pl08x_phy_chan* %65
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
