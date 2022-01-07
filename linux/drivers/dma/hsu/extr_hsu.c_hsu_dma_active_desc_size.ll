; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/hsu/extr_hsu.c_hsu_dma_active_desc_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/hsu/extr_hsu.c_hsu_dma_active_desc_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsu_dma_chan = type { %struct.hsu_dma_desc* }
%struct.hsu_dma_desc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@HSU_DMA_CHAN_NR_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hsu_dma_chan*)* @hsu_dma_active_desc_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hsu_dma_active_desc_size(%struct.hsu_dma_chan* %0) #0 {
  %2 = alloca %struct.hsu_dma_chan*, align 8
  %3 = alloca %struct.hsu_dma_desc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.hsu_dma_chan* %0, %struct.hsu_dma_chan** %2, align 8
  %6 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %2, align 8
  %7 = getelementptr inbounds %struct.hsu_dma_chan, %struct.hsu_dma_chan* %6, i32 0, i32 0
  %8 = load %struct.hsu_dma_desc*, %struct.hsu_dma_desc** %7, align 8
  store %struct.hsu_dma_desc* %8, %struct.hsu_dma_desc** %3, align 8
  store i64 0, i64* %4, align 8
  %9 = load %struct.hsu_dma_desc*, %struct.hsu_dma_desc** %3, align 8
  %10 = getelementptr inbounds %struct.hsu_dma_desc, %struct.hsu_dma_desc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %29, %1
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.hsu_dma_desc*, %struct.hsu_dma_desc** %3, align 8
  %15 = getelementptr inbounds %struct.hsu_dma_desc, %struct.hsu_dma_desc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %12
  %19 = load %struct.hsu_dma_desc*, %struct.hsu_dma_desc** %3, align 8
  %20 = getelementptr inbounds %struct.hsu_dma_desc, %struct.hsu_dma_desc* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %4, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %4, align 8
  br label %29

29:                                               ; preds = %18
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %12

32:                                               ; preds = %12
  %33 = load i32, i32* @HSU_DMA_CHAN_NR_DESC, align 4
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %42, %32
  %36 = load %struct.hsu_dma_chan*, %struct.hsu_dma_chan** %2, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @HSU_CH_DxTSR(i32 %37)
  %39 = call i64 @hsu_chan_readl(%struct.hsu_dma_chan* %36, i32 %38)
  %40 = load i64, i64* %4, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %4, align 8
  br label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %5, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %35, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %4, align 8
  ret i64 %47
}

declare dso_local i64 @hsu_chan_readl(%struct.hsu_dma_chan*, i32) #1

declare dso_local i32 @HSU_CH_DxTSR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
