; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_idma64.c_idma64_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_idma64.c_idma64_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.idma64_chan = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@DMA_PAUSED = common dso_local global i64 0, align 8
@DMA_IN_PROGRESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @idma64_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idma64_resume(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.idma64_chan*, align 8
  %4 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %5 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %6 = call %struct.idma64_chan* @to_idma64_chan(%struct.dma_chan* %5)
  store %struct.idma64_chan* %6, %struct.idma64_chan** %3, align 8
  %7 = load %struct.idma64_chan*, %struct.idma64_chan** %3, align 8
  %8 = getelementptr inbounds %struct.idma64_chan, %struct.idma64_chan* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.idma64_chan*, %struct.idma64_chan** %3, align 8
  %13 = getelementptr inbounds %struct.idma64_chan, %struct.idma64_chan* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %1
  %17 = load %struct.idma64_chan*, %struct.idma64_chan** %3, align 8
  %18 = getelementptr inbounds %struct.idma64_chan, %struct.idma64_chan* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DMA_PAUSED, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %16
  %25 = load i64, i64* @DMA_IN_PROGRESS, align 8
  %26 = load %struct.idma64_chan*, %struct.idma64_chan** %3, align 8
  %27 = getelementptr inbounds %struct.idma64_chan, %struct.idma64_chan* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i64 %25, i64* %29, align 8
  %30 = load %struct.idma64_chan*, %struct.idma64_chan** %3, align 8
  %31 = call i32 @idma64_chan_activate(%struct.idma64_chan* %30)
  br label %32

32:                                               ; preds = %24, %16, %1
  %33 = load %struct.idma64_chan*, %struct.idma64_chan** %3, align 8
  %34 = getelementptr inbounds %struct.idma64_chan, %struct.idma64_chan* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  ret i32 0
}

declare dso_local %struct.idma64_chan* @to_idma64_chan(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @idma64_chan_activate(%struct.idma64_chan*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
