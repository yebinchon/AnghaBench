; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_plane_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_plane_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.dc* }
%struct.dc = type { i32 }
%struct.drm_plane_state = type { i32 }
%struct.dm_plane_state = type { i32 }
%struct.dc_scaling_info = type { i32 }

@DC_OK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*)* @dm_plane_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_plane_atomic_check(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.dc*, align 8
  %8 = alloca %struct.dm_plane_state*, align 8
  %9 = alloca %struct.dc_scaling_info, align 4
  %10 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %11 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %12 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %14, align 8
  store %struct.amdgpu_device* %15, %struct.amdgpu_device** %6, align 8
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.dc*, %struct.dc** %18, align 8
  store %struct.dc* %19, %struct.dc** %7, align 8
  %20 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %21 = call %struct.dm_plane_state* @to_dm_plane_state(%struct.drm_plane_state* %20)
  store %struct.dm_plane_state* %21, %struct.dm_plane_state** %8, align 8
  %22 = load %struct.dm_plane_state*, %struct.dm_plane_state** %8, align 8
  %23 = getelementptr inbounds %struct.dm_plane_state, %struct.dm_plane_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

27:                                               ; preds = %2
  %28 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %29 = call i32 @fill_dc_scaling_info(%struct.drm_plane_state* %28, %struct.dc_scaling_info* %9)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %3, align 4
  br label %46

34:                                               ; preds = %27
  %35 = load %struct.dc*, %struct.dc** %7, align 8
  %36 = load %struct.dm_plane_state*, %struct.dm_plane_state** %8, align 8
  %37 = getelementptr inbounds %struct.dm_plane_state, %struct.dm_plane_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @dc_validate_plane(%struct.dc* %35, i32 %38)
  %40 = load i64, i64* @DC_OK, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %46

43:                                               ; preds = %34
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %43, %42, %32, %26
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.dm_plane_state* @to_dm_plane_state(%struct.drm_plane_state*) #1

declare dso_local i32 @fill_dc_scaling_info(%struct.drm_plane_state*, %struct.dc_scaling_info*) #1

declare dso_local i64 @dc_validate_plane(%struct.dc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
