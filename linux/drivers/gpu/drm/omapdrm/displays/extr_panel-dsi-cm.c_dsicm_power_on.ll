; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_panel-dsi-cm.c_dsicm_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_panel-dsi-cm.c_dsicm_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panel_drv_data = type { i32, i32, i64, i64, %struct.TYPE_5__*, i32, i32, %struct.TYPE_8__, i32, %struct.omap_dss_device* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.omap_dss_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 (%struct.omap_dss_device*)* }
%struct.TYPE_6__ = type { i32 (%struct.omap_dss_device*, %struct.TYPE_8__*)*, i32 (%struct.omap_dss_device*, %struct.omap_dss_dsi_config*)*, i32 (%struct.omap_dss_device*, i32)*, i32 (%struct.omap_dss_device*, i32, i32)*, i32 (%struct.omap_dss_device*, i32, i32)* }
%struct.omap_dss_dsi_config = type { i32, i32, i32, i32, i32*, i32, i32 }

@OMAP_DSS_DSI_FMT_RGB888 = common dso_local global i32 0, align 4
@OMAP_DSS_DSI_CMD_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to enable VPNL: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to enable VDDI: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to configure DSI pins\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to configure DSI\0A\00", align 1
@DCS_BRIGHTNESS = common dso_local global i32 0, align 4
@DCS_CTRL_DISPLAY = common dso_local global i32 0, align 4
@MIPI_DCS_SET_PIXEL_FORMAT = common dso_local global i32 0, align 4
@MIPI_DCS_PIXEL_FMT_24BIT = common dso_local global i32 0, align 4
@MIPI_DCS_SET_DISPLAY_ON = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"panel revision %02x.%02x.%02x\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"error while enabling panel, issuing HW reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.panel_drv_data*)* @dsicm_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsicm_power_on(%struct.panel_drv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.panel_drv_data*, align 8
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.omap_dss_dsi_config, align 8
  store %struct.panel_drv_data* %0, %struct.panel_drv_data** %3, align 8
  %10 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %11 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %10, i32 0, i32 9
  %12 = load %struct.omap_dss_device*, %struct.omap_dss_device** %11, align 8
  store %struct.omap_dss_device* %12, %struct.omap_dss_device** %4, align 8
  %13 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %9, i32 0, i32 0
  store i32 150000000, i32* %13, align 8
  %14 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %9, i32 0, i32 1
  store i32 300000000, i32* %14, align 4
  %15 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %9, i32 0, i32 2
  store i32 7000000, i32* %15, align 8
  %16 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %9, i32 0, i32 3
  store i32 10000000, i32* %16, align 4
  %17 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %9, i32 0, i32 4
  %18 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %19 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %18, i32 0, i32 8
  store i32* %19, i32** %17, align 8
  %20 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %9, i32 0, i32 5
  %21 = load i32, i32* @OMAP_DSS_DSI_FMT_RGB888, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %9, i32 0, i32 6
  %23 = load i32, i32* @OMAP_DSS_DSI_CMD_MODE, align 4
  store i32 %23, i32* %22, align 4
  %24 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %25 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %1
  %29 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %30 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @regulator_enable(i64 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %37 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %36, i32 0, i32 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %8, align 4
  %41 = call i32 (i32*, i8*, ...) @dev_err(i32* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %2, align 4
  br label %261

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %43, %1
  %45 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %46 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %44
  %50 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %51 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @regulator_enable(i64 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %49
  %57 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %58 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %57, i32 0, i32 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %8, align 4
  %62 = call i32 (i32*, i8*, ...) @dev_err(i32* %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %249

63:                                               ; preds = %49
  br label %64

64:                                               ; preds = %63, %44
  %65 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %66 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %65, i32 0, i32 7
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %64
  %71 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %72 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %71, i32 0, i32 0
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32 (%struct.omap_dss_device*, %struct.TYPE_8__*)*, i32 (%struct.omap_dss_device*, %struct.TYPE_8__*)** %75, align 8
  %77 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %78 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %79 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %78, i32 0, i32 7
  %80 = call i32 %76(%struct.omap_dss_device* %77, %struct.TYPE_8__* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %70
  %84 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %85 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %84, i32 0, i32 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = call i32 (i32*, i8*, ...) @dev_err(i32* %87, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %238

89:                                               ; preds = %70
  br label %90

90:                                               ; preds = %89, %64
  %91 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %92 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %91, i32 0, i32 0
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32 (%struct.omap_dss_device*, %struct.omap_dss_dsi_config*)*, i32 (%struct.omap_dss_device*, %struct.omap_dss_dsi_config*)** %95, align 8
  %97 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %98 = call i32 %96(%struct.omap_dss_device* %97, %struct.omap_dss_dsi_config* %9)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %90
  %102 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %103 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %102, i32 0, i32 4
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = call i32 (i32*, i8*, ...) @dev_err(i32* %105, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %238

107:                                              ; preds = %90
  %108 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %109 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %108, i32 0, i32 0
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %111, align 8
  %113 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %114 = call i32 %112(%struct.omap_dss_device* %113)
  %115 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %116 = call i32 @dsicm_hw_reset(%struct.panel_drv_data* %115)
  %117 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %118 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %117, i32 0, i32 0
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 4
  %122 = load i32 (%struct.omap_dss_device*, i32, i32)*, i32 (%struct.omap_dss_device*, i32, i32)** %121, align 8
  %123 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %124 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %125 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = call i32 %122(%struct.omap_dss_device* %123, i32 %126, i32 0)
  %128 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %129 = call i32 @dsicm_sleep_out(%struct.panel_drv_data* %128)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %107
  br label %222

133:                                              ; preds = %107
  %134 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %135 = call i32 @dsicm_get_id(%struct.panel_drv_data* %134, i32* %5, i32* %6, i32* %7)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  br label %222

139:                                              ; preds = %133
  %140 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %141 = load i32, i32* @DCS_BRIGHTNESS, align 4
  %142 = call i32 @dsicm_dcs_write_1(%struct.panel_drv_data* %140, i32 %141, i32 255)
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  br label %222

146:                                              ; preds = %139
  %147 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %148 = load i32, i32* @DCS_CTRL_DISPLAY, align 4
  %149 = call i32 @dsicm_dcs_write_1(%struct.panel_drv_data* %147, i32 %148, i32 36)
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* %8, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %222

153:                                              ; preds = %146
  %154 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %155 = load i32, i32* @MIPI_DCS_SET_PIXEL_FORMAT, align 4
  %156 = load i32, i32* @MIPI_DCS_PIXEL_FMT_24BIT, align 4
  %157 = call i32 @dsicm_dcs_write_1(%struct.panel_drv_data* %154, i32 %155, i32 %156)
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %153
  br label %222

161:                                              ; preds = %153
  %162 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %163 = load i32, i32* @MIPI_DCS_SET_DISPLAY_ON, align 4
  %164 = call i32 @dsicm_dcs_write_0(%struct.panel_drv_data* %162, i32 %163)
  store i32 %164, i32* %8, align 4
  %165 = load i32, i32* %8, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %161
  br label %222

168:                                              ; preds = %161
  %169 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %170 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %171 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %170, i32 0, i32 6
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @_dsicm_enable_te(%struct.panel_drv_data* %169, i32 %172)
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %8, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %168
  br label %222

177:                                              ; preds = %168
  %178 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %179 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %178, i32 0, i32 0
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 2
  %183 = load i32 (%struct.omap_dss_device*, i32)*, i32 (%struct.omap_dss_device*, i32)** %182, align 8
  %184 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %185 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %186 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 8
  %188 = call i32 %183(%struct.omap_dss_device* %184, i32 %187)
  store i32 %188, i32* %8, align 4
  %189 = load i32, i32* %8, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %177
  br label %222

192:                                              ; preds = %177
  %193 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %194 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %193, i32 0, i32 0
  store i32 1, i32* %194, align 8
  %195 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %196 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %210, label %199

199:                                              ; preds = %192
  %200 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %201 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %200, i32 0, i32 4
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  %204 = load i32, i32* %5, align 4
  %205 = load i32, i32* %6, align 4
  %206 = load i32, i32* %7, align 4
  %207 = call i32 @dev_info(i32* %203, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %204, i32 %205, i32 %206)
  %208 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %209 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %208, i32 0, i32 1
  store i32 1, i32* %209, align 4
  br label %210

210:                                              ; preds = %199, %192
  %211 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %212 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %211, i32 0, i32 0
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 4
  %216 = load i32 (%struct.omap_dss_device*, i32, i32)*, i32 (%struct.omap_dss_device*, i32, i32)** %215, align 8
  %217 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %218 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %219 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 8
  %221 = call i32 %216(%struct.omap_dss_device* %217, i32 %220, i32 1)
  store i32 0, i32* %2, align 4
  br label %261

222:                                              ; preds = %191, %176, %167, %160, %152, %145, %138, %132
  %223 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %224 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %223, i32 0, i32 4
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 0
  %227 = call i32 (i32*, i8*, ...) @dev_err(i32* %226, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  %228 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %229 = call i32 @dsicm_hw_reset(%struct.panel_drv_data* %228)
  %230 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %231 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %230, i32 0, i32 0
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 3
  %235 = load i32 (%struct.omap_dss_device*, i32, i32)*, i32 (%struct.omap_dss_device*, i32, i32)** %234, align 8
  %236 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %237 = call i32 %235(%struct.omap_dss_device* %236, i32 1, i32 0)
  br label %238

238:                                              ; preds = %222, %101, %83
  %239 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %240 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %239, i32 0, i32 3
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %238
  %244 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %245 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %244, i32 0, i32 3
  %246 = load i64, i64* %245, align 8
  %247 = call i32 @regulator_disable(i64 %246)
  br label %248

248:                                              ; preds = %243, %238
  br label %249

249:                                              ; preds = %248, %56
  %250 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %251 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %250, i32 0, i32 2
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %259

254:                                              ; preds = %249
  %255 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %256 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %255, i32 0, i32 2
  %257 = load i64, i64* %256, align 8
  %258 = call i32 @regulator_disable(i64 %257)
  br label %259

259:                                              ; preds = %254, %249
  %260 = load i32, i32* %8, align 4
  store i32 %260, i32* %2, align 4
  br label %261

261:                                              ; preds = %259, %210, %35
  %262 = load i32, i32* %2, align 4
  ret i32 %262
}

declare dso_local i32 @regulator_enable(i64) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dsicm_hw_reset(%struct.panel_drv_data*) #1

declare dso_local i32 @dsicm_sleep_out(%struct.panel_drv_data*) #1

declare dso_local i32 @dsicm_get_id(%struct.panel_drv_data*, i32*, i32*, i32*) #1

declare dso_local i32 @dsicm_dcs_write_1(%struct.panel_drv_data*, i32, i32) #1

declare dso_local i32 @dsicm_dcs_write_0(%struct.panel_drv_data*, i32) #1

declare dso_local i32 @_dsicm_enable_te(%struct.panel_drv_data*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @regulator_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
