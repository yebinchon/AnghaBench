; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_ovly507e.c_ovly507e_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_ovly507e.c_ovly507e_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_wndw = type { i32 }
%struct.nv50_wndw_atom = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.nv50_head_atom = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@DRM_PLANE_HELPER_NO_SCALING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovly507e_acquire(%struct.nv50_wndw* %0, %struct.nv50_wndw_atom* %1, %struct.nv50_head_atom* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nv50_wndw*, align 8
  %6 = alloca %struct.nv50_wndw_atom*, align 8
  %7 = alloca %struct.nv50_head_atom*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca i32, align 4
  store %struct.nv50_wndw* %0, %struct.nv50_wndw** %5, align 8
  store %struct.nv50_wndw_atom* %1, %struct.nv50_wndw_atom** %6, align 8
  store %struct.nv50_head_atom* %2, %struct.nv50_head_atom** %7, align 8
  %10 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %6, align 8
  %11 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  store %struct.drm_framebuffer* %13, %struct.drm_framebuffer** %8, align 8
  %14 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %6, align 8
  %15 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %14, i32 0, i32 0
  %16 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %7, align 8
  %17 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %16, i32 0, i32 1
  %18 = load i32, i32* @DRM_PLANE_HELPER_NO_SCALING, align 4
  %19 = load i32, i32* @DRM_PLANE_HELPER_NO_SCALING, align 4
  %20 = call i32 @drm_atomic_helper_check_plane_state(%struct.TYPE_6__* %15, i32* %17, i32 %18, i32 %19, i32 1, i32 1)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %36

25:                                               ; preds = %3
  %26 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %27 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %7, align 8
  %34 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %25, %23
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @drm_atomic_helper_check_plane_state(%struct.TYPE_6__*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
