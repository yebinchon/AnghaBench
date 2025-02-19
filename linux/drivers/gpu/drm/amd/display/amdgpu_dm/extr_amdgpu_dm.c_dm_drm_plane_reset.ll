; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_drm_plane_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_drm_plane_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.drm_plane*, i64)* }
%struct.dm_plane_state = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*)* @dm_drm_plane_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_drm_plane_reset(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane*, align 8
  %3 = alloca %struct.dm_plane_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %2, align 8
  store %struct.dm_plane_state* null, %struct.dm_plane_state** %3, align 8
  %4 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %5 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %10 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.drm_plane*, i64)*, i32 (%struct.drm_plane*, i64)** %12, align 8
  %14 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %15 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %16 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 %13(%struct.drm_plane* %14, i64 %17)
  br label %19

19:                                               ; preds = %8, %1
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.dm_plane_state* @kzalloc(i32 4, i32 %20)
  store %struct.dm_plane_state* %21, %struct.dm_plane_state** %3, align 8
  %22 = load %struct.dm_plane_state*, %struct.dm_plane_state** %3, align 8
  %23 = icmp eq %struct.dm_plane_state* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @WARN_ON(i32 %24)
  %26 = load %struct.dm_plane_state*, %struct.dm_plane_state** %3, align 8
  %27 = icmp ne %struct.dm_plane_state* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %30 = load %struct.dm_plane_state*, %struct.dm_plane_state** %3, align 8
  %31 = getelementptr inbounds %struct.dm_plane_state, %struct.dm_plane_state* %30, i32 0, i32 0
  %32 = call i32 @__drm_atomic_helper_plane_reset(%struct.drm_plane* %29, i32* %31)
  br label %33

33:                                               ; preds = %28, %19
  ret void
}

declare dso_local %struct.dm_plane_state* @kzalloc(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @__drm_atomic_helper_plane_reset(%struct.drm_plane*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
