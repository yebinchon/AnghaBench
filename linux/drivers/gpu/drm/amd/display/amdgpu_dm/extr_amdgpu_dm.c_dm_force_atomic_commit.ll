; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_force_atomic_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_force_atomic_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.TYPE_4__*, %struct.drm_device* }
%struct.TYPE_4__ = type { i32 }
%struct.drm_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.drm_atomic_state = type { i32 }
%struct.amdgpu_crtc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.drm_plane* }
%struct.drm_plane = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.drm_plane_state = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Restoring old state failed with %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @dm_force_atomic_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_force_atomic_commit(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_atomic_state*, align 8
  %7 = alloca %struct.amdgpu_crtc*, align 8
  %8 = alloca %struct.drm_plane*, align 8
  %9 = alloca %struct.drm_connector_state*, align 8
  %10 = alloca %struct.drm_crtc_state*, align 8
  %11 = alloca %struct.drm_plane_state*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store i32 0, i32* %4, align 4
  %12 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %13 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %12, i32 0, i32 1
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %5, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = call %struct.drm_atomic_state* @drm_atomic_state_alloc(%struct.drm_device* %15)
  store %struct.drm_atomic_state* %16, %struct.drm_atomic_state** %6, align 8
  %17 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %18 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.amdgpu_crtc* @to_amdgpu_crtc(i32 %21)
  store %struct.amdgpu_crtc* %22, %struct.amdgpu_crtc** %7, align 8
  %23 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %24 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.drm_plane*, %struct.drm_plane** %25, align 8
  store %struct.drm_plane* %26, %struct.drm_plane** %8, align 8
  %27 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %28 = icmp ne %struct.drm_atomic_state* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %85

32:                                               ; preds = %1
  %33 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %34 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %38 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %40 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %41 = call %struct.drm_plane_state* @drm_atomic_get_connector_state(%struct.drm_atomic_state* %39, %struct.drm_connector* %40)
  %42 = bitcast %struct.drm_plane_state* %41 to %struct.drm_connector_state*
  store %struct.drm_connector_state* %42, %struct.drm_connector_state** %9, align 8
  %43 = load %struct.drm_connector_state*, %struct.drm_connector_state** %9, align 8
  %44 = bitcast %struct.drm_connector_state* %43 to %struct.drm_plane_state*
  %45 = call i32 @PTR_ERR_OR_ZERO(%struct.drm_plane_state* %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %32
  br label %79

49:                                               ; preds = %32
  %50 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %51 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %52 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %51, i32 0, i32 0
  %53 = call %struct.drm_plane_state* @drm_atomic_get_crtc_state(%struct.drm_atomic_state* %50, %struct.TYPE_6__* %52)
  %54 = bitcast %struct.drm_plane_state* %53 to %struct.drm_crtc_state*
  store %struct.drm_crtc_state* %54, %struct.drm_crtc_state** %10, align 8
  %55 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %10, align 8
  %56 = bitcast %struct.drm_crtc_state* %55 to %struct.drm_plane_state*
  %57 = call i32 @PTR_ERR_OR_ZERO(%struct.drm_plane_state* %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %79

61:                                               ; preds = %49
  %62 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %10, align 8
  %63 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %62, i32 0, i32 0
  store i32 1, i32* %63, align 4
  %64 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %65 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %66 = call %struct.drm_plane_state* @drm_atomic_get_plane_state(%struct.drm_atomic_state* %64, %struct.drm_plane* %65)
  store %struct.drm_plane_state* %66, %struct.drm_plane_state** %11, align 8
  %67 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %68 = call i32 @PTR_ERR_OR_ZERO(%struct.drm_plane_state* %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %79

72:                                               ; preds = %61
  %73 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %74 = call i32 @drm_atomic_commit(%struct.drm_atomic_state* %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %85

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %78, %71, %60, %48
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %83 = call i32 @drm_atomic_state_put(%struct.drm_atomic_state* %82)
  %84 = load i32, i32* %4, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %79, %77, %29
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.drm_atomic_state* @drm_atomic_state_alloc(%struct.drm_device*) #1

declare dso_local %struct.amdgpu_crtc* @to_amdgpu_crtc(i32) #1

declare dso_local %struct.drm_plane_state* @drm_atomic_get_connector_state(%struct.drm_atomic_state*, %struct.drm_connector*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.drm_plane_state*) #1

declare dso_local %struct.drm_plane_state* @drm_atomic_get_crtc_state(%struct.drm_atomic_state*, %struct.TYPE_6__*) #1

declare dso_local %struct.drm_plane_state* @drm_atomic_get_plane_state(%struct.drm_atomic_state*, %struct.drm_plane*) #1

declare dso_local i32 @drm_atomic_commit(%struct.drm_atomic_state*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @drm_atomic_state_put(%struct.drm_atomic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
