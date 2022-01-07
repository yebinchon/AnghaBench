; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_ti-sn65dsi86.c_ti_sn_bridge_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_ti-sn65dsi86.c_ti_sn_bridge_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.ti_sn_bridge = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__*, i32*, i32*, i32, i32* }
%struct.TYPE_10__ = type { i32, i32* }
%struct.TYPE_9__ = type { i8*, i32, %struct.TYPE_8__* }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"device doesn't support I2C\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ti_sn_bridge_regmap_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"regmap i2c init failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"could not find any panel node\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"failed to get enable gpio from DT\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"failed to parse regulators\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"refclk\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"refclk not found\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"ti-sn65dsi86-aux\00", align 1
@ti_sn_aux_transfer = common dso_local global i32 0, align 4
@ti_sn_bridge_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ti_sn_bridge_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sn_bridge_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ti_sn_bridge*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @I2C_FUNC_I2C, align 4
  %12 = call i32 @i2c_check_functionality(i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %167

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.ti_sn_bridge* @devm_kzalloc(%struct.TYPE_8__* %20, i32 80, i32 %21)
  store %struct.ti_sn_bridge* %22, %struct.ti_sn_bridge** %6, align 8
  %23 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %24 = icmp ne %struct.ti_sn_bridge* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %167

28:                                               ; preds = %18
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = call i32* @devm_regmap_init_i2c(%struct.i2c_client* %29, i32* @ti_sn_bridge_regmap_config)
  %31 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %32 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %31, i32 0, i32 6
  store i32* %30, i32** %32, align 8
  %33 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %34 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %33, i32 0, i32 6
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @IS_ERR(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %28
  %39 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %41 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %40, i32 0, i32 6
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @PTR_ERR(i32* %42)
  store i32 %43, i32* %3, align 4
  br label %167

44:                                               ; preds = %28
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 0
  %47 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %48 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %47, i32 0, i32 2
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %48, align 8
  %49 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %50 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %49, i32 0, i32 2
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %55 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %54, i32 0, i32 5
  %56 = call i32 @drm_of_find_panel_or_bridge(i32 %53, i32 1, i32 0, i32* %55, i32* null)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %44
  %60 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %167

62:                                               ; preds = %44
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %63, i32 0, i32 0
  %65 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %66 = call i32 @dev_set_drvdata(%struct.TYPE_8__* %64, %struct.ti_sn_bridge* %65)
  %67 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %68 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %67, i32 0, i32 2
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %71 = call i32* @devm_gpiod_get(%struct.TYPE_8__* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  %72 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %73 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %72, i32 0, i32 4
  store i32* %71, i32** %73, align 8
  %74 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %75 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %74, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  %77 = call i64 @IS_ERR(i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %62
  %80 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %81 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %82 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %81, i32 0, i32 4
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @PTR_ERR(i32* %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %3, align 4
  br label %167

86:                                               ; preds = %62
  %87 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %88 = call i32 @ti_sn_bridge_parse_regulators(%struct.ti_sn_bridge* %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %3, align 4
  br label %167

94:                                               ; preds = %86
  %95 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %96 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %95, i32 0, i32 2
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = call i32* @devm_clk_get(%struct.TYPE_8__* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %99 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %100 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %99, i32 0, i32 3
  store i32* %98, i32** %100, align 8
  %101 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %102 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = call i64 @IS_ERR(i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %94
  %107 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %108 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @PTR_ERR(i32* %109)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @EPROBE_DEFER, align 4
  %113 = sub nsw i32 0, %112
  %114 = icmp eq i32 %111, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %106
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %3, align 4
  br label %167

117:                                              ; preds = %106
  %118 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %119 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %120 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %119, i32 0, i32 3
  store i32* null, i32** %120, align 8
  br label %121

121:                                              ; preds = %117, %94
  %122 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %123 = call i32 @ti_sn_bridge_parse_dsi_host(%struct.ti_sn_bridge* %122)
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %3, align 4
  br label %167

128:                                              ; preds = %121
  %129 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %130 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %129, i32 0, i32 2
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = call i32 @pm_runtime_enable(%struct.TYPE_8__* %131)
  %133 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %134 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %135 = call i32 @i2c_set_clientdata(%struct.i2c_client* %133, %struct.ti_sn_bridge* %134)
  %136 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %137 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8** %138, align 8
  %139 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %140 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %139, i32 0, i32 2
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %143 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 2
  store %struct.TYPE_8__* %141, %struct.TYPE_8__** %144, align 8
  %145 = load i32, i32* @ti_sn_aux_transfer, align 4
  %146 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %147 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 1
  store i32 %145, i32* %148, align 8
  %149 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %150 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %149, i32 0, i32 1
  %151 = call i32 @drm_dp_aux_register(%struct.TYPE_9__* %150)
  %152 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %153 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 1
  store i32* @ti_sn_bridge_funcs, i32** %154, align 8
  %155 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %156 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %160 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  store i32 %158, i32* %161, align 8
  %162 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %163 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %162, i32 0, i32 0
  %164 = call i32 @drm_bridge_add(%struct.TYPE_10__* %163)
  %165 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %166 = call i32 @ti_sn_debugfs_init(%struct.ti_sn_bridge* %165)
  store i32 0, i32* %3, align 4
  br label %167

167:                                              ; preds = %128, %126, %115, %91, %79, %59, %38, %25, %14
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local %struct.ti_sn_bridge* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @drm_of_find_panel_or_bridge(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_8__*, %struct.ti_sn_bridge*) #1

declare dso_local i32* @devm_gpiod_get(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @ti_sn_bridge_parse_regulators(%struct.ti_sn_bridge*) #1

declare dso_local i32* @devm_clk_get(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @ti_sn_bridge_parse_dsi_host(%struct.ti_sn_bridge*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_8__*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.ti_sn_bridge*) #1

declare dso_local i32 @drm_dp_aux_register(%struct.TYPE_9__*) #1

declare dso_local i32 @drm_bridge_add(%struct.TYPE_10__*) #1

declare dso_local i32 @ti_sn_debugfs_init(%struct.ti_sn_bridge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
