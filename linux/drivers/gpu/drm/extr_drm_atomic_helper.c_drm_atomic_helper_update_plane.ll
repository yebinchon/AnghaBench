; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_helper.c_drm_atomic_helper_update_plane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_helper.c_drm_atomic_helper_update_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_crtc = type { %struct.drm_plane* }
%struct.drm_framebuffer = type { i32 }
%struct.drm_modeset_acquire_ctx = type { i32 }
%struct.drm_atomic_state = type { i32, %struct.drm_modeset_acquire_ctx* }
%struct.drm_plane_state = type { i32, i32, i32, i32, i8*, i8*, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_atomic_helper_update_plane(%struct.drm_plane* %0, %struct.drm_crtc* %1, %struct.drm_framebuffer* %2, i32 %3, i32 %4, i32 %5, i32 %6, i8* %7, i8* %8, i8* %9, i8* %10, %struct.drm_modeset_acquire_ctx* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.drm_plane*, align 8
  %15 = alloca %struct.drm_crtc*, align 8
  %16 = alloca %struct.drm_framebuffer*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.drm_modeset_acquire_ctx*, align 8
  %26 = alloca %struct.drm_atomic_state*, align 8
  %27 = alloca %struct.drm_plane_state*, align 8
  %28 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %14, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %15, align 8
  store %struct.drm_framebuffer* %2, %struct.drm_framebuffer** %16, align 8
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i8* %7, i8** %21, align 8
  store i8* %8, i8** %22, align 8
  store i8* %9, i8** %23, align 8
  store i8* %10, i8** %24, align 8
  store %struct.drm_modeset_acquire_ctx* %11, %struct.drm_modeset_acquire_ctx** %25, align 8
  store i32 0, i32* %28, align 4
  %29 = load %struct.drm_plane*, %struct.drm_plane** %14, align 8
  %30 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.drm_atomic_state* @drm_atomic_state_alloc(i32 %31)
  store %struct.drm_atomic_state* %32, %struct.drm_atomic_state** %26, align 8
  %33 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %26, align 8
  %34 = icmp ne %struct.drm_atomic_state* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %12
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %13, align 4
  br label %101

38:                                               ; preds = %12
  %39 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %25, align 8
  %40 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %26, align 8
  %41 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %40, i32 0, i32 1
  store %struct.drm_modeset_acquire_ctx* %39, %struct.drm_modeset_acquire_ctx** %41, align 8
  %42 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %26, align 8
  %43 = load %struct.drm_plane*, %struct.drm_plane** %14, align 8
  %44 = call %struct.drm_plane_state* @drm_atomic_get_plane_state(%struct.drm_atomic_state* %42, %struct.drm_plane* %43)
  store %struct.drm_plane_state* %44, %struct.drm_plane_state** %27, align 8
  %45 = load %struct.drm_plane_state*, %struct.drm_plane_state** %27, align 8
  %46 = call i64 @IS_ERR(%struct.drm_plane_state* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load %struct.drm_plane_state*, %struct.drm_plane_state** %27, align 8
  %50 = call i32 @PTR_ERR(%struct.drm_plane_state* %49)
  store i32 %50, i32* %28, align 4
  br label %97

51:                                               ; preds = %38
  %52 = load %struct.drm_plane_state*, %struct.drm_plane_state** %27, align 8
  %53 = load %struct.drm_crtc*, %struct.drm_crtc** %15, align 8
  %54 = call i32 @drm_atomic_set_crtc_for_plane(%struct.drm_plane_state* %52, %struct.drm_crtc* %53)
  store i32 %54, i32* %28, align 4
  %55 = load i32, i32* %28, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %97

58:                                               ; preds = %51
  %59 = load %struct.drm_plane_state*, %struct.drm_plane_state** %27, align 8
  %60 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %61 = call i32 @drm_atomic_set_fb_for_plane(%struct.drm_plane_state* %59, %struct.drm_framebuffer* %60)
  %62 = load i32, i32* %17, align 4
  %63 = load %struct.drm_plane_state*, %struct.drm_plane_state** %27, align 8
  %64 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %18, align 4
  %66 = load %struct.drm_plane_state*, %struct.drm_plane_state** %27, align 8
  %67 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %19, align 4
  %69 = load %struct.drm_plane_state*, %struct.drm_plane_state** %27, align 8
  %70 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* %20, align 4
  %72 = load %struct.drm_plane_state*, %struct.drm_plane_state** %27, align 8
  %73 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load i8*, i8** %21, align 8
  %75 = load %struct.drm_plane_state*, %struct.drm_plane_state** %27, align 8
  %76 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %75, i32 0, i32 7
  store i8* %74, i8** %76, align 8
  %77 = load i8*, i8** %22, align 8
  %78 = load %struct.drm_plane_state*, %struct.drm_plane_state** %27, align 8
  %79 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %78, i32 0, i32 6
  store i8* %77, i8** %79, align 8
  %80 = load i8*, i8** %23, align 8
  %81 = load %struct.drm_plane_state*, %struct.drm_plane_state** %27, align 8
  %82 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %81, i32 0, i32 5
  store i8* %80, i8** %82, align 8
  %83 = load i8*, i8** %24, align 8
  %84 = load %struct.drm_plane_state*, %struct.drm_plane_state** %27, align 8
  %85 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %84, i32 0, i32 4
  store i8* %83, i8** %85, align 8
  %86 = load %struct.drm_plane*, %struct.drm_plane** %14, align 8
  %87 = load %struct.drm_crtc*, %struct.drm_crtc** %15, align 8
  %88 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %87, i32 0, i32 0
  %89 = load %struct.drm_plane*, %struct.drm_plane** %88, align 8
  %90 = icmp eq %struct.drm_plane* %86, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %58
  %92 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %26, align 8
  %93 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %92, i32 0, i32 0
  store i32 1, i32* %93, align 8
  br label %94

94:                                               ; preds = %91, %58
  %95 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %26, align 8
  %96 = call i32 @drm_atomic_commit(%struct.drm_atomic_state* %95)
  store i32 %96, i32* %28, align 4
  br label %97

97:                                               ; preds = %94, %57, %48
  %98 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %26, align 8
  %99 = call i32 @drm_atomic_state_put(%struct.drm_atomic_state* %98)
  %100 = load i32, i32* %28, align 4
  store i32 %100, i32* %13, align 4
  br label %101

101:                                              ; preds = %97, %35
  %102 = load i32, i32* %13, align 4
  ret i32 %102
}

declare dso_local %struct.drm_atomic_state* @drm_atomic_state_alloc(i32) #1

declare dso_local %struct.drm_plane_state* @drm_atomic_get_plane_state(%struct.drm_atomic_state*, %struct.drm_plane*) #1

declare dso_local i64 @IS_ERR(%struct.drm_plane_state*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_plane_state*) #1

declare dso_local i32 @drm_atomic_set_crtc_for_plane(%struct.drm_plane_state*, %struct.drm_crtc*) #1

declare dso_local i32 @drm_atomic_set_fb_for_plane(%struct.drm_plane_state*, %struct.drm_framebuffer*) #1

declare dso_local i32 @drm_atomic_commit(%struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_state_put(%struct.drm_atomic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
