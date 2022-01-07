; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_hdmi_phy.c_sun8i_hdmi_phy_init_h3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_hdmi_phy.c_sun8i_hdmi_phy_init_h3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun8i_hdmi_phy = type { i32, i32 }

@SUN8I_HDMI_PHY_ANA_CFG1_REG = common dso_local global i32 0, align 4
@SUN8I_HDMI_PHY_ANA_CFG1_ENBI = common dso_local global i32 0, align 4
@SUN8I_HDMI_PHY_ANA_CFG1_TMDSCLK_EN = common dso_local global i32 0, align 4
@SUN8I_HDMI_PHY_ANA_CFG1_ENVBS = common dso_local global i32 0, align 4
@SUN8I_HDMI_PHY_ANA_CFG1_LDOEN = common dso_local global i32 0, align 4
@SUN8I_HDMI_PHY_ANA_CFG1_CKEN = common dso_local global i32 0, align 4
@SUN8I_HDMI_PHY_ANA_CFG1_ENRCAL = common dso_local global i32 0, align 4
@SUN8I_HDMI_PHY_ANA_CFG1_ENCALOG = common dso_local global i32 0, align 4
@SUN8I_HDMI_PHY_ANA_CFG1_ENP2S_TMDS0 = common dso_local global i32 0, align 4
@SUN8I_HDMI_PHY_ANA_CFG1_ENP2S_TMDS1 = common dso_local global i32 0, align 4
@SUN8I_HDMI_PHY_ANA_CFG1_ENP2S_TMDS2 = common dso_local global i32 0, align 4
@SUN8I_HDMI_PHY_ANA_STS_REG = common dso_local global i32 0, align 4
@SUN8I_HDMI_PHY_ANA_STS_RCALEND2D = common dso_local global i32 0, align 4
@SUN8I_HDMI_PHY_ANA_CFG1_ENP2S_TMDSCLK = common dso_local global i32 0, align 4
@SUN8I_HDMI_PHY_ANA_CFG1_BIASEN_TMDS0 = common dso_local global i32 0, align 4
@SUN8I_HDMI_PHY_ANA_CFG1_BIASEN_TMDS1 = common dso_local global i32 0, align 4
@SUN8I_HDMI_PHY_ANA_CFG1_BIASEN_TMDS2 = common dso_local global i32 0, align 4
@SUN8I_HDMI_PHY_ANA_CFG1_BIASEN_TMDSCLK = common dso_local global i32 0, align 4
@SUN8I_HDMI_PHY_ANA_CFG3_REG = common dso_local global i32 0, align 4
@SUN8I_HDMI_PHY_ANA_CFG3_SCLEN = common dso_local global i32 0, align 4
@SUN8I_HDMI_PHY_ANA_CFG3_SDAEN = common dso_local global i32 0, align 4
@SUN8I_HDMI_PHY_PLL_CFG1_REG = common dso_local global i32 0, align 4
@SUN8I_HDMI_PHY_PLL_CFG1_CKIN_SEL_MSK = common dso_local global i32 0, align 4
@SUN8I_HDMI_PHY_CEC_REG = common dso_local global i32 0, align 4
@SUN8I_HDMI_PHY_ANA_STS_RCAL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sun8i_hdmi_phy*)* @sun8i_hdmi_phy_init_h3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun8i_hdmi_phy_init_h3(%struct.sun8i_hdmi_phy* %0) #0 {
  %2 = alloca %struct.sun8i_hdmi_phy*, align 8
  %3 = alloca i32, align 4
  store %struct.sun8i_hdmi_phy* %0, %struct.sun8i_hdmi_phy** %2, align 8
  %4 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %2, align 8
  %5 = call i32 @sun8i_hdmi_phy_unlock(%struct.sun8i_hdmi_phy* %4)
  %6 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %2, align 8
  %7 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_REG, align 4
  %10 = call i32 @regmap_write(i32 %8, i32 %9, i32 0)
  %11 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %2, align 8
  %12 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_REG, align 4
  %15 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_ENBI, align 4
  %16 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_ENBI, align 4
  %17 = call i32 @regmap_update_bits(i32 %13, i32 %14, i32 %15, i32 %16)
  %18 = call i32 @udelay(i32 5)
  %19 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %2, align 8
  %20 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_REG, align 4
  %23 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_TMDSCLK_EN, align 4
  %24 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_TMDSCLK_EN, align 4
  %25 = call i32 @regmap_update_bits(i32 %21, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %2, align 8
  %27 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_REG, align 4
  %30 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_ENVBS, align 4
  %31 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_ENVBS, align 4
  %32 = call i32 @regmap_update_bits(i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = call i32 @usleep_range(i32 10, i32 20)
  %34 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %2, align 8
  %35 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_REG, align 4
  %38 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_LDOEN, align 4
  %39 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_LDOEN, align 4
  %40 = call i32 @regmap_update_bits(i32 %36, i32 %37, i32 %38, i32 %39)
  %41 = call i32 @udelay(i32 5)
  %42 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %2, align 8
  %43 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_REG, align 4
  %46 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_CKEN, align 4
  %47 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_CKEN, align 4
  %48 = call i32 @regmap_update_bits(i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = call i32 @usleep_range(i32 40, i32 100)
  %50 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %2, align 8
  %51 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_REG, align 4
  %54 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_ENRCAL, align 4
  %55 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_ENRCAL, align 4
  %56 = call i32 @regmap_update_bits(i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = call i32 @usleep_range(i32 100, i32 200)
  %58 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %2, align 8
  %59 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_REG, align 4
  %62 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_ENCALOG, align 4
  %63 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_ENCALOG, align 4
  %64 = call i32 @regmap_update_bits(i32 %60, i32 %61, i32 %62, i32 %63)
  %65 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %2, align 8
  %66 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_REG, align 4
  %69 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_ENP2S_TMDS0, align 4
  %70 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_ENP2S_TMDS1, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_ENP2S_TMDS2, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_ENP2S_TMDS0, align 4
  %75 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_ENP2S_TMDS1, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_ENP2S_TMDS2, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @regmap_update_bits(i32 %67, i32 %68, i32 %73, i32 %78)
  %80 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %2, align 8
  %81 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @SUN8I_HDMI_PHY_ANA_STS_REG, align 4
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @SUN8I_HDMI_PHY_ANA_STS_RCALEND2D, align 4
  %87 = and i32 %85, %86
  %88 = call i32 @regmap_read_poll_timeout(i32 %82, i32 %83, i32 %84, i32 %87, i32 100, i32 2000)
  %89 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %2, align 8
  %90 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_REG, align 4
  %93 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_ENP2S_TMDSCLK, align 4
  %94 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_ENP2S_TMDSCLK, align 4
  %95 = call i32 @regmap_update_bits(i32 %91, i32 %92, i32 %93, i32 %94)
  %96 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %2, align 8
  %97 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_REG, align 4
  %100 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_BIASEN_TMDS0, align 4
  %101 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_BIASEN_TMDS1, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_BIASEN_TMDS2, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_BIASEN_TMDSCLK, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_BIASEN_TMDS0, align 4
  %108 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_BIASEN_TMDS1, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_BIASEN_TMDS2, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_BIASEN_TMDSCLK, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @regmap_update_bits(i32 %98, i32 %99, i32 %106, i32 %113)
  %115 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %2, align 8
  %116 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG3_REG, align 4
  %119 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG3_SCLEN, align 4
  %120 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG3_SDAEN, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG3_SCLEN, align 4
  %123 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG3_SDAEN, align 4
  %124 = or i32 %122, %123
  %125 = call i32 @regmap_update_bits(i32 %117, i32 %118, i32 %121, i32 %124)
  %126 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %2, align 8
  %127 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @SUN8I_HDMI_PHY_PLL_CFG1_REG, align 4
  %130 = load i32, i32* @SUN8I_HDMI_PHY_PLL_CFG1_CKIN_SEL_MSK, align 4
  %131 = call i32 @regmap_update_bits(i32 %128, i32 %129, i32 %130, i32 0)
  %132 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %2, align 8
  %133 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @SUN8I_HDMI_PHY_CEC_REG, align 4
  %136 = call i32 @regmap_write(i32 %134, i32 %135, i32 0)
  %137 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %2, align 8
  %138 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @SUN8I_HDMI_PHY_ANA_STS_REG, align 4
  %141 = call i32 @regmap_read(i32 %139, i32 %140, i32* %3)
  %142 = load i32, i32* %3, align 4
  %143 = load i32, i32* @SUN8I_HDMI_PHY_ANA_STS_RCAL_MASK, align 4
  %144 = and i32 %142, %143
  %145 = lshr i32 %144, 2
  %146 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %2, align 8
  %147 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 4
  ret void
}

declare dso_local i32 @sun8i_hdmi_phy_unlock(%struct.sun8i_hdmi_phy*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @regmap_read_poll_timeout(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
