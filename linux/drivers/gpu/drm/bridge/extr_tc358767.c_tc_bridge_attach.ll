; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358767.c_tc_bridge_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358767.c_tc_bridge_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.tc_data = type { i64, %struct.TYPE_7__, %struct.TYPE_8__, i64, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@MEDIA_BUS_FMT_RGB888_1X24 = common dso_local global i32 0, align 4
@tc_connector_helper_funcs = common dso_local global i32 0, align 4
@tc_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_eDP = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DisplayPort = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_HPD = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_CONNECT = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_DISCONNECT = common dso_local global i32 0, align 4
@DRM_BUS_FLAG_DE_HIGH = common dso_local global i32 0, align 4
@DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE = common dso_local global i32 0, align 4
@DRM_BUS_FLAG_SYNC_DRIVE_NEGEDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_bridge*)* @tc_bridge_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_bridge_attach(%struct.drm_bridge* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_bridge*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tc_data*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %3, align 8
  %8 = load i32, i32* @MEDIA_BUS_FMT_RGB888_1X24, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %10 = call %struct.tc_data* @bridge_to_tc(%struct.drm_bridge* %9)
  store %struct.tc_data* %10, %struct.tc_data** %5, align 8
  %11 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %12 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %6, align 8
  %14 = load %struct.tc_data*, %struct.tc_data** %5, align 8
  %15 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %14, i32 0, i32 2
  %16 = call i32 @drm_connector_helper_add(%struct.TYPE_8__* %15, i32* @tc_connector_helper_funcs)
  %17 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %18 = load %struct.tc_data*, %struct.tc_data** %5, align 8
  %19 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %18, i32 0, i32 2
  %20 = load %struct.tc_data*, %struct.tc_data** %5, align 8
  %21 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @DRM_MODE_CONNECTOR_eDP, align 4
  br label %28

26:                                               ; preds = %1
  %27 = load i32, i32* @DRM_MODE_CONNECTOR_DisplayPort, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = call i32 @drm_connector_init(%struct.drm_device* %17, %struct.TYPE_8__* %19, i32* @tc_connector_funcs, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %2, align 4
  br label %91

35:                                               ; preds = %28
  %36 = load %struct.tc_data*, %struct.tc_data** %5, align 8
  %37 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %35
  %41 = load %struct.tc_data*, %struct.tc_data** %5, align 8
  %42 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i32, i32* @DRM_CONNECTOR_POLL_HPD, align 4
  %47 = load %struct.tc_data*, %struct.tc_data** %5, align 8
  %48 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  br label %57

50:                                               ; preds = %40
  %51 = load i32, i32* @DRM_CONNECTOR_POLL_CONNECT, align 4
  %52 = load i32, i32* @DRM_CONNECTOR_POLL_DISCONNECT, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.tc_data*, %struct.tc_data** %5, align 8
  %55 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 4
  br label %57

57:                                               ; preds = %50, %45
  br label %58

58:                                               ; preds = %57, %35
  %59 = load %struct.tc_data*, %struct.tc_data** %5, align 8
  %60 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load %struct.tc_data*, %struct.tc_data** %5, align 8
  %65 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.tc_data*, %struct.tc_data** %5, align 8
  %68 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %67, i32 0, i32 2
  %69 = call i32 @drm_panel_attach(i64 %66, %struct.TYPE_8__* %68)
  br label %70

70:                                               ; preds = %63, %58
  %71 = load %struct.tc_data*, %struct.tc_data** %5, align 8
  %72 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = call i32 @drm_display_info_set_bus_formats(%struct.TYPE_9__* %73, i32* %4, i32 1)
  %75 = load i32, i32* @DRM_BUS_FLAG_DE_HIGH, align 4
  %76 = load i32, i32* @DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @DRM_BUS_FLAG_SYNC_DRIVE_NEGEDGE, align 4
  %79 = or i32 %77, %78
  %80 = load %struct.tc_data*, %struct.tc_data** %5, align 8
  %81 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  store i32 %79, i32* %83, align 4
  %84 = load %struct.tc_data*, %struct.tc_data** %5, align 8
  %85 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %84, i32 0, i32 2
  %86 = load %struct.tc_data*, %struct.tc_data** %5, align 8
  %87 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @drm_connector_attach_encoder(%struct.TYPE_8__* %85, i32 %89)
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %70, %33
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.tc_data* @bridge_to_tc(%struct.drm_bridge*) #1

declare dso_local i32 @drm_connector_helper_add(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @drm_panel_attach(i64, %struct.TYPE_8__*) #1

declare dso_local i32 @drm_display_info_set_bus_formats(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
