; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-cqdma.c_mtk_cqdma_alloc_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-cqdma.c_mtk_cqdma_alloc_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.mtk_cqdma_device = type { i64, %struct.mtk_cqdma_pchan** }
%struct.mtk_cqdma_pchan = type { i32, i32 }
%struct.mtk_cqdma_vchan = type { %struct.mtk_cqdma_pchan* }

@U32_MAX = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@MTK_CQDMA_INT_EN = common dso_local global i32 0, align 4
@MTK_CQDMA_INT_EN_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @mtk_cqdma_alloc_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_cqdma_alloc_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.mtk_cqdma_device*, align 8
  %5 = alloca %struct.mtk_cqdma_vchan*, align 8
  %6 = alloca %struct.mtk_cqdma_pchan*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %11 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %12 = call %struct.mtk_cqdma_device* @to_cqdma_dev(%struct.dma_chan* %11)
  store %struct.mtk_cqdma_device* %12, %struct.mtk_cqdma_device** %4, align 8
  %13 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %14 = call %struct.mtk_cqdma_vchan* @to_cqdma_vchan(%struct.dma_chan* %13)
  store %struct.mtk_cqdma_vchan* %14, %struct.mtk_cqdma_vchan** %5, align 8
  store %struct.mtk_cqdma_pchan* null, %struct.mtk_cqdma_pchan** %6, align 8
  %15 = load i64, i64* @U32_MAX, align 8
  store i64 %15, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %16

16:                                               ; preds = %43, %1
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %4, align 8
  %19 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %16
  %23 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %4, align 8
  %24 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %23, i32 0, i32 1
  %25 = load %struct.mtk_cqdma_pchan**, %struct.mtk_cqdma_pchan*** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.mtk_cqdma_pchan*, %struct.mtk_cqdma_pchan** %25, i64 %26
  %28 = load %struct.mtk_cqdma_pchan*, %struct.mtk_cqdma_pchan** %27, align 8
  %29 = getelementptr inbounds %struct.mtk_cqdma_pchan, %struct.mtk_cqdma_pchan* %28, i32 0, i32 1
  %30 = call i64 @refcount_read(i32* %29)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %22
  %35 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %4, align 8
  %36 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %35, i32 0, i32 1
  %37 = load %struct.mtk_cqdma_pchan**, %struct.mtk_cqdma_pchan*** %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds %struct.mtk_cqdma_pchan*, %struct.mtk_cqdma_pchan** %37, i64 %38
  %40 = load %struct.mtk_cqdma_pchan*, %struct.mtk_cqdma_pchan** %39, align 8
  store %struct.mtk_cqdma_pchan* %40, %struct.mtk_cqdma_pchan** %6, align 8
  %41 = load i64, i64* %9, align 8
  store i64 %41, i64* %8, align 8
  br label %42

42:                                               ; preds = %34, %22
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %7, align 8
  br label %16

46:                                               ; preds = %16
  %47 = load %struct.mtk_cqdma_pchan*, %struct.mtk_cqdma_pchan** %6, align 8
  %48 = icmp ne %struct.mtk_cqdma_pchan* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @ENOSPC, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %83

52:                                               ; preds = %46
  %53 = load %struct.mtk_cqdma_pchan*, %struct.mtk_cqdma_pchan** %6, align 8
  %54 = getelementptr inbounds %struct.mtk_cqdma_pchan, %struct.mtk_cqdma_pchan* %53, i32 0, i32 0
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @spin_lock_irqsave(i32* %54, i64 %55)
  %57 = load %struct.mtk_cqdma_pchan*, %struct.mtk_cqdma_pchan** %6, align 8
  %58 = getelementptr inbounds %struct.mtk_cqdma_pchan, %struct.mtk_cqdma_pchan* %57, i32 0, i32 1
  %59 = call i64 @refcount_read(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %52
  %62 = load %struct.mtk_cqdma_pchan*, %struct.mtk_cqdma_pchan** %6, align 8
  %63 = call i32 @mtk_cqdma_hard_reset(%struct.mtk_cqdma_pchan* %62)
  %64 = load %struct.mtk_cqdma_pchan*, %struct.mtk_cqdma_pchan** %6, align 8
  %65 = load i32, i32* @MTK_CQDMA_INT_EN, align 4
  %66 = load i32, i32* @MTK_CQDMA_INT_EN_BIT, align 4
  %67 = call i32 @mtk_dma_set(%struct.mtk_cqdma_pchan* %64, i32 %65, i32 %66)
  %68 = load %struct.mtk_cqdma_pchan*, %struct.mtk_cqdma_pchan** %6, align 8
  %69 = getelementptr inbounds %struct.mtk_cqdma_pchan, %struct.mtk_cqdma_pchan* %68, i32 0, i32 1
  %70 = call i32 @refcount_set(i32* %69, i32 1)
  br label %75

71:                                               ; preds = %52
  %72 = load %struct.mtk_cqdma_pchan*, %struct.mtk_cqdma_pchan** %6, align 8
  %73 = getelementptr inbounds %struct.mtk_cqdma_pchan, %struct.mtk_cqdma_pchan* %72, i32 0, i32 1
  %74 = call i32 @refcount_inc(i32* %73)
  br label %75

75:                                               ; preds = %71, %61
  %76 = load %struct.mtk_cqdma_pchan*, %struct.mtk_cqdma_pchan** %6, align 8
  %77 = getelementptr inbounds %struct.mtk_cqdma_pchan, %struct.mtk_cqdma_pchan* %76, i32 0, i32 0
  %78 = load i64, i64* %10, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  %80 = load %struct.mtk_cqdma_pchan*, %struct.mtk_cqdma_pchan** %6, align 8
  %81 = load %struct.mtk_cqdma_vchan*, %struct.mtk_cqdma_vchan** %5, align 8
  %82 = getelementptr inbounds %struct.mtk_cqdma_vchan, %struct.mtk_cqdma_vchan* %81, i32 0, i32 0
  store %struct.mtk_cqdma_pchan* %80, %struct.mtk_cqdma_pchan** %82, align 8
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %75, %49
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.mtk_cqdma_device* @to_cqdma_dev(%struct.dma_chan*) #1

declare dso_local %struct.mtk_cqdma_vchan* @to_cqdma_vchan(%struct.dma_chan*) #1

declare dso_local i64 @refcount_read(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mtk_cqdma_hard_reset(%struct.mtk_cqdma_pchan*) #1

declare dso_local i32 @mtk_dma_set(%struct.mtk_cqdma_pchan*, i32, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
