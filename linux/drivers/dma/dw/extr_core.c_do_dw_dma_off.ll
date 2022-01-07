; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw/extr_core.c_do_dw_dma_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw/extr_core.c_do_dw_dma_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.dw_dma = type { %struct.TYPE_5__*, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@CFG = common dso_local global i32 0, align 4
@MASK = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@DW_CFG_DMA_EN = common dso_local global i32 0, align 4
@DW_DMA_IS_INITIALIZED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_dw_dma_off(%struct.dw_dma* %0) #0 {
  %2 = alloca %struct.dw_dma*, align 8
  %3 = alloca i32, align 4
  store %struct.dw_dma* %0, %struct.dw_dma** %2, align 8
  %4 = load %struct.dw_dma*, %struct.dw_dma** %2, align 8
  %5 = load i32, i32* @CFG, align 4
  %6 = call i32 @dma_writel(%struct.dw_dma* %4, i32 %5, i32 0)
  %7 = load %struct.dw_dma*, %struct.dw_dma** %2, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @MASK, i32 0, i32 4), align 4
  %9 = load %struct.dw_dma*, %struct.dw_dma** %2, align 8
  %10 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @channel_clear_bit(%struct.dw_dma* %7, i32 %8, i32 %11)
  %13 = load %struct.dw_dma*, %struct.dw_dma** %2, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @MASK, i32 0, i32 3), align 4
  %15 = load %struct.dw_dma*, %struct.dw_dma** %2, align 8
  %16 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @channel_clear_bit(%struct.dw_dma* %13, i32 %14, i32 %17)
  %19 = load %struct.dw_dma*, %struct.dw_dma** %2, align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @MASK, i32 0, i32 2), align 4
  %21 = load %struct.dw_dma*, %struct.dw_dma** %2, align 8
  %22 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @channel_clear_bit(%struct.dw_dma* %19, i32 %20, i32 %23)
  %25 = load %struct.dw_dma*, %struct.dw_dma** %2, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @MASK, i32 0, i32 1), align 4
  %27 = load %struct.dw_dma*, %struct.dw_dma** %2, align 8
  %28 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @channel_clear_bit(%struct.dw_dma* %25, i32 %26, i32 %29)
  %31 = load %struct.dw_dma*, %struct.dw_dma** %2, align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @MASK, i32 0, i32 0), align 4
  %33 = load %struct.dw_dma*, %struct.dw_dma** %2, align 8
  %34 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @channel_clear_bit(%struct.dw_dma* %31, i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %44, %1
  %38 = load %struct.dw_dma*, %struct.dw_dma** %2, align 8
  %39 = load i32, i32* @CFG, align 4
  %40 = call i32 @dma_readl(%struct.dw_dma* %38, i32 %39)
  %41 = load i32, i32* @DW_CFG_DMA_EN, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = call i32 (...) @cpu_relax()
  br label %37

46:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %64, %46
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.dw_dma*, %struct.dw_dma** %2, align 8
  %50 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ult i32 %48, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %47
  %55 = load i32, i32* @DW_DMA_IS_INITIALIZED, align 4
  %56 = load %struct.dw_dma*, %struct.dw_dma** %2, align 8
  %57 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = call i32 @clear_bit(i32 %55, i32* %62)
  br label %64

64:                                               ; preds = %54
  %65 = load i32, i32* %3, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %47

67:                                               ; preds = %47
  ret void
}

declare dso_local i32 @dma_writel(%struct.dw_dma*, i32, i32) #1

declare dso_local i32 @channel_clear_bit(%struct.dw_dma*, i32, i32) #1

declare dso_local i32 @dma_readl(%struct.dw_dma*, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
