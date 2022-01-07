; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-hsdma.c_mtk_hsdma_prep_dma_memcpy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-hsdma.c_mtk_hsdma_prep_dma_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }
%struct.mtk_hsdma_vdesc = type { i64, i64, i32, i8*, i8* }

@GFP_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i8*, i8*, i64, i64)* @mtk_hsdma_prep_dma_memcpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @mtk_hsdma_prep_dma_memcpy(%struct.dma_chan* %0, i8* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca %struct.dma_chan*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mtk_hsdma_vdesc*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i32, i32* @GFP_NOWAIT, align 4
  %14 = call %struct.mtk_hsdma_vdesc* @kzalloc(i32 40, i32 %13)
  store %struct.mtk_hsdma_vdesc* %14, %struct.mtk_hsdma_vdesc** %12, align 8
  %15 = load %struct.mtk_hsdma_vdesc*, %struct.mtk_hsdma_vdesc** %12, align 8
  %16 = icmp ne %struct.mtk_hsdma_vdesc* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  br label %37

18:                                               ; preds = %5
  %19 = load i64, i64* %10, align 8
  %20 = load %struct.mtk_hsdma_vdesc*, %struct.mtk_hsdma_vdesc** %12, align 8
  %21 = getelementptr inbounds %struct.mtk_hsdma_vdesc, %struct.mtk_hsdma_vdesc* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load %struct.mtk_hsdma_vdesc*, %struct.mtk_hsdma_vdesc** %12, align 8
  %24 = getelementptr inbounds %struct.mtk_hsdma_vdesc, %struct.mtk_hsdma_vdesc* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load %struct.mtk_hsdma_vdesc*, %struct.mtk_hsdma_vdesc** %12, align 8
  %27 = getelementptr inbounds %struct.mtk_hsdma_vdesc, %struct.mtk_hsdma_vdesc* %26, i32 0, i32 4
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.mtk_hsdma_vdesc*, %struct.mtk_hsdma_vdesc** %12, align 8
  %30 = getelementptr inbounds %struct.mtk_hsdma_vdesc, %struct.mtk_hsdma_vdesc* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %32 = call i32 @to_virt_chan(%struct.dma_chan* %31)
  %33 = load %struct.mtk_hsdma_vdesc*, %struct.mtk_hsdma_vdesc** %12, align 8
  %34 = getelementptr inbounds %struct.mtk_hsdma_vdesc, %struct.mtk_hsdma_vdesc* %33, i32 0, i32 2
  %35 = load i64, i64* %11, align 8
  %36 = call %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32 %32, i32* %34, i64 %35)
  store %struct.dma_async_tx_descriptor* %36, %struct.dma_async_tx_descriptor** %6, align 8
  br label %37

37:                                               ; preds = %18, %17
  %38 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  ret %struct.dma_async_tx_descriptor* %38
}

declare dso_local %struct.mtk_hsdma_vdesc* @kzalloc(i32, i32) #1

declare dso_local %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32, i32*, i64) #1

declare dso_local i32 @to_virt_chan(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
