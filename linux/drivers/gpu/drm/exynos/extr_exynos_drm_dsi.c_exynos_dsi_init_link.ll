; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_init_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_init_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_dsi = type { i32, i32, i32, i32, %struct.exynos_dsi_driver_data* }
%struct.exynos_dsi_driver_data = type { i32*, i64 }

@DSIM_FIFOCTRL_REG = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO = common dso_local global i32 0, align 4
@DSIM_VIDEO_MODE = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VSYNC_FLUSH = common dso_local global i32 0, align 4
@DSIM_MFLUSH_VS = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO_SYNC_PULSE = common dso_local global i32 0, align 4
@DSIM_SYNC_INFORM = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO_BURST = common dso_local global i32 0, align 4
@DSIM_BURST_MODE = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO_AUTO_VERT = common dso_local global i32 0, align 4
@DSIM_AUTO_MODE = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO_HSE = common dso_local global i32 0, align 4
@DSIM_HSE_MODE = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO_HFP = common dso_local global i32 0, align 4
@DSIM_HFP_MODE = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO_HBP = common dso_local global i32 0, align 4
@DSIM_HBP_MODE = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO_HSA = common dso_local global i32 0, align 4
@DSIM_HSA_MODE = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_EOT_PACKET = common dso_local global i32 0, align 4
@DSIM_EOT_DISABLE = common dso_local global i32 0, align 4
@DSIM_MAIN_PIX_FORMAT_RGB888 = common dso_local global i32 0, align 4
@DSIM_MAIN_PIX_FORMAT_RGB666 = common dso_local global i32 0, align 4
@DSIM_MAIN_PIX_FORMAT_RGB666_P = common dso_local global i32 0, align 4
@DSIM_MAIN_PIX_FORMAT_RGB565 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"invalid pixel format\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MIPI_DSI_CLOCK_NON_CONTINUOUS = common dso_local global i32 0, align 4
@DSIM_CLKLANE_STOP = common dso_local global i32 0, align 4
@DSIM_CONFIG_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"waiting for bus lanes timed out\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@DSIM_STATUS_REG = common dso_local global i32 0, align 4
@DSIM_STOP_STATE_CLK = common dso_local global i32 0, align 4
@DSIM_TX_READY_HS_CLK = common dso_local global i32 0, align 4
@DSIM_ESCMODE_REG = common dso_local global i32 0, align 4
@DSIM_STOP_STATE_CNT_MASK = common dso_local global i32 0, align 4
@STOP_STATE_CNT = common dso_local global i64 0, align 8
@DSIM_TIMEOUT_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_dsi*)* @exynos_dsi_init_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_dsi_init_link(%struct.exynos_dsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.exynos_dsi*, align 8
  %4 = alloca %struct.exynos_dsi_driver_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.exynos_dsi* %0, %struct.exynos_dsi** %3, align 8
  %8 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %9 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %8, i32 0, i32 4
  %10 = load %struct.exynos_dsi_driver_data*, %struct.exynos_dsi_driver_data** %9, align 8
  store %struct.exynos_dsi_driver_data* %10, %struct.exynos_dsi_driver_data** %4, align 8
  %11 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %12 = load i32, i32* @DSIM_FIFOCTRL_REG, align 4
  %13 = call i32 @exynos_dsi_read(%struct.exynos_dsi* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, -32
  store i32 %15, i32* %6, align 4
  %16 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %17 = load i32, i32* @DSIM_FIFOCTRL_REG, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @exynos_dsi_write(%struct.exynos_dsi* %16, i32 %17, i32 %18)
  %20 = call i32 @usleep_range(i32 9000, i32 11000)
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, 31
  store i32 %22, i32* %6, align 4
  %23 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %24 = load i32, i32* @DSIM_FIFOCTRL_REG, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @exynos_dsi_write(%struct.exynos_dsi* %23, i32 %24, i32 %25)
  %27 = call i32 @usleep_range(i32 9000, i32 11000)
  store i32 0, i32* %6, align 4
  %28 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %29 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @MIPI_DSI_MODE_VIDEO, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %126

34:                                               ; preds = %1
  %35 = load i32, i32* @DSIM_VIDEO_MODE, align 4
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %39 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MIPI_DSI_MODE_VSYNC_FLUSH, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* @DSIM_MFLUSH_VS, align 4
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %44, %34
  %49 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %50 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @MIPI_DSI_MODE_VIDEO_SYNC_PULSE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load i32, i32* @DSIM_SYNC_INFORM, align 4
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %55, %48
  %60 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %61 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @MIPI_DSI_MODE_VIDEO_BURST, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load i32, i32* @DSIM_BURST_MODE, align 4
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %66, %59
  %71 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %72 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @MIPI_DSI_MODE_VIDEO_AUTO_VERT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = load i32, i32* @DSIM_AUTO_MODE, align 4
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %77, %70
  %82 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %83 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @MIPI_DSI_MODE_VIDEO_HSE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = load i32, i32* @DSIM_HSE_MODE, align 4
  %90 = load i32, i32* %6, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %88, %81
  %93 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %94 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @MIPI_DSI_MODE_VIDEO_HFP, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %92
  %100 = load i32, i32* @DSIM_HFP_MODE, align 4
  %101 = load i32, i32* %6, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %99, %92
  %104 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %105 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @MIPI_DSI_MODE_VIDEO_HBP, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %103
  %111 = load i32, i32* @DSIM_HBP_MODE, align 4
  %112 = load i32, i32* %6, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %110, %103
  %115 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %116 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @MIPI_DSI_MODE_VIDEO_HSA, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %114
  %122 = load i32, i32* @DSIM_HSA_MODE, align 4
  %123 = load i32, i32* %6, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %121, %114
  br label %126

126:                                              ; preds = %125, %1
  %127 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %128 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @MIPI_DSI_MODE_EOT_PACKET, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %126
  %134 = load i32, i32* @DSIM_EOT_DISABLE, align 4
  %135 = load i32, i32* %6, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %133, %126
  %138 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %139 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  switch i32 %140, label %157 [
    i32 128, label %141
    i32 130, label %145
    i32 129, label %149
    i32 131, label %153
  ]

141:                                              ; preds = %137
  %142 = load i32, i32* @DSIM_MAIN_PIX_FORMAT_RGB888, align 4
  %143 = load i32, i32* %6, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %6, align 4
  br label %164

145:                                              ; preds = %137
  %146 = load i32, i32* @DSIM_MAIN_PIX_FORMAT_RGB666, align 4
  %147 = load i32, i32* %6, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %6, align 4
  br label %164

149:                                              ; preds = %137
  %150 = load i32, i32* @DSIM_MAIN_PIX_FORMAT_RGB666_P, align 4
  %151 = load i32, i32* %6, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %6, align 4
  br label %164

153:                                              ; preds = %137
  %154 = load i32, i32* @DSIM_MAIN_PIX_FORMAT_RGB565, align 4
  %155 = load i32, i32* %6, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %6, align 4
  br label %164

157:                                              ; preds = %137
  %158 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %159 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @dev_err(i32 %160, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %2, align 4
  br label %253

164:                                              ; preds = %153, %149, %145, %141
  %165 = load %struct.exynos_dsi_driver_data*, %struct.exynos_dsi_driver_data** %4, align 8
  %166 = getelementptr inbounds %struct.exynos_dsi_driver_data, %struct.exynos_dsi_driver_data* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %180

169:                                              ; preds = %164
  %170 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %171 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @MIPI_DSI_CLOCK_NON_CONTINUOUS, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %169
  %177 = load i32, i32* @DSIM_CLKLANE_STOP, align 4
  %178 = load i32, i32* %6, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %6, align 4
  br label %180

180:                                              ; preds = %176, %169, %164
  %181 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %182 = load i32, i32* @DSIM_CONFIG_REG, align 4
  %183 = load i32, i32* %6, align 4
  %184 = call i32 @exynos_dsi_write(%struct.exynos_dsi* %181, i32 %182, i32 %183)
  %185 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %186 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @BIT(i32 %187)
  %189 = sub nsw i32 %188, 1
  store i32 %189, i32* %7, align 4
  %190 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %191 = load i32, i32* %7, align 4
  %192 = call i32 @exynos_dsi_enable_lane(%struct.exynos_dsi* %190, i32 %191)
  store i32 100, i32* %5, align 4
  br label %193

193:                                              ; preds = %217, %180
  %194 = load i32, i32* %5, align 4
  %195 = add nsw i32 %194, -1
  store i32 %195, i32* %5, align 4
  %196 = icmp eq i32 %194, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %193
  %198 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %199 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @dev_err(i32 %200, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %202 = load i32, i32* @EFAULT, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %2, align 4
  br label %253

204:                                              ; preds = %193
  %205 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %206 = load i32, i32* @DSIM_STATUS_REG, align 4
  %207 = call i32 @exynos_dsi_read(%struct.exynos_dsi* %205, i32 %206)
  store i32 %207, i32* %6, align 4
  %208 = load i32, i32* %6, align 4
  %209 = load i32, i32* %7, align 4
  %210 = call i32 @DSIM_STOP_STATE_DAT(i32 %209)
  %211 = and i32 %208, %210
  %212 = load i32, i32* %7, align 4
  %213 = call i32 @DSIM_STOP_STATE_DAT(i32 %212)
  %214 = icmp ne i32 %211, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %204
  br label %217

216:                                              ; preds = %204
  br label %217

217:                                              ; preds = %216, %215
  %218 = load i32, i32* %6, align 4
  %219 = load i32, i32* @DSIM_STOP_STATE_CLK, align 4
  %220 = load i32, i32* @DSIM_TX_READY_HS_CLK, align 4
  %221 = or i32 %219, %220
  %222 = and i32 %218, %221
  %223 = icmp ne i32 %222, 0
  %224 = xor i1 %223, true
  br i1 %224, label %193, label %225

225:                                              ; preds = %217
  %226 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %227 = load i32, i32* @DSIM_ESCMODE_REG, align 4
  %228 = call i32 @exynos_dsi_read(%struct.exynos_dsi* %226, i32 %227)
  store i32 %228, i32* %6, align 4
  %229 = load i32, i32* @DSIM_STOP_STATE_CNT_MASK, align 4
  %230 = xor i32 %229, -1
  %231 = load i32, i32* %6, align 4
  %232 = and i32 %231, %230
  store i32 %232, i32* %6, align 4
  %233 = load %struct.exynos_dsi_driver_data*, %struct.exynos_dsi_driver_data** %4, align 8
  %234 = getelementptr inbounds %struct.exynos_dsi_driver_data, %struct.exynos_dsi_driver_data* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = load i64, i64* @STOP_STATE_CNT, align 8
  %237 = getelementptr inbounds i32, i32* %235, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @DSIM_STOP_STATE_CNT(i32 %238)
  %240 = load i32, i32* %6, align 4
  %241 = or i32 %240, %239
  store i32 %241, i32* %6, align 4
  %242 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %243 = load i32, i32* @DSIM_ESCMODE_REG, align 4
  %244 = load i32, i32* %6, align 4
  %245 = call i32 @exynos_dsi_write(%struct.exynos_dsi* %242, i32 %243, i32 %244)
  %246 = call i32 @DSIM_BTA_TIMEOUT(i32 255)
  %247 = call i32 @DSIM_LPDR_TIMEOUT(i32 65535)
  %248 = or i32 %246, %247
  store i32 %248, i32* %6, align 4
  %249 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %250 = load i32, i32* @DSIM_TIMEOUT_REG, align 4
  %251 = load i32, i32* %6, align 4
  %252 = call i32 @exynos_dsi_write(%struct.exynos_dsi* %249, i32 %250, i32 %251)
  store i32 0, i32* %2, align 4
  br label %253

253:                                              ; preds = %225, %197, %157
  %254 = load i32, i32* %2, align 4
  ret i32 %254
}

declare dso_local i32 @exynos_dsi_read(%struct.exynos_dsi*, i32) #1

declare dso_local i32 @exynos_dsi_write(%struct.exynos_dsi*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @exynos_dsi_enable_lane(%struct.exynos_dsi*, i32) #1

declare dso_local i32 @DSIM_STOP_STATE_DAT(i32) #1

declare dso_local i32 @DSIM_STOP_STATE_CNT(i32) #1

declare dso_local i32 @DSIM_BTA_TIMEOUT(i32) #1

declare dso_local i32 @DSIM_LPDR_TIMEOUT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
