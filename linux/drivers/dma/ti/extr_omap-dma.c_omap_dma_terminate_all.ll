; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_terminate_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_terminate_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.omap_chan = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@head = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @omap_dma_terminate_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_dma_terminate_all(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.omap_chan*, align 8
  %4 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %5 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %6 = call %struct.omap_chan* @to_omap_dma_chan(%struct.dma_chan* %5)
  store %struct.omap_chan* %6, %struct.omap_chan** %3, align 8
  %7 = load i32, i32* @head, align 4
  %8 = call i32 @LIST_HEAD(i32 %7)
  %9 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %10 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %15 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %14, i32 0, i32 3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %1
  %19 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %20 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %19, i32 0, i32 3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @vchan_terminate_vdesc(i32* %22)
  %24 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %25 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %24, i32 0, i32 3
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %25, align 8
  %26 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %27 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %18
  %31 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %32 = call i32 @omap_dma_stop(%struct.omap_chan* %31)
  br label %33

33:                                               ; preds = %30, %18
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %36 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %35, i32 0, i32 1
  store i32 0, i32* %36, align 4
  %37 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %38 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %40 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %39, i32 0, i32 2
  %41 = call i32 @vchan_get_all_descriptors(%struct.TYPE_5__* %40, i32* @head)
  %42 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %43 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load %struct.omap_chan*, %struct.omap_chan** %3, align 8
  %48 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %47, i32 0, i32 2
  %49 = call i32 @vchan_dma_desc_free_list(%struct.TYPE_5__* %48, i32* @head)
  ret i32 0
}

declare dso_local %struct.omap_chan* @to_omap_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vchan_terminate_vdesc(i32*) #1

declare dso_local i32 @omap_dma_stop(%struct.omap_chan*) #1

declare dso_local i32 @vchan_get_all_descriptors(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vchan_dma_desc_free_list(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
