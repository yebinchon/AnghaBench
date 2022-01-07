; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sun6i-dma.c_sun6i_dma_issue_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sun6i-dma.c_sun6i_dma_issue_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.sun6i_dma_dev = type { i32, i32, i32 }
%struct.sun6i_vchan = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"vchan %p: issued\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"vchan %p: nothing to issue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @sun6i_dma_issue_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun6i_dma_issue_pending(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.sun6i_dma_dev*, align 8
  %4 = alloca %struct.sun6i_vchan*, align 8
  %5 = alloca i64, align 8
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
  %13 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %4, align 8
  %18 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %17, i32 0, i32 0
  %19 = call i64 @vchan_issue_pending(%struct.TYPE_3__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %52

21:                                               ; preds = %1
  %22 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %3, align 8
  %23 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %4, align 8
  %26 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %48, label %29

29:                                               ; preds = %21
  %30 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %4, align 8
  %31 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %30, i32 0, i32 1
  %32 = call i64 @list_empty(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %4, align 8
  %36 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %35, i32 0, i32 1
  %37 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %3, align 8
  %38 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %37, i32 0, i32 2
  %39 = call i32 @list_add_tail(i32* %36, i32* %38)
  %40 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %3, align 8
  %41 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %40, i32 0, i32 1
  %42 = call i32 @tasklet_schedule(i32* %41)
  %43 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %44 = call i32 @chan2dev(%struct.dma_chan* %43)
  %45 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %4, align 8
  %46 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %45, i32 0, i32 0
  %47 = call i32 @dev_dbg(i32 %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__* %46)
  br label %48

48:                                               ; preds = %34, %29, %21
  %49 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %3, align 8
  %50 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock(i32* %50)
  br label %58

52:                                               ; preds = %1
  %53 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %54 = call i32 @chan2dev(%struct.dma_chan* %53)
  %55 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %4, align 8
  %56 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %55, i32 0, i32 0
  %57 = call i32 @dev_dbg(i32 %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_3__* %56)
  br label %58

58:                                               ; preds = %52, %48
  %59 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %4, align 8
  %60 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  ret void
}

declare dso_local %struct.sun6i_dma_dev* @to_sun6i_dma_dev(i32) #1

declare dso_local %struct.sun6i_vchan* @to_sun6i_vchan(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @vchan_issue_pending(%struct.TYPE_3__*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, %struct.TYPE_3__*) #1

declare dso_local i32 @chan2dev(%struct.dma_chan*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
