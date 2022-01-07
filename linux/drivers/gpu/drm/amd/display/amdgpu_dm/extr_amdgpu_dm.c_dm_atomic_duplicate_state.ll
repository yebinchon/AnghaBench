; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_atomic_duplicate_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_atomic_duplicate_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_private_state = type { i32 }
%struct.drm_private_obj = type { i32 }
%struct.dm_atomic_state = type { %struct.drm_private_state, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_private_state* (%struct.drm_private_obj*)* @dm_atomic_duplicate_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_private_state* @dm_atomic_duplicate_state(%struct.drm_private_obj* %0) #0 {
  %2 = alloca %struct.drm_private_state*, align 8
  %3 = alloca %struct.drm_private_obj*, align 8
  %4 = alloca %struct.dm_atomic_state*, align 8
  %5 = alloca %struct.dm_atomic_state*, align 8
  store %struct.drm_private_obj* %0, %struct.drm_private_obj** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.dm_atomic_state* @kzalloc(i32 16, i32 %6)
  store %struct.dm_atomic_state* %7, %struct.dm_atomic_state** %5, align 8
  %8 = load %struct.dm_atomic_state*, %struct.dm_atomic_state** %5, align 8
  %9 = icmp ne %struct.dm_atomic_state* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.drm_private_state* null, %struct.drm_private_state** %2, align 8
  br label %45

11:                                               ; preds = %1
  %12 = load %struct.drm_private_obj*, %struct.drm_private_obj** %3, align 8
  %13 = load %struct.dm_atomic_state*, %struct.dm_atomic_state** %5, align 8
  %14 = getelementptr inbounds %struct.dm_atomic_state, %struct.dm_atomic_state* %13, i32 0, i32 0
  %15 = call i32 @__drm_atomic_helper_private_obj_duplicate_state(%struct.drm_private_obj* %12, %struct.drm_private_state* %14)
  %16 = load %struct.drm_private_obj*, %struct.drm_private_obj** %3, align 8
  %17 = getelementptr inbounds %struct.drm_private_obj, %struct.drm_private_obj* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.dm_atomic_state* @to_dm_atomic_state(i32 %18)
  store %struct.dm_atomic_state* %19, %struct.dm_atomic_state** %4, align 8
  %20 = load %struct.dm_atomic_state*, %struct.dm_atomic_state** %4, align 8
  %21 = icmp ne %struct.dm_atomic_state* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %11
  %23 = load %struct.dm_atomic_state*, %struct.dm_atomic_state** %4, align 8
  %24 = getelementptr inbounds %struct.dm_atomic_state, %struct.dm_atomic_state* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.dm_atomic_state*, %struct.dm_atomic_state** %4, align 8
  %29 = getelementptr inbounds %struct.dm_atomic_state, %struct.dm_atomic_state* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @dc_copy_state(i64 %30)
  %32 = load %struct.dm_atomic_state*, %struct.dm_atomic_state** %5, align 8
  %33 = getelementptr inbounds %struct.dm_atomic_state, %struct.dm_atomic_state* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %27, %22, %11
  %35 = load %struct.dm_atomic_state*, %struct.dm_atomic_state** %5, align 8
  %36 = getelementptr inbounds %struct.dm_atomic_state, %struct.dm_atomic_state* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load %struct.dm_atomic_state*, %struct.dm_atomic_state** %5, align 8
  %41 = call i32 @kfree(%struct.dm_atomic_state* %40)
  store %struct.drm_private_state* null, %struct.drm_private_state** %2, align 8
  br label %45

42:                                               ; preds = %34
  %43 = load %struct.dm_atomic_state*, %struct.dm_atomic_state** %5, align 8
  %44 = getelementptr inbounds %struct.dm_atomic_state, %struct.dm_atomic_state* %43, i32 0, i32 0
  store %struct.drm_private_state* %44, %struct.drm_private_state** %2, align 8
  br label %45

45:                                               ; preds = %42, %39, %10
  %46 = load %struct.drm_private_state*, %struct.drm_private_state** %2, align 8
  ret %struct.drm_private_state* %46
}

declare dso_local %struct.dm_atomic_state* @kzalloc(i32, i32) #1

declare dso_local i32 @__drm_atomic_helper_private_obj_duplicate_state(%struct.drm_private_obj*, %struct.drm_private_state*) #1

declare dso_local %struct.dm_atomic_state* @to_dm_atomic_state(i32) #1

declare dso_local i64 @dc_copy_state(i64) #1

declare dso_local i32 @kfree(%struct.dm_atomic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
