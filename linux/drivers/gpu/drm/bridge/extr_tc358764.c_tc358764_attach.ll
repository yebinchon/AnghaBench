; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358764.c_tc358764_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358764.c_tc358764_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.tc358764 = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_10__*)* }

@DRM_CONNECTOR_POLL_HPD = common dso_local global i32 0, align 4
@tc358764_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_LVDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to initialize connector\0A\00", align 1
@tc358764_connector_helper_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_bridge*)* @tc358764_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc358764_attach(%struct.drm_bridge* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_bridge*, align 8
  %4 = alloca %struct.tc358764*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %3, align 8
  %7 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %8 = call %struct.tc358764* @bridge_to_tc358764(%struct.drm_bridge* %7)
  store %struct.tc358764* %8, %struct.tc358764** %4, align 8
  %9 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %10 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %9, i32 0, i32 1
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %5, align 8
  %12 = load i32, i32* @DRM_CONNECTOR_POLL_HPD, align 4
  %13 = load %struct.tc358764*, %struct.tc358764** %4, align 8
  %14 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  store i32 %12, i32* %15, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = load %struct.tc358764*, %struct.tc358764** %4, align 8
  %18 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %17, i32 0, i32 0
  %19 = load i32, i32* @DRM_MODE_CONNECTOR_LVDS, align 4
  %20 = call i32 @drm_connector_init(%struct.drm_device* %16, %struct.TYPE_10__* %18, i32* @tc358764_connector_funcs, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %60

26:                                               ; preds = %1
  %27 = load %struct.tc358764*, %struct.tc358764** %4, align 8
  %28 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %27, i32 0, i32 0
  %29 = call i32 @drm_connector_helper_add(%struct.TYPE_10__* %28, i32* @tc358764_connector_helper_funcs)
  %30 = load %struct.tc358764*, %struct.tc358764** %4, align 8
  %31 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %30, i32 0, i32 0
  %32 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %33 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @drm_connector_attach_encoder(%struct.TYPE_10__* %31, i32 %34)
  %36 = load %struct.tc358764*, %struct.tc358764** %4, align 8
  %37 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.tc358764*, %struct.tc358764** %4, align 8
  %40 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %39, i32 0, i32 0
  %41 = call i32 @drm_panel_attach(i32 %38, %struct.TYPE_10__* %40)
  %42 = load %struct.tc358764*, %struct.tc358764** %4, align 8
  %43 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %46, align 8
  %48 = load %struct.tc358764*, %struct.tc358764** %4, align 8
  %49 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %48, i32 0, i32 0
  %50 = call i32 %47(%struct.TYPE_10__* %49)
  %51 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %52 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.tc358764*, %struct.tc358764** %4, align 8
  %55 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %54, i32 0, i32 0
  %56 = call i32 @drm_fb_helper_add_one_connector(i32 %53, %struct.TYPE_10__* %55)
  %57 = load %struct.tc358764*, %struct.tc358764** %4, align 8
  %58 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %57, i32 0, i32 0
  %59 = call i32 @drm_connector_register(%struct.TYPE_10__* %58)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %26, %23
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.tc358764* @bridge_to_tc358764(%struct.drm_bridge*) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_connector_helper_add(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @drm_panel_attach(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @drm_fb_helper_add_one_connector(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @drm_connector_register(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
