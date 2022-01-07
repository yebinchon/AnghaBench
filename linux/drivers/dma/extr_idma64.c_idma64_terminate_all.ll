; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_idma64.c_idma64_terminate_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_idma64.c_idma64_terminate_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.idma64_chan = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@head = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @idma64_terminate_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idma64_terminate_all(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.idma64_chan*, align 8
  %4 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %5 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %6 = call %struct.idma64_chan* @to_idma64_chan(%struct.dma_chan* %5)
  store %struct.idma64_chan* %6, %struct.idma64_chan** %3, align 8
  %7 = load i32, i32* @head, align 4
  %8 = call i32 @LIST_HEAD(i32 %7)
  %9 = load %struct.idma64_chan*, %struct.idma64_chan** %3, align 8
  %10 = getelementptr inbounds %struct.idma64_chan, %struct.idma64_chan* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.idma64_chan*, %struct.idma64_chan** %3, align 8
  %15 = call i32 @idma64_chan_deactivate(%struct.idma64_chan* %14, i32 1)
  %16 = load %struct.idma64_chan*, %struct.idma64_chan** %3, align 8
  %17 = call i32 @idma64_stop_transfer(%struct.idma64_chan* %16)
  %18 = load %struct.idma64_chan*, %struct.idma64_chan** %3, align 8
  %19 = getelementptr inbounds %struct.idma64_chan, %struct.idma64_chan* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load %struct.idma64_chan*, %struct.idma64_chan** %3, align 8
  %24 = getelementptr inbounds %struct.idma64_chan, %struct.idma64_chan* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @idma64_vdesc_free(i32* %26)
  %28 = load %struct.idma64_chan*, %struct.idma64_chan** %3, align 8
  %29 = getelementptr inbounds %struct.idma64_chan, %struct.idma64_chan* %28, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %29, align 8
  br label %30

30:                                               ; preds = %22, %1
  %31 = load %struct.idma64_chan*, %struct.idma64_chan** %3, align 8
  %32 = getelementptr inbounds %struct.idma64_chan, %struct.idma64_chan* %31, i32 0, i32 0
  %33 = call i32 @vchan_get_all_descriptors(%struct.TYPE_5__* %32, i32* @head)
  %34 = load %struct.idma64_chan*, %struct.idma64_chan** %3, align 8
  %35 = getelementptr inbounds %struct.idma64_chan, %struct.idma64_chan* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load %struct.idma64_chan*, %struct.idma64_chan** %3, align 8
  %40 = getelementptr inbounds %struct.idma64_chan, %struct.idma64_chan* %39, i32 0, i32 0
  %41 = call i32 @vchan_dma_desc_free_list(%struct.TYPE_5__* %40, i32* @head)
  ret i32 0
}

declare dso_local %struct.idma64_chan* @to_idma64_chan(%struct.dma_chan*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @idma64_chan_deactivate(%struct.idma64_chan*, i32) #1

declare dso_local i32 @idma64_stop_transfer(%struct.idma64_chan*) #1

declare dso_local i32 @idma64_vdesc_free(i32*) #1

declare dso_local i32 @vchan_get_all_descriptors(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vchan_dma_desc_free_list(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
