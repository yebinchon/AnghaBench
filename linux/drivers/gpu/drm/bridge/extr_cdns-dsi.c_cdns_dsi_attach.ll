; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_cdns-dsi.c_cdns_dsi_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_cdns-dsi.c_cdns_dsi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_host = type { i32 }
%struct.mipi_dsi_device = type { i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.cdns_dsi = type { %struct.TYPE_5__, %struct.cdns_dsi_input, %struct.cdns_dsi_output }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.cdns_dsi_input = type { i32 }
%struct.cdns_dsi_output = type { %struct.drm_panel*, %struct.drm_panel*, %struct.mipi_dsi_device* }
%struct.drm_panel = type { i32 }
%struct.drm_bridge = type opaque
%struct.device_node = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO_BURST = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@DSI_OUTPUT_PORT = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DSI = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to add DSI device %s (err = %d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_host*, %struct.mipi_dsi_device*)* @cdns_dsi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_dsi_attach(%struct.mipi_dsi_host* %0, %struct.mipi_dsi_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mipi_dsi_host*, align 8
  %5 = alloca %struct.mipi_dsi_device*, align 8
  %6 = alloca %struct.cdns_dsi*, align 8
  %7 = alloca %struct.cdns_dsi_output*, align 8
  %8 = alloca %struct.cdns_dsi_input*, align 8
  %9 = alloca %struct.drm_bridge*, align 8
  %10 = alloca %struct.drm_panel*, align 8
  %11 = alloca %struct.device_node*, align 8
  %12 = alloca i32, align 4
  store %struct.mipi_dsi_host* %0, %struct.mipi_dsi_host** %4, align 8
  store %struct.mipi_dsi_device* %1, %struct.mipi_dsi_device** %5, align 8
  %13 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %4, align 8
  %14 = call %struct.cdns_dsi* @to_cdns_dsi(%struct.mipi_dsi_host* %13)
  store %struct.cdns_dsi* %14, %struct.cdns_dsi** %6, align 8
  %15 = load %struct.cdns_dsi*, %struct.cdns_dsi** %6, align 8
  %16 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %15, i32 0, i32 2
  store %struct.cdns_dsi_output* %16, %struct.cdns_dsi_output** %7, align 8
  %17 = load %struct.cdns_dsi*, %struct.cdns_dsi** %6, align 8
  %18 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %17, i32 0, i32 1
  store %struct.cdns_dsi_input* %18, %struct.cdns_dsi_input** %8, align 8
  %19 = load %struct.cdns_dsi_output*, %struct.cdns_dsi_output** %7, align 8
  %20 = getelementptr inbounds %struct.cdns_dsi_output, %struct.cdns_dsi_output* %19, i32 0, i32 2
  %21 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %20, align 8
  %22 = icmp ne %struct.mipi_dsi_device* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %116

26:                                               ; preds = %2
  %27 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %28 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MIPI_DSI_MODE_VIDEO_BURST, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @ENOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %116

36:                                               ; preds = %26
  %37 = load %struct.cdns_dsi*, %struct.cdns_dsi** %6, align 8
  %38 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DSI_OUTPUT_PORT, align 4
  %44 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %45 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.device_node* @of_graph_get_remote_node(i32 %42, i32 %43, i32 %46)
  store %struct.device_node* %47, %struct.device_node** %11, align 8
  %48 = load %struct.device_node*, %struct.device_node** %11, align 8
  %49 = icmp ne %struct.device_node* %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %36
  %51 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %52 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.device_node* @of_node_get(i32 %54)
  store %struct.device_node* %55, %struct.device_node** %11, align 8
  br label %56

56:                                               ; preds = %50, %36
  %57 = load %struct.device_node*, %struct.device_node** %11, align 8
  %58 = call %struct.drm_panel* @of_drm_find_panel(%struct.device_node* %57)
  store %struct.drm_panel* %58, %struct.drm_panel** %10, align 8
  %59 = load %struct.drm_panel*, %struct.drm_panel** %10, align 8
  %60 = call i64 @IS_ERR(%struct.drm_panel* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %56
  %63 = load %struct.drm_panel*, %struct.drm_panel** %10, align 8
  %64 = load i32, i32* @DRM_MODE_CONNECTOR_DSI, align 4
  %65 = call %struct.drm_panel* @drm_panel_bridge_add(%struct.drm_panel* %63, i32 %64)
  %66 = bitcast %struct.drm_panel* %65 to %struct.drm_bridge*
  store %struct.drm_bridge* %66, %struct.drm_bridge** %9, align 8
  br label %82

67:                                               ; preds = %56
  %68 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %69 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.drm_panel* @of_drm_find_bridge(i32 %71)
  %73 = bitcast %struct.drm_panel* %72 to %struct.drm_bridge*
  store %struct.drm_bridge* %73, %struct.drm_bridge** %9, align 8
  %74 = load %struct.drm_bridge*, %struct.drm_bridge** %9, align 8
  %75 = icmp ne %struct.drm_bridge* %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %67
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  %79 = call %struct.drm_panel* @ERR_PTR(i32 %78)
  %80 = bitcast %struct.drm_panel* %79 to %struct.drm_bridge*
  store %struct.drm_bridge* %80, %struct.drm_bridge** %9, align 8
  br label %81

81:                                               ; preds = %76, %67
  br label %82

82:                                               ; preds = %81, %62
  %83 = load %struct.device_node*, %struct.device_node** %11, align 8
  %84 = call i32 @of_node_put(%struct.device_node* %83)
  %85 = load %struct.drm_bridge*, %struct.drm_bridge** %9, align 8
  %86 = bitcast %struct.drm_bridge* %85 to %struct.drm_panel*
  %87 = call i64 @IS_ERR(%struct.drm_panel* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %82
  %90 = load %struct.drm_bridge*, %struct.drm_bridge** %9, align 8
  %91 = bitcast %struct.drm_bridge* %90 to %struct.drm_panel*
  %92 = call i32 @PTR_ERR(%struct.drm_panel* %91)
  store i32 %92, i32* %12, align 4
  %93 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %4, align 8
  %94 = getelementptr inbounds %struct.mipi_dsi_host, %struct.mipi_dsi_host* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %97 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @dev_err(i32 %95, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %99)
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %3, align 4
  br label %116

102:                                              ; preds = %82
  %103 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %104 = load %struct.cdns_dsi_output*, %struct.cdns_dsi_output** %7, align 8
  %105 = getelementptr inbounds %struct.cdns_dsi_output, %struct.cdns_dsi_output* %104, i32 0, i32 2
  store %struct.mipi_dsi_device* %103, %struct.mipi_dsi_device** %105, align 8
  %106 = load %struct.drm_bridge*, %struct.drm_bridge** %9, align 8
  %107 = bitcast %struct.drm_bridge* %106 to %struct.drm_panel*
  %108 = load %struct.cdns_dsi_output*, %struct.cdns_dsi_output** %7, align 8
  %109 = getelementptr inbounds %struct.cdns_dsi_output, %struct.cdns_dsi_output* %108, i32 0, i32 1
  store %struct.drm_panel* %107, %struct.drm_panel** %109, align 8
  %110 = load %struct.drm_panel*, %struct.drm_panel** %10, align 8
  %111 = load %struct.cdns_dsi_output*, %struct.cdns_dsi_output** %7, align 8
  %112 = getelementptr inbounds %struct.cdns_dsi_output, %struct.cdns_dsi_output* %111, i32 0, i32 0
  store %struct.drm_panel* %110, %struct.drm_panel** %112, align 8
  %113 = load %struct.cdns_dsi_input*, %struct.cdns_dsi_input** %8, align 8
  %114 = getelementptr inbounds %struct.cdns_dsi_input, %struct.cdns_dsi_input* %113, i32 0, i32 0
  %115 = call i32 @drm_bridge_add(i32* %114)
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %102, %89, %33, %23
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.cdns_dsi* @to_cdns_dsi(%struct.mipi_dsi_host*) #1

declare dso_local %struct.device_node* @of_graph_get_remote_node(i32, i32, i32) #1

declare dso_local %struct.device_node* @of_node_get(i32) #1

declare dso_local %struct.drm_panel* @of_drm_find_panel(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(%struct.drm_panel*) #1

declare dso_local %struct.drm_panel* @drm_panel_bridge_add(%struct.drm_panel*, i32) #1

declare dso_local %struct.drm_panel* @of_drm_find_bridge(i32) #1

declare dso_local %struct.drm_panel* @ERR_PTR(i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_panel*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @drm_bridge_add(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
