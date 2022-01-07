; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_dsi.c_mcde_dsi_bridge_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_dsi.c_mcde_dsi_bridge_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.mcde_dsi = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@mcde_dsi_connector_helper_funcs = common dso_local global i32 0, align 4
@DRIVER_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"we need atomic updates\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@mcde_dsi_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DSI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"failed to initialize DSI bridge connector\0A\00", align 1
@DRM_CONNECTOR_POLL_CONNECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to attach the DSI bridge\0A\00", align 1
@connector_status_connected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_bridge*)* @mcde_dsi_bridge_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcde_dsi_bridge_attach(%struct.drm_bridge* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_bridge*, align 8
  %4 = alloca %struct.mcde_dsi*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %3, align 8
  %7 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %8 = call %struct.mcde_dsi* @bridge_to_mcde_dsi(%struct.drm_bridge* %7)
  store %struct.mcde_dsi* %8, %struct.mcde_dsi** %4, align 8
  %9 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %10 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %9, i32 0, i32 1
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %5, align 8
  %12 = load %struct.mcde_dsi*, %struct.mcde_dsi** %4, align 8
  %13 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %12, i32 0, i32 0
  %14 = call i32 @drm_connector_helper_add(%struct.TYPE_4__* %13, i32* @mcde_dsi_connector_helper_funcs)
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = load i32, i32* @DRIVER_ATOMIC, align 4
  %17 = call i32 @drm_core_check_feature(%struct.drm_device* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %1
  %20 = load %struct.mcde_dsi*, %struct.mcde_dsi** %4, align 8
  %21 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %72

26:                                               ; preds = %1
  %27 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %28 = load %struct.mcde_dsi*, %struct.mcde_dsi** %4, align 8
  %29 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %28, i32 0, i32 0
  %30 = load i32, i32* @DRM_MODE_CONNECTOR_DSI, align 4
  %31 = call i32 @drm_connector_init(%struct.drm_device* %27, %struct.TYPE_4__* %29, i32* @mcde_dsi_connector_funcs, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load %struct.mcde_dsi*, %struct.mcde_dsi** %4, align 8
  %36 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %72

40:                                               ; preds = %26
  %41 = load i32, i32* @DRM_CONNECTOR_POLL_CONNECT, align 4
  %42 = load %struct.mcde_dsi*, %struct.mcde_dsi** %4, align 8
  %43 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load %struct.mcde_dsi*, %struct.mcde_dsi** %4, align 8
  %46 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %45, i32 0, i32 0
  %47 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %48 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @drm_connector_attach_encoder(%struct.TYPE_4__* %46, i32 %49)
  %51 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %52 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.mcde_dsi*, %struct.mcde_dsi** %4, align 8
  %55 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %58 = call i32 @drm_bridge_attach(i32 %53, i32 %56, %struct.drm_bridge* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %40
  %62 = load %struct.mcde_dsi*, %struct.mcde_dsi** %4, align 8
  %63 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %72

67:                                               ; preds = %40
  %68 = load i32, i32* @connector_status_connected, align 4
  %69 = load %struct.mcde_dsi*, %struct.mcde_dsi** %4, align 8
  %70 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %67, %61, %34, %19
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.mcde_dsi* @bridge_to_mcde_dsi(%struct.drm_bridge*) #1

declare dso_local i32 @drm_connector_helper_add(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @drm_bridge_attach(i32, i32, %struct.drm_bridge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
