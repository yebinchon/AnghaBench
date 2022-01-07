; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dma-jz4780.c_jz4780_dma_terminate_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dma-jz4780.c_jz4780_dma_terminate_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.jz4780_dma_chan = type { %struct.TYPE_5__, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.jz4780_dma_dev = type { i32 }

@head = common dso_local global i32 0, align 4
@JZ_DMA_REG_DCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @jz4780_dma_terminate_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_dma_terminate_all(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.jz4780_dma_chan*, align 8
  %4 = alloca %struct.jz4780_dma_dev*, align 8
  %5 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %7 = call %struct.jz4780_dma_chan* @to_jz4780_dma_chan(%struct.dma_chan* %6)
  store %struct.jz4780_dma_chan* %7, %struct.jz4780_dma_chan** %3, align 8
  %8 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %3, align 8
  %9 = call %struct.jz4780_dma_dev* @jz4780_dma_chan_parent(%struct.jz4780_dma_chan* %8)
  store %struct.jz4780_dma_dev* %9, %struct.jz4780_dma_dev** %4, align 8
  %10 = load i32, i32* @head, align 4
  %11 = call i32 @LIST_HEAD(i32 %10)
  %12 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %3, align 8
  %13 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.jz4780_dma_dev*, %struct.jz4780_dma_dev** %4, align 8
  %18 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %3, align 8
  %19 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @JZ_DMA_REG_DCS, align 4
  %22 = call i32 @jz4780_dma_chn_writel(%struct.jz4780_dma_dev* %17, i32 %20, i32 %21, i32 0)
  %23 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %3, align 8
  %24 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %1
  %28 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %3, align 8
  %29 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @vchan_terminate_vdesc(i32* %31)
  %33 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %3, align 8
  %34 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %33, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %34, align 8
  br label %35

35:                                               ; preds = %27, %1
  %36 = load %struct.jz4780_dma_dev*, %struct.jz4780_dma_dev** %4, align 8
  %37 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %3, align 8
  %38 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @jz4780_dma_chan_disable(%struct.jz4780_dma_dev* %36, i32 %39)
  %41 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %3, align 8
  %42 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %41, i32 0, i32 0
  %43 = call i32 @vchan_get_all_descriptors(%struct.TYPE_5__* %42, i32* @head)
  %44 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %3, align 8
  %45 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %3, align 8
  %50 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %49, i32 0, i32 0
  %51 = call i32 @vchan_dma_desc_free_list(%struct.TYPE_5__* %50, i32* @head)
  ret i32 0
}

declare dso_local %struct.jz4780_dma_chan* @to_jz4780_dma_chan(%struct.dma_chan*) #1

declare dso_local %struct.jz4780_dma_dev* @jz4780_dma_chan_parent(%struct.jz4780_dma_chan*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @jz4780_dma_chn_writel(%struct.jz4780_dma_dev*, i32, i32, i32) #1

declare dso_local i32 @vchan_terminate_vdesc(i32*) #1

declare dso_local i32 @jz4780_dma_chan_disable(%struct.jz4780_dma_dev*, i32) #1

declare dso_local i32 @vchan_get_all_descriptors(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vchan_dma_desc_free_list(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
