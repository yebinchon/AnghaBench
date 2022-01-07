; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_bcm2835-dma.c_bcm2835_dma_terminate_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_bcm2835-dma.c_bcm2835_dma_terminate_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.bcm2835_chan = type { %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@head = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @bcm2835_dma_terminate_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_dma_terminate_all(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.bcm2835_chan*, align 8
  %4 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %5 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %6 = call %struct.bcm2835_chan* @to_bcm2835_dma_chan(%struct.dma_chan* %5)
  store %struct.bcm2835_chan* %6, %struct.bcm2835_chan** %3, align 8
  %7 = load i32, i32* @head, align 4
  %8 = call i32 @LIST_HEAD(i32 %7)
  %9 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %3, align 8
  %10 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %3, align 8
  %15 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %14, i32 0, i32 1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = icmp ne %struct.TYPE_8__* %16, null
  br i1 %17, label %18, label %46

18:                                               ; preds = %1
  %19 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %3, align 8
  %20 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %18
  %30 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %3, align 8
  %31 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = call i32 @vchan_terminate_vdesc(%struct.TYPE_9__* %33)
  br label %41

35:                                               ; preds = %18
  %36 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %3, align 8
  %37 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = call i32 @vchan_vdesc_fini(%struct.TYPE_9__* %39)
  br label %41

41:                                               ; preds = %35, %29
  %42 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %3, align 8
  %43 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %42, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %43, align 8
  %44 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %3, align 8
  %45 = call i32 @bcm2835_dma_abort(%struct.bcm2835_chan* %44)
  br label %46

46:                                               ; preds = %41, %1
  %47 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %3, align 8
  %48 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %47, i32 0, i32 0
  %49 = call i32 @vchan_get_all_descriptors(%struct.TYPE_10__* %48, i32* @head)
  %50 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %3, align 8
  %51 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %3, align 8
  %56 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %55, i32 0, i32 0
  %57 = call i32 @vchan_dma_desc_free_list(%struct.TYPE_10__* %56, i32* @head)
  ret i32 0
}

declare dso_local %struct.bcm2835_chan* @to_bcm2835_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vchan_terminate_vdesc(%struct.TYPE_9__*) #1

declare dso_local i32 @vchan_vdesc_fini(%struct.TYPE_9__*) #1

declare dso_local i32 @bcm2835_dma_abort(%struct.bcm2835_chan*) #1

declare dso_local i32 @vchan_get_all_descriptors(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vchan_dma_desc_free_list(%struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
