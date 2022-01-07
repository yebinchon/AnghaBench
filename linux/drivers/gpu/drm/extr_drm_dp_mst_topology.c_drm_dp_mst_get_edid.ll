; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_mst_get_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_mst_get_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edid = type { i32 }
%struct.drm_connector = type { i32 }
%struct.drm_dp_mst_topology_mgr = type { i32 }
%struct.drm_dp_mst_port = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.edid* @drm_dp_mst_get_edid(%struct.drm_connector* %0, %struct.drm_dp_mst_topology_mgr* %1, %struct.drm_dp_mst_port* %2) #0 {
  %4 = alloca %struct.edid*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.drm_dp_mst_topology_mgr*, align 8
  %7 = alloca %struct.drm_dp_mst_port*, align 8
  %8 = alloca %struct.edid*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %5, align 8
  store %struct.drm_dp_mst_topology_mgr* %1, %struct.drm_dp_mst_topology_mgr** %6, align 8
  store %struct.drm_dp_mst_port* %2, %struct.drm_dp_mst_port** %7, align 8
  store %struct.edid* null, %struct.edid** %8, align 8
  %9 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %6, align 8
  %10 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %11 = call %struct.drm_dp_mst_port* @drm_dp_mst_topology_get_port_validated(%struct.drm_dp_mst_topology_mgr* %9, %struct.drm_dp_mst_port* %10)
  store %struct.drm_dp_mst_port* %11, %struct.drm_dp_mst_port** %7, align 8
  %12 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %13 = icmp ne %struct.drm_dp_mst_port* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.edid* null, %struct.edid** %4, align 8
  br label %39

15:                                               ; preds = %3
  %16 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %17 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %22 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = call %struct.edid* @drm_edid_duplicate(i64 %23)
  store %struct.edid* %24, %struct.edid** %8, align 8
  br label %31

25:                                               ; preds = %15
  %26 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %27 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %28 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call %struct.edid* @drm_get_edid(%struct.drm_connector* %26, i32* %29)
  store %struct.edid* %30, %struct.edid** %8, align 8
  br label %31

31:                                               ; preds = %25, %20
  %32 = load %struct.edid*, %struct.edid** %8, align 8
  %33 = call i32 @drm_detect_monitor_audio(%struct.edid* %32)
  %34 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %35 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %37 = call i32 @drm_dp_mst_topology_put_port(%struct.drm_dp_mst_port* %36)
  %38 = load %struct.edid*, %struct.edid** %8, align 8
  store %struct.edid* %38, %struct.edid** %4, align 8
  br label %39

39:                                               ; preds = %31, %14
  %40 = load %struct.edid*, %struct.edid** %4, align 8
  ret %struct.edid* %40
}

declare dso_local %struct.drm_dp_mst_port* @drm_dp_mst_topology_get_port_validated(%struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_port*) #1

declare dso_local %struct.edid* @drm_edid_duplicate(i64) #1

declare dso_local %struct.edid* @drm_get_edid(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_detect_monitor_audio(%struct.edid*) #1

declare dso_local i32 @drm_dp_mst_topology_put_port(%struct.drm_dp_mst_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
