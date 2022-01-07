; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-dma.c_stm32_dma_issue_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-dma.c_stm32_dma_issue_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.stm32_dma_chan = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"vchan %pK: issued\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @stm32_dma_issue_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_dma_issue_pending(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.stm32_dma_chan*, align 8
  %4 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %5 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %6 = call %struct.stm32_dma_chan* @to_stm32_dma_chan(%struct.dma_chan* %5)
  store %struct.stm32_dma_chan* %6, %struct.stm32_dma_chan** %3, align 8
  %7 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %3, align 8
  %8 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %3, align 8
  %13 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %12, i32 0, i32 0
  %14 = call i64 @vchan_issue_pending(%struct.TYPE_3__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %1
  %17 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %3, align 8
  %18 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %16
  %22 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %3, align 8
  %23 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %21
  %27 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %3, align 8
  %28 = call i32 @chan2dev(%struct.stm32_dma_chan* %27)
  %29 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %3, align 8
  %30 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %29, i32 0, i32 0
  %31 = call i32 @dev_dbg(i32 %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__* %30)
  %32 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %3, align 8
  %33 = call i32 @stm32_dma_start_transfer(%struct.stm32_dma_chan* %32)
  br label %34

34:                                               ; preds = %26, %21, %16, %1
  %35 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %3, align 8
  %36 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  ret void
}

declare dso_local %struct.stm32_dma_chan* @to_stm32_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @vchan_issue_pending(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_dbg(i32, i8*, %struct.TYPE_3__*) #1

declare dso_local i32 @chan2dev(%struct.stm32_dma_chan*) #1

declare dso_local i32 @stm32_dma_start_transfer(%struct.stm32_dma_chan*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
