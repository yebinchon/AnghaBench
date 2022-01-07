; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-hsdma.c_mtk_hsdma_free_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-hsdma.c_mtk_hsdma_free_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.mtk_hsdma_device = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @mtk_hsdma_free_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_hsdma_free_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.mtk_hsdma_device*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %4 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %5 = call %struct.mtk_hsdma_device* @to_hsdma_dev(%struct.dma_chan* %4)
  store %struct.mtk_hsdma_device* %5, %struct.mtk_hsdma_device** %3, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %7 = call i32 @mtk_hsdma_terminate_all(%struct.dma_chan* %6)
  %8 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %3, align 8
  %9 = getelementptr inbounds %struct.mtk_hsdma_device, %struct.mtk_hsdma_device* %8, i32 0, i32 1
  %10 = call i32 @refcount_dec_and_test(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %19

13:                                               ; preds = %1
  %14 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %3, align 8
  %15 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %3, align 8
  %16 = getelementptr inbounds %struct.mtk_hsdma_device, %struct.mtk_hsdma_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @mtk_hsdma_free_pchan(%struct.mtk_hsdma_device* %14, i32 %17)
  br label %19

19:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.mtk_hsdma_device* @to_hsdma_dev(%struct.dma_chan*) #1

declare dso_local i32 @mtk_hsdma_terminate_all(%struct.dma_chan*) #1

declare dso_local i32 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @mtk_hsdma_free_pchan(%struct.mtk_hsdma_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
