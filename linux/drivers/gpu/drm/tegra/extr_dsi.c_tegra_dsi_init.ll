; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_client = type { i32, i32 }
%struct.drm_device = type { i32 }
%struct.tegra_dsi = type { %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__, %struct.TYPE_11__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@tegra_dsi_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DSI = common dso_local global i32 0, align 4
@tegra_dsi_connector_helper_funcs = common dso_local global i32 0, align 4
@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4
@tegra_dsi_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_DSI = common dso_local global i32 0, align 4
@tegra_dsi_encoder_helper_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to initialize output: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.host1x_client*)* @tegra_dsi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_dsi_init(%struct.host1x_client* %0) #0 {
  %2 = alloca %struct.host1x_client*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.tegra_dsi*, align 8
  %5 = alloca i32, align 4
  store %struct.host1x_client* %0, %struct.host1x_client** %2, align 8
  %6 = load %struct.host1x_client*, %struct.host1x_client** %2, align 8
  %7 = getelementptr inbounds %struct.host1x_client, %struct.host1x_client* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.drm_device* @dev_get_drvdata(i32 %8)
  store %struct.drm_device* %9, %struct.drm_device** %3, align 8
  %10 = load %struct.host1x_client*, %struct.host1x_client** %2, align 8
  %11 = call %struct.tegra_dsi* @host1x_client_to_dsi(%struct.host1x_client* %10)
  store %struct.tegra_dsi* %11, %struct.tegra_dsi** %4, align 8
  %12 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %13 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %76, label %16

16:                                               ; preds = %1
  %17 = load %struct.host1x_client*, %struct.host1x_client** %2, align 8
  %18 = getelementptr inbounds %struct.host1x_client, %struct.host1x_client* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %21 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 4
  %23 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %24 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %25 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i32, i32* @DRM_MODE_CONNECTOR_DSI, align 4
  %28 = call i32 @drm_connector_init(%struct.drm_device* %23, %struct.TYPE_11__* %26, i32* @tegra_dsi_connector_funcs, i32 %27)
  %29 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %30 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = call i32 @drm_connector_helper_add(%struct.TYPE_11__* %31, i32* @tegra_dsi_connector_helper_funcs)
  %33 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  %34 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %35 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 4
  %38 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %39 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %40 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* @DRM_MODE_ENCODER_DSI, align 4
  %43 = call i32 @drm_encoder_init(%struct.drm_device* %38, %struct.TYPE_10__* %41, i32* @tegra_dsi_encoder_funcs, i32 %42, i32* null)
  %44 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %45 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = call i32 @drm_encoder_helper_add(%struct.TYPE_10__* %46, i32* @tegra_dsi_encoder_helper_funcs)
  %48 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %49 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %52 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = call i32 @drm_connector_attach_encoder(%struct.TYPE_11__* %50, %struct.TYPE_10__* %53)
  %55 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %56 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = call i32 @drm_connector_register(%struct.TYPE_11__* %57)
  %59 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %60 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %61 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %60, i32 0, i32 0
  %62 = call i32 @tegra_output_init(%struct.drm_device* %59, %struct.TYPE_9__* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %16
  %66 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %67 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @dev_err(i32 %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %65, %16
  %72 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %73 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  store i32 3, i32* %75, align 4
  br label %76

76:                                               ; preds = %71, %1
  ret i32 0
}

declare dso_local %struct.drm_device* @dev_get_drvdata(i32) #1

declare dso_local %struct.tegra_dsi* @host1x_client_to_dsi(%struct.host1x_client*) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @drm_connector_helper_add(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.TYPE_10__*, i32*, i32, i32*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i32 @drm_connector_register(%struct.TYPE_11__*) #1

declare dso_local i32 @tegra_output_init(%struct.drm_device*, %struct.TYPE_9__*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
