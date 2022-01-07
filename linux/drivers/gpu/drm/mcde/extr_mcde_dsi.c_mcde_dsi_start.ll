; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_dsi.c_mcde_dsi_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_dsi.c_mcde_dsi_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcde_dsi = type { i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@DSI_MCTL_INTEGRATION_MODE = common dso_local global i64 0, align 8
@DSI_MCTL_MAIN_DATA_CTL_LINK_EN = common dso_local global i32 0, align 4
@DSI_MCTL_MAIN_DATA_CTL_BTA_EN = common dso_local global i32 0, align 4
@DSI_MCTL_MAIN_DATA_CTL_READ_EN = common dso_local global i32 0, align 4
@DSI_MCTL_MAIN_DATA_CTL_REG_TE_EN = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_EOT_PACKET = common dso_local global i32 0, align 4
@DSI_MCTL_MAIN_DATA_CTL_HOST_EOT_GEN = common dso_local global i32 0, align 4
@DSI_MCTL_MAIN_DATA_CTL = common dso_local global i64 0, align 8
@DSI_CMD_MODE_CTL_TE_TIMEOUT_SHIFT = common dso_local global i32 0, align 4
@DSI_CMD_MODE_CTL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"UI value: %d\0A\00", align 1
@DSI_MCTL_DPHY_STATIC_UI_X4_SHIFT = common dso_local global i32 0, align 4
@DSI_MCTL_DPHY_STATIC_UI_X4_MASK = common dso_local global i32 0, align 4
@DSI_MCTL_DPHY_STATIC = common dso_local global i64 0, align 8
@DSI_MCTL_MAIN_PHY_CTL_WAIT_BURST_TIME_SHIFT = common dso_local global i32 0, align 4
@DSI_MCTL_MAIN_PHY_CTL_LANE2_EN = common dso_local global i32 0, align 4
@MIPI_DSI_CLOCK_NON_CONTINUOUS = common dso_local global i32 0, align 4
@DSI_MCTL_MAIN_PHY_CTL_CLK_CONTINUOUS = common dso_local global i32 0, align 4
@DSI_MCTL_MAIN_PHY_CTL_CLK_ULPM_EN = common dso_local global i32 0, align 4
@DSI_MCTL_MAIN_PHY_CTL_DAT1_ULPM_EN = common dso_local global i32 0, align 4
@DSI_MCTL_MAIN_PHY_CTL_DAT2_ULPM_EN = common dso_local global i32 0, align 4
@DSI_MCTL_MAIN_PHY_CTL = common dso_local global i64 0, align 8
@DSI_MCTL_ULPOUT_TIME_CKLANE_ULPOUT_TIME_SHIFT = common dso_local global i32 0, align 4
@DSI_MCTL_ULPOUT_TIME_DATA_ULPOUT_TIME_SHIFT = common dso_local global i32 0, align 4
@DSI_MCTL_ULPOUT_TIME = common dso_local global i64 0, align 8
@DSI_DPHY_LANES_TRIM_DPHY_SPECS_90_81B_0_90 = common dso_local global i32 0, align 4
@DSI_DPHY_LANES_TRIM = common dso_local global i64 0, align 8
@DSI_MCTL_DPHY_TIMEOUT_CLK_DIV_SHIFT = common dso_local global i32 0, align 4
@DSI_MCTL_DPHY_TIMEOUT_HSTX_TO_VAL_SHIFT = common dso_local global i32 0, align 4
@DSI_MCTL_DPHY_TIMEOUT_LPRX_TO_VAL_SHIFT = common dso_local global i32 0, align 4
@DSI_MCTL_DPHY_TIMEOUT = common dso_local global i64 0, align 8
@DSI_MCTL_MAIN_EN_PLL_START = common dso_local global i32 0, align 4
@DSI_MCTL_MAIN_EN_CKLANE_EN = common dso_local global i32 0, align 4
@DSI_MCTL_MAIN_EN_DAT1_EN = common dso_local global i32 0, align 4
@DSI_MCTL_MAIN_EN_IF1_EN = common dso_local global i32 0, align 4
@DSI_MCTL_MAIN_EN_DAT2_EN = common dso_local global i32 0, align 4
@DSI_MCTL_MAIN_EN = common dso_local global i64 0, align 8
@DSI_MCTL_MAIN_STS_PLL_LOCK = common dso_local global i32 0, align 4
@DSI_MCTL_MAIN_STS_CLKLANE_READY = common dso_local global i32 0, align 4
@DSI_MCTL_MAIN_STS_DAT1_READY = common dso_local global i32 0, align 4
@DSI_MCTL_MAIN_STS_DAT2_READY = common dso_local global i32 0, align 4
@DSI_MCTL_MAIN_STS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"DSI lanes did not start up\0A\00", align 1
@DSI_CMD_MODE_CTL_IF1_ID_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"DSI link enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcde_dsi*)* @mcde_dsi_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcde_dsi_start(%struct.mcde_dsi* %0) #0 {
  %2 = alloca %struct.mcde_dsi*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mcde_dsi* %0, %struct.mcde_dsi** %2, align 8
  %6 = load %struct.mcde_dsi*, %struct.mcde_dsi** %2, align 8
  %7 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @DSI_MCTL_INTEGRATION_MODE, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @writel(i32 0, i64 %10)
  %12 = load i32, i32* @DSI_MCTL_MAIN_DATA_CTL_LINK_EN, align 4
  %13 = load i32, i32* @DSI_MCTL_MAIN_DATA_CTL_BTA_EN, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @DSI_MCTL_MAIN_DATA_CTL_READ_EN, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @DSI_MCTL_MAIN_DATA_CTL_REG_TE_EN, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %4, align 4
  %19 = load %struct.mcde_dsi*, %struct.mcde_dsi** %2, align 8
  %20 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MIPI_DSI_MODE_EOT_PACKET, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load i32, i32* @DSI_MCTL_MAIN_DATA_CTL_HOST_EOT_GEN, align 4
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %27, %1
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.mcde_dsi*, %struct.mcde_dsi** %2, align 8
  %34 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DSI_MCTL_MAIN_DATA_CTL, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %32, i64 %37)
  %39 = load i32, i32* @DSI_CMD_MODE_CTL_TE_TIMEOUT_SHIFT, align 4
  %40 = shl i32 1023, %39
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.mcde_dsi*, %struct.mcde_dsi** %2, align 8
  %43 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DSI_CMD_MODE_CTL, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 %41, i64 %46)
  %48 = load %struct.mcde_dsi*, %struct.mcde_dsi** %2, align 8
  %49 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @clk_get_rate(i32 %50)
  store i64 %51, i64* %3, align 8
  %52 = load i64, i64* %3, align 8
  %53 = udiv i64 %52, 1000000
  store i64 %53, i64* %3, align 8
  %54 = load i64, i64* %3, align 8
  %55 = udiv i64 4000, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %4, align 4
  %57 = load %struct.mcde_dsi*, %struct.mcde_dsi** %2, align 8
  %58 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @dev_dbg(i32 %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @DSI_MCTL_DPHY_STATIC_UI_X4_SHIFT, align 4
  %63 = load i32, i32* %4, align 4
  %64 = shl i32 %63, %62
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* @DSI_MCTL_DPHY_STATIC_UI_X4_MASK, align 4
  %66 = load i32, i32* %4, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.mcde_dsi*, %struct.mcde_dsi** %2, align 8
  %70 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @DSI_MCTL_DPHY_STATIC, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i32 %68, i64 %73)
  %75 = load i32, i32* @DSI_MCTL_MAIN_PHY_CTL_WAIT_BURST_TIME_SHIFT, align 4
  %76 = shl i32 15, %75
  store i32 %76, i32* %4, align 4
  %77 = load %struct.mcde_dsi*, %struct.mcde_dsi** %2, align 8
  %78 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %87

