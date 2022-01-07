; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dsi.c_mtk_dsi_ps_control_vact.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dsi.c_mtk_dsi_ps_control_vact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_dsi = type { i32, i64, %struct.videomode }
%struct.videomode = type { i32, i32 }

@PACKED_PS_24BIT_RGB888 = common dso_local global i32 0, align 4
@PACKED_PS_18BIT_RGB666 = common dso_local global i32 0, align 4
@LOOSELY_PS_18BIT_RGB666 = common dso_local global i32 0, align 4
@PACKED_PS_16BIT_RGB565 = common dso_local global i32 0, align 4
@DSI_VACT_NL = common dso_local global i64 0, align 8
@DSI_PSCTRL = common dso_local global i64 0, align 8
@DSI_HSTX_CKL_WC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_dsi*)* @mtk_dsi_ps_control_vact to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_dsi_ps_control_vact(%struct.mtk_dsi* %0) #0 {
  %2 = alloca %struct.mtk_dsi*, align 8
  %3 = alloca %struct.videomode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mtk_dsi* %0, %struct.mtk_dsi** %2, align 8
  %7 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %8 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %7, i32 0, i32 2
  store %struct.videomode* %8, %struct.videomode** %3, align 8
  %9 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %10 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 131
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 2, i32* %4, align 4
  br label %15

14:                                               ; preds = %1
  store i32 3, i32* %4, align 4
  br label %15

15:                                               ; preds = %14, %13
  %16 = load %struct.videomode*, %struct.videomode** %3, align 8
  %17 = getelementptr inbounds %struct.videomode, %struct.videomode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = mul nsw i32 %18, %19
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %6, align 4
  %22 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %23 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %41 [
    i32 128, label %25
    i32 130, label %29
    i32 129, label %33
    i32 131, label %37
  ]

25:                                               ; preds = %15
  %26 = load i32, i32* @PACKED_PS_24BIT_RGB888, align 4
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  br label %41

29:                                               ; preds = %15
  %30 = load i32, i32* @PACKED_PS_18BIT_RGB666, align 4
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %6, align 4
  br label %41

33:                                               ; preds = %15
  %34 = load i32, i32* @LOOSELY_PS_18BIT_RGB666, align 4
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  br label %41

37:                                               ; preds = %15
  %38 = load i32, i32* @PACKED_PS_16BIT_RGB565, align 4
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %15, %37, %33, %29, %25
  %42 = load %struct.videomode*, %struct.videomode** %3, align 8
  %43 = getelementptr inbounds %struct.videomode, %struct.videomode* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %46 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @DSI_VACT_NL, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 %44, i64 %49)
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %53 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @DSI_PSCTRL, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel(i32 %51, i64 %56)
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %60 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @DSI_HSTX_CKL_WC, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writel(i32 %58, i64 %63)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
