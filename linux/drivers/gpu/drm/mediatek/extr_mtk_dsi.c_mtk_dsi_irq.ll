; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dsi.c_mtk_dsi_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dsi.c_mtk_dsi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_dsi = type { i32, i64 }

@LPRX_RD_RDY_INT_FLAG = common dso_local global i32 0, align 4
@CMD_DONE_INT_FLAG = common dso_local global i32 0, align 4
@VM_DONE_INT_FLAG = common dso_local global i32 0, align 4
@DSI_INTSTA = common dso_local global i64 0, align 8
@DSI_RACK = common dso_local global i64 0, align 8
@RACK = common dso_local global i32 0, align 4
@DSI_BUSY = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mtk_dsi_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_dsi_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mtk_dsi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.mtk_dsi*
  store %struct.mtk_dsi* %10, %struct.mtk_dsi** %5, align 8
  %11 = load i32, i32* @LPRX_RD_RDY_INT_FLAG, align 4
  %12 = load i32, i32* @CMD_DONE_INT_FLAG, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @VM_DONE_INT_FLAG, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %8, align 4
  %16 = load %struct.mtk_dsi*, %struct.mtk_dsi** %5, align 8
  %17 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DSI_INTSTA, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %39, %26
  %28 = load %struct.mtk_dsi*, %struct.mtk_dsi** %5, align 8
  %29 = load i64, i64* @DSI_RACK, align 8
  %30 = load i32, i32* @RACK, align 4
  %31 = load i32, i32* @RACK, align 4
  %32 = call i32 @mtk_dsi_mask(%struct.mtk_dsi* %28, i64 %29, i32 %30, i32 %31)
  %33 = load %struct.mtk_dsi*, %struct.mtk_dsi** %5, align 8
  %34 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DSI_INTSTA, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @readl(i64 %37)
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %27
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @DSI_BUSY, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %27, label %44

44:                                               ; preds = %39
  %45 = load %struct.mtk_dsi*, %struct.mtk_dsi** %5, align 8
  %46 = load i64, i64* @DSI_INTSTA, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @mtk_dsi_mask(%struct.mtk_dsi* %45, i64 %46, i32 %47, i32 0)
  %49 = load %struct.mtk_dsi*, %struct.mtk_dsi** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @mtk_dsi_irq_data_set(%struct.mtk_dsi* %49, i32 %50)
  %52 = load %struct.mtk_dsi*, %struct.mtk_dsi** %5, align 8
  %53 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %52, i32 0, i32 0
  %54 = call i32 @wake_up_interruptible(i32* %53)
  br label %55

55:                                               ; preds = %44, %2
  %56 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %56
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @mtk_dsi_mask(%struct.mtk_dsi*, i64, i32, i32) #1

declare dso_local i32 @mtk_dsi_irq_data_set(%struct.mtk_dsi*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
