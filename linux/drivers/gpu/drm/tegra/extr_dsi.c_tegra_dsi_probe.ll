; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.tegra_dsi = type { i32, i32, i32, i8*, %struct.TYPE_17__, %struct.TYPE_18__, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, %struct.TYPE_15__, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, i32* }
%struct.TYPE_18__ = type { %struct.TYPE_16__*, i32*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_HPD = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO = common dso_local global i32 0, align 4
@MIPI_DSI_FMT_RGB888 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"dsi\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"cannot get DSI clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"lp\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"cannot get low-power clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"cannot get parent clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"avdd-dsi-csi\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"cannot get VDD supply\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"cannot setup clocks\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@tegra_dsi_host_ops = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"failed to register DSI host: %d\0A\00", align 1
@dsi_client_ops = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [38 x i8] c"failed to register host1x client: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_dsi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_dsi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tegra_dsi*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.tegra_dsi* @devm_kzalloc(%struct.TYPE_16__* %8, i32 144, i32 %9)
  store %struct.tegra_dsi* %10, %struct.tegra_dsi** %4, align 8
  %11 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %12 = icmp ne %struct.tegra_dsi* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %259

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %20 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %19, i32 0, i32 15
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %20, align 8
  %21 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %22 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %21, i32 0, i32 14
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %23, align 8
  %24 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %25 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %24, i32 0, i32 0
  store i32 1920, i32* %25, align 8
  %26 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %27 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %26, i32 0, i32 1
  store i32 64, i32* %27, align 4
  %28 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %29 = call i32 @tegra_dsi_ganged_probe(%struct.tegra_dsi* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %16
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %259

34:                                               ; preds = %16
  %35 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %36 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %35, i32 0, i32 14
  %37 = call i32 @tegra_output_probe(%struct.TYPE_15__* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %259

42:                                               ; preds = %34
  %43 = load i32, i32* @DRM_CONNECTOR_POLL_HPD, align 4
  %44 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %45 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %44, i32 0, i32 14
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 8
  %48 = load i32, i32* @MIPI_DSI_MODE_VIDEO, align 4
  %49 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %50 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %49, i32 0, i32 13
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @MIPI_DSI_FMT_RGB888, align 4
  %52 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %53 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %52, i32 0, i32 12
  store i32 %51, i32* %53, align 8
  %54 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %55 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %54, i32 0, i32 2
  store i32 4, i32* %55, align 8
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %78, label %61

61:                                               ; preds = %42
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = call i8* @devm_reset_control_get(%struct.TYPE_16__* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %66 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %65, i32 0, i32 11
  store i8* %64, i8** %66, align 8
  %67 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %68 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %67, i32 0, i32 11
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @IS_ERR(i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %61
  %73 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %74 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %73, i32 0, i32 11
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @PTR_ERR(i8* %75)
  store i32 %76, i32* %2, align 4
  br label %259

77:                                               ; preds = %61
  br label %78

78:                                               ; preds = %77, %42
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = call i8* @devm_clk_get(%struct.TYPE_16__* %80, i8* null)
  %82 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %83 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %82, i32 0, i32 10
  store i8* %81, i8** %83, align 8
  %84 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %85 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %84, i32 0, i32 10
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @IS_ERR(i8* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %78
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %91, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %93 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %94 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %93, i32 0, i32 10
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @PTR_ERR(i8* %95)
  store i32 %96, i32* %2, align 4
  br label %259

97:                                               ; preds = %78
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = call i8* @devm_clk_get(%struct.TYPE_16__* %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %101 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %102 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %101, i32 0, i32 9
  store i8* %100, i8** %102, align 8
  %103 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %104 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %103, i32 0, i32 9
  %105 = load i8*, i8** %104, align 8
  %106 = call i64 @IS_ERR(i8* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %97
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %110, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %112 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %113 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %112, i32 0, i32 9
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @PTR_ERR(i8* %114)
  store i32 %115, i32* %2, align 4
  br label %259

116:                                              ; preds = %97
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = call i8* @devm_clk_get(%struct.TYPE_16__* %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %120 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %121 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %120, i32 0, i32 8
  store i8* %119, i8** %121, align 8
  %122 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %123 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %122, i32 0, i32 8
  %124 = load i8*, i8** %123, align 8
  %125 = call i64 @IS_ERR(i8* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %116
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 0
  %130 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %129, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %131 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %132 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %131, i32 0, i32 8
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @PTR_ERR(i8* %133)
  store i32 %134, i32* %2, align 4
  br label %259

135:                                              ; preds = %116
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = call i8* @devm_regulator_get(%struct.TYPE_16__* %137, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %139 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %140 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %139, i32 0, i32 7
  store i8* %138, i8** %140, align 8
  %141 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %142 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %141, i32 0, i32 7
  %143 = load i8*, i8** %142, align 8
  %144 = call i64 @IS_ERR(i8* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %135
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %147, i32 0, i32 0
  %149 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %148, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %150 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %151 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %150, i32 0, i32 7
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @PTR_ERR(i8* %152)
  store i32 %153, i32* %2, align 4
  br label %259

154:                                              ; preds = %135
  %155 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %156 = call i32 @tegra_dsi_setup_clocks(%struct.tegra_dsi* %155)
  store i32 %156, i32* %6, align 4
  %157 = load i32, i32* %6, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %154
  %160 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %161 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %160, i32 0, i32 0
  %162 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %161, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %163 = load i32, i32* %6, align 4
  store i32 %163, i32* %2, align 4
  br label %259

164:                                              ; preds = %154
  %165 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %166 = load i32, i32* @IORESOURCE_MEM, align 4
  %167 = call %struct.resource* @platform_get_resource(%struct.platform_device* %165, i32 %166, i32 0)
  store %struct.resource* %167, %struct.resource** %5, align 8
  %168 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %169 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %168, i32 0, i32 0
  %170 = load %struct.resource*, %struct.resource** %5, align 8
  %171 = call i8* @devm_ioremap_resource(%struct.TYPE_16__* %169, %struct.resource* %170)
  %172 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %173 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %172, i32 0, i32 6
  store i8* %171, i8** %173, align 8
  %174 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %175 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %174, i32 0, i32 6
  %176 = load i8*, i8** %175, align 8
  %177 = call i64 @IS_ERR(i8* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %164
  %180 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %181 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %180, i32 0, i32 6
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 @PTR_ERR(i8* %182)
  store i32 %183, i32* %2, align 4
  br label %259

184:                                              ; preds = %164
  %185 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %186 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %185, i32 0, i32 0
  %187 = call i8* @tegra_mipi_request(%struct.TYPE_16__* %186)
  %188 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %189 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %188, i32 0, i32 3
  store i8* %187, i8** %189, align 8
  %190 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %191 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %190, i32 0, i32 3
  %192 = load i8*, i8** %191, align 8
  %193 = call i64 @IS_ERR(i8* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %184
  %196 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %197 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %196, i32 0, i32 3
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @PTR_ERR(i8* %198)
  store i32 %199, i32* %2, align 4
  br label %259

200:                                              ; preds = %184
  %201 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %202 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %201, i32 0, i32 4
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 1
  store i32* @tegra_dsi_host_ops, i32** %203, align 8
  %204 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %205 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %204, i32 0, i32 0
  %206 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %207 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %206, i32 0, i32 4
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 0
  store %struct.TYPE_16__* %205, %struct.TYPE_16__** %208, align 8
  %209 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %210 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %209, i32 0, i32 4
  %211 = call i32 @mipi_dsi_host_register(%struct.TYPE_17__* %210)
  store i32 %211, i32* %6, align 4
  %212 = load i32, i32* %6, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %200
  %215 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %216 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %215, i32 0, i32 0
  %217 = load i32, i32* %6, align 4
  %218 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %216, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %217)
  br label %253

219:                                              ; preds = %200
  %220 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %221 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %222 = call i32 @platform_set_drvdata(%struct.platform_device* %220, %struct.tegra_dsi* %221)
  %223 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %224 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %223, i32 0, i32 0
  %225 = call i32 @pm_runtime_enable(%struct.TYPE_16__* %224)
  %226 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %227 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %226, i32 0, i32 5
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 2
  %229 = call i32 @INIT_LIST_HEAD(i32* %228)
  %230 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %231 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %230, i32 0, i32 5
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 1
  store i32* @dsi_client_ops, i32** %232, align 8
  %233 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %234 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %233, i32 0, i32 0
  %235 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %236 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %235, i32 0, i32 5
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 0
  store %struct.TYPE_16__* %234, %struct.TYPE_16__** %237, align 8
  %238 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %239 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %238, i32 0, i32 5
  %240 = call i32 @host1x_client_register(%struct.TYPE_18__* %239)
  store i32 %240, i32* %6, align 4
  %241 = load i32, i32* %6, align 4
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %219
  %244 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %245 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %244, i32 0, i32 0
  %246 = load i32, i32* %6, align 4
  %247 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %245, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i32 %246)
  br label %249

248:                                              ; preds = %219
  store i32 0, i32* %2, align 4
  br label %259

249:                                              ; preds = %243
  %250 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %251 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %250, i32 0, i32 4
  %252 = call i32 @mipi_dsi_host_unregister(%struct.TYPE_17__* %251)
  br label %253

253:                                              ; preds = %249, %214
  %254 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %255 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %254, i32 0, i32 3
  %256 = load i8*, i8** %255, align 8
  %257 = call i32 @tegra_mipi_free(i8* %256)
  %258 = load i32, i32* %6, align 4
  store i32 %258, i32* %2, align 4
  br label %259

259:                                              ; preds = %253, %248, %195, %179, %159, %146, %127, %108, %89, %72, %40, %32, %13
  %260 = load i32, i32* %2, align 4
  ret i32 %260
}

declare dso_local %struct.tegra_dsi* @devm_kzalloc(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @tegra_dsi_ganged_probe(%struct.tegra_dsi*) #1

declare dso_local i32 @tegra_output_probe(%struct.TYPE_15__*) #1

declare dso_local i8* @devm_reset_control_get(%struct.TYPE_16__*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_16__*, i8*, ...) #1

declare dso_local i8* @devm_regulator_get(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @tegra_dsi_setup_clocks(%struct.tegra_dsi*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.TYPE_16__*, %struct.resource*) #1

declare dso_local i8* @tegra_mipi_request(%struct.TYPE_16__*) #1

declare dso_local i32 @mipi_dsi_host_register(%struct.TYPE_17__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tegra_dsi*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_16__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @host1x_client_register(%struct.TYPE_18__*) #1

declare dso_local i32 @mipi_dsi_host_unregister(%struct.TYPE_17__*) #1

declare dso_local i32 @tegra_mipi_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
