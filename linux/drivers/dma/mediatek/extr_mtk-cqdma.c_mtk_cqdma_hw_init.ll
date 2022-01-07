; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-cqdma.c_mtk_cqdma_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-cqdma.c_mtk_cqdma_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_cqdma_device = type { i64, %struct.TYPE_2__**, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"cqdma hard reset timeout\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_cqdma_device*)* @mtk_cqdma_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_cqdma_hw_init(%struct.mtk_cqdma_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_cqdma_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.mtk_cqdma_device* %0, %struct.mtk_cqdma_device** %3, align 8
  %7 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %3, align 8
  %8 = call i32 @cqdma2dev(%struct.mtk_cqdma_device* %7)
  %9 = call i32 @pm_runtime_enable(i32 %8)
  %10 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %3, align 8
  %11 = call i32 @cqdma2dev(%struct.mtk_cqdma_device* %10)
  %12 = call i32 @pm_runtime_get_sync(i32 %11)
  %13 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %3, align 8
  %14 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @clk_prepare_enable(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %3, align 8
  %21 = call i32 @cqdma2dev(%struct.mtk_cqdma_device* %20)
  %22 = call i32 @pm_runtime_put_sync(i32 %21)
  %23 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %3, align 8
  %24 = call i32 @cqdma2dev(%struct.mtk_cqdma_device* %23)
  %25 = call i32 @pm_runtime_disable(i32 %24)
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %91

27:                                               ; preds = %1
  store i64 0, i64* %6, align 8
  br label %28

28:                                               ; preds = %87, %27
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %3, align 8
  %31 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %29, %32
  br i1 %33, label %34, label %90

34:                                               ; preds = %28
  %35 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %3, align 8
  %36 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %37, i64 %38
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %3, align 8
  %45 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %46, i64 %47
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = call i64 @mtk_cqdma_hard_reset(%struct.TYPE_2__* %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %77

52:                                               ; preds = %34
  %53 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %3, align 8
  %54 = call i32 @cqdma2dev(%struct.mtk_cqdma_device* %53)
  %55 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %3, align 8
  %57 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %57, align 8
  %59 = load i64, i64* %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %58, i64 %59
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  %65 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %3, align 8
  %66 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @clk_disable_unprepare(i32 %67)
  %69 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %3, align 8
  %70 = call i32 @cqdma2dev(%struct.mtk_cqdma_device* %69)
  %71 = call i32 @pm_runtime_put_sync(i32 %70)
  %72 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %3, align 8
  %73 = call i32 @cqdma2dev(%struct.mtk_cqdma_device* %72)
  %74 = call i32 @pm_runtime_disable(i32 %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %91

77:                                               ; preds = %34
  %78 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %3, align 8
  %79 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %79, align 8
  %81 = load i64, i64* %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %80, i64 %81
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %4, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  br label %87

87:                                               ; preds = %77
  %88 = load i64, i64* %6, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %6, align 8
  br label %28

90:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %90, %52, %19
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @pm_runtime_enable(i32) #1

declare dso_local i32 @cqdma2dev(%struct.mtk_cqdma_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @mtk_cqdma_hard_reset(%struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
