; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_conn.c_xen_drm_front_conn_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_conn.c_xen_drm_front_conn_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_drm_front_drm_info = type { i32 }
%struct.drm_connector = type { i32 }
%struct.xen_drm_front_drm_pipeline = type { i32 }

@connector_helper_funcs = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_CONNECT = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_DISCONNECT = common dso_local global i32 0, align 4
@connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_VIRTUAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_drm_front_conn_init(%struct.xen_drm_front_drm_info* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca %struct.xen_drm_front_drm_info*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.xen_drm_front_drm_pipeline*, align 8
  store %struct.xen_drm_front_drm_info* %0, %struct.xen_drm_front_drm_info** %3, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %4, align 8
  %6 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %7 = call %struct.xen_drm_front_drm_pipeline* @to_xen_drm_pipeline(%struct.drm_connector* %6)
  store %struct.xen_drm_front_drm_pipeline* %7, %struct.xen_drm_front_drm_pipeline** %5, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %9 = call i32 @drm_connector_helper_add(%struct.drm_connector* %8, i32* @connector_helper_funcs)
  %10 = load %struct.xen_drm_front_drm_pipeline*, %struct.xen_drm_front_drm_pipeline** %5, align 8
  %11 = getelementptr inbounds %struct.xen_drm_front_drm_pipeline, %struct.xen_drm_front_drm_pipeline* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load i32, i32* @DRM_CONNECTOR_POLL_CONNECT, align 4
  %13 = load i32, i32* @DRM_CONNECTOR_POLL_DISCONNECT, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %16 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.xen_drm_front_drm_info*, %struct.xen_drm_front_drm_info** %3, align 8
  %18 = getelementptr inbounds %struct.xen_drm_front_drm_info, %struct.xen_drm_front_drm_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %21 = load i32, i32* @DRM_MODE_CONNECTOR_VIRTUAL, align 4
  %22 = call i32 @drm_connector_init(i32 %19, %struct.drm_connector* %20, i32* @connector_funcs, i32 %21)
  ret i32 %22
}

declare dso_local %struct.xen_drm_front_drm_pipeline* @to_xen_drm_pipeline(%struct.drm_connector*) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_connector_init(i32, %struct.drm_connector*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
