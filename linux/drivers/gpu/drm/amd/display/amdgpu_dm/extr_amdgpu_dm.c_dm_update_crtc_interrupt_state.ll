; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_update_crtc_interrupt_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_update_crtc_interrupt_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.dm_crtc_state = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @dm_update_crtc_interrupt_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_update_crtc_interrupt_state(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.dm_crtc_state*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %6 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %7 = call %struct.dm_crtc_state* @to_dm_crtc_state(%struct.drm_crtc_state* %6)
  store %struct.dm_crtc_state* %7, %struct.dm_crtc_state** %5, align 8
  %8 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %5, align 8
  %9 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %5, align 8
  %11 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %10, i32 0, i32 1
  store i32 0, i32* %11, align 8
  %12 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %5, align 8
  %13 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %29

17:                                               ; preds = %2
  %18 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %19 = call i64 @count_crtc_active_planes(%struct.drm_crtc_state* %18)
  %20 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %5, align 8
  %21 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %5, align 8
  %23 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %5, align 8
  %28 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  br label %29

29:                                               ; preds = %17, %16
  ret void
}

declare dso_local %struct.dm_crtc_state* @to_dm_crtc_state(%struct.drm_crtc_state*) #1

declare dso_local i64 @count_crtc_active_planes(%struct.drm_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