83:                                               ; preds = %31
  %84 = load i32, i32* @DSI_MCTL_MAIN_PHY_CTL_LANE2_EN, align 4
  %85 = load i32, i32* %4, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %83, %31
  %88 = load %struct.mcde_dsi*, %struct.mcde_dsi** %2, align 8
  %89 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %88, i32 0, i32 2
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @MIPI_DSI_CLOCK_NON_CONTINUOUS, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %87
  %97 = load i32, i32* @DSI_MCTL_MAIN_PHY_CTL_CLK_CONTINUOUS, align 4
  %98 = load i32, i32* %4, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %96, %87
  %101 = load i32, i32* @DSI_MCTL_MAIN_PHY_CTL_CLK_ULPM_EN, align 4
  %102 = load i32, i32* @DSI_MCTL_MAIN_PHY_CTL_DAT1_ULPM_EN, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @DSI_MCTL_MAIN_PHY_CTL_DAT2_ULPM_EN, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* %4, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = load %struct.mcde_dsi*, %struct.mcde_dsi** %2, align 8
  %110 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @DSI_MCTL_MAIN_PHY_CTL, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @writel(i32 %108, i64 %113)
  %115 = load i32, i32* @DSI_MCTL_ULPOUT_TIME_CKLANE_ULPOUT_TIME_SHIFT, align 4
  %116 = shl i32 1, %115
  %117 = load i32, i32* @DSI_MCTL_ULPOUT_TIME_DATA_ULPOUT_TIME_SHIFT, align 4
  %118 = shl i32 1, %117
  %119 = or i32 %116, %118
  store i32 %119, i32* %4, align 4
  %120 = load i32, i32* %4, align 4
  %121 = load %struct.mcde_dsi*, %struct.mcde_dsi** %2, align 8
  %122 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @DSI_MCTL_ULPOUT_TIME, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @writel(i32 %120, i64 %125)
  %127 = load i32, i32* @DSI_DPHY_LANES_TRIM_DPHY_SPECS_90_81B_0_90, align 4
  %128 = load %struct.mcde_dsi*, %struct.mcde_dsi** %2, align 8
  %129 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @DSI_DPHY_LANES_TRIM, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @writel(i32 %127, i64 %132)
  %134 = load i32, i32* @DSI_MCTL_DPHY_TIMEOUT_CLK_DIV_SHIFT, align 4
  %135 = shl i32 15, %134
  %136 = load i32, i32* @DSI_MCTL_DPHY_TIMEOUT_HSTX_TO_VAL_SHIFT, align 4
  %137 = shl i32 16383, %136
  %138 = or i32 %135, %137
  %139 = load i32, i32* @DSI_MCTL_DPHY_TIMEOUT_LPRX_TO_VAL_SHIFT, align 4
  %140 = shl i32 16383, %139
  %141 = or i32 %138, %140
  store i32 %141, i32* %4, align 4
  %142 = load i32, i32* %4, align 4
  %143 = load %struct.mcde_dsi*, %struct.mcde_dsi** %2, align 8
  %144 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @DSI_MCTL_DPHY_TIMEOUT, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i32 @writel(i32 %142, i64 %147)
  %149 = load i32, i32* @DSI_MCTL_MAIN_EN_PLL_START, align 4
  %150 = load i32, i32* @DSI_MCTL_MAIN_EN_CKLANE_EN, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @DSI_MCTL_MAIN_EN_DAT1_EN, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @DSI_MCTL_MAIN_EN_IF1_EN, align 4
  %155 = or i32 %153, %154
  store i32 %155, i32* %4, align 4
  %156 = load %struct.mcde_dsi*, %struct.mcde_dsi** %2, align 8
  %157 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %156, i32 0, i32 2
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = icmp eq i32 %160, 2
  br i1 %161, label %162, label %166

