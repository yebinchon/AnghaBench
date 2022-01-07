; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sprd-dma.c_sprd_dma_free_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sprd-dma.c_sprd_dma_free_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sprd_dma_chn = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.virt_dma_desc }
%struct.virt_dma_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @sprd_dma_free_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprd_dma_free_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.sprd_dma_chn*, align 8
  %4 = alloca %struct.virt_dma_desc*, align 8
  %5 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %7 = call %struct.sprd_dma_chn* @to_sprd_dma_chan(%struct.dma_chan* %6)
  store %struct.sprd_dma_chn* %7, %struct.sprd_dma_chn** %3, align 8
  store %struct.virt_dma_desc* null, %struct.virt_dma_desc** %4, align 8
  %8 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %3, align 8
  %9 = getelementptr inbounds %struct.sprd_dma_chn, %struct.sprd_dma_chn* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %3, align 8
  %14 = getelementptr inbounds %struct.sprd_dma_chn, %struct.sprd_dma_chn* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %3, align 8
  %19 = getelementptr inbounds %struct.sprd_dma_chn, %struct.sprd_dma_chn* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store %struct.virt_dma_desc* %21, %struct.virt_dma_desc** %4, align 8
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %3, align 8
  %24 = call i32 @sprd_dma_stop(%struct.sprd_dma_chn* %23)
  %25 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %3, align 8
  %26 = getelementptr inbounds %struct.sprd_dma_chn, %struct.sprd_dma_chn* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  %30 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %31 = icmp ne %struct.virt_dma_desc* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %34 = call i32 @sprd_dma_free_desc(%struct.virt_dma_desc* %33)
  br label %35

35:                                               ; preds = %32, %22
  %36 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %3, align 8
  %37 = getelementptr inbounds %struct.sprd_dma_chn, %struct.sprd_dma_chn* %36, i32 0, i32 0
  %38 = call i32 @vchan_free_chan_resources(%struct.TYPE_6__* %37)
  %39 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %40 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pm_runtime_put(i32 %43)
  ret void
}

declare dso_local %struct.sprd_dma_chn* @to_sprd_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sprd_dma_stop(%struct.sprd_dma_chn*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sprd_dma_free_desc(%struct.virt_dma_desc*) #1

declare dso_local i32 @vchan_free_chan_resources(%struct.TYPE_6__*) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
