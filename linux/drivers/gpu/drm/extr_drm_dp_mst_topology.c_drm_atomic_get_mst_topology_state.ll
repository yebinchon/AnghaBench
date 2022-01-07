; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_atomic_get_mst_topology_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_atomic_get_mst_topology_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_mst_topology_state = type { i32 }
%struct.drm_atomic_state = type { i32 }
%struct.drm_dp_mst_topology_mgr = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_dp_mst_topology_state* @drm_atomic_get_mst_topology_state(%struct.drm_atomic_state* %0, %struct.drm_dp_mst_topology_mgr* %1) #0 {
  %3 = alloca %struct.drm_atomic_state*, align 8
  %4 = alloca %struct.drm_dp_mst_topology_mgr*, align 8
  %5 = alloca %struct.drm_device*, align 8
  store %struct.drm_atomic_state* %0, %struct.drm_atomic_state** %3, align 8
  store %struct.drm_dp_mst_topology_mgr* %1, %struct.drm_dp_mst_topology_mgr** %4, align 8
  %6 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %4, align 8
  %7 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %6, i32 0, i32 1
  %8 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  store %struct.drm_device* %8, %struct.drm_device** %5, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @drm_modeset_is_locked(i32* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %3, align 8
  %18 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %4, align 8
  %19 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %18, i32 0, i32 0
  %20 = call i32 @drm_atomic_get_private_obj_state(%struct.drm_atomic_state* %17, i32* %19)
  %21 = call %struct.drm_dp_mst_topology_state* @to_dp_mst_topology_state(i32 %20)
  ret %struct.drm_dp_mst_topology_state* %21
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @drm_modeset_is_locked(i32*) #1

declare dso_local %struct.drm_dp_mst_topology_state* @to_dp_mst_topology_state(i32) #1

declare dso_local i32 @drm_atomic_get_private_obj_state(%struct.drm_atomic_state*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
