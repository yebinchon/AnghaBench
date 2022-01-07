; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-hsdma.c_mtk_hsdma_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-hsdma.c_mtk_hsdma_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_tx_state = type { i32 }
%struct.mtk_hsdma_vchan = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mtk_hsdma_vdesc = type { i64 }
%struct.virt_dma_desc = type { i32 }

@DMA_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i32, %struct.dma_tx_state*)* @mtk_hsdma_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_hsdma_tx_status(%struct.dma_chan* %0, i32 %1, %struct.dma_tx_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_tx_state*, align 8
  %8 = alloca %struct.mtk_hsdma_vchan*, align 8
  %9 = alloca %struct.mtk_hsdma_vdesc*, align 8
  %10 = alloca %struct.virt_dma_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dma_tx_state* %2, %struct.dma_tx_state** %7, align 8
  %14 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %15 = call %struct.mtk_hsdma_vchan* @to_hsdma_vchan(%struct.dma_chan* %14)
  store %struct.mtk_hsdma_vchan* %15, %struct.mtk_hsdma_vchan** %8, align 8
  store i64 0, i64* %13, align 8
  %16 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %19 = call i32 @dma_cookie_status(%struct.dma_chan* %16, i32 %17, %struct.dma_tx_state* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @DMA_COMPLETE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %25 = icmp ne %struct.dma_tx_state* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23, %3
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %4, align 4
  br label %55

28:                                               ; preds = %23
  %29 = load %struct.mtk_hsdma_vchan*, %struct.mtk_hsdma_vchan** %8, align 8
  %30 = getelementptr inbounds %struct.mtk_hsdma_vchan, %struct.mtk_hsdma_vchan* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %12, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call %struct.virt_dma_desc* @mtk_hsdma_find_active_desc(%struct.dma_chan* %34, i32 %35)
  store %struct.virt_dma_desc* %36, %struct.virt_dma_desc** %10, align 8
  %37 = load %struct.mtk_hsdma_vchan*, %struct.mtk_hsdma_vchan** %8, align 8
  %38 = getelementptr inbounds %struct.mtk_hsdma_vchan, %struct.mtk_hsdma_vchan* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %12, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %10, align 8
  %43 = icmp ne %struct.virt_dma_desc* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %28
  %45 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %10, align 8
  %46 = call %struct.mtk_hsdma_vdesc* @to_hsdma_vdesc(%struct.virt_dma_desc* %45)
  store %struct.mtk_hsdma_vdesc* %46, %struct.mtk_hsdma_vdesc** %9, align 8
  %47 = load %struct.mtk_hsdma_vdesc*, %struct.mtk_hsdma_vdesc** %9, align 8
  %48 = getelementptr inbounds %struct.mtk_hsdma_vdesc, %struct.mtk_hsdma_vdesc* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %13, align 8
  br label %50

50:                                               ; preds = %44, %28
  %51 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %52 = load i64, i64* %13, align 8
  %53 = call i32 @dma_set_residue(%struct.dma_tx_state* %51, i64 %52)
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %50, %26
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.mtk_hsdma_vchan* @to_hsdma_vchan(%struct.dma_chan*) #1

declare dso_local i32 @dma_cookie_status(%struct.dma_chan*, i32, %struct.dma_tx_state*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.virt_dma_desc* @mtk_hsdma_find_active_desc(%struct.dma_chan*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.mtk_hsdma_vdesc* @to_hsdma_vdesc(%struct.virt_dma_desc*) #1

declare dso_local i32 @dma_set_residue(%struct.dma_tx_state*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
