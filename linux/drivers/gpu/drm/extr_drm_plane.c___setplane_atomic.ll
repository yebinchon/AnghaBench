; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_plane.c___setplane_atomic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_plane.c___setplane_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.drm_plane*, %struct.drm_modeset_acquire_ctx*)*, {}* }
%struct.drm_crtc = type { i32 }
%struct.drm_framebuffer = type { i32 }
%struct.drm_modeset_acquire_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_modeset_acquire_ctx*)* @__setplane_atomic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__setplane_atomic(%struct.drm_plane* %0, %struct.drm_crtc* %1, %struct.drm_framebuffer* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, %struct.drm_modeset_acquire_ctx* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.drm_plane*, align 8
  %15 = alloca %struct.drm_crtc*, align 8
  %16 = alloca %struct.drm_framebuffer*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.drm_modeset_acquire_ctx*, align 8
  %26 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %14, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %15, align 8
  store %struct.drm_framebuffer* %2, %struct.drm_framebuffer** %16, align 8
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store %struct.drm_modeset_acquire_ctx* %11, %struct.drm_modeset_acquire_ctx** %25, align 8
  %27 = load %struct.drm_plane*, %struct.drm_plane** %14, align 8
  %28 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @drm_drv_uses_atomic_modeset(i32 %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @WARN_ON(i32 %33)
  %35 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %36 = icmp ne %struct.drm_framebuffer* %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %12
  %38 = load %struct.drm_plane*, %struct.drm_plane** %14, align 8
  %39 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.drm_plane*, %struct.drm_modeset_acquire_ctx*)*, i32 (%struct.drm_plane*, %struct.drm_modeset_acquire_ctx*)** %41, align 8
  %43 = load %struct.drm_plane*, %struct.drm_plane** %14, align 8
  %44 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %25, align 8
  %45 = call i32 %42(%struct.drm_plane* %43, %struct.drm_modeset_acquire_ctx* %44)
  store i32 %45, i32* %13, align 4
  br label %83

46:                                               ; preds = %12
  %47 = load %struct.drm_plane*, %struct.drm_plane** %14, align 8
  %48 = load %struct.drm_crtc*, %struct.drm_crtc** %15, align 8
  %49 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %50 = load i32, i32* %17, align 4
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* %19, align 4
  %53 = load i32, i32* %20, align 4
  %54 = load i32, i32* %21, align 4
  %55 = load i32, i32* %22, align 4
  %56 = load i32, i32* %23, align 4
  %57 = load i32, i32* %24, align 4
  %58 = call i32 @__setplane_check(%struct.drm_plane* %47, %struct.drm_crtc* %48, %struct.drm_framebuffer* %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %26, align 4
  %59 = load i32, i32* %26, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %46
  %62 = load i32, i32* %26, align 4
  store i32 %62, i32* %13, align 4
  br label %83

63:                                               ; preds = %46
  %64 = load %struct.drm_plane*, %struct.drm_plane** %14, align 8
  %65 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = bitcast {}** %67 to i32 (%struct.drm_plane*, %struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_modeset_acquire_ctx*)**
  %69 = load i32 (%struct.drm_plane*, %struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_modeset_acquire_ctx*)*, i32 (%struct.drm_plane*, %struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_modeset_acquire_ctx*)** %68, align 8
  %70 = load %struct.drm_plane*, %struct.drm_plane** %14, align 8
  %71 = load %struct.drm_crtc*, %struct.drm_crtc** %15, align 8
  %72 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* %19, align 4
  %76 = load i32, i32* %20, align 4
  %77 = load i32, i32* %21, align 4
  %78 = load i32, i32* %22, align 4
  %79 = load i32, i32* %23, align 4
  %80 = load i32, i32* %24, align 4
  %81 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %25, align 8
  %82 = call i32 %69(%struct.drm_plane* %70, %struct.drm_crtc* %71, %struct.drm_framebuffer* %72, i32 %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80, %struct.drm_modeset_acquire_ctx* %81)
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %63, %61, %37
  %84 = load i32, i32* %13, align 4
  ret i32 %84
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @drm_drv_uses_atomic_modeset(i32) #1

declare dso_local i32 @__setplane_check(%struct.drm_plane*, %struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
