; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.pl08x_dma_chan = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@PL08X_CHAN_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @pl08x_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl08x_resume(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.pl08x_dma_chan*, align 8
  %5 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %7 = call %struct.pl08x_dma_chan* @to_pl08x_chan(%struct.dma_chan* %6)
  store %struct.pl08x_dma_chan* %7, %struct.pl08x_dma_chan** %4, align 8
  %8 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %4, align 8
  %9 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %4, align 8
  %14 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %1
  %18 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %4, align 8
  %19 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %4, align 8
  %24 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  store i32 0, i32* %2, align 4
  br label %41

28:                                               ; preds = %17, %1
  %29 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %4, align 8
  %30 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pl08x_resume_phy_chan(i32 %31)
  %33 = load i32, i32* @PL08X_CHAN_RUNNING, align 4
  %34 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %4, align 8
  %35 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.pl08x_dma_chan*, %struct.pl08x_dma_chan** %4, align 8
  %37 = getelementptr inbounds %struct.pl08x_dma_chan, %struct.pl08x_dma_chan* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %28, %22
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.pl08x_dma_chan* @to_pl08x_chan(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pl08x_resume_phy_chan(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
