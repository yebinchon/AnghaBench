; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wndw.c_nv50_wndw_atomic_duplicate_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wndw.c_nv50_wndw_atomic_duplicate_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane_state = type { i32 }
%struct.drm_plane = type { i32 }
%struct.nv50_wndw_atom = type { %struct.drm_plane_state, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32, i32, i32*, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_plane_state* (%struct.drm_plane*)* @nv50_wndw_atomic_duplicate_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_plane_state* @nv50_wndw_atomic_duplicate_state(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane_state*, align 8
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.nv50_wndw_atom*, align 8
  %5 = alloca %struct.nv50_wndw_atom*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  %6 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %7 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.nv50_wndw_atom* @nv50_wndw_atom(i32 %8)
  store %struct.nv50_wndw_atom* %9, %struct.nv50_wndw_atom** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.nv50_wndw_atom* @kmalloc(i32 56, i32 %10)
  store %struct.nv50_wndw_atom* %11, %struct.nv50_wndw_atom** %5, align 8
  %12 = icmp ne %struct.nv50_wndw_atom* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store %struct.drm_plane_state* null, %struct.drm_plane_state** %2, align 8
  br label %59

14:                                               ; preds = %1
  %15 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %16 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %5, align 8
  %17 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %16, i32 0, i32 0
  %18 = call i32 @__drm_atomic_helper_plane_duplicate_state(%struct.drm_plane* %15, %struct.drm_plane_state* %17)
  %19 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %20 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %5, align 8
  %23 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %22, i32 0, i32 9
  store i32 %21, i32* %23, align 4
  %24 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %25 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %5, align 8
  %28 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %27, i32 0, i32 8
  store i32 %26, i32* %28, align 8
  %29 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %5, align 8
  %30 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %29, i32 0, i32 7
  store i32* null, i32** %30, align 8
  %31 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %32 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %5, align 8
  %35 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 4
  %36 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %37 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %5, align 8
  %40 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  %41 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %42 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %5, align 8
  %45 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %47 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %5, align 8
  %50 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %5, align 8
  %52 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %5, align 8
  %55 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %5, align 8
  %58 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %57, i32 0, i32 0
  store %struct.drm_plane_state* %58, %struct.drm_plane_state** %2, align 8
  br label %59

59:                                               ; preds = %14, %13
  %60 = load %struct.drm_plane_state*, %struct.drm_plane_state** %2, align 8
  ret %struct.drm_plane_state* %60
}

declare dso_local %struct.nv50_wndw_atom* @nv50_wndw_atom(i32) #1

declare dso_local %struct.nv50_wndw_atom* @kmalloc(i32, i32) #1

declare dso_local i32 @__drm_atomic_helper_plane_duplicate_state(%struct.drm_plane*, %struct.drm_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
