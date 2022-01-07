; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_crtc.c_shmob_drm_connector_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_crtc.c_shmob_drm_connector_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shmob_drm_device = type { %struct.TYPE_12__, %struct.TYPE_13__*, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { %struct.drm_encoder*, %struct.drm_connector }
%struct.drm_connector = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.drm_encoder = type { i32 }

@connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_LVDS = common dso_local global i32 0, align 4
@connector_helper_funcs = common dso_local global i32 0, align 4
@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @shmob_drm_connector_create(%struct.shmob_drm_device* %0, %struct.drm_encoder* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.shmob_drm_device*, align 8
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca i32, align 4
  store %struct.shmob_drm_device* %0, %struct.shmob_drm_device** %4, align 8
  store %struct.drm_encoder* %1, %struct.drm_encoder** %5, align 8
  %8 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %4, align 8
  %9 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  store %struct.drm_connector* %10, %struct.drm_connector** %6, align 8
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %12 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %4, align 8
  %13 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  store %struct.drm_encoder* %11, %struct.drm_encoder** %14, align 8
  %15 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %4, align 8
  %16 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %15, i32 0, i32 2
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %22 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  %24 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %4, align 8
  %25 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %24, i32 0, i32 2
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %31 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %4, align 8
  %34 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %33, i32 0, i32 1
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  %36 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %37 = load i32, i32* @DRM_MODE_CONNECTOR_LVDS, align 4
  %38 = call i32 @drm_connector_init(%struct.TYPE_13__* %35, %struct.drm_connector* %36, i32* @connector_funcs, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %2
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %81

43:                                               ; preds = %2
  %44 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %45 = call i32 @drm_connector_helper_add(%struct.drm_connector* %44, i32* @connector_helper_funcs)
  %46 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %4, align 8
  %47 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %46, i32 0, i32 0
  %48 = call i32 @shmob_drm_backlight_init(%struct.TYPE_12__* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %77

52:                                               ; preds = %43
  %53 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %54 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %55 = call i32 @drm_connector_attach_encoder(%struct.drm_connector* %53, %struct.drm_encoder* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %73

59:                                               ; preds = %52
  %60 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %61 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  %62 = call i32 @drm_helper_connector_dpms(%struct.drm_connector* %60, i32 %61)
  %63 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %64 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %63, i32 0, i32 0
  %65 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %4, align 8
  %66 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %65, i32 0, i32 1
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  %72 = call i32 @drm_object_property_set_value(i32* %64, i32 %70, i32 %71)
  store i32 0, i32* %3, align 4
  br label %81

73:                                               ; preds = %58
  %74 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %4, align 8
  %75 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %74, i32 0, i32 0
  %76 = call i32 @shmob_drm_backlight_exit(%struct.TYPE_12__* %75)
  br label %77

77:                                               ; preds = %73, %51
  %78 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %79 = call i32 @drm_connector_cleanup(%struct.drm_connector* %78)
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %77, %59, %41
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @drm_connector_init(%struct.TYPE_13__*, %struct.drm_connector*, i32*, i32) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local i32 @shmob_drm_backlight_init(%struct.TYPE_12__*) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.drm_connector*, %struct.drm_encoder*) #1

declare dso_local i32 @drm_helper_connector_dpms(%struct.drm_connector*, i32) #1

declare dso_local i32 @drm_object_property_set_value(i32*, i32, i32) #1

declare dso_local i32 @shmob_drm_backlight_exit(%struct.TYPE_12__*) #1

declare dso_local i32 @drm_connector_cleanup(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
