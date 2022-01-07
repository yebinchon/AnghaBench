; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dsi.c_mtk_dsi_config_vdo_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dsi.c_mtk_dsi_config_vdo_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_dsi = type { i64, i32, i64, %struct.videomode }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32 }

@MIPI_DSI_FMT_RGB565 = common dso_local global i64 0, align 8
@DSI_VSA_NL = common dso_local global i64 0, align 8
@DSI_VBP_NL = common dso_local global i64 0, align 8
@DSI_VFP_NL = common dso_local global i64 0, align 8
@DSI_VACT_NL = common dso_local global i64 0, align 8
@MIPI_DSI_MODE_VIDEO_SYNC_PULSE = common dso_local global i32 0, align 4
@DSI_HSA_WC = common dso_local global i64 0, align 8
@DSI_HBP_WC = common dso_local global i64 0, align 8
@DSI_HFP_WC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_dsi*)* @mtk_dsi_config_vdo_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_dsi_config_vdo_timing(%struct.mtk_dsi* %0) #0 {
  %2 = alloca %struct.mtk_dsi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.videomode*, align 8
  store %struct.mtk_dsi* %0, %struct.mtk_dsi** %2, align 8
  %8 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %9 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %8, i32 0, i32 3
  store %struct.videomode* %9, %struct.videomode** %7, align 8
  %10 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %11 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MIPI_DSI_FMT_RGB565, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 2, i32* %6, align 4
  br label %17

16:                                               ; preds = %1
  store i32 3, i32* %6, align 4
  br label %17

17:                                               ; preds = %16, %15
  %18 = load %struct.videomode*, %struct.videomode** %7, align 8
  %19 = getelementptr inbounds %struct.videomode, %struct.videomode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %22 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DSI_VSA_NL, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %20, i64 %25)
  %27 = load %struct.videomode*, %struct.videomode** %7, align 8
  %28 = getelementptr inbounds %struct.videomode, %struct.videomode* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %31 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DSI_VBP_NL, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 %29, i64 %34)
  %36 = load %struct.videomode*, %struct.videomode** %7, align 8
  %37 = getelementptr inbounds %struct.videomode, %struct.videomode* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %40 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DSI_VFP_NL, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 %38, i64 %43)
  %45 = load %struct.videomode*, %struct.videomode** %7, align 8
  %46 = getelementptr inbounds %struct.videomode, %struct.videomode* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %49 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @DSI_VACT_NL, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 %47, i64 %52)
  %54 = load %struct.videomode*, %struct.videomode** %7, align 8
  %55 = getelementptr inbounds %struct.videomode, %struct.videomode* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %6, align 4
  %58 = mul nsw i32 %56, %57
  %59 = sub nsw i32 %58, 10
  store i32 %59, i32* %3, align 4
  %60 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %61 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @MIPI_DSI_MODE_VIDEO_SYNC_PULSE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %17
  %67 = load %struct.videomode*, %struct.videomode** %7, align 8
  %68 = getelementptr inbounds %struct.videomode, %struct.videomode* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %6, align 4
  %71 = mul nsw i32 %69, %70
  %72 = sub nsw i32 %71, 10
  store i32 %72, i32* %4, align 4
  br label %84

73:                                               ; preds = %17
  %74 = load %struct.videomode*, %struct.videomode** %7, align 8
  %75 = getelementptr inbounds %struct.videomode, %struct.videomode* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.videomode*, %struct.videomode** %7, align 8
  %78 = getelementptr inbounds %struct.videomode, %struct.videomode* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %76, %79
  %81 = load i32, i32* %6, align 4
  %82 = mul nsw i32 %80, %81
  %83 = sub nsw i32 %82, 10
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %73, %66
  %85 = load %struct.videomode*, %struct.videomode** %7, align 8
  %86 = getelementptr inbounds %struct.videomode, %struct.videomode* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %6, align 4
  %89 = mul nsw i32 %87, %88
  %90 = sub nsw i32 %89, 12
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %3, align 4
  %92 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %93 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @DSI_HSA_WC, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @writel(i32 %91, i64 %96)
  %98 = load i32, i32* %4, align 4
  %99 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %100 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @DSI_HBP_WC, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @writel(i32 %98, i64 %103)
  %105 = load i32, i32* %5, align 4
  %106 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %107 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @DSI_HFP_WC, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @writel(i32 %105, i64 %110)
  %112 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %113 = call i32 @mtk_dsi_ps_control(%struct.mtk_dsi* %112)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mtk_dsi_ps_control(%struct.mtk_dsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
