; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_atomic_get_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_atomic_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_atomic_state = type { %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.amdgpu_display_manager }
%struct.amdgpu_display_manager = type { i32 }
%struct.dm_atomic_state = type { i32 }
%struct.drm_private_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_atomic_state*, %struct.dm_atomic_state**)* @dm_atomic_get_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_atomic_get_state(%struct.drm_atomic_state* %0, %struct.dm_atomic_state** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_atomic_state*, align 8
  %5 = alloca %struct.dm_atomic_state**, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca %struct.amdgpu_display_manager*, align 8
  %9 = alloca %struct.drm_private_state*, align 8
  store %struct.drm_atomic_state* %0, %struct.drm_atomic_state** %4, align 8
  store %struct.dm_atomic_state** %1, %struct.dm_atomic_state*** %5, align 8
  %10 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %11 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %6, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %14, align 8
  store %struct.amdgpu_device* %15, %struct.amdgpu_device** %7, align 8
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 0
  store %struct.amdgpu_display_manager* %17, %struct.amdgpu_display_manager** %8, align 8
  %18 = load %struct.dm_atomic_state**, %struct.dm_atomic_state*** %5, align 8
  %19 = load %struct.dm_atomic_state*, %struct.dm_atomic_state** %18, align 8
  %20 = icmp ne %struct.dm_atomic_state* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

22:                                               ; preds = %2
  %23 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %24 = load %struct.amdgpu_display_manager*, %struct.amdgpu_display_manager** %8, align 8
  %25 = getelementptr inbounds %struct.amdgpu_display_manager, %struct.amdgpu_display_manager* %24, i32 0, i32 0
  %26 = call %struct.drm_private_state* @drm_atomic_get_private_obj_state(%struct.drm_atomic_state* %23, i32* %25)
  store %struct.drm_private_state* %26, %struct.drm_private_state** %9, align 8
  %27 = load %struct.drm_private_state*, %struct.drm_private_state** %9, align 8
  %28 = call i64 @IS_ERR(%struct.drm_private_state* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load %struct.drm_private_state*, %struct.drm_private_state** %9, align 8
  %32 = call i32 @PTR_ERR(%struct.drm_private_state* %31)
  store i32 %32, i32* %3, align 4
  br label %37

33:                                               ; preds = %22
  %34 = load %struct.drm_private_state*, %struct.drm_private_state** %9, align 8
  %35 = call %struct.dm_atomic_state* @to_dm_atomic_state(%struct.drm_private_state* %34)
  %36 = load %struct.dm_atomic_state**, %struct.dm_atomic_state*** %5, align 8
  store %struct.dm_atomic_state* %35, %struct.dm_atomic_state** %36, align 8
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %30, %21
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.drm_private_state* @drm_atomic_get_private_obj_state(%struct.drm_atomic_state*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.drm_private_state*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_private_state*) #1

declare dso_local %struct.dm_atomic_state* @to_dm_atomic_state(%struct.drm_private_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
