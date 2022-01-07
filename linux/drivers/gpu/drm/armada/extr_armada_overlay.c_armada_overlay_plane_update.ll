; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_overlay.c_armada_overlay_plane_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_overlay.c_armada_overlay_plane_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.drm_framebuffer = type { i32 }
%struct.drm_modeset_acquire_ctx = type { i32 }
%struct.drm_atomic_state = type { %struct.drm_modeset_acquire_ctx* }
%struct.drm_plane_state = type { i32, i32, i32, i32, i8*, i8*, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, %struct.drm_modeset_acquire_ctx*)* @armada_overlay_plane_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_overlay_plane_update(%struct.drm_plane* %0, %struct.drm_crtc* %1, %struct.drm_framebuffer* %2, i32 %3, i32 %4, i32 %5, i32 %6, i8* %7, i8* %8, i8* %9, i8* %10, %struct.drm_modeset_acquire_ctx* %11) #0 {
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
  %30 = load %struct.drm_crtc*, %struct.drm_crtc** %15, align 8
  %31 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %32 = load i32, i32* %17, align 4
  %33 = load i32, i32* %18, align 4
  %34 = load i32, i32* %19, align 4
  %35 = load i32, i32* %20, align 4
  %36 = load i8*, i8** %21, align 8
  %37 = load i8*, i8** %22, align 8
  %38 = load i8*, i8** %23, align 8
  %39 = load i8*, i8** %24, align 8
  %40 = call i32 @trace_armada_ovl_plane_update(%struct.drm_plane* %29, %struct.drm_crtc* %30, %struct.drm_framebuffer* %31, i32 %32, i32 %33, i32 %34, i32 %35, i8* %36, i8* %37, i8* %38, i8* %39)
  %41 = load %struct.drm_plane*, %struct.drm_plane** %14, align 8
  %42 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.drm_atomic_state* @drm_atomic_state_alloc(i32 %43)
  store %struct.drm_atomic_state* %44, %struct.drm_atomic_state** %26, align 8
  %45 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %26, align 8
  %46 = icmp ne %struct.drm_atomic_state* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %12
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %13, align 4
  br label %104

50:                                               ; preds = %12
  %51 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %25, align 8
  %52 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %26, align 8
  %53 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %52, i32 0, i32 0
  store %struct.drm_modeset_acquire_ctx* %51, %struct.drm_modeset_acquire_ctx** %53, align 8
  %54 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %26, align 8
  %55 = load %struct.drm_plane*, %struct.drm_plane** %14, align 8
  %56 = call %struct.drm_plane_state* @drm_atomic_get_plane_state(%struct.drm_atomic_state* %54, %struct.drm_plane* %55)
  store %struct.drm_plane_state* %56, %struct.drm_plane_state** %27, align 8
  %57 = load %struct.drm_plane_state*, %struct.drm_plane_state** %27, align 8
  %58 = call i64 @IS_ERR(%struct.drm_plane_state* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load %struct.drm_plane_state*, %struct.drm_plane_state** %27, align 8
  %62 = call i32 @PTR_ERR(%struct.drm_plane_state* %61)
  store i32 %62, i32* %28, align 4
  br label %100

63:                                               ; preds = %50
  %64 = load %struct.drm_plane_state*, %struct.drm_plane_state** %27, align 8
  %65 = load %struct.drm_crtc*, %struct.drm_crtc** %15, align 8
  %66 = call i32 @drm_atomic_set_crtc_for_plane(%struct.drm_plane_state* %64, %struct.drm_crtc* %65)
  store i32 %66, i32* %28, align 4
  %67 = load i32, i32* %28, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %100

70:                                               ; preds = %63
  %71 = load %struct.drm_plane_state*, %struct.drm_plane_state** %27, align 8
  %72 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %73 = call i32 @drm_atomic_set_fb_for_plane(%struct.drm_plane_state* %71, %struct.drm_framebuffer* %72)
  %74 = load i32, i32* %17, align 4
  %75 = load %struct.drm_plane_state*, %struct.drm_plane_state** %27, align 8
  %76 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %18, align 4
  %78 = load %struct.drm_plane_state*, %struct.drm_plane_state** %27, align 8
  %79 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %20, align 4
  %81 = load %struct.drm_plane_state*, %struct.drm_plane_state** %27, align 8
  %82 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* %19, align 4
  %84 = load %struct.drm_plane_state*, %struct.drm_plane_state** %27, align 8
  %85 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load i8*, i8** %21, align 8
  %87 = load %struct.drm_plane_state*, %struct.drm_plane_state** %27, align 8
  %88 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %87, i32 0, i32 7
  store i8* %86, i8** %88, align 8
  %89 = load i8*, i8** %22, align 8
  %90 = load %struct.drm_plane_state*, %struct.drm_plane_state** %27, align 8
  %91 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %90, i32 0, i32 6
  store i8* %89, i8** %91, align 8
  %92 = load i8*, i8** %24, align 8
  %93 = load %struct.drm_plane_state*, %struct.drm_plane_state** %27, align 8
  %94 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %93, i32 0, i32 5
  store i8* %92, i8** %94, align 8
  %95 = load i8*, i8** %23, align 8
  %96 = load %struct.drm_plane_state*, %struct.drm_plane_state** %27, align 8
  %97 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %96, i32 0, i32 4
  store i8* %95, i8** %97, align 8
  %98 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %26, align 8
  %99 = call i32 @drm_atomic_nonblocking_commit(%struct.drm_atomic_state* %98)
  store i32 %99, i32* %28, align 4
  br label %100

100:                                              ; preds = %70, %69, %60
  %101 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %26, align 8
  %102 = call i32 @drm_atomic_state_put(%struct.drm_atomic_state* %101)
  %103 = load i32, i32* %28, align 4
  store i32 %103, i32* %13, align 4
  br label %104

104:                                              ; preds = %100, %47
  %105 = load i32, i32* %13, align 4
  ret i32 %105
}

declare dso_local i32 @trace_armada_ovl_plane_update(%struct.drm_plane*, %struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32, i32, i8*, i8*, i8*, i8*) #1

declare dso_local %struct.drm_atomic_state* @drm_atomic_state_alloc(i32) #1

declare dso_local %struct.drm_plane_state* @drm_atomic_get_plane_state(%struct.drm_atomic_state*, %struct.drm_plane*) #1

declare dso_local i64 @IS_ERR(%struct.drm_plane_state*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_plane_state*) #1

declare dso_local i32 @drm_atomic_set_crtc_for_plane(%struct.drm_plane_state*, %struct.drm_crtc*) #1

declare dso_local i32 @drm_atomic_set_fb_for_plane(%struct.drm_plane_state*, %struct.drm_framebuffer*) #1

declare dso_local i32 @drm_atomic_nonblocking_commit(%struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_state_put(%struct.drm_atomic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
