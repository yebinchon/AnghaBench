; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_helpers.c_dm_helpers_dp_mst_stop_top_mgr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_helpers.c_dm_helpers_dp_mst_stop_top_mgr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_context = type { i32 }
%struct.dc_link = type { %struct.amdgpu_dm_connector* }
%struct.amdgpu_dm_connector = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Failed to found connector for link!\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"DM_MST: stopping TM on aconnector: %p [id: %d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_helpers_dp_mst_stop_top_mgr(%struct.dc_context* %0, %struct.dc_link* %1) #0 {
  %3 = alloca %struct.dc_context*, align 8
  %4 = alloca %struct.dc_link*, align 8
  %5 = alloca %struct.amdgpu_dm_connector*, align 8
  store %struct.dc_context* %0, %struct.dc_context** %3, align 8
  store %struct.dc_link* %1, %struct.dc_link** %4, align 8
  %6 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %7 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %6, i32 0, i32 0
  %8 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %7, align 8
  store %struct.amdgpu_dm_connector* %8, %struct.amdgpu_dm_connector** %5, align 8
  %9 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %5, align 8
  %10 = icmp ne %struct.amdgpu_dm_connector* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %30

13:                                               ; preds = %2
  %14 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %5, align 8
  %15 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %5, align 8
  %16 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @DRM_INFO(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), %struct.amdgpu_dm_connector* %14, i32 %19)
  %21 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %5, align 8
  %22 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %30

26:                                               ; preds = %13
  %27 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %5, align 8
  %28 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %27, i32 0, i32 0
  %29 = call i32 @drm_dp_mst_topology_mgr_set_mst(%struct.TYPE_6__* %28, i32 0)
  br label %30

30:                                               ; preds = %11, %26, %13
  ret void
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @DRM_INFO(i8*, %struct.amdgpu_dm_connector*, i32) #1

declare dso_local i32 @drm_dp_mst_topology_mgr_set_mst(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
