; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_create_connector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_create_connector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { i32, i32 }
%struct.exynos_dsi = type { i32, %struct.drm_connector }
%struct.drm_connector = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.drm_connector*)* }

@DRM_CONNECTOR_POLL_HPD = common dso_local global i32 0, align 4
@exynos_dsi_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to initialize connector with drm\0A\00", align 1
@connector_status_disconnected = common dso_local global i32 0, align 4
@exynos_dsi_connector_helper_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*)* @exynos_dsi_create_connector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_dsi_create_connector(%struct.drm_encoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.exynos_dsi*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  %8 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %9 = call %struct.exynos_dsi* @encoder_to_dsi(%struct.drm_encoder* %8)
  store %struct.exynos_dsi* %9, %struct.exynos_dsi** %4, align 8
  %10 = load %struct.exynos_dsi*, %struct.exynos_dsi** %4, align 8
  %11 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %10, i32 0, i32 1
  store %struct.drm_connector* %11, %struct.drm_connector** %5, align 8
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %13 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %6, align 8
  %15 = load i32, i32* @DRM_CONNECTOR_POLL_HPD, align 4
  %16 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %17 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %19 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %20 = load i32, i32* @DRM_MODE_CONNECTOR_DSI, align 4
  %21 = call i32 @drm_connector_init(%struct.drm_device* %18, %struct.drm_connector* %19, i32* @exynos_dsi_connector_funcs, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.exynos_dsi*, %struct.exynos_dsi** %4, align 8
  %26 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @DRM_DEV_ERROR(i32 %27, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %2, align 4
  br label %59

30:                                               ; preds = %1
  %31 = load i32, i32* @connector_status_disconnected, align 4
  %32 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %33 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %35 = call i32 @drm_connector_helper_add(%struct.drm_connector* %34, i32* @exynos_dsi_connector_helper_funcs)
  %36 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %37 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %38 = call i32 @drm_connector_attach_encoder(%struct.drm_connector* %36, %struct.drm_encoder* %37)
  %39 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %40 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %59

44:                                               ; preds = %30
  %45 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %46 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32 (%struct.drm_connector*)*, i32 (%struct.drm_connector*)** %48, align 8
  %50 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %51 = call i32 %49(%struct.drm_connector* %50)
  %52 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %53 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %56 = call i32 @drm_fb_helper_add_one_connector(i32 %54, %struct.drm_connector* %55)
  %57 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %58 = call i32 @drm_connector_register(%struct.drm_connector* %57)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %44, %43, %24
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.exynos_dsi* @encoder_to_dsi(%struct.drm_encoder*) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.drm_connector*, i32*, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.drm_connector*, %struct.drm_encoder*) #1

declare dso_local i32 @drm_fb_helper_add_one_connector(i32, %struct.drm_connector*) #1

declare dso_local i32 @drm_connector_register(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