162:                                              ; preds = %100
  %163 = load i32, i32* @DSI_MCTL_MAIN_EN_DAT2_EN, align 4
  %164 = load i32, i32* %4, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %4, align 4
  br label %166

166:                                              ; preds = %162, %100
  %167 = load i32, i32* %4, align 4
  %168 = load %struct.mcde_dsi*, %struct.mcde_dsi** %2, align 8
  %169 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @DSI_MCTL_MAIN_EN, align 8
  %172 = add nsw i64 %170, %171
  %173 = call i32 @writel(i32 %167, i64 %172)
  store i32 0, i32* %5, align 4
  %174 = load i32, i32* @DSI_MCTL_MAIN_STS_PLL_LOCK, align 4
  %175 = load i32, i32* @DSI_MCTL_MAIN_STS_CLKLANE_READY, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @DSI_MCTL_MAIN_STS_DAT1_READY, align 4
  %178 = or i32 %176, %177
  store i32 %178, i32* %4, align 4
  %179 = load %struct.mcde_dsi*, %struct.mcde_dsi** %2, align 8
  %180 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %179, i32 0, i32 2
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %183, 2
  br i1 %184, label %185, label %189

185:                                              ; preds = %166
  %186 = load i32, i32* @DSI_MCTL_MAIN_STS_DAT2_READY, align 4
  %187 = load i32, i32* %4, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %4, align 4
  br label %189

189:                                              ; preds = %185, %166
  br label %190

190:                                              ; preds = %211, %189
  %191 = load %struct.mcde_dsi*, %struct.mcde_dsi** %2, align 8
  %192 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @DSI_MCTL_MAIN_STS, align 8
  %195 = add nsw i64 %193, %194
  %196 = call i32 @readl(i64 %195)
  %197 = load i32, i32* %4, align 4
  %198 = and i32 %196, %197
  %199 = load i32, i32* %4, align 4
  %200 = icmp ne i32 %198, %199
  br i1 %200, label %201, label %212

201:                                              ; preds = %190
  %202 = call i32 @usleep_range(i32 1000, i32 1500)
  %203 = load i32, i32* %5, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %5, align 4
  %205 = icmp eq i32 %203, 100
  br i1 %205, label %206, label %211

206:                                              ; preds = %201
  %207 = load %struct.mcde_dsi*, %struct.mcde_dsi** %2, align 8
  %208 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @dev_warn(i32 %209, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %235

211:                                              ; preds = %201
  br label %190

212:                                              ; preds = %190
  %213 = load %struct.mcde_dsi*, %struct.mcde_dsi** %2, align 8
  %214 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @DSI_CMD_MODE_CTL, align 8
  %217 = add nsw i64 %215, %216
  %218 = call i32 @readl(i64 %217)
  store i32 %218, i32* %4, align 4
  %219 = load i32, i32* @DSI_CMD_MODE_CTL_IF1_ID_MASK, align 4
  %220 = xor i32 %219, -1
  %221 = load i32, i32* %4, align 4
  %222 = and i32 %221, %220
  store i32 %222, i32* %4, align 4
  %223 = load i32, i32* %4, align 4
  %224 = load %struct.mcde_dsi*, %struct.mcde_dsi** %2, align 8
  %225 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @DSI_CMD_MODE_CTL, align 8
  %228 = add nsw i64 %226, %227
  %229 = call i32 @writel(i32 %223, i64 %228)
  %230 = call i32 @usleep_range(i32 100, i32 200)
  %231 = load %struct.mcde_dsi*, %struct.mcde_dsi** %2, align 8
  %232 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @dev_info(i32 %233, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %235

235:                                              ; preds = %212, %206
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
