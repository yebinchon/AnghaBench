; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_get_last_connected_port_to_mstb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_get_last_connected_port_to_mstb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_mst_port = type { %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch* }
%struct.drm_dp_mst_branch = type { %struct.drm_dp_mst_port* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_dp_mst_port* (%struct.drm_dp_mst_branch*)* @drm_dp_get_last_connected_port_to_mstb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_dp_mst_port* @drm_dp_get_last_connected_port_to_mstb(%struct.drm_dp_mst_branch* %0) #0 {
  %2 = alloca %struct.drm_dp_mst_port*, align 8
  %3 = alloca %struct.drm_dp_mst_branch*, align 8
  store %struct.drm_dp_mst_branch* %0, %struct.drm_dp_mst_branch** %3, align 8
  %4 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %3, align 8
  %5 = getelementptr inbounds %struct.drm_dp_mst_branch, %struct.drm_dp_mst_branch* %4, i32 0, i32 0
  %6 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %5, align 8
  %7 = icmp ne %struct.drm_dp_mst_port* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.drm_dp_mst_port* null, %struct.drm_dp_mst_port** %2, align 8
  br label %28

9:                                                ; preds = %1
  %10 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %3, align 8
  %11 = getelementptr inbounds %struct.drm_dp_mst_branch, %struct.drm_dp_mst_branch* %10, i32 0, i32 0
  %12 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %11, align 8
  %13 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %12, i32 0, i32 1
  %14 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %13, align 8
  %15 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %3, align 8
  %16 = icmp ne %struct.drm_dp_mst_branch* %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %9
  %18 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %3, align 8
  %19 = getelementptr inbounds %struct.drm_dp_mst_branch, %struct.drm_dp_mst_branch* %18, i32 0, i32 0
  %20 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %19, align 8
  store %struct.drm_dp_mst_port* %20, %struct.drm_dp_mst_port** %2, align 8
  br label %28

21:                                               ; preds = %9
  %22 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %3, align 8
  %23 = getelementptr inbounds %struct.drm_dp_mst_branch, %struct.drm_dp_mst_branch* %22, i32 0, i32 0
  %24 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %23, align 8
  %25 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %24, i32 0, i32 0
  %26 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %25, align 8
  %27 = call %struct.drm_dp_mst_port* @drm_dp_get_last_connected_port_to_mstb(%struct.drm_dp_mst_branch* %26)
  store %struct.drm_dp_mst_port* %27, %struct.drm_dp_mst_port** %2, align 8
  br label %28

28:                                               ; preds = %21, %17, %8
  %29 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %2, align 8
  ret %struct.drm_dp_mst_port* %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
