; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_mst_topology_mgr_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_mst_topology_mgr_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_mst_topology_mgr = type { i32, i32, i32, i32 }

@DP_MSTM_CTRL = common dso_local global i32 0, align 4
@DP_MST_EN = common dso_local global i32 0, align 4
@DP_UPSTREAM_IS_SRC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_dp_mst_topology_mgr_suspend(%struct.drm_dp_mst_topology_mgr* %0) #0 {
  %2 = alloca %struct.drm_dp_mst_topology_mgr*, align 8
  store %struct.drm_dp_mst_topology_mgr* %0, %struct.drm_dp_mst_topology_mgr** %2, align 8
  %3 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %2, align 8
  %4 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %3, i32 0, i32 2
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %2, align 8
  %7 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @DP_MSTM_CTRL, align 4
  %10 = load i32, i32* @DP_MST_EN, align 4
  %11 = load i32, i32* @DP_UPSTREAM_IS_SRC, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @drm_dp_dpcd_writeb(i32 %8, i32 %9, i32 %12)
  %14 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %2, align 8
  %15 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %14, i32 0, i32 2
  %16 = call i32 @mutex_unlock(i32* %15)
  %17 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %2, align 8
  %18 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %17, i32 0, i32 1
  %19 = call i32 @flush_work(i32* %18)
  %20 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %2, align 8
  %21 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %20, i32 0, i32 0
  %22 = call i32 @flush_work(i32* %21)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drm_dp_dpcd_writeb(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @flush_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
