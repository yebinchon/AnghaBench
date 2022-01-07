; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sun6i-dma.c_sun6i_dma_terminate_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sun6i-dma.c_sun6i_dma_terminate_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.sun6i_dma_dev = type { i32 }
%struct.sun6i_vchan = type { i32, %struct.virt_dma_chan, %struct.sun6i_pchan*, i32 }
%struct.virt_dma_chan = type { i32, i32 }
%struct.sun6i_pchan = type { i32*, %struct.TYPE_2__*, i32*, i64 }
%struct.TYPE_2__ = type { %struct.virt_dma_desc }
%struct.virt_dma_desc = type { i32 }

@head = common dso_local global i32 0, align 4
@DMA_CHAN_ENABLE_STOP = common dso_local global i32 0, align 4
@DMA_CHAN_ENABLE = common dso_local global i64 0, align 8
@DMA_CHAN_PAUSE_RESUME = common dso_local global i32 0, align 4
@DMA_CHAN_PAUSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @sun6i_dma_terminate_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun6i_dma_terminate_all(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.sun6i_dma_dev*, align 8
  %4 = alloca %struct.sun6i_vchan*, align 8
  %5 = alloca %struct.sun6i_pchan*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.virt_dma_desc*, align 8
  %8 = alloca %struct.virt_dma_chan*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %9 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %10 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.sun6i_dma_dev* @to_sun6i_dma_dev(i32 %11)
  store %struct.sun6i_dma_dev* %12, %struct.sun6i_dma_dev** %3, align 8
  %13 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %14 = call %struct.sun6i_vchan* @to_sun6i_vchan(%struct.dma_chan* %13)
  store %struct.sun6i_vchan* %14, %struct.sun6i_vchan** %4, align 8
  %15 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %4, align 8
  %16 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %15, i32 0, i32 2
  %17 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %16, align 8
  store %struct.sun6i_pchan* %17, %struct.sun6i_pchan** %5, align 8
  %18 = load i32, i32* @head, align 4
  %19 = call i32 @LIST_HEAD(i32 %18)
  %20 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %3, align 8
  %21 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %20, i32 0, i32 0
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %4, align 8
  %24 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %23, i32 0, i32 3
  %25 = call i32 @list_del_init(i32* %24)
  %26 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %3, align 8
  %27 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock(i32* %27)
  %29 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %4, align 8
  %30 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.virt_dma_chan, %struct.virt_dma_chan* %30, i32 0, i32 0
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %4, align 8
  %35 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %1
  %39 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %4, align 8
  %40 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %5, align 8
  %42 = icmp ne %struct.sun6i_pchan* %41, null
  br i1 %42, label %43, label %60

43:                                               ; preds = %38
  %44 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %5, align 8
  %45 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = icmp ne %struct.TYPE_2__* %46, null
  br i1 %47, label %48, label %60

48:                                               ; preds = %43
  %49 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %5, align 8
  %50 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store %struct.virt_dma_desc* %52, %struct.virt_dma_desc** %7, align 8
  %53 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %4, align 8
  %54 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %53, i32 0, i32 1
  store %struct.virt_dma_chan* %54, %struct.virt_dma_chan** %8, align 8
  %55 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %7, align 8
  %56 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %55, i32 0, i32 0
  %57 = load %struct.virt_dma_chan*, %struct.virt_dma_chan** %8, align 8
  %58 = getelementptr inbounds %struct.virt_dma_chan, %struct.virt_dma_chan* %57, i32 0, i32 1
  %59 = call i32 @list_add_tail(i32* %56, i32* %58)
  br label %60

60:                                               ; preds = %48, %43, %38
  br label %61

61:                                               ; preds = %60, %1
  %62 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %4, align 8
  %63 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %62, i32 0, i32 1
  %64 = call i32 @vchan_get_all_descriptors(%struct.virt_dma_chan* %63, i32* @head)
  %65 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %5, align 8
  %66 = icmp ne %struct.sun6i_pchan* %65, null
  br i1 %66, label %67, label %90

67:                                               ; preds = %61
  %68 = load i32, i32* @DMA_CHAN_ENABLE_STOP, align 4
  %69 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %5, align 8
  %70 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @DMA_CHAN_ENABLE, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i32 %68, i64 %73)
  %75 = load i32, i32* @DMA_CHAN_PAUSE_RESUME, align 4
  %76 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %5, align 8
  %77 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @DMA_CHAN_PAUSE, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writel(i32 %75, i64 %80)
  %82 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %4, align 8
  %83 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %82, i32 0, i32 2
  store %struct.sun6i_pchan* null, %struct.sun6i_pchan** %83, align 8
  %84 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %5, align 8
  %85 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %84, i32 0, i32 2
  store i32* null, i32** %85, align 8
  %86 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %5, align 8
  %87 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %86, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %87, align 8
  %88 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %5, align 8
  %89 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %88, i32 0, i32 0
  store i32* null, i32** %89, align 8
  br label %90

90:                                               ; preds = %67, %61
  %91 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %4, align 8
  %92 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.virt_dma_chan, %struct.virt_dma_chan* %92, i32 0, i32 0
  %94 = load i64, i64* %6, align 8
  %95 = call i32 @spin_unlock_irqrestore(i32* %93, i64 %94)
  %96 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %4, align 8
  %97 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %96, i32 0, i32 1
  %98 = call i32 @vchan_dma_desc_free_list(%struct.virt_dma_chan* %97, i32* @head)
  ret i32 0
}

declare dso_local %struct.sun6i_dma_dev* @to_sun6i_dma_dev(i32) #1

declare dso_local %struct.sun6i_vchan* @to_sun6i_vchan(%struct.dma_chan*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @vchan_get_all_descriptors(%struct.virt_dma_chan*, i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vchan_dma_desc_free_list(%struct.virt_dma_chan*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
