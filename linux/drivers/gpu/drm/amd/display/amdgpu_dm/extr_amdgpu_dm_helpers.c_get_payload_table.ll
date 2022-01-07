; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_helpers.c_get_payload_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_helpers.c_get_payload_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_dm_connector = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_dp_mst_topology_mgr }
%struct.drm_dp_mst_topology_mgr = type { i32, i32, %struct.TYPE_6__**, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.dp_mst_stream_allocation_table = type { i64, %struct.dp_mst_stream_allocation* }
%struct.dp_mst_stream_allocation = type { i64, i32 }

@DP_PAYLOAD_DELETE_LOCAL = common dso_local global i64 0, align 8
@DP_PAYLOAD_LOCAL = common dso_local global i64 0, align 8
@DP_PAYLOAD_REMOTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_dm_connector*, %struct.dp_mst_stream_allocation_table*)* @get_payload_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_payload_table(%struct.amdgpu_dm_connector* %0, %struct.dp_mst_stream_allocation_table* %1) #0 {
  %3 = alloca %struct.amdgpu_dm_connector*, align 8
  %4 = alloca %struct.dp_mst_stream_allocation_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_dp_mst_topology_mgr*, align 8
  %7 = alloca %struct.dp_mst_stream_allocation*, align 8
  store %struct.amdgpu_dm_connector* %0, %struct.amdgpu_dm_connector** %3, align 8
  store %struct.dp_mst_stream_allocation_table* %1, %struct.dp_mst_stream_allocation_table** %4, align 8
  %8 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %3, align 8
  %9 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.drm_dp_mst_topology_mgr* %11, %struct.drm_dp_mst_topology_mgr** %6, align 8
  %12 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %6, align 8
  %13 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.dp_mst_stream_allocation_table*, %struct.dp_mst_stream_allocation_table** %4, align 8
  %16 = getelementptr inbounds %struct.dp_mst_stream_allocation_table, %struct.dp_mst_stream_allocation_table* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %102, %2
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %6, align 8
  %20 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %105

23:                                               ; preds = %17
  %24 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %6, align 8
  %25 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %24, i32 0, i32 3
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %105

34:                                               ; preds = %23
  %35 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %6, align 8
  %36 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %35, i32 0, i32 3
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DP_PAYLOAD_DELETE_LOCAL, align 8
  %44 = icmp ne i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @ASSERT(i32 %45)
  %47 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %6, align 8
  %48 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %47, i32 0, i32 3
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @DP_PAYLOAD_LOCAL, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %68, label %57

57:                                               ; preds = %34
  %58 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %6, align 8
  %59 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %58, i32 0, i32 3
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @DP_PAYLOAD_REMOTE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %101

68:                                               ; preds = %57, %34
  %69 = load %struct.dp_mst_stream_allocation_table*, %struct.dp_mst_stream_allocation_table** %4, align 8
  %70 = getelementptr inbounds %struct.dp_mst_stream_allocation_table, %struct.dp_mst_stream_allocation_table* %69, i32 0, i32 1
  %71 = load %struct.dp_mst_stream_allocation*, %struct.dp_mst_stream_allocation** %70, align 8
  %72 = load %struct.dp_mst_stream_allocation_table*, %struct.dp_mst_stream_allocation_table** %4, align 8
  %73 = getelementptr inbounds %struct.dp_mst_stream_allocation_table, %struct.dp_mst_stream_allocation_table* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.dp_mst_stream_allocation, %struct.dp_mst_stream_allocation* %71, i64 %74
  store %struct.dp_mst_stream_allocation* %75, %struct.dp_mst_stream_allocation** %7, align 8
  %76 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %6, align 8
  %77 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %76, i32 0, i32 3
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.dp_mst_stream_allocation*, %struct.dp_mst_stream_allocation** %7, align 8
  %85 = getelementptr inbounds %struct.dp_mst_stream_allocation, %struct.dp_mst_stream_allocation* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %6, align 8
  %87 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %86, i32 0, i32 2
  %88 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %88, i64 %90
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.dp_mst_stream_allocation*, %struct.dp_mst_stream_allocation** %7, align 8
  %96 = getelementptr inbounds %struct.dp_mst_stream_allocation, %struct.dp_mst_stream_allocation* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  %97 = load %struct.dp_mst_stream_allocation_table*, %struct.dp_mst_stream_allocation_table** %4, align 8
  %98 = getelementptr inbounds %struct.dp_mst_stream_allocation_table, %struct.dp_mst_stream_allocation_table* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %98, align 8
  br label %101

101:                                              ; preds = %68, %57
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %5, align 4
  br label %17

105:                                              ; preds = %33, %17
  %106 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %6, align 8
  %107 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %106, i32 0, i32 1
  %108 = call i32 @mutex_unlock(i32* %107)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
