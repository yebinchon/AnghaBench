; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_pre_update_freesync_state_on_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_pre_update_freesync_state_on_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_display_manager = type { i32, %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.dm_crtc_state = type { i32, %struct.mod_vrr_params, %struct.TYPE_5__, i64, %struct.mod_freesync_config, %struct.dc_stream_state* }
%struct.mod_vrr_params = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.mod_freesync_config = type { i32, i64, i64 }
%struct.dc_stream_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@VRR_STATE_ACTIVE_VARIABLE = common dso_local global i32 0, align 4
@VRR_STATE_INACTIVE = common dso_local global i32 0, align 4
@VRR_STATE_UNSUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_display_manager*, %struct.dm_crtc_state*)* @pre_update_freesync_state_on_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pre_update_freesync_state_on_stream(%struct.amdgpu_display_manager* %0, %struct.dm_crtc_state* %1) #0 {
  %3 = alloca %struct.amdgpu_display_manager*, align 8
  %4 = alloca %struct.dm_crtc_state*, align 8
  %5 = alloca %struct.dc_stream_state*, align 8
  %6 = alloca %struct.mod_vrr_params, align 4
  %7 = alloca %struct.mod_freesync_config, align 8
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca i64, align 8
  store %struct.amdgpu_display_manager* %0, %struct.amdgpu_display_manager** %3, align 8
  store %struct.dm_crtc_state* %1, %struct.dm_crtc_state** %4, align 8
  %10 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %4, align 8
  %11 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %10, i32 0, i32 5
  %12 = load %struct.dc_stream_state*, %struct.dc_stream_state** %11, align 8
  store %struct.dc_stream_state* %12, %struct.dc_stream_state** %5, align 8
  %13 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %4, align 8
  %14 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %13, i32 0, i32 4
  %15 = bitcast %struct.mod_freesync_config* %7 to i8*
  %16 = bitcast %struct.mod_freesync_config* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 24, i1 false)
  %17 = load %struct.amdgpu_display_manager*, %struct.amdgpu_display_manager** %3, align 8
  %18 = getelementptr inbounds %struct.amdgpu_display_manager, %struct.amdgpu_display_manager* %17, i32 0, i32 1
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %18, align 8
  store %struct.amdgpu_device* %19, %struct.amdgpu_device** %8, align 8
  %20 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %21 = icmp ne %struct.dc_stream_state* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %102

23:                                               ; preds = %2
  %24 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %25 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %31 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29, %23
  br label %102

36:                                               ; preds = %29
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %4, align 8
  %44 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %43, i32 0, i32 1
  %45 = bitcast %struct.mod_vrr_params* %6 to i8*
  %46 = bitcast %struct.mod_vrr_params* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 4, i1 false)
  %47 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %4, align 8
  %48 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %36
  %52 = getelementptr inbounds %struct.mod_freesync_config, %struct.mod_freesync_config* %7, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.mod_freesync_config, %struct.mod_freesync_config* %7, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %55
  %60 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %4, align 8
  %61 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* @VRR_STATE_ACTIVE_VARIABLE, align 4
  br label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @VRR_STATE_INACTIVE, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  %71 = getelementptr inbounds %struct.mod_freesync_config, %struct.mod_freesync_config* %7, i32 0, i32 0
  store i32 %70, i32* %71, align 8
  br label %75

72:                                               ; preds = %55, %51, %36
  %73 = load i32, i32* @VRR_STATE_UNSUPPORTED, align 4
  %74 = getelementptr inbounds %struct.mod_freesync_config, %struct.mod_freesync_config* %7, i32 0, i32 0
  store i32 %73, i32* %74, align 8
  br label %75

75:                                               ; preds = %72, %69
  %76 = load %struct.amdgpu_display_manager*, %struct.amdgpu_display_manager** %3, align 8
  %77 = getelementptr inbounds %struct.amdgpu_display_manager, %struct.amdgpu_display_manager* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %80 = call i32 @mod_freesync_build_vrr_params(i32 %78, %struct.dc_stream_state* %79, %struct.mod_freesync_config* %7, %struct.mod_vrr_params* %6)
  %81 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %4, align 8
  %82 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %6, i32 0, i32 0
  %85 = call i64 @memcmp(i32* %83, i32* %84, i32 4)
  %86 = icmp ne i64 %85, 0
  %87 = zext i1 %86 to i32
  %88 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %4, align 8
  %89 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  %92 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %4, align 8
  %93 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %92, i32 0, i32 1
  %94 = bitcast %struct.mod_vrr_params* %93 to i8*
  %95 = bitcast %struct.mod_vrr_params* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %94, i8* align 4 %95, i64 4, i1 false)
  %96 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %97 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64, i64* %9, align 8
  %101 = call i32 @spin_unlock_irqrestore(i32* %99, i64 %100)
  br label %102

102:                                              ; preds = %75, %35, %22
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @mod_freesync_build_vrr_params(i32, %struct.dc_stream_state*, %struct.mod_freesync_config*, %struct.mod_vrr_params*) #2

declare dso_local i64 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
