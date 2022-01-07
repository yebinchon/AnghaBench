; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_helpers.c_dm_helpers_dp_mst_poll_for_allocation_change_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_helpers.c_dm_helpers_dp_mst_poll_for_allocation_change_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_context = type { i32 }
%struct.dc_stream_state = type { i64 }
%struct.amdgpu_dm_connector = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_dp_mst_topology_mgr }
%struct.drm_dp_mst_topology_mgr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_helpers_dp_mst_poll_for_allocation_change_trigger(%struct.dc_context* %0, %struct.dc_stream_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dc_context*, align 8
  %5 = alloca %struct.dc_stream_state*, align 8
  %6 = alloca %struct.amdgpu_dm_connector*, align 8
  %7 = alloca %struct.drm_dp_mst_topology_mgr*, align 8
  %8 = alloca i32, align 4
  store %struct.dc_context* %0, %struct.dc_context** %4, align 8
  store %struct.dc_stream_state* %1, %struct.dc_stream_state** %5, align 8
  %9 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %10 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.amdgpu_dm_connector*
  store %struct.amdgpu_dm_connector* %12, %struct.amdgpu_dm_connector** %6, align 8
  %13 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %6, align 8
  %14 = icmp ne %struct.amdgpu_dm_connector* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %6, align 8
  %17 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %38

21:                                               ; preds = %15
  %22 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %6, align 8
  %23 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store %struct.drm_dp_mst_topology_mgr* %25, %struct.drm_dp_mst_topology_mgr** %7, align 8
  %26 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %7, align 8
  %27 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %38

31:                                               ; preds = %21
  %32 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %7, align 8
  %33 = call i32 @drm_dp_check_act_status(%struct.drm_dp_mst_topology_mgr* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %38

37:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %36, %30, %20
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @drm_dp_check_act_status(%struct.drm_dp_mst_topology_mgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
