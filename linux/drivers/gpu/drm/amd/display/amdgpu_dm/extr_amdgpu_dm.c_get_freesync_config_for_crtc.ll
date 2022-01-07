; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_get_freesync_config_for_crtc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_get_freesync_config_for_crtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_crtc_state = type { i32, %struct.mod_freesync_config, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.mod_freesync_config = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.dm_connector_state = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.amdgpu_dm_connector = type { i32, i32 }

@VRR_STATE_ACTIVE_VARIABLE = common dso_local global i32 0, align 4
@VRR_STATE_INACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_crtc_state*, %struct.dm_connector_state*)* @get_freesync_config_for_crtc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_freesync_config_for_crtc(%struct.dm_crtc_state* %0, %struct.dm_connector_state* %1) #0 {
  %3 = alloca %struct.dm_crtc_state*, align 8
  %4 = alloca %struct.dm_connector_state*, align 8
  %5 = alloca %struct.mod_freesync_config, align 4
  %6 = alloca %struct.amdgpu_dm_connector*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca i32, align 4
  store %struct.dm_crtc_state* %0, %struct.dm_crtc_state** %3, align 8
  store %struct.dm_connector_state* %1, %struct.dm_connector_state** %4, align 8
  %9 = bitcast %struct.mod_freesync_config* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 24, i1 false)
  %10 = load %struct.dm_connector_state*, %struct.dm_connector_state** %4, align 8
  %11 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.amdgpu_dm_connector* @to_amdgpu_dm_connector(i32 %13)
  store %struct.amdgpu_dm_connector* %14, %struct.amdgpu_dm_connector** %6, align 8
  %15 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %3, align 8
  %16 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  store %struct.drm_display_mode* %17, %struct.drm_display_mode** %7, align 8
  %18 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %19 = call i32 @drm_mode_vrefresh(%struct.drm_display_mode* %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.dm_connector_state*, %struct.dm_connector_state** %4, align 8
  %21 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %6, align 8
  %27 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %25, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %6, align 8
  %33 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp sle i32 %31, %34
  br label %36

36:                                               ; preds = %30, %24, %2
  %37 = phi i1 [ false, %24 ], [ false, %2 ], [ %35, %30 ]
  %38 = zext i1 %37 to i32
  %39 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %3, align 8
  %40 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %3, align 8
  %42 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %74

45:                                               ; preds = %36
  %46 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %3, align 8
  %47 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %46, i32 0, i32 3
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 4
  %50 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %3, align 8
  %51 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i32, i32* @VRR_STATE_ACTIVE_VARIABLE, align 4
  br label %59

57:                                               ; preds = %45
  %58 = load i32, i32* @VRR_STATE_INACTIVE, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  %61 = getelementptr inbounds %struct.mod_freesync_config, %struct.mod_freesync_config* %5, i32 0, i32 4
  store i32 %60, i32* %61, align 4
  %62 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %6, align 8
  %63 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %64, 1000000
  %66 = getelementptr inbounds %struct.mod_freesync_config, %struct.mod_freesync_config* %5, i32 0, i32 0
  store i32 %65, i32* %66, align 4
  %67 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %6, align 8
  %68 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %69, 1000000
  %71 = getelementptr inbounds %struct.mod_freesync_config, %struct.mod_freesync_config* %5, i32 0, i32 1
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds %struct.mod_freesync_config, %struct.mod_freesync_config* %5, i32 0, i32 2
  store i32 1, i32* %72, align 4
  %73 = getelementptr inbounds %struct.mod_freesync_config, %struct.mod_freesync_config* %5, i32 0, i32 3
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %59, %36
  %75 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %3, align 8
  %76 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %75, i32 0, i32 1
  %77 = bitcast %struct.mod_freesync_config* %76 to i8*
  %78 = bitcast %struct.mod_freesync_config* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %77, i8* align 4 %78, i64 24, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.amdgpu_dm_connector* @to_amdgpu_dm_connector(i32) #2

declare dso_local i32 @drm_mode_vrefresh(%struct.drm_display_mode*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
