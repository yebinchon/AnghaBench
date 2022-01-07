; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_helpers.c_dm_helpers_dp_mst_write_payload_allocation_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_helpers.c_dm_helpers_dp_mst_write_payload_allocation_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_context = type { i32 }
%struct.dc_stream_state = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.dp_mst_stream_allocation_table = type { i32 }
%struct.amdgpu_dm_connector = type { %struct.drm_dp_mst_port*, %struct.TYPE_3__* }
%struct.drm_dp_mst_port = type { i32 }
%struct.TYPE_3__ = type { %struct.drm_dp_mst_topology_mgr }
%struct.drm_dp_mst_topology_mgr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_helpers_dp_mst_write_payload_allocation_table(%struct.dc_context* %0, %struct.dc_stream_state* %1, %struct.dp_mst_stream_allocation_table* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dc_context*, align 8
  %7 = alloca %struct.dc_stream_state*, align 8
  %8 = alloca %struct.dp_mst_stream_allocation_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.amdgpu_dm_connector*, align 8
  %11 = alloca %struct.drm_dp_mst_topology_mgr*, align 8
  %12 = alloca %struct.drm_dp_mst_port*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.dc_context* %0, %struct.dc_context** %6, align 8
  store %struct.dc_stream_state* %1, %struct.dc_stream_state** %7, align 8
  store %struct.dp_mst_stream_allocation_table* %2, %struct.dp_mst_stream_allocation_table** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %18 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %19 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.amdgpu_dm_connector*
  store %struct.amdgpu_dm_connector* %21, %struct.amdgpu_dm_connector** %10, align 8
  %22 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %10, align 8
  %23 = icmp ne %struct.amdgpu_dm_connector* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %4
  %25 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %10, align 8
  %26 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = icmp ne %struct.TYPE_3__* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %4
  store i32 0, i32* %5, align 4
  br label %99

30:                                               ; preds = %24
  %31 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %10, align 8
  %32 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store %struct.drm_dp_mst_topology_mgr* %34, %struct.drm_dp_mst_topology_mgr** %11, align 8
  %35 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %11, align 8
  %36 = getelementptr inbounds %struct.drm_dp_mst_topology_mgr, %struct.drm_dp_mst_topology_mgr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %99

40:                                               ; preds = %30
  %41 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %10, align 8
  %42 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %41, i32 0, i32 0
  %43 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %42, align 8
  store %struct.drm_dp_mst_port* %43, %struct.drm_dp_mst_port** %12, align 8
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %85

46:                                               ; preds = %40
  %47 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %48 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sdiv i32 %50, 10
  store i32 %51, i32* %15, align 4
  %52 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %53 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %62 [
    i32 129, label %56
    i32 128, label %57
    i32 133, label %58
    i32 132, label %59
    i32 131, label %60
    i32 130, label %61
  ]

56:                                               ; preds = %46
  store i32 6, i32* %16, align 4
  br label %67

57:                                               ; preds = %46
  store i32 8, i32* %16, align 4
  br label %67

58:                                               ; preds = %46
  store i32 10, i32* %16, align 4
  br label %67

59:                                               ; preds = %46
  store i32 12, i32* %16, align 4
  br label %67

60:                                               ; preds = %46
  store i32 14, i32* %16, align 4
  br label %67

61:                                               ; preds = %46
  store i32 16, i32* %16, align 4
  br label %67

62:                                               ; preds = %46
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @ASSERT(i32 %65)
  br label %67

67:                                               ; preds = %62, %61, %60, %59, %58, %57, %56
  %68 = load i32, i32* %16, align 4
  %69 = mul nsw i32 %68, 3
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %16, align 4
  %72 = call i32 @drm_dp_calc_pbn_mode(i32 %70, i32 %71)
  store i32 %72, i32* %17, align 4
  %73 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %11, align 8
  %74 = load i32, i32* %17, align 4
  %75 = call i32 @drm_dp_find_vcpi_slots(%struct.drm_dp_mst_topology_mgr* %73, i32 %74)
  store i32 %75, i32* %13, align 4
  %76 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %11, align 8
  %77 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %12, align 8
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @drm_dp_mst_allocate_vcpi(%struct.drm_dp_mst_topology_mgr* %76, %struct.drm_dp_mst_port* %77, i32 %78, i32 %79)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %67
  store i32 0, i32* %5, align 4
  br label %99

84:                                               ; preds = %67
  br label %89

85:                                               ; preds = %40
  %86 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %11, align 8
  %87 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %12, align 8
  %88 = call i32 @drm_dp_mst_reset_vcpi_slots(%struct.drm_dp_mst_topology_mgr* %86, %struct.drm_dp_mst_port* %87)
  br label %89

89:                                               ; preds = %85, %84
  %90 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %11, align 8
  %91 = call i32 @drm_dp_update_payload_part1(%struct.drm_dp_mst_topology_mgr* %90)
  store i32 %91, i32* %14, align 4
  %92 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %10, align 8
  %93 = load %struct.dp_mst_stream_allocation_table*, %struct.dp_mst_stream_allocation_table** %8, align 8
  %94 = call i32 @get_payload_table(%struct.amdgpu_dm_connector* %92, %struct.dp_mst_stream_allocation_table* %93)
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  store i32 0, i32* %5, align 4
  br label %99

98:                                               ; preds = %89
  store i32 1, i32* %5, align 4
  br label %99

99:                                               ; preds = %98, %97, %83, %39, %29
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @drm_dp_calc_pbn_mode(i32, i32) #1

declare dso_local i32 @drm_dp_find_vcpi_slots(%struct.drm_dp_mst_topology_mgr*, i32) #1

declare dso_local i32 @drm_dp_mst_allocate_vcpi(%struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_port*, i32, i32) #1

declare dso_local i32 @drm_dp_mst_reset_vcpi_slots(%struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_port*) #1

declare dso_local i32 @drm_dp_update_payload_part1(%struct.drm_dp_mst_topology_mgr*) #1

declare dso_local i32 @get_payload_table(%struct.amdgpu_dm_connector*, %struct.dp_mst_stream_allocation_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
