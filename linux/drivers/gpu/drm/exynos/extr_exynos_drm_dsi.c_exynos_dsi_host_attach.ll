; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_host_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_host_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_host = type { i32 }
%struct.mipi_dsi_device = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.exynos_dsi = type { i32, i32, i32, %struct.TYPE_8__, i32*, i32, %struct.drm_bridge*, %struct.drm_encoder }
%struct.TYPE_8__ = type { i32 }
%struct.drm_bridge = type { i32 }
%struct.drm_encoder = type { i32*, %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"failed to create connector ret = %d\0A\00", align 1
@connector_status_connected = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO = common dso_local global i32 0, align 4
@EXYNOS_DISPLAY_TYPE_LCD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_host*, %struct.mipi_dsi_device*)* @exynos_dsi_host_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_dsi_host_attach(%struct.mipi_dsi_host* %0, %struct.mipi_dsi_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mipi_dsi_host*, align 8
  %5 = alloca %struct.mipi_dsi_device*, align 8
  %6 = alloca %struct.exynos_dsi*, align 8
  %7 = alloca %struct.drm_encoder*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.drm_bridge*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mipi_dsi_host* %0, %struct.mipi_dsi_host** %4, align 8
  store %struct.mipi_dsi_device* %1, %struct.mipi_dsi_device** %5, align 8
  %12 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %4, align 8
  %13 = call %struct.exynos_dsi* @host_to_dsi(%struct.mipi_dsi_host* %12)
  store %struct.exynos_dsi* %13, %struct.exynos_dsi** %6, align 8
  %14 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %15 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %14, i32 0, i32 7
  store %struct.drm_encoder* %15, %struct.drm_encoder** %7, align 8
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %17 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %16, i32 0, i32 1
  %18 = load %struct.drm_device*, %struct.drm_device** %17, align 8
  store %struct.drm_device* %18, %struct.drm_device** %8, align 8
  %19 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %20 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.drm_bridge* @of_drm_find_bridge(i32 %22)
  store %struct.drm_bridge* %23, %struct.drm_bridge** %9, align 8
  %24 = load %struct.drm_bridge*, %struct.drm_bridge** %9, align 8
  %25 = icmp ne %struct.drm_bridge* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %28 = load %struct.drm_bridge*, %struct.drm_bridge** %9, align 8
  %29 = call i32 @drm_bridge_attach(%struct.drm_encoder* %27, %struct.drm_bridge* %28, i32* null)
  %30 = load %struct.drm_bridge*, %struct.drm_bridge** %9, align 8
  %31 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %32 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %31, i32 0, i32 6
  store %struct.drm_bridge* %30, %struct.drm_bridge** %32, align 8
  %33 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %34 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  br label %77

35:                                               ; preds = %2
  %36 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %37 = call i32 @exynos_dsi_create_connector(%struct.drm_encoder* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %42 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @DRM_DEV_ERROR(i32 %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %47 = call i32 @drm_encoder_cleanup(%struct.drm_encoder* %46)
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %3, align 4
  br label %139

49:                                               ; preds = %35
  %50 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %51 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32* @of_drm_find_panel(i32 %53)
  %55 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %56 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %55, i32 0, i32 4
  store i32* %54, i32** %56, align 8
  %57 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %58 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = call i64 @IS_ERR(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %49
  %63 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %64 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %63, i32 0, i32 4
  store i32* null, i32** %64, align 8
  br label %76

65:                                               ; preds = %49
  %66 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %67 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %66, i32 0, i32 4
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %70 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %69, i32 0, i32 3
  %71 = call i32 @drm_panel_attach(i32* %68, %struct.TYPE_8__* %70)
  %72 = load i32, i32* @connector_status_connected, align 4
  %73 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %74 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 4
  br label %76

76:                                               ; preds = %65, %62
  br label %77

77:                                               ; preds = %76, %26
  %78 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %79 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @MIPI_DSI_MODE_VIDEO, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %77
  %85 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %86 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %87 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %86, i32 0, i32 3
  %88 = call i32 @exynos_dsi_register_te_irq(%struct.exynos_dsi* %85, %struct.TYPE_6__* %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %3, align 4
  br label %139

93:                                               ; preds = %84
  br label %94

94:                                               ; preds = %93, %77
  %95 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %96 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = call i32 @mutex_lock(i32* %97)
  %99 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %100 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %103 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %105 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %108 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %110 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %113 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %115 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @MIPI_DSI_MODE_VIDEO, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  %122 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %123 = load i32, i32* @EXYNOS_DISPLAY_TYPE_LCD, align 4
  %124 = call %struct.TYPE_7__* @exynos_drm_crtc_get_by_type(%struct.drm_device* %122, i32 %123)
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  store i32 %121, i32* %125, align 4
  %126 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %127 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = call i32 @mutex_unlock(i32* %128)
  %130 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %131 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %94
  %136 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %137 = call i32 @drm_kms_helper_hotplug_event(%struct.drm_device* %136)
  br label %138

138:                                              ; preds = %135, %94
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %138, %91, %40
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local %struct.exynos_dsi* @host_to_dsi(%struct.mipi_dsi_host*) #1

declare dso_local %struct.drm_bridge* @of_drm_find_bridge(i32) #1

declare dso_local i32 @drm_bridge_attach(%struct.drm_encoder*, %struct.drm_bridge*, i32*) #1

declare dso_local i32 @exynos_dsi_create_connector(%struct.drm_encoder*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @drm_encoder_cleanup(%struct.drm_encoder*) #1

declare dso_local i32* @of_drm_find_panel(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @drm_panel_attach(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @exynos_dsi_register_te_irq(%struct.exynos_dsi*, %struct.TYPE_6__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_7__* @exynos_drm_crtc_get_by_type(%struct.drm_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drm_kms_helper_hotplug_event(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
