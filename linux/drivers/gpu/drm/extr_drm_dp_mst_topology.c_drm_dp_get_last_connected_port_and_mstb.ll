; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_get_last_connected_port_and_mstb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_get_last_connected_port_and_mstb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_mst_topology_mgr = type { i32, i32 }
%struct.drm_dp_mst_branch = type { i32 }
%struct.drm_dp_mst_port = type { i32, %struct.drm_dp_mst_branch* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_dp_mst_branch* (%struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_branch*, i32*)* @drm_dp_get_last_connected_port_and_mstb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_dp_mst_branch* @drm_dp_get_last_connected_port_and_mstb(%struct.drm_dp_mst_topology_mgr* %0, %struct.drm_dp_mst_branch* %1, i32* %2) #0 {
  %4 = alloca %struct.drm_dp_mst_topology_mgr*, align 8
  %5 = alloca %struct.drm_dp_mst_branch*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.drm_dp_mst_branch*, align 8
  %8 = alloca %struct.drm_dp_mst_port*, align 8
  store %struct.drm_dp_mst_topology_mgr* %0, %struct.drm_dp_mst_topology_mgr** %4, align 8
  store %struct.drm_dp_mst_branch* %1, %struct.drm_dp_mst_branch** %5, align 8
  store i32* %2, i32** %6, align 8
  store %struct.drm_dp_mst_branch* null, %struct.drm_dp_mst_branch** %7, align 8
  %9 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %4, align 8
  %10 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %4, align 8
  %13 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %48

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %43, %17
  %19 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %5, align 8
  %20 = call %struct.drm_dp_mst_port* @drm_dp_get_last_connected_port_to_mstb(%struct.drm_dp_mst_branch* %19)
  store %struct.drm_dp_mst_port* %20, %struct.drm_dp_mst_port** %8, align 8
  %21 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %8, align 8
  %22 = icmp ne %struct.drm_dp_mst_port* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %47

24:                                               ; preds = %18
  %25 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %8, align 8
  %26 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %25, i32 0, i32 1
  %27 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %26, align 8
  %28 = call i64 @drm_dp_mst_topology_try_get_mstb(%struct.drm_dp_mst_branch* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %8, align 8
  %32 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %31, i32 0, i32 1
  %33 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %32, align 8
  store %struct.drm_dp_mst_branch* %33, %struct.drm_dp_mst_branch** %7, align 8
  %34 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %8, align 8
  %35 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32*, i32** %6, align 8
  store i32 %36, i32* %37, align 4
  br label %42

38:                                               ; preds = %24
  %39 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %8, align 8
  %40 = getelementptr inbounds %struct.drm_dp_mst_port, %struct.drm_dp_mst_port* %39, i32 0, i32 1
  %41 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %40, align 8
  store %struct.drm_dp_mst_branch* %41, %struct.drm_dp_mst_branch** %5, align 8
  br label %42

42:                                               ; preds = %38, %30
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %7, align 8
  %45 = icmp ne %struct.drm_dp_mst_branch* %44, null
  %46 = xor i1 %45, true
  br i1 %46, label %18, label %47

47:                                               ; preds = %43, %23
  br label %48

48:                                               ; preds = %47, %16
  %49 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %4, align 8
  %50 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load %struct.drm_dp_mst_branch*, %struct.drm_dp_mst_branch** %7, align 8
  ret %struct.drm_dp_mst_branch* %52
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.drm_dp_mst_port* @drm_dp_get_last_connected_port_to_mstb(%struct.drm_dp_mst_branch*) #1

declare dso_local i64 @drm_dp_mst_topology_try_get_mstb(%struct.drm_dp_mst_branch*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
