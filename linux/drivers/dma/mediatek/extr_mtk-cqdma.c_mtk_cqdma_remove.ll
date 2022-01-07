; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-cqdma.c_mtk_cqdma_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-cqdma.c_mtk_cqdma_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.mtk_cqdma_device = type { i32, i32, i32, %struct.TYPE_8__**, %struct.mtk_cqdma_vchan* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.mtk_cqdma_vchan = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@MTK_CQDMA_INT_EN = common dso_local global i32 0, align 4
@MTK_CQDMA_INT_EN_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_cqdma_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_cqdma_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mtk_cqdma_device*, align 8
  %4 = alloca %struct.mtk_cqdma_vchan*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = call %struct.mtk_cqdma_device* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.mtk_cqdma_device* %8, %struct.mtk_cqdma_device** %3, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %31, %1
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %3, align 8
  %12 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %9
  %16 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %3, align 8
  %17 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %16, i32 0, i32 4
  %18 = load %struct.mtk_cqdma_vchan*, %struct.mtk_cqdma_vchan** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.mtk_cqdma_vchan, %struct.mtk_cqdma_vchan* %18, i64 %20
  store %struct.mtk_cqdma_vchan* %21, %struct.mtk_cqdma_vchan** %4, align 8
  %22 = load %struct.mtk_cqdma_vchan*, %struct.mtk_cqdma_vchan** %4, align 8
  %23 = getelementptr inbounds %struct.mtk_cqdma_vchan, %struct.mtk_cqdma_vchan* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = call i32 @list_del(i32* %25)
  %27 = load %struct.mtk_cqdma_vchan*, %struct.mtk_cqdma_vchan** %4, align 8
  %28 = getelementptr inbounds %struct.mtk_cqdma_vchan, %struct.mtk_cqdma_vchan* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = call i32 @tasklet_kill(i32* %29)
  br label %31

31:                                               ; preds = %15
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %9

34:                                               ; preds = %9
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %91, %34
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %3, align 8
  %38 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %94

41:                                               ; preds = %35
  %42 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %3, align 8
  %43 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %42, i32 0, i32 3
  %44 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %44, i64 %46
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @spin_lock_irqsave(i32* %49, i64 %50)
  %52 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %3, align 8
  %53 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %52, i32 0, i32 3
  %54 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %54, i64 %56
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = load i32, i32* @MTK_CQDMA_INT_EN, align 4
  %60 = load i32, i32* @MTK_CQDMA_INT_EN_BIT, align 4
  %61 = call i32 @mtk_dma_clr(%struct.TYPE_8__* %58, i32 %59, i32 %60)
  %62 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %3, align 8
  %63 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %62, i32 0, i32 3
  %64 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %64, i64 %66
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  %72 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %3, align 8
  %73 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %72, i32 0, i32 3
  %74 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %74, i64 %76
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @synchronize_irq(i32 %80)
  %82 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %3, align 8
  %83 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %82, i32 0, i32 3
  %84 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %84, i64 %86
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = call i32 @tasklet_kill(i32* %89)
  br label %91

91:                                               ; preds = %41
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %35

94:                                               ; preds = %35
  %95 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %3, align 8
  %96 = call i32 @mtk_cqdma_hw_deinit(%struct.mtk_cqdma_device* %95)
  %97 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %3, align 8
  %98 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %97, i32 0, i32 2
  %99 = call i32 @dma_async_device_unregister(i32* %98)
  %100 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @of_dma_controller_free(i32 %103)
  ret i32 0
}

declare dso_local %struct.mtk_cqdma_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mtk_dma_clr(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @mtk_cqdma_hw_deinit(%struct.mtk_cqdma_device*) #1

declare dso_local i32 @dma_async_device_unregister(i32*) #1

declare dso_local i32 @of_dma_controller_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
