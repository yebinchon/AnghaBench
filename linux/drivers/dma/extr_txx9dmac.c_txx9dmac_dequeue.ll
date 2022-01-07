; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_txx9dmac.c_txx9dmac_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_txx9dmac.c_txx9dmac_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.txx9dmac_chan = type { i32, %struct.list_head, %struct.txx9dmac_dev* }
%struct.list_head = type { i32 }
%struct.txx9dmac_dev = type { i32 }
%struct.txx9dmac_desc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.txx9dmac_chan*, %struct.list_head*)* @txx9dmac_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @txx9dmac_dequeue(%struct.txx9dmac_chan* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.txx9dmac_chan*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.txx9dmac_dev*, align 8
  %6 = alloca %struct.txx9dmac_desc*, align 8
  %7 = alloca %struct.txx9dmac_desc*, align 8
  store %struct.txx9dmac_chan* %0, %struct.txx9dmac_chan** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %8 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %9 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %8, i32 0, i32 2
  %10 = load %struct.txx9dmac_dev*, %struct.txx9dmac_dev** %9, align 8
  store %struct.txx9dmac_dev* %10, %struct.txx9dmac_dev** %5, align 8
  store %struct.txx9dmac_desc* null, %struct.txx9dmac_desc** %7, align 8
  %11 = load %struct.list_head*, %struct.list_head** %4, align 8
  %12 = call i32 @list_empty(%struct.list_head* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  br label %17

17:                                               ; preds = %62, %2
  %18 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %19 = call %struct.txx9dmac_desc* @txx9dmac_first_queued(%struct.txx9dmac_chan* %18)
  store %struct.txx9dmac_desc* %19, %struct.txx9dmac_desc** %6, align 8
  %20 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %7, align 8
  %21 = icmp ne %struct.txx9dmac_desc* %20, null
  br i1 %21, label %22, label %42

22:                                               ; preds = %17
  %23 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %24 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %7, align 8
  %25 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %6, align 8
  %26 = getelementptr inbounds %struct.txx9dmac_desc, %struct.txx9dmac_desc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @desc_write_CHAR(%struct.txx9dmac_chan* %23, %struct.txx9dmac_desc* %24, i32 %28)
  %30 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %31 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %30, i32 0, i32 0
  %32 = call i32 @chan2parent(i32* %31)
  %33 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %7, align 8
  %34 = getelementptr inbounds %struct.txx9dmac_desc, %struct.txx9dmac_desc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.txx9dmac_dev*, %struct.txx9dmac_dev** %5, align 8
  %38 = getelementptr inbounds %struct.txx9dmac_dev, %struct.txx9dmac_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @DMA_TO_DEVICE, align 4
  %41 = call i32 @dma_sync_single_for_device(i32 %32, i32 %36, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %22, %17
  %43 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %6, align 8
  %44 = call %struct.txx9dmac_desc* @txx9dmac_last_child(%struct.txx9dmac_desc* %43)
  store %struct.txx9dmac_desc* %44, %struct.txx9dmac_desc** %7, align 8
  %45 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %6, align 8
  %46 = getelementptr inbounds %struct.txx9dmac_desc, %struct.txx9dmac_desc* %45, i32 0, i32 1
  %47 = load %struct.list_head*, %struct.list_head** %4, align 8
  %48 = call i32 @list_move_tail(i32* %46, %struct.list_head* %47)
  %49 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %6, align 8
  %50 = getelementptr inbounds %struct.txx9dmac_desc, %struct.txx9dmac_desc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %42
  %57 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %58 = call i32 @txx9dmac_chan_INTENT(%struct.txx9dmac_chan* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  br label %68

61:                                               ; preds = %56, %42
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %64 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %63, i32 0, i32 1
  %65 = call i32 @list_empty(%struct.list_head* %64)
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  br i1 %67, label %17, label %68

68:                                               ; preds = %62, %60
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local %struct.txx9dmac_desc* @txx9dmac_first_queued(%struct.txx9dmac_chan*) #1

declare dso_local i32 @desc_write_CHAR(%struct.txx9dmac_chan*, %struct.txx9dmac_desc*, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @chan2parent(i32*) #1

declare dso_local %struct.txx9dmac_desc* @txx9dmac_last_child(%struct.txx9dmac_desc*) #1

declare dso_local i32 @list_move_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @txx9dmac_chan_INTENT(%struct.txx9dmac_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
