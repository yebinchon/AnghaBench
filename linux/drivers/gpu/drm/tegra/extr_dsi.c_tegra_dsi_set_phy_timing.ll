; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_set_phy_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_set_phy_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dsi = type { %struct.tegra_dsi* }
%struct.mipi_dphy_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DSI_PHY_TIMING_0 = common dso_local global i32 0, align 4
@DSI_PHY_TIMING_1 = common dso_local global i32 0, align 4
@DSI_PHY_TIMING_2 = common dso_local global i32 0, align 4
@DSI_BTA_TIMING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_dsi*, i64, %struct.mipi_dphy_timing*)* @tegra_dsi_set_phy_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_dsi_set_phy_timing(%struct.tegra_dsi* %0, i64 %1, %struct.mipi_dphy_timing* %2) #0 {
  %4 = alloca %struct.tegra_dsi*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mipi_dphy_timing*, align 8
  %7 = alloca i32, align 4
  store %struct.tegra_dsi* %0, %struct.tegra_dsi** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.mipi_dphy_timing* %2, %struct.mipi_dphy_timing** %6, align 8
  %8 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %6, align 8
  %9 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @DSI_TIMING_FIELD(i32 %10, i64 %11, i32 1)
  %13 = shl i32 %12, 24
  %14 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %6, align 8
  %15 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @DSI_TIMING_FIELD(i32 %16, i64 %17, i32 0)
  %19 = shl i32 %18, 16
  %20 = or i32 %13, %19
  %21 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %6, align 8
  %22 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @DSI_TIMING_FIELD(i32 %23, i64 %24, i32 3)
  %26 = shl i32 %25, 8
  %27 = or i32 %20, %26
  %28 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %6, align 8
  %29 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @DSI_TIMING_FIELD(i32 %30, i64 %31, i32 1)
  %33 = or i32 %27, %32
  store i32 %33, i32* %7, align 4
  %34 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @DSI_PHY_TIMING_0, align 4
  %37 = call i32 @tegra_dsi_writel(%struct.tegra_dsi* %34, i32 %35, i32 %36)
  %38 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %6, align 8
  %39 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @DSI_TIMING_FIELD(i32 %40, i64 %41, i32 1)
  %43 = shl i32 %42, 24
  %44 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %6, align 8
  %45 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @DSI_TIMING_FIELD(i32 %46, i64 %47, i32 1)
  %49 = shl i32 %48, 16
  %50 = or i32 %43, %49
  %51 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %6, align 8
  %52 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @DSI_TIMING_FIELD(i32 %53, i64 %54, i32 1)
  %56 = shl i32 %55, 8
  %57 = or i32 %50, %56
  %58 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %6, align 8
  %59 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @DSI_TIMING_FIELD(i32 %60, i64 %61, i32 1)
  %63 = or i32 %57, %62
  store i32 %63, i32* %7, align 4
  %64 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @DSI_PHY_TIMING_1, align 4
  %67 = call i32 @tegra_dsi_writel(%struct.tegra_dsi* %64, i32 %65, i32 %66)
  %68 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %6, align 8
  %69 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @DSI_TIMING_FIELD(i32 %70, i64 %71, i32 1)
  %73 = shl i32 %72, 16
  %74 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %6, align 8
  %75 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @DSI_TIMING_FIELD(i32 %76, i64 %77, i32 1)
  %79 = shl i32 %78, 8
  %80 = or i32 %73, %79
  %81 = load i64, i64* %5, align 8
  %82 = mul i64 255, %81
  %83 = trunc i64 %82 to i32
  %84 = load i64, i64* %5, align 8
  %85 = call i32 @DSI_TIMING_FIELD(i32 %83, i64 %84, i32 0)
  %86 = shl i32 %85, 0
  %87 = or i32 %80, %86
  store i32 %87, i32* %7, align 4
  %88 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @DSI_PHY_TIMING_2, align 4
  %91 = call i32 @tegra_dsi_writel(%struct.tegra_dsi* %88, i32 %89, i32 %90)
  %92 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %6, align 8
  %93 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %92, i32 0, i32 10
  %94 = load i32, i32* %93, align 4
  %95 = load i64, i64* %5, align 8
  %96 = call i32 @DSI_TIMING_FIELD(i32 %94, i64 %95, i32 1)
  %97 = shl i32 %96, 16
  %98 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %6, align 8
  %99 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %98, i32 0, i32 11
  %100 = load i32, i32* %99, align 4
  %101 = load i64, i64* %5, align 8
  %102 = call i32 @DSI_TIMING_FIELD(i32 %100, i64 %101, i32 1)
  %103 = shl i32 %102, 8
  %104 = or i32 %97, %103
  %105 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %6, align 8
  %106 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %105, i32 0, i32 12
  %107 = load i32, i32* %106, align 4
  %108 = load i64, i64* %5, align 8
  %109 = call i32 @DSI_TIMING_FIELD(i32 %107, i64 %108, i32 1)
  %110 = or i32 %104, %109
  store i32 %110, i32* %7, align 4
  %111 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @DSI_BTA_TIMING, align 4
  %114 = call i32 @tegra_dsi_writel(%struct.tegra_dsi* %111, i32 %112, i32 %113)
  %115 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %116 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %115, i32 0, i32 0
  %117 = load %struct.tegra_dsi*, %struct.tegra_dsi** %116, align 8
  %118 = icmp ne %struct.tegra_dsi* %117, null
  br i1 %118, label %119, label %125

119:                                              ; preds = %3
  %120 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %121 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %120, i32 0, i32 0
  %122 = load %struct.tegra_dsi*, %struct.tegra_dsi** %121, align 8
  %123 = load i64, i64* %5, align 8
  %124 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %6, align 8
  call void @tegra_dsi_set_phy_timing(%struct.tegra_dsi* %122, i64 %123, %struct.mipi_dphy_timing* %124)
  br label %125

125:                                              ; preds = %119, %3
  ret void
}

declare dso_local i32 @DSI_TIMING_FIELD(i32, i64, i32) #1

declare dso_local i32 @tegra_dsi_writel(%struct.tegra_dsi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
