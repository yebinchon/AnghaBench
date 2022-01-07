; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_hdmi_phy_configure_dwc_hdmi_3d_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_hdmi_phy_configure_dwc_hdmi_3d_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { i32 }
%struct.dw_hdmi_plat_data = type { %struct.dw_hdmi_phy_config*, %struct.dw_hdmi_curr_ctrl*, %struct.dw_hdmi_mpll_config* }
%struct.dw_hdmi_phy_config = type { i64, i32, i32, i32 }
%struct.dw_hdmi_curr_ctrl = type { i64, i32* }
%struct.dw_hdmi_mpll_config = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@HDMI_3D_TX_PHY_CPCE_CTRL = common dso_local global i32 0, align 4
@HDMI_3D_TX_PHY_GMPCTRL = common dso_local global i32 0, align 4
@HDMI_3D_TX_PHY_CURRCTRL = common dso_local global i32 0, align 4
@HDMI_3D_TX_PHY_PLLPHBYCTRL = common dso_local global i32 0, align 4
@HDMI_3D_TX_PHY_MSM_CTRL_CKO_SEL_FB_CLK = common dso_local global i32 0, align 4
@HDMI_3D_TX_PHY_MSM_CTRL = common dso_local global i32 0, align 4
@HDMI_3D_TX_PHY_TXTERM = common dso_local global i32 0, align 4
@HDMI_3D_TX_PHY_CKSYMTXCTRL = common dso_local global i32 0, align 4
@HDMI_3D_TX_PHY_VLEVCTRL = common dso_local global i32 0, align 4
@HDMI_3D_TX_PHY_CKCALCTRL_OVERRIDE = common dso_local global i32 0, align 4
@HDMI_3D_TX_PHY_CKCALCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_hdmi*, %struct.dw_hdmi_plat_data*, i64)* @hdmi_phy_configure_dwc_hdmi_3d_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_phy_configure_dwc_hdmi_3d_tx(%struct.dw_hdmi* %0, %struct.dw_hdmi_plat_data* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dw_hdmi*, align 8
  %6 = alloca %struct.dw_hdmi_plat_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dw_hdmi_mpll_config*, align 8
  %9 = alloca %struct.dw_hdmi_curr_ctrl*, align 8
  %10 = alloca %struct.dw_hdmi_phy_config*, align 8
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %5, align 8
  store %struct.dw_hdmi_plat_data* %1, %struct.dw_hdmi_plat_data** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.dw_hdmi_plat_data*, %struct.dw_hdmi_plat_data** %6, align 8
  %12 = getelementptr inbounds %struct.dw_hdmi_plat_data, %struct.dw_hdmi_plat_data* %11, i32 0, i32 2
  %13 = load %struct.dw_hdmi_mpll_config*, %struct.dw_hdmi_mpll_config** %12, align 8
  store %struct.dw_hdmi_mpll_config* %13, %struct.dw_hdmi_mpll_config** %8, align 8
  %14 = load %struct.dw_hdmi_plat_data*, %struct.dw_hdmi_plat_data** %6, align 8
  %15 = getelementptr inbounds %struct.dw_hdmi_plat_data, %struct.dw_hdmi_plat_data* %14, i32 0, i32 1
  %16 = load %struct.dw_hdmi_curr_ctrl*, %struct.dw_hdmi_curr_ctrl** %15, align 8
  store %struct.dw_hdmi_curr_ctrl* %16, %struct.dw_hdmi_curr_ctrl** %9, align 8
  %17 = load %struct.dw_hdmi_plat_data*, %struct.dw_hdmi_plat_data** %6, align 8
  %18 = getelementptr inbounds %struct.dw_hdmi_plat_data, %struct.dw_hdmi_plat_data* %17, i32 0, i32 0
  %19 = load %struct.dw_hdmi_phy_config*, %struct.dw_hdmi_phy_config** %18, align 8
  store %struct.dw_hdmi_phy_config* %19, %struct.dw_hdmi_phy_config** %10, align 8
  br label %20

20:                                               ; preds = %33, %3
  %21 = load %struct.dw_hdmi_mpll_config*, %struct.dw_hdmi_mpll_config** %8, align 8
  %22 = getelementptr inbounds %struct.dw_hdmi_mpll_config, %struct.dw_hdmi_mpll_config* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, -1
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.dw_hdmi_mpll_config*, %struct.dw_hdmi_mpll_config** %8, align 8
  %28 = getelementptr inbounds %struct.dw_hdmi_mpll_config, %struct.dw_hdmi_mpll_config* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ule i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %36

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.dw_hdmi_mpll_config*, %struct.dw_hdmi_mpll_config** %8, align 8
  %35 = getelementptr inbounds %struct.dw_hdmi_mpll_config, %struct.dw_hdmi_mpll_config* %34, i32 1
  store %struct.dw_hdmi_mpll_config* %35, %struct.dw_hdmi_mpll_config** %8, align 8
  br label %20

36:                                               ; preds = %31, %20
  br label %37

37:                                               ; preds = %50, %36
  %38 = load %struct.dw_hdmi_curr_ctrl*, %struct.dw_hdmi_curr_ctrl** %9, align 8
  %39 = getelementptr inbounds %struct.dw_hdmi_curr_ctrl, %struct.dw_hdmi_curr_ctrl* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, -1
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.dw_hdmi_curr_ctrl*, %struct.dw_hdmi_curr_ctrl** %9, align 8
  %45 = getelementptr inbounds %struct.dw_hdmi_curr_ctrl, %struct.dw_hdmi_curr_ctrl* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ule i64 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %53

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.dw_hdmi_curr_ctrl*, %struct.dw_hdmi_curr_ctrl** %9, align 8
  %52 = getelementptr inbounds %struct.dw_hdmi_curr_ctrl, %struct.dw_hdmi_curr_ctrl* %51, i32 1
  store %struct.dw_hdmi_curr_ctrl* %52, %struct.dw_hdmi_curr_ctrl** %9, align 8
  br label %37

53:                                               ; preds = %48, %37
  br label %54

54:                                               ; preds = %67, %53
  %55 = load %struct.dw_hdmi_phy_config*, %struct.dw_hdmi_phy_config** %10, align 8
  %56 = getelementptr inbounds %struct.dw_hdmi_phy_config, %struct.dw_hdmi_phy_config* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, -1
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load i64, i64* %7, align 8
  %61 = load %struct.dw_hdmi_phy_config*, %struct.dw_hdmi_phy_config** %10, align 8
  %62 = getelementptr inbounds %struct.dw_hdmi_phy_config, %struct.dw_hdmi_phy_config* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ule i64 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %70

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.dw_hdmi_phy_config*, %struct.dw_hdmi_phy_config** %10, align 8
  %69 = getelementptr inbounds %struct.dw_hdmi_phy_config, %struct.dw_hdmi_phy_config* %68, i32 1
  store %struct.dw_hdmi_phy_config* %69, %struct.dw_hdmi_phy_config** %10, align 8
  br label %54

70:                                               ; preds = %65, %54
  %71 = load %struct.dw_hdmi_mpll_config*, %struct.dw_hdmi_mpll_config** %8, align 8
  %72 = getelementptr inbounds %struct.dw_hdmi_mpll_config, %struct.dw_hdmi_mpll_config* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, -1
  br i1 %74, label %85, label %75

75:                                               ; preds = %70
  %76 = load %struct.dw_hdmi_curr_ctrl*, %struct.dw_hdmi_curr_ctrl** %9, align 8
  %77 = getelementptr inbounds %struct.dw_hdmi_curr_ctrl, %struct.dw_hdmi_curr_ctrl* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, -1
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load %struct.dw_hdmi_phy_config*, %struct.dw_hdmi_phy_config** %10, align 8
  %82 = getelementptr inbounds %struct.dw_hdmi_phy_config, %struct.dw_hdmi_phy_config* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, -1
  br i1 %84, label %85, label %88

85:                                               ; preds = %80, %75, %70
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %144

88:                                               ; preds = %80
  %89 = load %struct.dw_hdmi*, %struct.dw_hdmi** %5, align 8
  %90 = load %struct.dw_hdmi_mpll_config*, %struct.dw_hdmi_mpll_config** %8, align 8
  %91 = getelementptr inbounds %struct.dw_hdmi_mpll_config, %struct.dw_hdmi_mpll_config* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @HDMI_3D_TX_PHY_CPCE_CTRL, align 4
  %97 = call i32 @dw_hdmi_phy_i2c_write(%struct.dw_hdmi* %89, i32 %95, i32 %96)
  %98 = load %struct.dw_hdmi*, %struct.dw_hdmi** %5, align 8
  %99 = load %struct.dw_hdmi_mpll_config*, %struct.dw_hdmi_mpll_config** %8, align 8
  %100 = getelementptr inbounds %struct.dw_hdmi_mpll_config, %struct.dw_hdmi_mpll_config* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @HDMI_3D_TX_PHY_GMPCTRL, align 4
  %106 = call i32 @dw_hdmi_phy_i2c_write(%struct.dw_hdmi* %98, i32 %104, i32 %105)
  %107 = load %struct.dw_hdmi*, %struct.dw_hdmi** %5, align 8
  %108 = load %struct.dw_hdmi_curr_ctrl*, %struct.dw_hdmi_curr_ctrl** %9, align 8
  %109 = getelementptr inbounds %struct.dw_hdmi_curr_ctrl, %struct.dw_hdmi_curr_ctrl* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @HDMI_3D_TX_PHY_CURRCTRL, align 4
  %114 = call i32 @dw_hdmi_phy_i2c_write(%struct.dw_hdmi* %107, i32 %112, i32 %113)
  %115 = load %struct.dw_hdmi*, %struct.dw_hdmi** %5, align 8
  %116 = load i32, i32* @HDMI_3D_TX_PHY_PLLPHBYCTRL, align 4
  %117 = call i32 @dw_hdmi_phy_i2c_write(%struct.dw_hdmi* %115, i32 0, i32 %116)
  %118 = load %struct.dw_hdmi*, %struct.dw_hdmi** %5, align 8
  %119 = load i32, i32* @HDMI_3D_TX_PHY_MSM_CTRL_CKO_SEL_FB_CLK, align 4
  %120 = load i32, i32* @HDMI_3D_TX_PHY_MSM_CTRL, align 4
  %121 = call i32 @dw_hdmi_phy_i2c_write(%struct.dw_hdmi* %118, i32 %119, i32 %120)
  %122 = load %struct.dw_hdmi*, %struct.dw_hdmi** %5, align 8
  %123 = load %struct.dw_hdmi_phy_config*, %struct.dw_hdmi_phy_config** %10, align 8
  %124 = getelementptr inbounds %struct.dw_hdmi_phy_config, %struct.dw_hdmi_phy_config* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @HDMI_3D_TX_PHY_TXTERM, align 4
  %127 = call i32 @dw_hdmi_phy_i2c_write(%struct.dw_hdmi* %122, i32 %125, i32 %126)
  %128 = load %struct.dw_hdmi*, %struct.dw_hdmi** %5, align 8
  %129 = load %struct.dw_hdmi_phy_config*, %struct.dw_hdmi_phy_config** %10, align 8
  %130 = getelementptr inbounds %struct.dw_hdmi_phy_config, %struct.dw_hdmi_phy_config* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @HDMI_3D_TX_PHY_CKSYMTXCTRL, align 4
  %133 = call i32 @dw_hdmi_phy_i2c_write(%struct.dw_hdmi* %128, i32 %131, i32 %132)
  %134 = load %struct.dw_hdmi*, %struct.dw_hdmi** %5, align 8
  %135 = load %struct.dw_hdmi_phy_config*, %struct.dw_hdmi_phy_config** %10, align 8
  %136 = getelementptr inbounds %struct.dw_hdmi_phy_config, %struct.dw_hdmi_phy_config* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @HDMI_3D_TX_PHY_VLEVCTRL, align 4
  %139 = call i32 @dw_hdmi_phy_i2c_write(%struct.dw_hdmi* %134, i32 %137, i32 %138)
  %140 = load %struct.dw_hdmi*, %struct.dw_hdmi** %5, align 8
  %141 = load i32, i32* @HDMI_3D_TX_PHY_CKCALCTRL_OVERRIDE, align 4
  %142 = load i32, i32* @HDMI_3D_TX_PHY_CKCALCTRL, align 4
  %143 = call i32 @dw_hdmi_phy_i2c_write(%struct.dw_hdmi* %140, i32 %141, i32 %142)
  store i32 0, i32* %4, align 4
  br label %144

144:                                              ; preds = %88, %85
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i32 @dw_hdmi_phy_i2c_write(%struct.dw_hdmi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
