; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi5.c_hdmi_power_on_full.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi5.c_hdmi_power_on_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hdmi = type { %struct.TYPE_7__, i32, i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.videomode }
%struct.videomode = type { i32, i32, i32, i32 }
%struct.dss_pll_clock_info = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"hdmi_power_on hactive= %d vactive = %d\0A\00", align 1
@DISPLAY_FLAGS_DOUBLECLK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Failed to enable PLL\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to configure PLL\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Failed to start PHY\0A\00", align 1
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
  %6 = alloca %struct.dss_pll_clock_info, align 8
  %7 = alloca i32, align 4
  store %struct.omap_hdmi* %0, %struct.omap_hdmi** %3, align 8
  %8 = bitcast %struct.dss_pll_clock_info* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 16, i1 false)
  %9 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %10 = call i32 @hdmi_power_on_core(%struct.omap_hdmi* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %149

15:                                               ; preds = %1
  %16 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %17 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store %struct.videomode* %18, %struct.videomode** %5, align 8
  %19 = load %struct.videomode*, %struct.videomode** %5, align 8
  %20 = getelementptr inbounds %struct.videomode, %struct.videomode* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.videomode*, %struct.videomode** %5, align 8
  %23 = getelementptr inbounds %struct.videomode, %struct.videomode* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i8*, ...) @DSSDBG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24)
  %26 = load %struct.videomode*, %struct.videomode** %5, align 8
  %27 = getelementptr inbounds %struct.videomode, %struct.videomode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load %struct.videomode*, %struct.videomode** %5, align 8
  %30 = getelementptr inbounds %struct.videomode, %struct.videomode* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DISPLAY_FLAGS_DOUBLECLK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %15
  %36 = load i32, i32* %7, align 4
  %37 = mul i32 %36, 2
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %35, %15
  %39 = load i32, i32* %7, align 4
  %40 = mul i32 %39, 10
  store i32 %40, i32* %7, align 4
  %41 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %42 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %45 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @clk_get_rate(i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @dss_pll_calc_b(%struct.TYPE_9__* %43, i32 %49, i32 %50, %struct.dss_pll_clock_info* %6)
  %52 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %53 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %52, i32 0, i32 1
  %54 = call i32 @hdmi_wp_clear_irqenable(i32* %53, i32 -1)
  %55 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %56 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %55, i32 0, i32 1
  %57 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %58 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %57, i32 0, i32 1
  %59 = call i32 @hdmi_wp_get_irqstatus(i32* %58)
  %60 = call i32 @hdmi_wp_set_irqstatus(i32* %56, i32 %59)
  %61 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %62 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = call i32 @dss_pll_enable(%struct.TYPE_9__* %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %38
  %68 = call i32 @DSSERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %144

69:                                               ; preds = %38
  %70 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %71 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = call i32 @dss_pll_set_config(%struct.TYPE_9__* %72, %struct.dss_pll_clock_info* %6)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = call i32 @DSSERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %139

78:                                               ; preds = %69
  %79 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %80 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %6, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %6, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @hdmi_phy_configure(i32* %80, i32 %82, i32 %86)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %78
  %91 = call i32 (i8*, ...) @DSSDBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %138

92:                                               ; preds = %78
  %93 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %94 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %93, i32 0, i32 1
  %95 = load i32, i32* @HDMI_PHYPWRCMD_LDOON, align 4
  %96 = call i32 @hdmi_wp_set_phy_pwr(i32* %94, i32 %95)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %137

100:                                              ; preds = %92
  %101 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %102 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %101, i32 0, i32 4
  %103 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %104 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %103, i32 0, i32 1
  %105 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %106 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %105, i32 0, i32 3
  %107 = call i32 @hdmi5_configure(i32* %102, i32* %104, %struct.TYPE_8__* %106)
  %108 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %109 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %108, i32 0, i32 2
  %110 = call i32 @dss_mgr_enable(i32* %109)
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* %4, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %100
  br label %132

114:                                              ; preds = %100
  %115 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %116 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %115, i32 0, i32 1
  %117 = call i32 @hdmi_wp_video_start(i32* %116)
  store i32 %117, i32* %4, align 4
  %118 = load i32, i32* %4, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  br label %128

121:                                              ; preds = %114
  %122 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %123 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %122, i32 0, i32 1
  %124 = load i32, i32* @HDMI_IRQ_LINK_CONNECT, align 4
  %125 = load i32, i32* @HDMI_IRQ_LINK_DISCONNECT, align 4
  %126 = or i32 %124, %125
  %127 = call i32 @hdmi_wp_set_irqenable(i32* %123, i32 %126)
  store i32 0, i32* %2, align 4
  br label %149

128:                                              ; preds = %120
  %129 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %130 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %129, i32 0, i32 2
  %131 = call i32 @dss_mgr_disable(i32* %130)
  br label %132

132:                                              ; preds = %128, %113
  %133 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %134 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %133, i32 0, i32 1
  %135 = load i32, i32* @HDMI_PHYPWRCMD_OFF, align 4
  %136 = call i32 @hdmi_wp_set_phy_pwr(i32* %134, i32 %135)
  br label %137

137:                                              ; preds = %132, %99
  br label %138

138:                                              ; preds = %137, %90
  br label %139

139:                                              ; preds = %138, %76
  %140 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %141 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = call i32 @dss_pll_disable(%struct.TYPE_9__* %142)
  br label %144

144:                                              ; preds = %139, %67
  %145 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %146 = call i32 @hdmi_power_off_core(%struct.omap_hdmi* %145)
  %147 = load i32, i32* @EIO, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %144, %121, %13
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @hdmi_power_on_core(%struct.omap_hdmi*) #2

declare dso_local i32 @DSSDBG(i8*, ...) #2

declare dso_local i32 @dss_pll_calc_b(%struct.TYPE_9__*, i32, i32, %struct.dss_pll_clock_info*) #2

declare dso_local i32 @clk_get_rate(i32) #2

declare dso_local i32 @hdmi_wp_clear_irqenable(i32*, i32) #2

declare dso_local i32 @hdmi_wp_set_irqstatus(i32*, i32) #2

declare dso_local i32 @hdmi_wp_get_irqstatus(i32*) #2

declare dso_local i32 @dss_pll_enable(%struct.TYPE_9__*) #2

declare dso_local i32 @DSSERR(i8*) #2

declare dso_local i32 @dss_pll_set_config(%struct.TYPE_9__*, %struct.dss_pll_clock_info*) #2

declare dso_local i32 @hdmi_phy_configure(i32*, i32, i32) #2

declare dso_local i32 @hdmi_wp_set_phy_pwr(i32*, i32) #2

declare dso_local i32 @hdmi5_configure(i32*, i32*, %struct.TYPE_8__*) #2

declare dso_local i32 @dss_mgr_enable(i32*) #2

declare dso_local i32 @hdmi_wp_video_start(i32*) #2

declare dso_local i32 @hdmi_wp_set_irqenable(i32*, i32) #2

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
