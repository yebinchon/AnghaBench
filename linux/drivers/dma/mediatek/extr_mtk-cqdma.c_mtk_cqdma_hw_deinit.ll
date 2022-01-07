; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-cqdma.c_mtk_cqdma_hw_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-cqdma.c_mtk_cqdma_hw_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_cqdma_device = type { i64, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"cqdma hard reset timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_cqdma_device*)* @mtk_cqdma_hw_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_cqdma_hw_deinit(%struct.mtk_cqdma_device* %0) #0 {
  %2 = alloca %struct.mtk_cqdma_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.mtk_cqdma_device* %0, %struct.mtk_cqdma_device** %2, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %43, %1
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %2, align 8
  %8 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %6, %9
  br i1 %10, label %11, label %46

11:                                               ; preds = %5
  %12 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %2, align 8
  %13 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %14, i64 %15
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %2, align 8
  %22 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %23, i64 %24
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = call i64 @mtk_cqdma_hard_reset(%struct.TYPE_2__* %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %11
  %30 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %2, align 8
  %31 = call i32 @cqdma2dev(%struct.mtk_cqdma_device* %30)
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %29, %11
  %34 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %2, align 8
  %35 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %35, align 8
  %37 = load i64, i64* %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %36, i64 %37
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %3, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  br label %43

43:                                               ; preds = %33
  %44 = load i64, i64* %4, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %4, align 8
  br label %5

46:                                               ; preds = %5
  %47 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %2, align 8
  %48 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @clk_disable_unprepare(i32 %49)
  %51 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %2, align 8
  %52 = call i32 @cqdma2dev(%struct.mtk_cqdma_device* %51)
  %53 = call i32 @pm_runtime_put_sync(i32 %52)
  %54 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %2, align 8
  %55 = call i32 @cqdma2dev(%struct.mtk_cqdma_device* %54)
  %56 = call i32 @pm_runtime_disable(i32 %55)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @mtk_cqdma_hard_reset(%struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @cqdma2dev(%struct.mtk_cqdma_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
