; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_connector_atomic_duplicate_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_connector_atomic_duplicate_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector_state = type { i32 }
%struct.drm_connector = type { i32 }
%struct.dm_connector_state = type { %struct.drm_connector_state, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_connector_state* @amdgpu_dm_connector_atomic_duplicate_state(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector_state*, align 8
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.dm_connector_state*, align 8
  %5 = alloca %struct.dm_connector_state*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %6 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %7 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.dm_connector_state* @to_dm_connector_state(i32 %8)
  store %struct.dm_connector_state* %9, %struct.dm_connector_state** %4, align 8
  %10 = load %struct.dm_connector_state*, %struct.dm_connector_state** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.dm_connector_state* @kmemdup(%struct.dm_connector_state* %10, i32 28, i32 %11)
  store %struct.dm_connector_state* %12, %struct.dm_connector_state** %5, align 8
  %13 = load %struct.dm_connector_state*, %struct.dm_connector_state** %5, align 8
  %14 = icmp ne %struct.dm_connector_state* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store %struct.drm_connector_state* null, %struct.drm_connector_state** %2, align 8
  br label %53

16:                                               ; preds = %1
  %17 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %18 = load %struct.dm_connector_state*, %struct.dm_connector_state** %5, align 8
  %19 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %18, i32 0, i32 0
  %20 = call i32 @__drm_atomic_helper_connector_duplicate_state(%struct.drm_connector* %17, %struct.drm_connector_state* %19)
  %21 = load %struct.dm_connector_state*, %struct.dm_connector_state** %4, align 8
  %22 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.dm_connector_state*, %struct.dm_connector_state** %5, align 8
  %25 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 4
  %26 = load %struct.dm_connector_state*, %struct.dm_connector_state** %4, align 8
  %27 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.dm_connector_state*, %struct.dm_connector_state** %5, align 8
  %30 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  %31 = load %struct.dm_connector_state*, %struct.dm_connector_state** %4, align 8
  %32 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dm_connector_state*, %struct.dm_connector_state** %5, align 8
  %35 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load %struct.dm_connector_state*, %struct.dm_connector_state** %4, align 8
  %37 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.dm_connector_state*, %struct.dm_connector_state** %5, align 8
  %40 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.dm_connector_state*, %struct.dm_connector_state** %4, align 8
  %42 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.dm_connector_state*, %struct.dm_connector_state** %5, align 8
  %45 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.dm_connector_state*, %struct.dm_connector_state** %4, align 8
  %47 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.dm_connector_state*, %struct.dm_connector_state** %5, align 8
  %50 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.dm_connector_state*, %struct.dm_connector_state** %5, align 8
  %52 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %51, i32 0, i32 0
  store %struct.drm_connector_state* %52, %struct.drm_connector_state** %2, align 8
  br label %53

53:                                               ; preds = %16, %15
  %54 = load %struct.drm_connector_state*, %struct.drm_connector_state** %2, align 8
  ret %struct.drm_connector_state* %54
}

declare dso_local %struct.dm_connector_state* @to_dm_connector_state(i32) #1

declare dso_local %struct.dm_connector_state* @kmemdup(%struct.dm_connector_state*, i32, i32) #1

declare dso_local i32 @__drm_atomic_helper_connector_duplicate_state(%struct.drm_connector*, %struct.drm_connector_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
