; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_queue_down_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_queue_down_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_mst_topology_mgr = type { i32, i32 }
%struct.drm_dp_sideband_msg_tx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_sideband_msg_tx*)* @drm_dp_queue_down_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_dp_queue_down_tx(%struct.drm_dp_mst_topology_mgr* %0, %struct.drm_dp_sideband_msg_tx* %1) #0 {
  %3 = alloca %struct.drm_dp_mst_topology_mgr*, align 8
  %4 = alloca %struct.drm_dp_sideband_msg_tx*, align 8
  store %struct.drm_dp_mst_topology_mgr* %0, %struct.drm_dp_mst_topology_mgr** %3, align 8
  store %struct.drm_dp_sideband_msg_tx* %1, %struct.drm_dp_sideband_msg_tx** %4, align 8
  %5 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %6 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %4, align 8
  %9 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %8, i32 0, i32 0
  %10 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %11 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %10, i32 0, i32 1
  %12 = call i32 @list_add_tail(i32* %9, i32* %11)
  %13 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %14 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %13, i32 0, i32 1
  %15 = call i64 @list_is_singular(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %19 = call i32 @process_single_down_tx_qlock(%struct.drm_dp_mst_topology_mgr* %18)
  br label %20

20:                                               ; preds = %17, %2
  %21 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %3, align 8
  %22 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @list_is_singular(i32*) #1

declare dso_local i32 @process_single_down_tx_qlock(%struct.drm_dp_mst_topology_mgr*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
