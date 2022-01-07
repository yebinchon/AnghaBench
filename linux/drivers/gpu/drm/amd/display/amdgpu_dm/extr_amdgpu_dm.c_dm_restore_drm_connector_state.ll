; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_restore_drm_connector_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_restore_drm_connector_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_connector = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.amdgpu_dm_connector = type { i64, i32 }
%struct.amdgpu_crtc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.dm_crtc_state = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_restore_drm_connector_state(%struct.drm_device* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.amdgpu_dm_connector*, align 8
  %6 = alloca %struct.amdgpu_crtc*, align 8
  %7 = alloca %struct.dm_crtc_state*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %4, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %9 = call %struct.amdgpu_dm_connector* @to_amdgpu_dm_connector(%struct.drm_connector* %8)
  store %struct.amdgpu_dm_connector* %9, %struct.amdgpu_dm_connector** %5, align 8
  %10 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %5, align 8
  %11 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %16 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %21 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %14, %2
  br label %60

25:                                               ; preds = %19
  %26 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %27 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.amdgpu_crtc* @to_amdgpu_crtc(i32 %30)
  store %struct.amdgpu_crtc* %31, %struct.amdgpu_crtc** %6, align 8
  %32 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %33 = icmp ne %struct.amdgpu_crtc* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  br label %60

35:                                               ; preds = %25
  %36 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %37 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.dm_crtc_state* @to_dm_crtc_state(i32 %39)
  store %struct.dm_crtc_state* %40, %struct.dm_crtc_state** %7, align 8
  %41 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %7, align 8
  %42 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = icmp ne %struct.TYPE_5__* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %35
  br label %60

46:                                               ; preds = %35
  %47 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %7, align 8
  %48 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %5, align 8
  %53 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %46
  %57 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %5, align 8
  %58 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %57, i32 0, i32 1
  %59 = call i32 @dm_force_atomic_commit(i32* %58)
  br label %60

60:                                               ; preds = %24, %34, %45, %56, %46
  ret void
}

declare dso_local %struct.amdgpu_dm_connector* @to_amdgpu_dm_connector(%struct.drm_connector*) #1

declare dso_local %struct.amdgpu_crtc* @to_amdgpu_crtc(i32) #1

declare dso_local %struct.dm_crtc_state* @to_dm_crtc_state(i32) #1

declare dso_local i32 @dm_force_atomic_commit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
