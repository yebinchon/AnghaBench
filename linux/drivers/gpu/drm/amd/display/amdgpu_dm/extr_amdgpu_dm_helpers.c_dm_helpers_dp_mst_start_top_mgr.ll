; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_helpers.c_dm_helpers_dp_mst_start_top_mgr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_helpers.c_dm_helpers_dp_mst_start_top_mgr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_context = type { i32 }
%struct.dc_link = type { %struct.amdgpu_dm_connector* }
%struct.amdgpu_dm_connector = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Failed to found connector for link!\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"DM_MST: Differing MST start on aconnector: %p [id: %d]\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"DM_MST: starting TM on aconnector: %p [id: %d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_helpers_dp_mst_start_top_mgr(%struct.dc_context* %0, %struct.dc_link* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dc_context*, align 8
  %6 = alloca %struct.dc_link*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdgpu_dm_connector*, align 8
  store %struct.dc_context* %0, %struct.dc_context** %5, align 8
  store %struct.dc_link* %1, %struct.dc_link** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %10 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %9, i32 0, i32 0
  %11 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %10, align 8
  store %struct.amdgpu_dm_connector* %11, %struct.amdgpu_dm_connector** %8, align 8
  %12 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %8, align 8
  %13 = icmp ne %struct.amdgpu_dm_connector* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %40

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %8, align 8
  %21 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %8, align 8
  %22 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @DRM_INFO(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), %struct.amdgpu_dm_connector* %20, i32 %25)
  store i32 1, i32* %4, align 4
  br label %40

27:                                               ; preds = %16
  %28 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %8, align 8
  %29 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %8, align 8
  %30 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @DRM_INFO(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), %struct.amdgpu_dm_connector* %28, i32 %33)
  %35 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %8, align 8
  %36 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %35, i32 0, i32 0
  %37 = call i64 @drm_dp_mst_topology_mgr_set_mst(i32* %36, i32 1)
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %27, %19, %14
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @DRM_INFO(i8*, %struct.amdgpu_dm_connector*, i32) #1

declare dso_local i64 @drm_dp_mst_topology_mgr_set_mst(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
