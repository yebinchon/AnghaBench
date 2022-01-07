; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_cio_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_cio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { i32, i32, i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"DSI CIO init starts\00", align 1
@DSI_DSIPHY_CFG5 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"CIO SCP Clock domain not coming out of reset.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@DSI_TIMING1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"manual ulps exit\0A\00", align 1
@DSI_LANE_UNUSED = common dso_local global i64 0, align 8
@DSI_COMPLEXIO_POWER_ON = common dso_local global i32 0, align 4
@DSI_COMPLEXIO_CFG1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"CIO PWR clock domain not coming out of reset.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@DSI_CLK_CTRL = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@OMAP_DSS_DSI_VIDEO_MODE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"CIO init done\0A\00", align 1
@DSI_COMPLEXIO_POWER_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsi_data*)* @dsi_cio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_cio_init(%struct.dsi_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsi_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dsi_data* %0, %struct.dsi_data** %3, align 8
  %9 = call i32 @DSSDBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %11 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %12 = call i32 @dsi_get_lane_mask(%struct.dsi_data* %11)
  %13 = call i32 @dsi_enable_pads(%struct.dsi_data* %10, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %178

18:                                               ; preds = %1
  %19 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %20 = call i32 @dsi_enable_scp_clk(%struct.dsi_data* %19)
  %21 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %22 = load i32, i32* @DSI_DSIPHY_CFG5, align 4
  %23 = call i32 @dsi_read_reg(%struct.dsi_data* %21, i32 %22)
  %24 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %25 = load i32, i32* @DSI_DSIPHY_CFG5, align 4
  %26 = call i32 @wait_for_bit_change(%struct.dsi_data* %24, i32 %25, i32 30, i32 1)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %18
  %29 = call i32 @DSSERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %172

32:                                               ; preds = %18
  %33 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %34 = call i32 @dsi_set_lane_config(%struct.dsi_data* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %172

38:                                               ; preds = %32
  %39 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %40 = load i32, i32* @DSI_TIMING1, align 4
  %41 = call i32 @dsi_read_reg(%struct.dsi_data* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @FLD_MOD(i32 %42, i32 1, i32 15, i32 15)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @FLD_MOD(i32 %44, i32 1, i32 14, i32 14)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @FLD_MOD(i32 %46, i32 1, i32 13, i32 13)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @FLD_MOD(i32 %48, i32 8191, i32 12, i32 0)
  store i32 %49, i32* %5, align 4
  %50 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %51 = load i32, i32* @DSI_TIMING1, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @dsi_write_reg(%struct.dsi_data* %50, i32 %51, i32 %52)
  %54 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %55 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %90

58:                                               ; preds = %38
  %59 = call i32 @DSSDBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %83, %58
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %63 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %60
  %67 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %68 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %67, i32 0, i32 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @DSI_LANE_UNUSED, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  br label %83

78:                                               ; preds = %66
  %79 = load i32, i32* %7, align 4
  %80 = shl i32 1, %79
  %81 = load i32, i32* %6, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %78, %77
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %60

86:                                               ; preds = %60
  %87 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @dsi_cio_enable_lane_override(%struct.dsi_data* %87, i32 %88, i32 0)
  br label %90

90:                                               ; preds = %86, %38
  %91 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %92 = load i32, i32* @DSI_COMPLEXIO_POWER_ON, align 4
  %93 = call i32 @dsi_cio_power(%struct.dsi_data* %91, i32 %92)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %163

97:                                               ; preds = %90
  %98 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %99 = load i32, i32* @DSI_COMPLEXIO_CFG1, align 4
  %100 = call i32 @wait_for_bit_change(%struct.dsi_data* %98, i32 %99, i32 29, i32 1)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %97
  %103 = call i32 @DSSERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %104 = load i32, i32* @ENODEV, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %159

106:                                              ; preds = %97
  %107 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %108 = call i32 @dsi_if_enable(%struct.dsi_data* %107, i32 1)
  %109 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %110 = call i32 @dsi_if_enable(%struct.dsi_data* %109, i32 0)
  %111 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %112 = load i32, i32* @DSI_CLK_CTRL, align 4
  %113 = call i32 @REG_FLD_MOD(%struct.dsi_data* %111, i32 %112, i32 1, i32 20, i32 20)
  %114 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %115 = call i32 @dsi_cio_wait_tx_clk_esc_reset(%struct.dsi_data* %114)
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* %4, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %106
  br label %155

119:                                              ; preds = %106
  %120 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %121 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %119
  %125 = call i32 @ns_to_ktime(i32 1000000)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %127 = call i32 @set_current_state(i32 %126)
  %128 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %129 = call i32 @schedule_hrtimeout(i32* %8, i32 %128)
  %130 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %131 = call i32 @dsi_cio_disable_lane_override(%struct.dsi_data* %130)
  br label %132

132:                                              ; preds = %124, %119
  %133 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %134 = load i32, i32* @DSI_TIMING1, align 4
  %135 = call i32 @REG_FLD_MOD(%struct.dsi_data* %133, i32 %134, i32 0, i32 15, i32 15)
  %136 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %137 = call i32 @dsi_cio_timings(%struct.dsi_data* %136)
  %138 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %139 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @OMAP_DSS_DSI_VIDEO_MODE, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %151

143:                                              ; preds = %132
  %144 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %145 = load i32, i32* @DSI_CLK_CTRL, align 4
  %146 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %147 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @REG_FLD_MOD(%struct.dsi_data* %144, i32 %145, i32 %149, i32 13, i32 13)
  br label %151

151:                                              ; preds = %143, %132
  %152 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %153 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %152, i32 0, i32 0
  store i32 0, i32* %153, align 8
  %154 = call i32 @DSSDBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %178

155:                                              ; preds = %118
  %156 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %157 = load i32, i32* @DSI_CLK_CTRL, align 4
  %158 = call i32 @REG_FLD_MOD(%struct.dsi_data* %156, i32 %157, i32 0, i32 20, i32 20)
  br label %159

159:                                              ; preds = %155, %102
  %160 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %161 = load i32, i32* @DSI_COMPLEXIO_POWER_OFF, align 4
  %162 = call i32 @dsi_cio_power(%struct.dsi_data* %160, i32 %161)
  br label %163

163:                                              ; preds = %159, %96
  %164 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %165 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %170 = call i32 @dsi_cio_disable_lane_override(%struct.dsi_data* %169)
  br label %171

171:                                              ; preds = %168, %163
  br label %172

172:                                              ; preds = %171, %37, %28
  %173 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %174 = call i32 @dsi_disable_scp_clk(%struct.dsi_data* %173)
  %175 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %176 = call i32 @dsi_disable_pads(%struct.dsi_data* %175)
  %177 = load i32, i32* %4, align 4
  store i32 %177, i32* %2, align 4
  br label %178

178:                                              ; preds = %172, %151, %16
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local i32 @DSSDBG(i8*) #1

declare dso_local i32 @dsi_enable_pads(%struct.dsi_data*, i32) #1

declare dso_local i32 @dsi_get_lane_mask(%struct.dsi_data*) #1

declare dso_local i32 @dsi_enable_scp_clk(%struct.dsi_data*) #1

declare dso_local i32 @dsi_read_reg(%struct.dsi_data*, i32) #1

declare dso_local i32 @wait_for_bit_change(%struct.dsi_data*, i32, i32, i32) #1

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @dsi_set_lane_config(%struct.dsi_data*) #1

declare dso_local i32 @FLD_MOD(i32, i32, i32, i32) #1

declare dso_local i32 @dsi_write_reg(%struct.dsi_data*, i32, i32) #1

declare dso_local i32 @dsi_cio_enable_lane_override(%struct.dsi_data*, i32, i32) #1

declare dso_local i32 @dsi_cio_power(%struct.dsi_data*, i32) #1

declare dso_local i32 @dsi_if_enable(%struct.dsi_data*, i32) #1

declare dso_local i32 @REG_FLD_MOD(%struct.dsi_data*, i32, i32, i32, i32) #1

declare dso_local i32 @dsi_cio_wait_tx_clk_esc_reset(%struct.dsi_data*) #1

declare dso_local i32 @ns_to_ktime(i32) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_hrtimeout(i32*, i32) #1

declare dso_local i32 @dsi_cio_disable_lane_override(%struct.dsi_data*) #1

declare dso_local i32 @dsi_cio_timings(%struct.dsi_data*) #1

declare dso_local i32 @dsi_disable_scp_clk(%struct.dsi_data*) #1

declare dso_local i32 @dsi_disable_pads(%struct.dsi_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
