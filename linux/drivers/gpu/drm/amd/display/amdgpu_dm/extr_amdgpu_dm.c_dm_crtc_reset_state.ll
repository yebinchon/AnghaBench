; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_crtc_reset_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_crtc_reset_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_crtc* }
%struct.dm_crtc_state = type { %struct.TYPE_2__ }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @dm_crtc_reset_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_crtc_reset_state(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.dm_crtc_state*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %4 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %5 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %11 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = call i32 @dm_crtc_destroy_state(%struct.drm_crtc* %9, %struct.TYPE_2__* %12)
  br label %14

14:                                               ; preds = %8, %1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.dm_crtc_state* @kzalloc(i32 8, i32 %15)
  store %struct.dm_crtc_state* %16, %struct.dm_crtc_state** %3, align 8
  %17 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %3, align 8
  %18 = icmp ne %struct.dm_crtc_state* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %34

24:                                               ; preds = %14
  %25 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %3, align 8
  %26 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %25, i32 0, i32 0
  %27 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %28 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %27, i32 0, i32 0
  store %struct.TYPE_2__* %26, %struct.TYPE_2__** %28, align 8
  %29 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %30 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %31 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store %struct.drm_crtc* %29, %struct.drm_crtc** %33, align 8
  br label %34

34:                                               ; preds = %24, %23
  ret void
}

declare dso_local i32 @dm_crtc_destroy_state(%struct.drm_crtc*, %struct.TYPE_2__*) #1

declare dso_local %struct.dm_crtc_state* @kzalloc(i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
