; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-cqdma.c_mtk_cqdma_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-cqdma.c_mtk_cqdma_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_cqdma_device = type { i64, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@MTK_CQDMA_INT_FLAG = common dso_local global i32 0, align 4
@MTK_CQDMA_INT_FLAG_BIT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mtk_cqdma_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_cqdma_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mtk_cqdma_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.mtk_cqdma_device*
  store %struct.mtk_cqdma_device* %10, %struct.mtk_cqdma_device** %5, align 8
  %11 = load i32, i32* @IRQ_NONE, align 4
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  br label %12

12:                                               ; preds = %79, %2
  %13 = load i64, i64* %8, align 8
  %14 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %5, align 8
  %15 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %82

18:                                               ; preds = %12
  %19 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %5, align 8
  %20 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %20, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %21, i64 %22
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %5, align 8
  %28 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %29, i64 %30
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* @MTK_CQDMA_INT_FLAG, align 4
  %34 = call i32 @mtk_dma_read(%struct.TYPE_3__* %32, i32 %33)
  %35 = load i32, i32* @MTK_CQDMA_INT_FLAG_BIT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %18
  %39 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %5, align 8
  %40 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %41, i64 %42
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i32, i32* @MTK_CQDMA_INT_FLAG, align 4
  %46 = load i32, i32* @MTK_CQDMA_INT_FLAG_BIT, align 4
  %47 = call i32 @mtk_dma_clr(%struct.TYPE_3__* %44, i32 %45, i32 %46)
  store i32 1, i32* %7, align 4
  %48 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %38, %18
  %50 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %5, align 8
  %51 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %52, i64 %53
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = call i32 @spin_unlock(i32* %56)
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %49
  %61 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %5, align 8
  %62 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %63, i64 %64
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @disable_irq_nosync(i32 %68)
  %70 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %5, align 8
  %71 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %72, i64 %73
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = call i32 @tasklet_schedule(i32* %76)
  br label %78

78:                                               ; preds = %60, %49
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %8, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %8, align 8
  store i32 0, i32* %7, align 4
  br label %12

82:                                               ; preds = %12
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mtk_dma_read(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @mtk_dma_clr(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
