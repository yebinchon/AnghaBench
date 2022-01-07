; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-mipi-dsi.c_dw_mipi_dsi_host_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-mipi-dsi.c_dw_mipi_dsi_host_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_host = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mipi_dsi_device = type { i64, i32, i32, i32 }
%struct.dw_mipi_dsi = type { i64, i32, %struct.drm_bridge*, i32, i32, i32, i32, %struct.dw_mipi_dsi_plat_data* }
%struct.drm_bridge = type { i32 }
%struct.dw_mipi_dsi_plat_data = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, %struct.mipi_dsi_device*)* }
%struct.drm_panel = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"the number of data lanes(%u) is too many\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_host*, %struct.mipi_dsi_device*)* @dw_mipi_dsi_host_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mipi_dsi_host_attach(%struct.mipi_dsi_host* %0, %struct.mipi_dsi_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mipi_dsi_host*, align 8
  %5 = alloca %struct.mipi_dsi_device*, align 8
  %6 = alloca %struct.dw_mipi_dsi*, align 8
  %7 = alloca %struct.dw_mipi_dsi_plat_data*, align 8
  %8 = alloca %struct.drm_bridge*, align 8
  %9 = alloca %struct.drm_panel*, align 8
  %10 = alloca i32, align 4
  store %struct.mipi_dsi_host* %0, %struct.mipi_dsi_host** %4, align 8
  store %struct.mipi_dsi_device* %1, %struct.mipi_dsi_device** %5, align 8
  %11 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %4, align 8
  %12 = call %struct.dw_mipi_dsi* @host_to_dsi(%struct.mipi_dsi_host* %11)
  store %struct.dw_mipi_dsi* %12, %struct.dw_mipi_dsi** %6, align 8
  %13 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %6, align 8
  %14 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %13, i32 0, i32 7
  %15 = load %struct.dw_mipi_dsi_plat_data*, %struct.dw_mipi_dsi_plat_data** %14, align 8
  store %struct.dw_mipi_dsi_plat_data* %15, %struct.dw_mipi_dsi_plat_data** %7, align 8
  %16 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %17 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %6, align 8
  %20 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %19, i32 0, i32 7
  %21 = load %struct.dw_mipi_dsi_plat_data*, %struct.dw_mipi_dsi_plat_data** %20, align 8
  %22 = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, %struct.dw_mipi_dsi_plat_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %18, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %2
  %26 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %6, align 8
  %27 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %30 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %115

35:                                               ; preds = %2
  %36 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %37 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %6, align 8
  %40 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %42 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %6, align 8
  %45 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 8
  %46 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %47 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %6, align 8
  %50 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %52 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %6, align 8
  %55 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  %56 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %4, align 8
  %57 = getelementptr inbounds %struct.mipi_dsi_host, %struct.mipi_dsi_host* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @drm_of_find_panel_or_bridge(i32 %60, i32 1, i32 0, %struct.drm_panel** %9, %struct.drm_bridge** %8)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %35
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %3, align 4
  br label %115

66:                                               ; preds = %35
  %67 = load %struct.drm_panel*, %struct.drm_panel** %9, align 8
  %68 = icmp ne %struct.drm_panel* %67, null
  br i1 %68, label %69, label %80

69:                                               ; preds = %66
  %70 = load %struct.drm_panel*, %struct.drm_panel** %9, align 8
  %71 = load i32, i32* @DRM_MODE_CONNECTOR_DSI, align 4
  %72 = call %struct.drm_bridge* @drm_panel_bridge_add(%struct.drm_panel* %70, i32 %71)
  store %struct.drm_bridge* %72, %struct.drm_bridge** %8, align 8
  %73 = load %struct.drm_bridge*, %struct.drm_bridge** %8, align 8
  %74 = call i64 @IS_ERR(%struct.drm_bridge* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load %struct.drm_bridge*, %struct.drm_bridge** %8, align 8
  %78 = call i32 @PTR_ERR(%struct.drm_bridge* %77)
  store i32 %78, i32* %3, align 4
  br label %115

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %79, %66
  %81 = load %struct.drm_bridge*, %struct.drm_bridge** %8, align 8
  %82 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %6, align 8
  %83 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %82, i32 0, i32 2
  store %struct.drm_bridge* %81, %struct.drm_bridge** %83, align 8
  %84 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %6, align 8
  %85 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %84, i32 0, i32 1
  %86 = call i32 @drm_bridge_add(i32* %85)
  %87 = load %struct.dw_mipi_dsi_plat_data*, %struct.dw_mipi_dsi_plat_data** %7, align 8
  %88 = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, %struct.dw_mipi_dsi_plat_data* %87, i32 0, i32 2
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = icmp ne %struct.TYPE_4__* %89, null
  br i1 %90, label %91, label %114

91:                                               ; preds = %80
  %92 = load %struct.dw_mipi_dsi_plat_data*, %struct.dw_mipi_dsi_plat_data** %7, align 8
  %93 = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, %struct.dw_mipi_dsi_plat_data* %92, i32 0, i32 2
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32 (i32, %struct.mipi_dsi_device*)*, i32 (i32, %struct.mipi_dsi_device*)** %95, align 8
  %97 = icmp ne i32 (i32, %struct.mipi_dsi_device*)* %96, null
  br i1 %97, label %98, label %114

98:                                               ; preds = %91
  %99 = load %struct.dw_mipi_dsi_plat_data*, %struct.dw_mipi_dsi_plat_data** %7, align 8
  %100 = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, %struct.dw_mipi_dsi_plat_data* %99, i32 0, i32 2
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32 (i32, %struct.mipi_dsi_device*)*, i32 (i32, %struct.mipi_dsi_device*)** %102, align 8
  %104 = load %struct.dw_mipi_dsi_plat_data*, %struct.dw_mipi_dsi_plat_data** %7, align 8
  %105 = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, %struct.dw_mipi_dsi_plat_data* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %108 = call i32 %103(i32 %106, %struct.mipi_dsi_device* %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %98
  %112 = load i32, i32* %10, align 4
  store i32 %112, i32* %3, align 4
  br label %115

113:                                              ; preds = %98
  br label %114

114:                                              ; preds = %113, %91, %80
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %114, %111, %76, %64, %25
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.dw_mipi_dsi* @host_to_dsi(%struct.mipi_dsi_host*) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @drm_of_find_panel_or_bridge(i32, i32, i32, %struct.drm_panel**, %struct.drm_bridge**) #1

declare dso_local %struct.drm_bridge* @drm_panel_bridge_add(%struct.drm_panel*, i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_bridge*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_bridge*) #1

declare dso_local i32 @drm_bridge_add(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
