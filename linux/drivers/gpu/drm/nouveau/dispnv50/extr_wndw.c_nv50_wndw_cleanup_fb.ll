; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wndw.c_nv50_wndw_cleanup_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wndw.c_nv50_wndw_cleanup_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32, i32 }
%struct.drm_plane_state = type { i32 }
%struct.nouveau_framebuffer = type { i32 }
%struct.nouveau_drm = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"%s cleanup: %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @nv50_wndw_cleanup_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_wndw_cleanup_fb(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.nouveau_framebuffer*, align 8
  %6 = alloca %struct.nouveau_drm*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %7 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %8 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.nouveau_framebuffer* @nouveau_framebuffer(i32 %9)
  store %struct.nouveau_framebuffer* %10, %struct.nouveau_framebuffer** %5, align 8
  %11 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %12 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.nouveau_drm* @nouveau_drm(i32 %13)
  store %struct.nouveau_drm* %14, %struct.nouveau_drm** %6, align 8
  %15 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %16 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %17 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %20 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @NV_ATOMIC(%struct.nouveau_drm* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  %23 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %24 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  br label %33

28:                                               ; preds = %2
  %29 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %5, align 8
  %30 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @nouveau_bo_unpin(i32 %31)
  br label %33

33:                                               ; preds = %28, %27
  ret void
}

declare dso_local %struct.nouveau_framebuffer* @nouveau_framebuffer(i32) #1

declare dso_local %struct.nouveau_drm* @nouveau_drm(i32) #1

declare dso_local i32 @NV_ATOMIC(%struct.nouveau_drm*, i8*, i32, i32) #1

declare dso_local i32 @nouveau_bo_unpin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
