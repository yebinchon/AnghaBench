; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dsi.c_mtk_dsi_ps_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dsi.c_mtk_dsi_ps_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_dsi = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PACKED_PS_24BIT_RGB888 = common dso_local global i32 0, align 4
@LOOSELY_PS_18BIT_RGB666 = common dso_local global i32 0, align 4
@PACKED_PS_18BIT_RGB666 = common dso_local global i32 0, align 4
@PACKED_PS_16BIT_RGB565 = common dso_local global i32 0, align 4
@DSI_PS_WC = common dso_local global i32 0, align 4
@DSI_PSCTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_dsi*)* @mtk_dsi_ps_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_dsi_ps_control(%struct.mtk_dsi* %0) #0 {
  %2 = alloca %struct.mtk_dsi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mtk_dsi* %0, %struct.mtk_dsi** %2, align 8
  %5 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %6 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %16 [
    i32 128, label %8
    i32 130, label %10
    i32 129, label %12
    i32 131, label %14
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* @PACKED_PS_24BIT_RGB888, align 4
  store i32 %9, i32* %4, align 4
  store i32 3, i32* %3, align 4
  br label %18

10:                                               ; preds = %1
  %11 = load i32, i32* @LOOSELY_PS_18BIT_RGB666, align 4
  store i32 %11, i32* %4, align 4
  store i32 3, i32* %3, align 4
  br label %18

12:                                               ; preds = %1
  %13 = load i32, i32* @PACKED_PS_18BIT_RGB666, align 4
  store i32 %13, i32* %4, align 4
  store i32 3, i32* %3, align 4
  br label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @PACKED_PS_16BIT_RGB565, align 4
  store i32 %15, i32* %4, align 4
  store i32 2, i32* %3, align 4
  br label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @PACKED_PS_24BIT_RGB888, align 4
  store i32 %17, i32* %4, align 4
  store i32 3, i32* %3, align 4
  br label %18

18:                                               ; preds = %16, %14, %12, %10, %8
  %19 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %20 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = mul nsw i32 %22, %23
  %25 = load i32, i32* @DSI_PS_WC, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %31 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DSI_PSCTRL, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 %29, i64 %34)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
