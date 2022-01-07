; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_k3dma.c_k3_dma_issue_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_k3dma.c_k3_dma_issue_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.k3_dma_chan = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.k3_dma_dev = type { %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"vchan %p: issued\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"vchan %p: nothing to issue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @k3_dma_issue_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @k3_dma_issue_pending(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.k3_dma_chan*, align 8
  %4 = alloca %struct.k3_dma_dev*, align 8
  %5 = alloca i64, align 8
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
  %13 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %3, align 8
  %18 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %17, i32 0, i32 0
  %19 = call i64 @vchan_issue_pending(%struct.TYPE_5__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %55

21:                                               ; preds = %1
  %22 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %4, align 8
  %23 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %22, i32 0, i32 1
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %3, align 8
  %26 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %51, label %29

29:                                               ; preds = %21
  %30 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %3, align 8
  %31 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %30, i32 0, i32 1
  %32 = call i64 @list_empty(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %29
  %35 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %3, align 8
  %36 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %35, i32 0, i32 1
  %37 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %4, align 8
  %38 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %37, i32 0, i32 3
  %39 = call i32 @list_add_tail(i32* %36, i32* %38)
  %40 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %4, align 8
  %41 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %40, i32 0, i32 2
  %42 = call i32 @tasklet_schedule(i32* %41)
  %43 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %4, align 8
  %44 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %3, align 8
  %48 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %47, i32 0, i32 0
  %49 = call i32 @dev_dbg(i32 %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %48)
  br label %50

50:                                               ; preds = %34, %29
  br label %51

51:                                               ; preds = %50, %21
  %52 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %4, align 8
  %53 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %52, i32 0, i32 1
  %54 = call i32 @spin_unlock(i32* %53)
  br label %63

55:                                               ; preds = %1
  %56 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %4, align 8
  %57 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %3, align 8
  %61 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %60, i32 0, i32 0
  %62 = call i32 @dev_dbg(i32 %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_5__* %61)
  br label %63

63:                                               ; preds = %55, %51
  %64 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %3, align 8
  %65 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  ret void
}

declare dso_local %struct.k3_dma_chan* @to_k3_chan(%struct.dma_chan*) #1

declare dso_local %struct.k3_dma_dev* @to_k3_dma(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @vchan_issue_pending(%struct.TYPE_5__*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
