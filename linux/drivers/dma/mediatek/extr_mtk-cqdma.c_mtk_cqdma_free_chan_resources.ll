; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-cqdma.c_mtk_cqdma_free_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-cqdma.c_mtk_cqdma_free_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.mtk_cqdma_vchan = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@MTK_CQDMA_FLUSH = common dso_local global i32 0, align 4
@MTK_CQDMA_FLUSH_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"cqdma flush timeout\0A\00", align 1
@MTK_CQDMA_INT_FLAG = common dso_local global i32 0, align 4
@MTK_CQDMA_INT_FLAG_BIT = common dso_local global i32 0, align 4
@MTK_CQDMA_INT_EN = common dso_local global i32 0, align 4
@MTK_CQDMA_INT_EN_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @mtk_cqdma_free_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_cqdma_free_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.mtk_cqdma_vchan*, align 8
  %4 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %5 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %6 = call %struct.mtk_cqdma_vchan* @to_cqdma_vchan(%struct.dma_chan* %5)
  store %struct.mtk_cqdma_vchan* %6, %struct.mtk_cqdma_vchan** %3, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %8 = call i32 @mtk_cqdma_terminate_all(%struct.dma_chan* %7)
  %9 = load %struct.mtk_cqdma_vchan*, %struct.mtk_cqdma_vchan** %3, align 8
  %10 = getelementptr inbounds %struct.mtk_cqdma_vchan, %struct.mtk_cqdma_vchan* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.mtk_cqdma_vchan*, %struct.mtk_cqdma_vchan** %3, align 8
  %16 = getelementptr inbounds %struct.mtk_cqdma_vchan, %struct.mtk_cqdma_vchan* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = call i64 @refcount_dec_and_test(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %57

21:                                               ; preds = %1
  %22 = load %struct.mtk_cqdma_vchan*, %struct.mtk_cqdma_vchan** %3, align 8
  %23 = getelementptr inbounds %struct.mtk_cqdma_vchan, %struct.mtk_cqdma_vchan* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i32, i32* @MTK_CQDMA_FLUSH, align 4
  %26 = load i32, i32* @MTK_CQDMA_FLUSH_BIT, align 4
  %27 = call i32 @mtk_dma_set(%struct.TYPE_4__* %24, i32 %25, i32 %26)
  %28 = load %struct.mtk_cqdma_vchan*, %struct.mtk_cqdma_vchan** %3, align 8
  %29 = getelementptr inbounds %struct.mtk_cqdma_vchan, %struct.mtk_cqdma_vchan* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = call i64 @mtk_cqdma_poll_engine_done(%struct.TYPE_4__* %30, i32 1)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %21
  %34 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %35 = call i32 @to_cqdma_dev(%struct.dma_chan* %34)
  %36 = call i32 @cqdma2dev(i32 %35)
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %33, %21
  %39 = load %struct.mtk_cqdma_vchan*, %struct.mtk_cqdma_vchan** %3, align 8
  %40 = getelementptr inbounds %struct.mtk_cqdma_vchan, %struct.mtk_cqdma_vchan* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* @MTK_CQDMA_FLUSH, align 4
  %43 = load i32, i32* @MTK_CQDMA_FLUSH_BIT, align 4
  %44 = call i32 @mtk_dma_clr(%struct.TYPE_4__* %41, i32 %42, i32 %43)
  %45 = load %struct.mtk_cqdma_vchan*, %struct.mtk_cqdma_vchan** %3, align 8
  %46 = getelementptr inbounds %struct.mtk_cqdma_vchan, %struct.mtk_cqdma_vchan* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* @MTK_CQDMA_INT_FLAG, align 4
  %49 = load i32, i32* @MTK_CQDMA_INT_FLAG_BIT, align 4
  %50 = call i32 @mtk_dma_clr(%struct.TYPE_4__* %47, i32 %48, i32 %49)
  %51 = load %struct.mtk_cqdma_vchan*, %struct.mtk_cqdma_vchan** %3, align 8
  %52 = getelementptr inbounds %struct.mtk_cqdma_vchan, %struct.mtk_cqdma_vchan* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* @MTK_CQDMA_INT_EN, align 4
  %55 = load i32, i32* @MTK_CQDMA_INT_EN_BIT, align 4
  %56 = call i32 @mtk_dma_clr(%struct.TYPE_4__* %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %38, %1
  %58 = load %struct.mtk_cqdma_vchan*, %struct.mtk_cqdma_vchan** %3, align 8
  %59 = getelementptr inbounds %struct.mtk_cqdma_vchan, %struct.mtk_cqdma_vchan* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  ret void
}

declare dso_local %struct.mtk_cqdma_vchan* @to_cqdma_vchan(%struct.dma_chan*) #1

declare dso_local i32 @mtk_cqdma_terminate_all(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @mtk_dma_set(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @mtk_cqdma_poll_engine_done(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @cqdma2dev(i32) #1

declare dso_local i32 @to_cqdma_dev(%struct.dma_chan*) #1

declare dso_local i32 @mtk_dma_clr(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
