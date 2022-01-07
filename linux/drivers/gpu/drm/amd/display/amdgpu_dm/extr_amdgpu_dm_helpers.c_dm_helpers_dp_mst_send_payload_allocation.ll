; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_helpers.c_dm_helpers_dp_mst_send_payload_allocation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_helpers.c_dm_helpers_dp_mst_send_payload_allocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_context = type { i32 }
%struct.dc_stream_state = type { i64 }
%struct.amdgpu_dm_connector = type { %struct.TYPE_2__*, %struct.drm_dp_mst_port* }
%struct.TYPE_2__ = type { %struct.drm_dp_mst_topology_mgr }
%struct.drm_dp_mst_topology_mgr = type { i32 }
%struct.drm_dp_mst_port = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_helpers_dp_mst_send_payload_allocation(%struct.dc_context* %0, %struct.dc_stream_state* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dc_context*, align 8
  %6 = alloca %struct.dc_stream_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdgpu_dm_connector*, align 8
  %9 = alloca %struct.drm_dp_mst_topology_mgr*, align 8
  %10 = alloca %struct.drm_dp_mst_port*, align 8
  %11 = alloca i32, align 4
  store %struct.dc_context* %0, %struct.dc_context** %5, align 8
  store %struct.dc_stream_state* %1, %struct.dc_stream_state** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %13 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.amdgpu_dm_connector*
  store %struct.amdgpu_dm_connector* %15, %struct.amdgpu_dm_connector** %8, align 8
  %16 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %8, align 8
  %17 = icmp ne %struct.amdgpu_dm_connector* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %8, align 8
  %20 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18, %3
  store i32 0, i32* %4, align 4
  br label %51

24:                                               ; preds = %18
  %25 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %8, align 8
  %26 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %25, i32 0, i32 1
  %27 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %26, align 8
  store %struct.drm_dp_mst_port* %27, %struct.drm_dp_mst_port** %10, align 8
  %28 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %8, align 8
  %29 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store %struct.drm_dp_mst_topology_mgr* %31, %struct.drm_dp_mst_topology_mgr** %9, align 8
  %32 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %9, align 8
  %33 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %51

37:                                               ; preds = %24
  %38 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %9, align 8
  %39 = call i32 @drm_dp_update_payload_part2(%struct.drm_dp_mst_topology_mgr* %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %51

43:                                               ; preds = %37
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %9, align 8
  %48 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %10, align 8
  %49 = call i32 @drm_dp_mst_deallocate_vcpi(%struct.drm_dp_mst_topology_mgr* %47, %struct.drm_dp_mst_port* %48)
  br label %50

50:                                               ; preds = %46, %43
  store i32 1, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %42, %36, %23
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @drm_dp_update_payload_part2(%struct.drm_dp_mst_topology_mgr*) #1

declare dso_local i32 @drm_dp_mst_deallocate_vcpi(%struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
