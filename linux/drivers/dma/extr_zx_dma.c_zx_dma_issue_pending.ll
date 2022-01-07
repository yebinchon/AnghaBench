; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_zx_dma.c_zx_dma_issue_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_zx_dma.c_zx_dma_issue_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.zx_dma_chan = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.zx_dma_dev = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"vchan %p: issued\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"vchan %p: nothing to issue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @zx_dma_issue_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zx_dma_issue_pending(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.zx_dma_chan*, align 8
  %4 = alloca %struct.zx_dma_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %8 = call %struct.zx_dma_chan* @to_zx_chan(%struct.dma_chan* %7)
  store %struct.zx_dma_chan* %8, %struct.zx_dma_chan** %3, align 8
  %9 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %10 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.zx_dma_dev* @to_zx_dma(i32 %11)
  store %struct.zx_dma_dev* %12, %struct.zx_dma_dev** %4, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.zx_dma_chan*, %struct.zx_dma_chan** %3, align 8
  %14 = getelementptr inbounds %struct.zx_dma_chan, %struct.zx_dma_chan* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.zx_dma_chan*, %struct.zx_dma_chan** %3, align 8
  %19 = getelementptr inbounds %struct.zx_dma_chan, %struct.zx_dma_chan* %18, i32 0, i32 0
  %20 = call i64 @vchan_issue_pending(%struct.TYPE_5__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %52

22:                                               ; preds = %1
  %23 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %24 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %23, i32 0, i32 1
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.zx_dma_chan*, %struct.zx_dma_chan** %3, align 8
  %27 = getelementptr inbounds %struct.zx_dma_chan, %struct.zx_dma_chan* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %48, label %30

30:                                               ; preds = %22
  %31 = load %struct.zx_dma_chan*, %struct.zx_dma_chan** %3, align 8
  %32 = getelementptr inbounds %struct.zx_dma_chan, %struct.zx_dma_chan* %31, i32 0, i32 1
  %33 = call i64 @list_empty(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = load %struct.zx_dma_chan*, %struct.zx_dma_chan** %3, align 8
  %37 = getelementptr inbounds %struct.zx_dma_chan, %struct.zx_dma_chan* %36, i32 0, i32 1
  %38 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %39 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %38, i32 0, i32 2
  %40 = call i32 @list_add_tail(i32* %37, i32* %39)
  store i32 1, i32* %6, align 4
  %41 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %42 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.zx_dma_chan*, %struct.zx_dma_chan** %3, align 8
  %46 = getelementptr inbounds %struct.zx_dma_chan, %struct.zx_dma_chan* %45, i32 0, i32 0
  %47 = call i32 @dev_dbg(i32 %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %46)
  br label %48

48:                                               ; preds = %35, %30, %22
  %49 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %50 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %49, i32 0, i32 1
  %51 = call i32 @spin_unlock(i32* %50)
  br label %60

52:                                               ; preds = %1
  %53 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %54 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.zx_dma_chan*, %struct.zx_dma_chan** %3, align 8
  %58 = getelementptr inbounds %struct.zx_dma_chan, %struct.zx_dma_chan* %57, i32 0, i32 0
  %59 = call i32 @dev_dbg(i32 %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_5__* %58)
  br label %60

60:                                               ; preds = %52, %48
  %61 = load %struct.zx_dma_chan*, %struct.zx_dma_chan** %3, align 8
  %62 = getelementptr inbounds %struct.zx_dma_chan, %struct.zx_dma_chan* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %70 = call i32 @zx_dma_task(%struct.zx_dma_dev* %69)
  br label %71

71:                                               ; preds = %68, %60
  ret void
}

declare dso_local %struct.zx_dma_chan* @to_zx_chan(%struct.dma_chan*) #1

declare dso_local %struct.zx_dma_dev* @to_zx_dma(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @vchan_issue_pending(%struct.TYPE_5__*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @zx_dma_task(%struct.zx_dma_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
