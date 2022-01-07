; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi4.c_hdmi_power_on_full.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi4.c_hdmi_power_on_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hdmi = type { %struct.TYPE_7__, %struct.hdmi_wp_data, i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.hdmi_wp_data = type { i32 }
%struct.TYPE_8__ = type { %struct.videomode }
%struct.videomode = type { i32, i32, i32, i32 }
%struct.dss_pll_clock_info = type { i32*, i32, i32 }

@HDMI_IRQ_CORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"hdmi_power_on hactive= %d vactive = %d\0A\00", align 1
@DISPLAY_FLAGS_DOUBLECLK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Failed to enable PLL\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to configure PLL\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed to configure PHY\0A\00", align 1
@HDMI_PHYPWRCMD_LDOON = common dso_local global i32 0, align 4
@HDMI_IRQ_LINK_CONNECT = common dso_local global i32 0, align 4
@HDMI_IRQ_LINK_DISCONNECT = common dso_local global i32 0, align 4
@HDMI_PHYPWRCMD_OFF = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_hdmi*)* @hdmi_power_on_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_power_on_full(%struct.omap_hdmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_hdmi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.videomode*, align 8
  %6 = alloca %struct.hdmi_wp_data*, align 8
  %7 = alloca %struct.dss_pll_clock_info, align 8
  %8 = alloca i32, align 4
  store %struct.omap_hdmi* %0, %struct.omap_hdmi** %3, align 8
  %9 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %10 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %9, i32 0, i32 1
  store %struct.hdmi_wp_data* %10, %struct.hdmi_wp_data** %6, align 8
  %11 = bitcast %struct.dss_pll_clock_info* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false)
  %12 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %13 = call i32 @hdmi_power_on_core(%struct.omap_hdmi* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %149

18:                                               ; preds = %1
  %19 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %6, align 8
  %20 = load i32, i32* @HDMI_IRQ_CORE, align 4
  %21 = xor i32 %20, -1
  %22 = call i32 @hdmi_wp_clear_irqenable(%struct.hdmi_wp_data* %19, i32 %21)
  %23 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %6, align 8
  %24 = load i32, i32* @HDMI_IRQ_CORE, align 4
  %25 = xor i32 %24, -1
  %26 = call i32 @hdmi_wp_set_irqstatus(%struct.hdmi_wp_data* %23, i32 %25)
  %27 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %28 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store %struct.videomode* %29, %struct.videomode** %5, align 8
  %30 = load %struct.videomode*, %struct.videomode** %5, align 8
  %31 = getelementptr inbounds %struct.videomode, %struct.videomode* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.videomode*, %struct.videomode** %5, align 8
  %34 = getelementptr inbounds %struct.videomode, %struct.videomode* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i8*, ...) @DSSDBG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35)
  %37 = load %struct.videomode*, %struct.videomode** %5, align 8
  %38 = getelementptr inbounds %struct.videomode, %struct.videomode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %8, align 4
  %40 = load %struct.videomode*, %struct.videomode** %5, align 8
  %41 = getelementptr inbounds %struct.videomode, %struct.videomode* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DISPLAY_FLAGS_DOUBLECLK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %18
  %47 = load i32, i32* %8, align 4
  %48 = mul i32 %47, 2
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %46, %18
  %50 = load i32, i32* %8, align 4
  %51 = mul i32 %50, 10
  store i32 %51, i32* %8, align 4
  %52 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %53 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %56 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @clk_get_rate(i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @dss_pll_calc_b(%struct.TYPE_9__* %54, i32 %60, i32 %61, %struct.dss_pll_clock_info* %7)
  %63 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %64 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = call i32 @dss_pll_enable(%struct.TYPE_9__* %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %49
  %70 = call i32 @DSSERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %144

71:                                               ; preds = %49
  %72 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %73 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = call i32 @dss_pll_set_config(%struct.TYPE_9__* %74, %struct.dss_pll_clock_info* %7)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = call i32 @DSSERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %139

80:                                               ; preds = %71
  %81 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %82 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %7, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %7, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @hdmi_phy_configure(i32* %82, i32 %84, i32 %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %80
  %93 = call i32 (i8*, ...) @DSSDBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %138

94:                                               ; preds = %80
  %95 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %6, align 8
  %96 = load i32, i32* @HDMI_PHYPWRCMD_LDOON, align 4
  %97 = call i32 @hdmi_wp_set_phy_pwr(%struct.hdmi_wp_data* %95, i32 %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %137

101:                                              ; preds = %94
  %102 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %103 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %102, i32 0, i32 4
  %104 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %105 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %104, i32 0, i32 1
  %106 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %107 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %106, i32 0, i32 3
  %108 = call i32 @hdmi4_configure(i32* %103, %struct.hdmi_wp_data* %105, %struct.TYPE_8__* %107)
  %109 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %110 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %109, i32 0, i32 2
  %111 = call i32 @dss_mgr_enable(i32* %110)
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %4, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %101
  br label %132

115:                                              ; preds = %101
  %116 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %117 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %116, i32 0, i32 1
  %118 = call i32 @hdmi_wp_video_start(%struct.hdmi_wp_data* %117)
  store i32 %118, i32* %4, align 4
  %119 = load i32, i32* %4, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %128

122:                                              ; preds = %115
  %123 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %6, align 8
  %124 = load i32, i32* @HDMI_IRQ_LINK_CONNECT, align 4
  %125 = load i32, i32* @HDMI_IRQ_LINK_DISCONNECT, align 4
  %126 = or i32 %124, %125
  %127 = call i32 @hdmi_wp_set_irqenable(%struct.hdmi_wp_data* %123, i32 %126)
  store i32 0, i32* %2, align 4
  br label %149

128:                                              ; preds = %121
  %129 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %130 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %129, i32 0, i32 2
  %131 = call i32 @dss_mgr_disable(i32* %130)
  br label %132

132:                                              ; preds = %128, %114
  %133 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %134 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %133, i32 0, i32 1
  %135 = load i32, i32* @HDMI_PHYPWRCMD_OFF, align 4
  %136 = call i32 @hdmi_wp_set_phy_pwr(%struct.hdmi_wp_data* %134, i32 %135)
  br label %137

137:                                              ; preds = %132, %100
  br label %138

138:                                              ; preds = %137, %92
  br label %139

139:                                              ; preds = %138, %78
  %140 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %141 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = call i32 @dss_pll_disable(%struct.TYPE_9__* %142)
  br label %144

144:                                              ; preds = %139, %69
  %145 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %146 = call i32 @hdmi_power_off_core(%struct.omap_hdmi* %145)
  %147 = load i32, i32* @EIO, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %144, %122, %16
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @hdmi_power_on_core(%struct.omap_hdmi*) #2

declare dso_local i32 @hdmi_wp_clear_irqenable(%struct.hdmi_wp_data*, i32) #2

declare dso_local i32 @hdmi_wp_set_irqstatus(%struct.hdmi_wp_data*, i32) #2

declare dso_local i32 @DSSDBG(i8*, ...) #2

declare dso_local i32 @dss_pll_calc_b(%struct.TYPE_9__*, i32, i32, %struct.dss_pll_clock_info*) #2

declare dso_local i32 @clk_get_rate(i32) #2

declare dso_local i32 @dss_pll_enable(%struct.TYPE_9__*) #2

declare dso_local i32 @DSSERR(i8*) #2

declare dso_local i32 @dss_pll_set_config(%struct.TYPE_9__*, %struct.dss_pll_clock_info*) #2

declare dso_local i32 @hdmi_phy_configure(i32*, i32, i32) #2

declare dso_local i32 @hdmi_wp_set_phy_pwr(%struct.hdmi_wp_data*, i32) #2

declare dso_local i32 @hdmi4_configure(i32*, %struct.hdmi_wp_data*, %struct.TYPE_8__*) #2

declare dso_local i32 @dss_mgr_enable(i32*) #2

declare dso_local i32 @hdmi_wp_video_start(%struct.hdmi_wp_data*) #2

declare dso_local i32 @hdmi_wp_set_irqenable(%struct.hdmi_wp_data*, i32) #2

declare dso_local i32 @dss_mgr_disable(i32*) #2

declare dso_local i32 @dss_pll_disable(%struct.TYPE_9__*) #2

declare dso_local i32 @hdmi_power_off_core(%struct.omap_hdmi*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
