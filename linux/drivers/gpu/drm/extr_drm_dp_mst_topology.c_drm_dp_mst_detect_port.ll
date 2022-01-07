; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_mst_detect_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_mst_detect_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_dp_mst_topology_mgr = type { i32 }
%struct.drm_dp_mst_port = type { i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@connector_status_disconnected = common dso_local global i32 0, align 4
@connector_status_connected = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_dp_mst_detect_port(%struct.drm_connector* %0, %struct.drm_dp_mst_topology_mgr* %1, %struct.drm_dp_mst_port* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.drm_dp_mst_topology_mgr*, align 8
  %7 = alloca %struct.drm_dp_mst_port*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %5, align 8
  store %struct.drm_dp_mst_topology_mgr* %1, %struct.drm_dp_mst_topology_mgr** %6, align 8
  store %struct.drm_dp_mst_port* %2, %struct.drm_dp_mst_port** %7, align 8
  %9 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %9, i32* %8, align 4
  %10 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %6, align 8
  %11 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %12 = call %struct.drm_dp_mst_port* @drm_dp_mst_topology_get_port_validated(%struct.drm_dp_mst_topology_mgr* %10, %struct.drm_dp_mst_port* %11)
  store %struct.drm_dp_mst_port* %12, %struct.drm_dp_mst_port** %7, align 8
  %13 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %14 = icmp ne %struct.drm_dp_mst_port* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %16, i32* %4, align 4
  br label %61

17:                                               ; preds = %3
  %18 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %19 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %57

23:                                               ; preds = %17
  %24 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %25 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %56 [
    i32 129, label %27
    i32 130, label %27
    i32 128, label %28
    i32 131, label %48
  ]

27:                                               ; preds = %23, %23
  br label %56

28:                                               ; preds = %23
  %29 = load i32, i32* @connector_status_connected, align 4
  store i32 %29, i32* %8, align 4
  %30 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %31 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp sge i32 %32, 8
  br i1 %33, label %34, label %47

34:                                               ; preds = %28
  %35 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %36 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %34
  %40 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %41 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %42 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @drm_get_edid(%struct.drm_connector* %40, i32* %43)
  %45 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %46 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %39, %34, %28
  br label %56

48:                                               ; preds = %23
  %49 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %50 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @connector_status_connected, align 4
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %53, %48
  br label %56

56:                                               ; preds = %23, %55, %47, %27
  br label %57

57:                                               ; preds = %56, %22
  %58 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %7, align 8
  %59 = call i32 @drm_dp_mst_topology_put_port(%struct.drm_dp_mst_port* %58)
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %57, %15
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.drm_dp_mst_port* @drm_dp_mst_topology_get_port_validated(%struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_port*) #1

declare dso_local i32 @drm_get_edid(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_dp_mst_topology_put_port(%struct.drm_dp_mst_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
