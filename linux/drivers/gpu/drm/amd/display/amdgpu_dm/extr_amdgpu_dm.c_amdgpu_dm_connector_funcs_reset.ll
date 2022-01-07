; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_connector_funcs_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_connector_funcs_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i64, i64 }
%struct.dm_connector_state = type { i32, %struct.TYPE_2__, i32, i64, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RMX_OFF = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_eDP = common dso_local global i64 0, align 8
@amdgpu_dm_abm_level = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_dm_connector_funcs_reset(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.dm_connector_state*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %4 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %5 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = call %struct.dm_connector_state* @to_dm_connector_state(i64 %6)
  store %struct.dm_connector_state* %7, %struct.dm_connector_state** %3, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %9 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %14 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @__drm_atomic_helper_connector_destroy_state(i64 %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.dm_connector_state*, %struct.dm_connector_state** %3, align 8
  %19 = call i32 @kfree(%struct.dm_connector_state* %18)
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.dm_connector_state* @kzalloc(i32 40, i32 %20)
  store %struct.dm_connector_state* %21, %struct.dm_connector_state** %3, align 8
  %22 = load %struct.dm_connector_state*, %struct.dm_connector_state** %3, align 8
  %23 = icmp ne %struct.dm_connector_state* %22, null
  br i1 %23, label %24, label %51

24:                                               ; preds = %17
  %25 = load i32, i32* @RMX_OFF, align 4
  %26 = load %struct.dm_connector_state*, %struct.dm_connector_state** %3, align 8
  %27 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = load %struct.dm_connector_state*, %struct.dm_connector_state** %3, align 8
  %29 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = load %struct.dm_connector_state*, %struct.dm_connector_state** %3, align 8
  %31 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %30, i32 0, i32 4
  store i64 0, i64* %31, align 8
  %32 = load %struct.dm_connector_state*, %struct.dm_connector_state** %3, align 8
  %33 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.dm_connector_state*, %struct.dm_connector_state** %3, align 8
  %35 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 8, i32* %36, align 4
  %37 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %38 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DRM_MODE_CONNECTOR_eDP, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %24
  %43 = load i32, i32* @amdgpu_dm_abm_level, align 4
  %44 = load %struct.dm_connector_state*, %struct.dm_connector_state** %3, align 8
  %45 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %42, %24
  %47 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %48 = load %struct.dm_connector_state*, %struct.dm_connector_state** %3, align 8
  %49 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %48, i32 0, i32 1
  %50 = call i32 @__drm_atomic_helper_connector_reset(%struct.drm_connector* %47, %struct.TYPE_2__* %49)
  br label %51

51:                                               ; preds = %46, %17
  ret void
}

declare dso_local %struct.dm_connector_state* @to_dm_connector_state(i64) #1

declare dso_local i32 @__drm_atomic_helper_connector_destroy_state(i64) #1

declare dso_local i32 @kfree(%struct.dm_connector_state*) #1

declare dso_local %struct.dm_connector_state* @kzalloc(i32, i32) #1

declare dso_local i32 @__drm_atomic_helper_connector_reset(%struct.drm_connector*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
