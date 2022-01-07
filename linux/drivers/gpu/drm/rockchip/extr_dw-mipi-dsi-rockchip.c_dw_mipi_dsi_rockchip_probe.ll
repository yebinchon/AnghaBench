; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_dw-mipi-dsi-rockchip.c_dw_mipi_dsi_rockchip_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_dw-mipi-dsi-rockchip.c_dw_mipi_dsi_rockchip_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.dw_mipi_dsi_rockchip = type { i8*, i8*, %struct.TYPE_2__, %struct.rockchip_dw_dsi_chip_data*, i8*, %struct.device*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { %struct.dw_mipi_dsi_rockchip*, i32*, i32*, i32, i8* }
%struct.rockchip_dw_dsi_chip_data = type { i64, i32, i32 }
%struct.resource = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unable to get dsi registers\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"no dsi-config for %s node\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Unable to get pll reference clock: %d\0A\00", align 1
@DW_MIPI_NEEDS_PHY_CFG_CLK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"phy_cfg\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Unable to get phy_cfg_clk: %d\0A\00", align 1
@DW_MIPI_NEEDS_GRF_CLK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"grf\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Unable to get grf_clk: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"rockchip,grf\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Unable to get rockchip,grf\0A\00", align 1
@dw_mipi_dsi_rockchip_phy_ops = common dso_local global i32 0, align 4
@dw_mipi_dsi_rockchip_host_ops = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"Failed to probe dw_mipi_dsi: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dw_mipi_dsi_rockchip_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mipi_dsi_rockchip_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.dw_mipi_dsi_rockchip*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.rockchip_dw_dsi_chip_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %5, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call %struct.rockchip_dw_dsi_chip_data* @of_device_get_match_data(%struct.device* %16)
  store %struct.rockchip_dw_dsi_chip_data* %17, %struct.rockchip_dw_dsi_chip_data** %8, align 8
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.dw_mipi_dsi_rockchip* @devm_kzalloc(%struct.device* %18, i32 104, i32 %19)
  store %struct.dw_mipi_dsi_rockchip* %20, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %21 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %22 = icmp ne %struct.dw_mipi_dsi_rockchip* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %249

26:                                               ; preds = %1
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = load i32, i32* @IORESOURCE_MEM, align 4
  %29 = call %struct.resource* @platform_get_resource(%struct.platform_device* %27, i32 %28, i32 0)
  store %struct.resource* %29, %struct.resource** %7, align 8
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load %struct.resource*, %struct.resource** %7, align 8
  %32 = call i8* @devm_ioremap_resource(%struct.device* %30, %struct.resource* %31)
  %33 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %34 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %33, i32 0, i32 4
  store i8* %32, i8** %34, align 8
  %35 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %36 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %35, i32 0, i32 4
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @IS_ERR(i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %26
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %44 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %43, i32 0, i32 4
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @PTR_ERR(i8* %45)
  store i32 %46, i32* %2, align 4
  br label %249

47:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %74, %47
  %49 = load %struct.rockchip_dw_dsi_chip_data*, %struct.rockchip_dw_dsi_chip_data** %8, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, %struct.rockchip_dw_dsi_chip_data* %49, i64 %51
  %53 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, %struct.rockchip_dw_dsi_chip_data* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %48
  %57 = load %struct.rockchip_dw_dsi_chip_data*, %struct.rockchip_dw_dsi_chip_data** %8, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, %struct.rockchip_dw_dsi_chip_data* %57, i64 %59
  %61 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, %struct.rockchip_dw_dsi_chip_data* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.resource*, %struct.resource** %7, align 8
  %64 = getelementptr inbounds %struct.resource, %struct.resource* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %56
  %68 = load %struct.rockchip_dw_dsi_chip_data*, %struct.rockchip_dw_dsi_chip_data** %8, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, %struct.rockchip_dw_dsi_chip_data* %68, i64 %70
  %72 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %73 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %72, i32 0, i32 3
  store %struct.rockchip_dw_dsi_chip_data* %71, %struct.rockchip_dw_dsi_chip_data** %73, align 8
  br label %77

74:                                               ; preds = %56
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %48

77:                                               ; preds = %67, %48
  %78 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %79 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %78, i32 0, i32 3
  %80 = load %struct.rockchip_dw_dsi_chip_data*, %struct.rockchip_dw_dsi_chip_data** %79, align 8
  %81 = icmp ne %struct.rockchip_dw_dsi_chip_data* %80, null
  br i1 %81, label %90, label %82

82:                                               ; preds = %77
  %83 = load %struct.device*, %struct.device** %4, align 8
  %84 = load %struct.device_node*, %struct.device_node** %5, align 8
  %85 = getelementptr inbounds %struct.device_node, %struct.device_node* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dev_err(%struct.device* %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %249

90:                                               ; preds = %77
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = call i8* @devm_clk_get(%struct.device* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %93 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %94 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  %95 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %96 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i64 @IS_ERR(i8* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %90
  %101 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %102 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @PTR_ERR(i8* %103)
  store i32 %104, i32* %9, align 4
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %105, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %9, align 4
  store i32 %108, i32* %2, align 4
  br label %249

109:                                              ; preds = %90
  %110 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %111 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %110, i32 0, i32 3
  %112 = load %struct.rockchip_dw_dsi_chip_data*, %struct.rockchip_dw_dsi_chip_data** %111, align 8
  %113 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, %struct.rockchip_dw_dsi_chip_data* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @DW_MIPI_NEEDS_PHY_CFG_CLK, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %138

118:                                              ; preds = %109
  %119 = load %struct.device*, %struct.device** %4, align 8
  %120 = call i8* @devm_clk_get(%struct.device* %119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %121 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %122 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %121, i32 0, i32 8
  store i8* %120, i8** %122, align 8
  %123 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %124 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %123, i32 0, i32 8
  %125 = load i8*, i8** %124, align 8
  %126 = call i64 @IS_ERR(i8* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %118
  %129 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %130 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %129, i32 0, i32 8
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @PTR_ERR(i8* %131)
  store i32 %132, i32* %9, align 4
  %133 = load %struct.device*, %struct.device** %4, align 8
  %134 = load i32, i32* %9, align 4
  %135 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %133, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* %9, align 4
  store i32 %136, i32* %2, align 4
  br label %249

137:                                              ; preds = %118
  br label %138

138:                                              ; preds = %137, %109
  %139 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %140 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %139, i32 0, i32 3
  %141 = load %struct.rockchip_dw_dsi_chip_data*, %struct.rockchip_dw_dsi_chip_data** %140, align 8
  %142 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, %struct.rockchip_dw_dsi_chip_data* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @DW_MIPI_NEEDS_GRF_CLK, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %167

147:                                              ; preds = %138
  %148 = load %struct.device*, %struct.device** %4, align 8
  %149 = call i8* @devm_clk_get(%struct.device* %148, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %150 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %151 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %150, i32 0, i32 7
  store i8* %149, i8** %151, align 8
  %152 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %153 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %152, i32 0, i32 7
  %154 = load i8*, i8** %153, align 8
  %155 = call i64 @IS_ERR(i8* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %147
  %158 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %159 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %158, i32 0, i32 7
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @PTR_ERR(i8* %160)
  store i32 %161, i32* %9, align 4
  %162 = load %struct.device*, %struct.device** %4, align 8
  %163 = load i32, i32* %9, align 4
  %164 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %162, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* %9, align 4
  store i32 %165, i32* %2, align 4
  br label %249

166:                                              ; preds = %147
  br label %167

167:                                              ; preds = %166, %138
  %168 = load %struct.device_node*, %struct.device_node** %5, align 8
  %169 = call i8* @syscon_regmap_lookup_by_phandle(%struct.device_node* %168, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %170 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %171 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %170, i32 0, i32 6
  store i8* %169, i8** %171, align 8
  %172 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %173 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %172, i32 0, i32 6
  %174 = load i8*, i8** %173, align 8
  %175 = call i64 @IS_ERR(i8* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %167
  %178 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %179 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %178, i32 0, i32 5
  %180 = load %struct.device*, %struct.device** %179, align 8
  %181 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %180, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %182 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %183 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %182, i32 0, i32 6
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @PTR_ERR(i8* %184)
  store i32 %185, i32* %2, align 4
  br label %249

186:                                              ; preds = %167
  %187 = load %struct.device*, %struct.device** %4, align 8
  %188 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %189 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %188, i32 0, i32 5
  store %struct.device* %187, %struct.device** %189, align 8
  %190 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %191 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %190, i32 0, i32 4
  %192 = load i8*, i8** %191, align 8
  %193 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %194 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 4
  store i8* %192, i8** %195, align 8
  %196 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %197 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %196, i32 0, i32 3
  %198 = load %struct.rockchip_dw_dsi_chip_data*, %struct.rockchip_dw_dsi_chip_data** %197, align 8
  %199 = getelementptr inbounds %struct.rockchip_dw_dsi_chip_data, %struct.rockchip_dw_dsi_chip_data* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %202 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 3
  store i32 %200, i32* %203, align 8
  %204 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %205 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 2
  store i32* @dw_mipi_dsi_rockchip_phy_ops, i32** %206, align 8
  %207 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %208 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 1
  store i32* @dw_mipi_dsi_rockchip_host_ops, i32** %209, align 8
  %210 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %211 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %212 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 0
  store %struct.dw_mipi_dsi_rockchip* %210, %struct.dw_mipi_dsi_rockchip** %213, align 8
  %214 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %215 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %216 = call i32 @platform_set_drvdata(%struct.platform_device* %214, %struct.dw_mipi_dsi_rockchip* %215)
  %217 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %218 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %219 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %218, i32 0, i32 2
  %220 = call i8* @dw_mipi_dsi_probe(%struct.platform_device* %217, %struct.TYPE_2__* %219)
  %221 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %222 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %221, i32 0, i32 1
  store i8* %220, i8** %222, align 8
  %223 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %224 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %223, i32 0, i32 1
  %225 = load i8*, i8** %224, align 8
  %226 = call i64 @IS_ERR(i8* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %242

228:                                              ; preds = %186
  %229 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %230 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %229, i32 0, i32 1
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 @PTR_ERR(i8* %231)
  store i32 %232, i32* %9, align 4
  %233 = load i32, i32* %9, align 4
  %234 = load i32, i32* @EPROBE_DEFER, align 4
  %235 = sub nsw i32 0, %234
  %236 = icmp ne i32 %233, %235
  br i1 %236, label %237, label %241

237:                                              ; preds = %228
  %238 = load %struct.device*, %struct.device** %4, align 8
  %239 = load i32, i32* %9, align 4
  %240 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %238, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %239)
  br label %241

241:                                              ; preds = %237, %228
  br label %243

242:                                              ; preds = %186
  store i32 0, i32* %2, align 4
  br label %249

243:                                              ; preds = %241
  %244 = load %struct.dw_mipi_dsi_rockchip*, %struct.dw_mipi_dsi_rockchip** %6, align 8
  %245 = getelementptr inbounds %struct.dw_mipi_dsi_rockchip, %struct.dw_mipi_dsi_rockchip* %244, i32 0, i32 0
  %246 = load i8*, i8** %245, align 8
  %247 = call i32 @clk_disable_unprepare(i8* %246)
  %248 = load i32, i32* %9, align 4
  store i32 %248, i32* %2, align 4
  br label %249

249:                                              ; preds = %243, %242, %177, %157, %128, %100, %82, %40, %23
  %250 = load i32, i32* %2, align 4
  ret i32 %250
}

declare dso_local %struct.rockchip_dw_dsi_chip_data* @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.dw_mipi_dsi_rockchip* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i8* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.dw_mipi_dsi_rockchip*) #1

declare dso_local i8* @dw_mipi_dsi_probe(%struct.platform_device*, %struct.TYPE_2__*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
