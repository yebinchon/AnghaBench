; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_conn.c_connector_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_conn.c_connector_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_modeset_acquire_ctx = type { i32 }
%struct.xen_drm_front_drm_pipeline = type { i32 }

@connector_status_connected = common dso_local global i32 0, align 4
@connector_status_disconnected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_modeset_acquire_ctx*, i32)* @connector_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connector_detect(%struct.drm_connector* %0, %struct.drm_modeset_acquire_ctx* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_modeset_acquire_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xen_drm_front_drm_pipeline*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_modeset_acquire_ctx* %1, %struct.drm_modeset_acquire_ctx** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %9 = call %struct.xen_drm_front_drm_pipeline* @to_xen_drm_pipeline(%struct.drm_connector* %8)
  store %struct.xen_drm_front_drm_pipeline* %9, %struct.xen_drm_front_drm_pipeline** %7, align 8
  %10 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %11 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @drm_dev_is_unplugged(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.xen_drm_front_drm_pipeline*, %struct.xen_drm_front_drm_pipeline** %7, align 8
  %17 = getelementptr inbounds %struct.xen_drm_front_drm_pipeline, %struct.xen_drm_front_drm_pipeline* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %15, %3
  %19 = load %struct.xen_drm_front_drm_pipeline*, %struct.xen_drm_front_drm_pipeline** %7, align 8
  %20 = getelementptr inbounds %struct.xen_drm_front_drm_pipeline, %struct.xen_drm_front_drm_pipeline* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @connector_status_connected, align 4
  br label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @connector_status_disconnected, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  ret i32 %28
}

declare dso_local %struct.xen_drm_front_drm_pipeline* @to_xen_drm_pipeline(%struct.drm_connector*) #1

declare dso_local i64 @drm_dev_is_unplugged(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
