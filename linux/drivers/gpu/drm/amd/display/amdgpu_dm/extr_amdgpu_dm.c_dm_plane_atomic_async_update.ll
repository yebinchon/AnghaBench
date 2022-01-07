; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_plane_atomic_async_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_plane_atomic_async_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_plane_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @dm_plane_atomic_async_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_plane_atomic_async_update(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %6 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %7 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %6, i32 0, i32 9
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %10 = call %struct.drm_plane_state* @drm_atomic_get_old_plane_state(i32 %8, %struct.drm_plane* %9)
  store %struct.drm_plane_state* %10, %struct.drm_plane_state** %5, align 8
  %11 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %12 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %17 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @swap(i32 %15, i32 %18)
  %20 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %21 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %24 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 7
  store i32 %22, i32* %26, align 4
  %27 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %28 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %31 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 6
  store i32 %29, i32* %33, align 4
  %34 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %35 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %38 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 5
  store i32 %36, i32* %40, align 4
  %41 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %42 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %45 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 4
  store i32 %43, i32* %47, align 4
  %48 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %49 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %52 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  store i32 %50, i32* %54, align 4
  %55 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %56 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %59 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  store i32 %57, i32* %61, align 4
  %62 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %63 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %66 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i32 %64, i32* %68, align 4
  %69 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %70 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %73 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i32 %71, i32* %75, align 4
  %76 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %77 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %78 = call i32 @handle_cursor_update(%struct.drm_plane* %76, %struct.drm_plane_state* %77)
  ret void
}

declare dso_local %struct.drm_plane_state* @drm_atomic_get_old_plane_state(i32, %struct.drm_plane*) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @handle_cursor_update(%struct.drm_plane*, %struct.drm_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
