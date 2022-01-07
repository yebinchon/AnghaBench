; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_atomic_destroy_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_atomic_destroy_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_private_obj = type { i32 }
%struct.drm_private_state = type { i32 }
%struct.dm_atomic_state = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_private_obj*, %struct.drm_private_state*)* @dm_atomic_destroy_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_atomic_destroy_state(%struct.drm_private_obj* %0, %struct.drm_private_state* %1) #0 {
  %3 = alloca %struct.drm_private_obj*, align 8
  %4 = alloca %struct.drm_private_state*, align 8
  %5 = alloca %struct.dm_atomic_state*, align 8
  store %struct.drm_private_obj* %0, %struct.drm_private_obj** %3, align 8
  store %struct.drm_private_state* %1, %struct.drm_private_state** %4, align 8
  %6 = load %struct.drm_private_state*, %struct.drm_private_state** %4, align 8
  %7 = call %struct.dm_atomic_state* @to_dm_atomic_state(%struct.drm_private_state* %6)
  store %struct.dm_atomic_state* %7, %struct.dm_atomic_state** %5, align 8
  %8 = load %struct.dm_atomic_state*, %struct.dm_atomic_state** %5, align 8
  %9 = icmp ne %struct.dm_atomic_state* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.dm_atomic_state*, %struct.dm_atomic_state** %5, align 8
  %12 = getelementptr inbounds %struct.dm_atomic_state, %struct.dm_atomic_state* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.dm_atomic_state*, %struct.dm_atomic_state** %5, align 8
  %17 = getelementptr inbounds %struct.dm_atomic_state, %struct.dm_atomic_state* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @dc_release_state(i64 %18)
  br label %20

20:                                               ; preds = %15, %10, %2
  %21 = load %struct.dm_atomic_state*, %struct.dm_atomic_state** %5, align 8
  %22 = call i32 @kfree(%struct.dm_atomic_state* %21)
  ret void
}

declare dso_local %struct.dm_atomic_state* @to_dm_atomic_state(%struct.drm_private_state*) #1

declare dso_local i32 @dc_release_state(i64) #1

declare dso_local i32 @kfree(%struct.dm_atomic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
