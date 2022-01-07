; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_lvds.c_rockchip_lvds_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_lvds.c_rockchip_lvds_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.rockchip_lvds = type { i32, i32, %struct.TYPE_2__*, %struct.device*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.of_device_id = type { i32 }
%struct.resource = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rockchip_lvds_dt_ids = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"pclk_lvds\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"could not get pclk_lvds\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"no pinctrl handle\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"lcdc\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"no default pinctrl state\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"rockchip,grf\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"missing rockchip,grf property\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"failed to prepare pclk_lvds\0A\00", align 1
@rockchip_lvds_component_ops = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"failed to add component\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rockchip_lvds_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_lvds_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rockchip_lvds*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %209

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @devm_kzalloc(%struct.device* %20, i32 32, i32 %21)
  %23 = bitcast i8* %22 to %struct.rockchip_lvds*
  store %struct.rockchip_lvds* %23, %struct.rockchip_lvds** %5, align 8
  %24 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %25 = icmp ne %struct.rockchip_lvds* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %209

29:                                               ; preds = %18
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %32 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %31, i32 0, i32 3
  store %struct.device* %30, %struct.device** %32, align 8
  %33 = load i32, i32* @rockchip_lvds_dt_ids, align 4
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = getelementptr inbounds %struct.device, %struct.device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.of_device_id* @of_match_node(i32 %33, i32 %36)
  store %struct.of_device_id* %37, %struct.of_device_id** %6, align 8
  %38 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %39 = icmp ne %struct.of_device_id* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %29
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %209

43:                                               ; preds = %29
  %44 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %45 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %48 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = load i32, i32* @IORESOURCE_MEM, align 4
  %51 = call %struct.resource* @platform_get_resource(%struct.platform_device* %49, i32 %50, i32 0)
  store %struct.resource* %51, %struct.resource** %7, align 8
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = load %struct.resource*, %struct.resource** %7, align 8
  %55 = call i32 @devm_ioremap_resource(%struct.device* %53, %struct.resource* %54)
  %56 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %57 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %59 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @IS_ERR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %43
  %64 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %65 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @PTR_ERR(i32 %66)
  store i32 %67, i32* %2, align 4
  br label %209

68:                                               ; preds = %43
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = call i32 @devm_clk_get(%struct.device* %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %72 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %73 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %75 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @IS_ERR(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %68
  %80 = load %struct.device*, %struct.device** %4, align 8
  %81 = call i32 @DRM_DEV_ERROR(%struct.device* %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %82 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %83 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @PTR_ERR(i32 %84)
  store i32 %85, i32* %2, align 4
  br label %209

86:                                               ; preds = %68
  %87 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %88 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %87, i32 0, i32 3
  %89 = load %struct.device*, %struct.device** %88, align 8
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = call i8* @devm_kzalloc(%struct.device* %89, i32 8, i32 %90)
  %92 = bitcast i8* %91 to %struct.TYPE_2__*
  %93 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %94 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %93, i32 0, i32 2
  store %struct.TYPE_2__* %92, %struct.TYPE_2__** %94, align 8
  %95 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %96 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %95, i32 0, i32 2
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = icmp ne %struct.TYPE_2__* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %86
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %209

102:                                              ; preds = %86
  %103 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %104 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %103, i32 0, i32 3
  %105 = load %struct.device*, %struct.device** %104, align 8
  %106 = call i32 @devm_pinctrl_get(%struct.device* %105)
  %107 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %108 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %107, i32 0, i32 2
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  store i32 %106, i32* %110, align 4
  %111 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %112 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %111, i32 0, i32 2
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @IS_ERR(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %102
  %119 = load %struct.device*, %struct.device** %4, align 8
  %120 = call i32 @DRM_DEV_ERROR(%struct.device* %119, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %121 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %122 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %121, i32 0, i32 3
  %123 = load %struct.device*, %struct.device** %122, align 8
  %124 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %125 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %124, i32 0, i32 2
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = call i32 @devm_kfree(%struct.device* %123, %struct.TYPE_2__* %126)
  %128 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %129 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %128, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %129, align 8
  br label %161

130:                                              ; preds = %102
  %131 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %132 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %131, i32 0, i32 2
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @pinctrl_lookup_state(i32 %135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %137 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %138 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %137, i32 0, i32 2
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  store i32 %136, i32* %140, align 4
  %141 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %142 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %141, i32 0, i32 2
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @IS_ERR(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %160

148:                                              ; preds = %130
  %149 = load %struct.device*, %struct.device** %4, align 8
  %150 = call i32 @DRM_DEV_ERROR(%struct.device* %149, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %151 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %152 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %151, i32 0, i32 3
  %153 = load %struct.device*, %struct.device** %152, align 8
  %154 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %155 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %154, i32 0, i32 2
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = call i32 @devm_kfree(%struct.device* %153, %struct.TYPE_2__* %156)
  %158 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %159 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %158, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %159, align 8
  br label %160

160:                                              ; preds = %148, %130
  br label %161

161:                                              ; preds = %160, %118
  %162 = load %struct.device*, %struct.device** %4, align 8
  %163 = getelementptr inbounds %struct.device, %struct.device* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @syscon_regmap_lookup_by_phandle(i32 %164, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %166 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %167 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  %168 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %169 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @IS_ERR(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %161
  %174 = load %struct.device*, %struct.device** %4, align 8
  %175 = call i32 @DRM_DEV_ERROR(%struct.device* %174, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %176 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %177 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @PTR_ERR(i32 %178)
  store i32 %179, i32* %2, align 4
  br label %209

180:                                              ; preds = %161
  %181 = load %struct.device*, %struct.device** %4, align 8
  %182 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %183 = call i32 @dev_set_drvdata(%struct.device* %181, %struct.rockchip_lvds* %182)
  %184 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %185 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @clk_prepare(i32 %186)
  store i32 %187, i32* %8, align 4
  %188 = load i32, i32* %8, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %180
  %191 = load %struct.device*, %struct.device** %4, align 8
  %192 = call i32 @DRM_DEV_ERROR(%struct.device* %191, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %193 = load i32, i32* %8, align 4
  store i32 %193, i32* %2, align 4
  br label %209

194:                                              ; preds = %180
  %195 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %196 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %195, i32 0, i32 0
  %197 = call i32 @component_add(%struct.device* %196, i32* @rockchip_lvds_component_ops)
  store i32 %197, i32* %8, align 4
  %198 = load i32, i32* %8, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %194
  %201 = load %struct.device*, %struct.device** %4, align 8
  %202 = call i32 @DRM_DEV_ERROR(%struct.device* %201, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %203 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %204 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @clk_unprepare(i32 %205)
  br label %207

207:                                              ; preds = %200, %194
  %208 = load i32, i32* %8, align 4
  store i32 %208, i32* %2, align 4
  br label %209

209:                                              ; preds = %207, %190, %173, %99, %79, %63, %40, %26, %15
  %210 = load i32, i32* %2, align 4
  ret i32 %210
}

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*) #1

declare dso_local i32 @devm_pinctrl_get(%struct.device*) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.TYPE_2__*) #1

declare dso_local i32 @pinctrl_lookup_state(i32, i8*) #1

declare dso_local i32 @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.rockchip_lvds*) #1

declare dso_local i32 @clk_prepare(i32) #1

declare dso_local i32 @component_add(%struct.device*, i32*) #1

declare dso_local i32 @clk_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
