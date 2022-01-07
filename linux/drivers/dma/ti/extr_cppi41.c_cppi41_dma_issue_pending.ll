; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_cppi41.c_cppi41_dma_issue_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_cppi41.c_cppi41_dma_issue_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.cppi41_channel = type { i32, %struct.cppi41_dd* }
%struct.cppi41_dd = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to pm_runtime_get: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @cppi41_dma_issue_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cppi41_dma_issue_pending(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.cppi41_channel*, align 8
  %4 = alloca %struct.cppi41_dd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %8 = call %struct.cppi41_channel* @to_cpp41_chan(%struct.dma_chan* %7)
  store %struct.cppi41_channel* %8, %struct.cppi41_channel** %3, align 8
  %9 = load %struct.cppi41_channel*, %struct.cppi41_channel** %3, align 8
  %10 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %9, i32 0, i32 1
  %11 = load %struct.cppi41_dd*, %struct.cppi41_dd** %10, align 8
  store %struct.cppi41_dd* %11, %struct.cppi41_dd** %4, align 8
  %12 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %13 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pm_runtime_get(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @EINPROGRESS, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp ne i32 %17, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %26 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pm_runtime_put_noidle(i32 %28)
  %30 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %31 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %68

36:                                               ; preds = %21, %1
  %37 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %38 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %37, i32 0, i32 1
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.cppi41_channel*, %struct.cppi41_channel** %3, align 8
  %42 = getelementptr inbounds %struct.cppi41_channel, %struct.cppi41_channel* %41, i32 0, i32 0
  %43 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %44 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %43, i32 0, i32 3
  %45 = call i32 @list_add_tail(i32* %42, i32* %44)
  %46 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %47 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %36
  %51 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %52 = call i32 @cppi41_run_queue(%struct.cppi41_dd* %51)
  br label %53

53:                                               ; preds = %50, %36
  %54 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %55 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %54, i32 0, i32 1
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  %58 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %59 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @pm_runtime_mark_last_busy(i32 %61)
  %63 = load %struct.cppi41_dd*, %struct.cppi41_dd** %4, align 8
  %64 = getelementptr inbounds %struct.cppi41_dd, %struct.cppi41_dd* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @pm_runtime_put_autosuspend(i32 %66)
  br label %68

68:                                               ; preds = %53, %24
  ret void
}

declare dso_local %struct.cppi41_channel* @to_cpp41_chan(%struct.dma_chan*) #1

declare dso_local i32 @pm_runtime_get(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @cppi41_run_queue(%struct.cppi41_dd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
