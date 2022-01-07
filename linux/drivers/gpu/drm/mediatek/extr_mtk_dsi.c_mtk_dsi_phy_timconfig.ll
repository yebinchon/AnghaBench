; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dsi.c_mtk_dsi_phy_timconfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dsi.c_mtk_dsi_phy_timconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_dsi = type { i32, i64 }

@T_LPX = common dso_local global i32 0, align 4
@T_HS_PREP = common dso_local global i32 0, align 4
@T_HS_ZERO = common dso_local global i32 0, align 4
@T_HS_TRAIL = common dso_local global i32 0, align 4
@T_HS_EXIT = common dso_local global i32 0, align 4
@DSI_PHY_TIMECON0 = common dso_local global i64 0, align 8
@DSI_PHY_TIMECON1 = common dso_local global i64 0, align 8
@DSI_PHY_TIMECON2 = common dso_local global i64 0, align 8
@DSI_PHY_TIMECON3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_dsi*)* @mtk_dsi_phy_timconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_dsi_phy_timconfig(%struct.mtk_dsi* %0) #0 {
  %2 = alloca %struct.mtk_dsi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mtk_dsi* %0, %struct.mtk_dsi** %2, align 8
  %9 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %10 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sdiv i32 1000, %11
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %7, align 4
  %14 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %15 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sdiv i32 8000, %16
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @T_LPX, align 4
  %20 = load i32, i32* @T_HS_PREP, align 4
  %21 = shl i32 %20, 8
  %22 = or i32 %19, %21
  %23 = load i32, i32* @T_HS_ZERO, align 4
  %24 = shl i32 %23, 16
  %25 = or i32 %22, %24
  %26 = load i32, i32* @T_HS_TRAIL, align 4
  %27 = shl i32 %26, 24
  %28 = or i32 %25, %27
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* @T_LPX, align 4
  %30 = mul nsw i32 4, %29
  %31 = load i32, i32* @T_LPX, align 4
  %32 = mul nsw i32 3, %31
  %33 = sdiv i32 %32, 2
  %34 = shl i32 %33, 8
  %35 = or i32 %30, %34
  %36 = load i32, i32* @T_LPX, align 4
  %37 = mul nsw i32 5, %36
  %38 = shl i32 %37, 16
  %39 = or i32 %35, %38
  %40 = load i32, i32* @T_HS_EXIT, align 4
  %41 = shl i32 %40, 24
  %42 = or i32 %39, %41
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @NS_TO_CYCLE(i32 100, i32 %43)
  %45 = add nsw i32 %44, 10
  %46 = shl i32 %45, 24
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @NS_TO_CYCLE(i32 336, i32 %47)
  %49 = shl i32 %48, 16
  %50 = or i32 %46, %49
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @NS_TO_CYCLE(i32 64, i32 %51)
  %53 = load i32, i32* @T_LPX, align 4
  %54 = mul nsw i32 2, %53
  %55 = shl i32 %54, 16
  %56 = or i32 %52, %55
  %57 = load i32, i32* %7, align 4
  %58 = mul nsw i32 52, %57
  %59 = add nsw i32 80, %58
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @NS_TO_CYCLE(i32 %59, i32 %60)
  %62 = shl i32 %61, 8
  %63 = or i32 %56, %62
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %3, align 4
  %65 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %66 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @DSI_PHY_TIMECON0, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writel(i32 %64, i64 %69)
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %73 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @DSI_PHY_TIMECON1, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writel(i32 %71, i64 %76)
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %80 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @DSI_PHY_TIMECON2, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @writel(i32 %78, i64 %83)
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.mtk_dsi*, %struct.mtk_dsi** %2, align 8
  %87 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @DSI_PHY_TIMECON3, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @writel(i32 %85, i64 %90)
  ret void
}

declare dso_local i32 @NS_TO_CYCLE(i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
