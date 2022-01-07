; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw-edma/extr_dw-edma-core.c_dw_edma_done_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw-edma/extr_dw-edma-core.c_dw_edma_done_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_edma_chan = type { i32, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i32 }
%struct.dw_edma_desc = type { i32 }
%struct.virt_dma_desc = type { i32 }

@EDMA_ST_BUSY = common dso_local global i8* null, align 8
@EDMA_ST_IDLE = common dso_local global i8* null, align 8
@EDMA_ST_PAUSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_edma_chan*)* @dw_edma_done_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_edma_done_interrupt(%struct.dw_edma_chan* %0) #0 {
  %2 = alloca %struct.dw_edma_chan*, align 8
  %3 = alloca %struct.dw_edma_desc*, align 8
  %4 = alloca %struct.virt_dma_desc*, align 8
  %5 = alloca i64, align 8
  store %struct.dw_edma_chan* %0, %struct.dw_edma_chan** %2, align 8
  %6 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %2, align 8
  %7 = call i32 @dw_edma_v0_core_clear_done_int(%struct.dw_edma_chan* %6)
  %8 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %2, align 8
  %9 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %2, align 8
  %14 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %13, i32 0, i32 1
  %15 = call %struct.virt_dma_desc* @vchan_next_desc(%struct.TYPE_2__* %14)
  store %struct.virt_dma_desc* %15, %struct.virt_dma_desc** %4, align 8
  %16 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %17 = icmp ne %struct.virt_dma_desc* %16, null
  br i1 %17, label %18, label %64

18:                                               ; preds = %1
  %19 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %2, align 8
  %20 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %62 [
    i32 130, label %22
    i32 128, label %45
    i32 129, label %56
  ]

22:                                               ; preds = %18
  %23 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %24 = call %struct.dw_edma_desc* @vd2dw_edma_desc(%struct.virt_dma_desc* %23)
  store %struct.dw_edma_desc* %24, %struct.dw_edma_desc** %3, align 8
  %25 = load %struct.dw_edma_desc*, %struct.dw_edma_desc** %3, align 8
  %26 = getelementptr inbounds %struct.dw_edma_desc, %struct.dw_edma_desc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load i8*, i8** @EDMA_ST_BUSY, align 8
  %31 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %2, align 8
  %32 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %2, align 8
  %34 = call i32 @dw_edma_start_transfer(%struct.dw_edma_chan* %33)
  br label %44

35:                                               ; preds = %22
  %36 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %37 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %36, i32 0, i32 0
  %38 = call i32 @list_del(i32* %37)
  %39 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %40 = call i32 @vchan_cookie_complete(%struct.virt_dma_desc* %39)
  %41 = load i8*, i8** @EDMA_ST_IDLE, align 8
  %42 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %2, align 8
  %43 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  br label %44

44:                                               ; preds = %35, %29
  br label %63

45:                                               ; preds = %18
  %46 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %47 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %46, i32 0, i32 0
  %48 = call i32 @list_del(i32* %47)
  %49 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %50 = call i32 @vchan_cookie_complete(%struct.virt_dma_desc* %49)
  %51 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %2, align 8
  %52 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %51, i32 0, i32 0
  store i32 130, i32* %52, align 8
  %53 = load i8*, i8** @EDMA_ST_IDLE, align 8
  %54 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %2, align 8
  %55 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  br label %63

56:                                               ; preds = %18
  %57 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %2, align 8
  %58 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %57, i32 0, i32 0
  store i32 130, i32* %58, align 8
  %59 = load i8*, i8** @EDMA_ST_PAUSE, align 8
  %60 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %2, align 8
  %61 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  br label %63

62:                                               ; preds = %18
  br label %63

63:                                               ; preds = %62, %56, %45, %44
  br label %64

64:                                               ; preds = %63, %1
  %65 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %2, align 8
  %66 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %5, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  ret void
}

declare dso_local i32 @dw_edma_v0_core_clear_done_int(%struct.dw_edma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.virt_dma_desc* @vchan_next_desc(%struct.TYPE_2__*) #1

declare dso_local %struct.dw_edma_desc* @vd2dw_edma_desc(%struct.virt_dma_desc*) #1

declare dso_local i32 @dw_edma_start_transfer(%struct.dw_edma_chan*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @vchan_cookie_complete(%struct.virt_dma_desc*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
