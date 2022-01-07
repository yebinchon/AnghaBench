; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_cdns-dsi.c_cdns_dsi_hs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_cdns-dsi.c_cdns_dsi_hs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns_dsi = type { i64, i32, %struct.cdns_dsi_output }
%struct.cdns_dsi_output = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@DPHY_CMN_PSO = common dso_local global i32 0, align 4
@DPHY_PLL_PSO = common dso_local global i32 0, align 4
@DPHY_ALL_D_PDN = common dso_local global i32 0, align 4
@DPHY_C_PDN = common dso_local global i32 0, align 4
@DPHY_CMN_PDN = common dso_local global i32 0, align 4
@DPHY_PLL_PDN = common dso_local global i32 0, align 4
@MCTL_DPHY_CFG0 = common dso_local global i64 0, align 8
@PHY_MODE_MIPI_DPHY = common dso_local global i32 0, align 4
@PLL_LOCKED = common dso_local global i32 0, align 4
@MCTL_MAIN_STS_CLR = common dso_local global i64 0, align 8
@MCTL_MAIN_STS = common dso_local global i64 0, align 8
@DPHY_C_RSTB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdns_dsi*)* @cdns_dsi_hs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns_dsi_hs_init(%struct.cdns_dsi* %0) #0 {
  %2 = alloca %struct.cdns_dsi*, align 8
  %3 = alloca %struct.cdns_dsi_output*, align 8
  %4 = alloca i32, align 4
  store %struct.cdns_dsi* %0, %struct.cdns_dsi** %2, align 8
  %5 = load %struct.cdns_dsi*, %struct.cdns_dsi** %2, align 8
  %6 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %5, i32 0, i32 2
  store %struct.cdns_dsi_output* %6, %struct.cdns_dsi_output** %3, align 8
  %7 = load i32, i32* @DPHY_CMN_PSO, align 4
  %8 = load i32, i32* @DPHY_PLL_PSO, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @DPHY_ALL_D_PDN, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @DPHY_C_PDN, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @DPHY_CMN_PDN, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @DPHY_PLL_PDN, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.cdns_dsi*, %struct.cdns_dsi** %2, align 8
  %19 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MCTL_DPHY_CFG0, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 %17, i64 %22)
  %24 = load %struct.cdns_dsi*, %struct.cdns_dsi** %2, align 8
  %25 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @phy_init(i32 %26)
  %28 = load %struct.cdns_dsi*, %struct.cdns_dsi** %2, align 8
  %29 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @PHY_MODE_MIPI_DPHY, align 4
  %32 = call i32 @phy_set_mode(i32 %30, i32 %31)
  %33 = load %struct.cdns_dsi*, %struct.cdns_dsi** %2, align 8
  %34 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.cdns_dsi_output*, %struct.cdns_dsi_output** %3, align 8
  %37 = getelementptr inbounds %struct.cdns_dsi_output, %struct.cdns_dsi_output* %36, i32 0, i32 1
  %38 = call i32 @phy_configure(i32 %35, i32* %37)
  %39 = load %struct.cdns_dsi*, %struct.cdns_dsi** %2, align 8
  %40 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @phy_power_on(i32 %41)
  %43 = load i32, i32* @PLL_LOCKED, align 4
  %44 = load %struct.cdns_dsi*, %struct.cdns_dsi** %2, align 8
  %45 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MCTL_MAIN_STS_CLR, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel(i32 %43, i64 %48)
  %50 = load i32, i32* @DPHY_CMN_PSO, align 4
  %51 = load i32, i32* @DPHY_ALL_D_PDN, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @DPHY_C_PDN, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @DPHY_CMN_PDN, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.cdns_dsi*, %struct.cdns_dsi** %2, align 8
  %58 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MCTL_DPHY_CFG0, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 %56, i64 %61)
  %63 = load %struct.cdns_dsi*, %struct.cdns_dsi** %2, align 8
  %64 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @MCTL_MAIN_STS, align 8
  %67 = add nsw i64 %65, %66
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @PLL_LOCKED, align 4
  %71 = and i32 %69, %70
  %72 = call i32 @readl_poll_timeout(i64 %67, i32 %68, i32 %71, i32 100, i32 100)
  %73 = call i32 @WARN_ON_ONCE(i32 %72)
  %74 = load i32, i32* @DPHY_CMN_PSO, align 4
  %75 = load i32, i32* @DPHY_ALL_D_PDN, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @DPHY_C_PDN, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @DPHY_CMN_PDN, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.cdns_dsi_output*, %struct.cdns_dsi_output** %3, align 8
  %82 = getelementptr inbounds %struct.cdns_dsi_output, %struct.cdns_dsi_output* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @DPHY_D_RSTB(i32 %85)
  %87 = or i32 %80, %86
  %88 = load i32, i32* @DPHY_C_RSTB, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.cdns_dsi*, %struct.cdns_dsi** %2, align 8
  %91 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @MCTL_DPHY_CFG0, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @writel(i32 %89, i64 %94)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @phy_init(i32) #1

declare dso_local i32 @phy_set_mode(i32, i32) #1

declare dso_local i32 @phy_configure(i32, i32*) #1

declare dso_local i32 @phy_power_on(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @DPHY_D_RSTB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
