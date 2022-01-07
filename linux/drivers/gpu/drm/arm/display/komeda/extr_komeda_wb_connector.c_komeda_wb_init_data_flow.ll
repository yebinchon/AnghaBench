; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_wb_connector.c_komeda_wb_init_data_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_wb_connector.c_komeda_wb_init_data_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_layer = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.drm_connector_state = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i32, i32 }
%struct.komeda_crtc_state = type { i32 }
%struct.komeda_data_flow_cfg = type { i32, i32, %struct.TYPE_7__, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32* }

@DRM_MODE_BLEND_PIXEL_NONE = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.komeda_layer*, %struct.drm_connector_state*, %struct.komeda_crtc_state*, %struct.komeda_data_flow_cfg*)* @komeda_wb_init_data_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @komeda_wb_init_data_flow(%struct.komeda_layer* %0, %struct.drm_connector_state* %1, %struct.komeda_crtc_state* %2, %struct.komeda_data_flow_cfg* %3) #0 {
  %5 = alloca %struct.komeda_layer*, align 8
  %6 = alloca %struct.drm_connector_state*, align 8
  %7 = alloca %struct.komeda_crtc_state*, align 8
  %8 = alloca %struct.komeda_data_flow_cfg*, align 8
  %9 = alloca %struct.drm_framebuffer*, align 8
  store %struct.komeda_layer* %0, %struct.komeda_layer** %5, align 8
  store %struct.drm_connector_state* %1, %struct.drm_connector_state** %6, align 8
  store %struct.komeda_crtc_state* %2, %struct.komeda_crtc_state** %7, align 8
  store %struct.komeda_data_flow_cfg* %3, %struct.komeda_data_flow_cfg** %8, align 8
  %10 = load %struct.drm_connector_state*, %struct.drm_connector_state** %6, align 8
  %11 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  store %struct.drm_framebuffer* %14, %struct.drm_framebuffer** %9, align 8
  %15 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %16 = call i32 @memset(%struct.komeda_data_flow_cfg* %15, i32 0, i32 32)
  %17 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %18 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %21 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 4
  %22 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %23 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %26 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 8
  %27 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %7, align 8
  %28 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %29 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %28, i32 0, i32 4
  %30 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %31 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %30, i32 0, i32 3
  %32 = call i32 @pipeline_composition_size(%struct.komeda_crtc_state* %27, i32* %29, i32* %31)
  %33 = load %struct.komeda_layer*, %struct.komeda_layer** %5, align 8
  %34 = getelementptr inbounds %struct.komeda_layer, %struct.komeda_layer* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %41 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i32* %39, i32** %42, align 8
  %43 = load i32, i32* @DRM_MODE_BLEND_PIXEL_NONE, align 4
  %44 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %45 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %47 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %48 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.komeda_layer*, %struct.komeda_layer** %5, align 8
  %50 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %51 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %52 = call i32 @komeda_complete_data_flow_cfg(%struct.komeda_layer* %49, %struct.komeda_data_flow_cfg* %50, %struct.drm_framebuffer* %51)
  ret i32 0
}

declare dso_local i32 @memset(%struct.komeda_data_flow_cfg*, i32, i32) #1

declare dso_local i32 @pipeline_composition_size(%struct.komeda_crtc_state*, i32*, i32*) #1

declare dso_local i32 @komeda_complete_data_flow_cfg(%struct.komeda_layer*, %struct.komeda_data_flow_cfg*, %struct.drm_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
