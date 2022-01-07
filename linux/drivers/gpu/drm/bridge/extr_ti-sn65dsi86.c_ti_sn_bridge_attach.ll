; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_ti-sn65dsi86.c_ti_sn_bridge_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_ti-sn65dsi86.c_ti_sn_bridge_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_device_info = type { i8*, i32*, i32 }
%struct.drm_bridge = type { i32, i32 }
%struct.ti_sn_bridge = type { i32, i32, %struct.mipi_dsi_device*, i32, i32, i32 }
%struct.mipi_dsi_device = type { i32, i32, i32 }
%struct.mipi_dsi_host = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"ti_sn_bridge\00", align 1
@__const.ti_sn_bridge_attach.info = private unnamed_addr constant %struct.mipi_dsi_device_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32* null, i32 0 }, align 8
@ti_sn_bridge_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_eDP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to initialize connector with drm\0A\00", align 1
@ti_sn_bridge_connector_helper_funcs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to find dsi host\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to create dsi device\0A\00", align 1
@MIPI_DSI_FMT_RGB888 = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO = common dso_local global i32 0, align 4
@SN_DPPLL_SRC_REG = common dso_local global i32 0, align 4
@DPPLL_CLK_SRC_DSICLK = common dso_local global i32 0, align 4
@MIPI_DSI_CLOCK_NON_CONTINUOUS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"failed to attach dsi to host\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_bridge*)* @ti_sn_bridge_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sn_bridge_attach(%struct.drm_bridge* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_bridge*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ti_sn_bridge*, align 8
  %7 = alloca %struct.mipi_dsi_host*, align 8
  %8 = alloca %struct.mipi_dsi_device*, align 8
  %9 = alloca %struct.mipi_dsi_device_info, align 8
  store %struct.drm_bridge* %0, %struct.drm_bridge** %3, align 8
  %10 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %11 = call %struct.ti_sn_bridge* @bridge_to_ti_sn_bridge(%struct.drm_bridge* %10)
  store %struct.ti_sn_bridge* %11, %struct.ti_sn_bridge** %6, align 8
  %12 = bitcast %struct.mipi_dsi_device_info* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.mipi_dsi_device_info* @__const.ti_sn_bridge_attach.info to i8*), i64 24, i1 false)
  %13 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %14 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %17 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %16, i32 0, i32 0
  %18 = load i32, i32* @DRM_MODE_CONNECTOR_eDP, align 4
  %19 = call i32 @drm_connector_init(i32 %15, i32* %17, i32* @ti_sn_bridge_connector_funcs, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %112

25:                                               ; preds = %1
  %26 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %27 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %26, i32 0, i32 0
  %28 = call i32 @drm_connector_helper_add(i32* %27, i32* @ti_sn_bridge_connector_helper_funcs)
  %29 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %30 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %29, i32 0, i32 0
  %31 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %32 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @drm_connector_attach_encoder(i32* %30, i32 %33)
  %35 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %36 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.mipi_dsi_host* @of_find_mipi_dsi_host_by_node(i32 %37)
  store %struct.mipi_dsi_host* %38, %struct.mipi_dsi_host** %7, align 8
  %39 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %7, align 8
  %40 = icmp ne %struct.mipi_dsi_host* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %25
  %42 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %107

45:                                               ; preds = %25
  %46 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %7, align 8
  %47 = call %struct.mipi_dsi_device* @mipi_dsi_device_register_full(%struct.mipi_dsi_host* %46, %struct.mipi_dsi_device_info* %9)
  store %struct.mipi_dsi_device* %47, %struct.mipi_dsi_device** %8, align 8
  %48 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %8, align 8
  %49 = call i64 @IS_ERR(%struct.mipi_dsi_device* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %53 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %8, align 8
  %54 = call i32 @PTR_ERR(%struct.mipi_dsi_device* %53)
  store i32 %54, i32* %4, align 4
  br label %107

55:                                               ; preds = %45
  %56 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %8, align 8
  %57 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %56, i32 0, i32 0
  store i32 4, i32* %57, align 4
  %58 = load i32, i32* @MIPI_DSI_FMT_RGB888, align 4
  %59 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %8, align 8
  %60 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @MIPI_DSI_MODE_VIDEO, align 4
  %62 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %8, align 8
  %63 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %65 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @pm_runtime_get_sync(i32 %66)
  %68 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %69 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @SN_DPPLL_SRC_REG, align 4
  %72 = call i32 @regmap_read(i32 %70, i32 %71, i32* %5)
  %73 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %74 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @pm_runtime_put(i32 %75)
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @DPPLL_CLK_SRC_DSICLK, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %55
  %82 = load i32, i32* @MIPI_DSI_CLOCK_NON_CONTINUOUS, align 4
  %83 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %8, align 8
  %84 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %81, %55
  %88 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %8, align 8
  %89 = call i32 @mipi_dsi_attach(%struct.mipi_dsi_device* %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %104

94:                                               ; preds = %87
  %95 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %8, align 8
  %96 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %97 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %96, i32 0, i32 2
  store %struct.mipi_dsi_device* %95, %struct.mipi_dsi_device** %97, align 8
  %98 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %99 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %102 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %101, i32 0, i32 0
  %103 = call i32 @drm_panel_attach(i32 %100, i32* %102)
  store i32 0, i32* %2, align 4
  br label %112

104:                                              ; preds = %92
  %105 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %8, align 8
  %106 = call i32 @mipi_dsi_device_unregister(%struct.mipi_dsi_device* %105)
  br label %107

107:                                              ; preds = %104, %51, %41
  %108 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %109 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %108, i32 0, i32 0
  %110 = call i32 @drm_connector_cleanup(i32* %109)
  %111 = load i32, i32* %4, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %107, %94, %22
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.ti_sn_bridge* @bridge_to_ti_sn_bridge(%struct.drm_bridge*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @drm_connector_init(i32, i32*, i32*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_connector_helper_add(i32*, i32*) #1

declare dso_local i32 @drm_connector_attach_encoder(i32*, i32) #1

declare dso_local %struct.mipi_dsi_host* @of_find_mipi_dsi_host_by_node(i32) #1

declare dso_local %struct.mipi_dsi_device* @mipi_dsi_device_register_full(%struct.mipi_dsi_host*, %struct.mipi_dsi_device_info*) #1

declare dso_local i64 @IS_ERR(%struct.mipi_dsi_device*) #1

declare dso_local i32 @PTR_ERR(%struct.mipi_dsi_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @pm_runtime_put(i32) #1

declare dso_local i32 @mipi_dsi_attach(%struct.mipi_dsi_device*) #1

declare dso_local i32 @drm_panel_attach(i32, i32*) #1

declare dso_local i32 @mipi_dsi_device_unregister(%struct.mipi_dsi_device*) #1

declare dso_local i32 @drm_connector_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
