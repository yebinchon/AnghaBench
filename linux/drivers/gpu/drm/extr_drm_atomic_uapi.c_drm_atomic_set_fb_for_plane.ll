; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_uapi.c_drm_atomic_set_fb_for_plane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_uapi.c_drm_atomic_set_fb_for_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane_state = type { i32, %struct.drm_plane* }
%struct.drm_plane = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_framebuffer = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Set [FB:%d] for [PLANE:%d:%s] state %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Set [NOFB] for [PLANE:%d:%s] state %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_atomic_set_fb_for_plane(%struct.drm_plane_state* %0, %struct.drm_framebuffer* %1) #0 {
  %3 = alloca %struct.drm_plane_state*, align 8
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.drm_plane*, align 8
  store %struct.drm_plane_state* %0, %struct.drm_plane_state** %3, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %4, align 8
  %6 = load %struct.drm_plane_state*, %struct.drm_plane_state** %3, align 8
  %7 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %6, i32 0, i32 1
  %8 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  store %struct.drm_plane* %8, %struct.drm_plane** %5, align 8
  %9 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %10 = icmp ne %struct.drm_framebuffer* %9, null
  br i1 %10, label %11, label %27

11:                                               ; preds = %2
  %12 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %13 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %17 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %21 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to %struct.drm_plane_state*
  %25 = load %struct.drm_plane_state*, %struct.drm_plane_state** %3, align 8
  %26 = call i32 (i8*, i32, i32, %struct.drm_plane_state*, ...) @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %19, %struct.drm_plane_state* %24, %struct.drm_plane_state* %25)
  br label %37

27:                                               ; preds = %2
  %28 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %29 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %33 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.drm_plane_state*, %struct.drm_plane_state** %3, align 8
  %36 = call i32 (i8*, i32, i32, %struct.drm_plane_state*, ...) @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %34, %struct.drm_plane_state* %35)
  br label %37

37:                                               ; preds = %27, %11
  %38 = load %struct.drm_plane_state*, %struct.drm_plane_state** %3, align 8
  %39 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %38, i32 0, i32 0
  %40 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %41 = call i32 @drm_framebuffer_assign(i32* %39, %struct.drm_framebuffer* %40)
  ret void
}

declare dso_local i32 @DRM_DEBUG_ATOMIC(i8*, i32, i32, %struct.drm_plane_state*, ...) #1

declare dso_local i32 @drm_framebuffer_assign(i32*, %struct.drm_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
