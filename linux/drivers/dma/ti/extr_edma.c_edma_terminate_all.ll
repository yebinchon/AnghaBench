; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_terminate_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_edma.c_edma_terminate_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.edma_chan = type { %struct.TYPE_5__, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64 }

@head = common dso_local global i32 0, align 4
@EVENTQ_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @edma_terminate_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edma_terminate_all(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.edma_chan*, align 8
  %4 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %5 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %6 = call %struct.edma_chan* @to_edma_chan(%struct.dma_chan* %5)
  store %struct.edma_chan* %6, %struct.edma_chan** %3, align 8
  %7 = load i32, i32* @head, align 4
  %8 = call i32 @LIST_HEAD(i32 %7)
  %9 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %10 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %15 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %44

18:                                               ; preds = %1
  %19 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %20 = call i32 @edma_stop(%struct.edma_chan* %19)
  %21 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %22 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %18
  %26 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %27 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %34 = load i32, i32* @EVENTQ_DEFAULT, align 4
  %35 = call i32 @edma_assign_channel_eventq(%struct.edma_chan* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %25, %18
  %37 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %38 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @vchan_terminate_vdesc(i32* %40)
  %42 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %43 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %42, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %43, align 8
  br label %44

44:                                               ; preds = %36, %1
  %45 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %46 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %45, i32 0, i32 0
  %47 = call i32 @vchan_get_all_descriptors(%struct.TYPE_5__* %46, i32* @head)
  %48 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %49 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load %struct.edma_chan*, %struct.edma_chan** %3, align 8
  %54 = getelementptr inbounds %struct.edma_chan, %struct.edma_chan* %53, i32 0, i32 0
  %55 = call i32 @vchan_dma_desc_free_list(%struct.TYPE_5__* %54, i32* @head)
  ret i32 0
}

declare dso_local %struct.edma_chan* @to_edma_chan(%struct.dma_chan*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @edma_stop(%struct.edma_chan*) #1

declare dso_local i32 @edma_assign_channel_eventq(%struct.edma_chan*, i32) #1

declare dso_local i32 @vchan_terminate_vdesc(i32*) #1

declare dso_local i32 @vchan_get_all_descriptors(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vchan_dma_desc_free_list(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
