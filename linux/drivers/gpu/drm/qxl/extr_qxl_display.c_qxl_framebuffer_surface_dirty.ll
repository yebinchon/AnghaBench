; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_framebuffer_surface_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_framebuffer_surface_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { %struct.TYPE_5__*, i32, i32, i32* }
%struct.TYPE_5__ = type { %struct.qxl_device* }
%struct.qxl_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_clip_rect = type { i32, i32, i64, i64 }
%struct.qxl_bo = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@DRM_MODE_FB_DIRTY_ANNOTATE_COPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_framebuffer*, %struct.drm_file*, i32, i32, %struct.drm_clip_rect*, i32)* @qxl_framebuffer_surface_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qxl_framebuffer_surface_dirty(%struct.drm_framebuffer* %0, %struct.drm_file* %1, i32 %2, i32 %3, %struct.drm_clip_rect* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca %struct.drm_file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_clip_rect*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.qxl_device*, align 8
  %15 = alloca %struct.drm_clip_rect, align 8
  %16 = alloca %struct.qxl_bo*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.drm_framebuffer* %0, %struct.drm_framebuffer** %8, align 8
  store %struct.drm_file* %1, %struct.drm_file** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.drm_clip_rect* %4, %struct.drm_clip_rect** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %20 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.qxl_device*, %struct.qxl_device** %22, align 8
  store %struct.qxl_device* %23, %struct.qxl_device** %14, align 8
  store i32 1, i32* %18, align 4
  %24 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %25 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = call i32 @drm_modeset_lock_all(%struct.TYPE_5__* %26)
  %28 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %29 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.qxl_bo* @gem_to_qxl_bo(i32 %32)
  store %struct.qxl_bo* %33, %struct.qxl_bo** %16, align 8
  %34 = load %struct.qxl_bo*, %struct.qxl_bo** %16, align 8
  %35 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = icmp ne %struct.TYPE_4__* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %6
  %39 = load %struct.qxl_bo*, %struct.qxl_bo** %16, align 8
  %40 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  br label %48

44:                                               ; preds = %6
  %45 = load %struct.qxl_bo*, %struct.qxl_bo** %16, align 8
  %46 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  br label %48

48:                                               ; preds = %44, %38
  %49 = phi i32 [ %43, %38 ], [ %47, %44 ]
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  %53 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %54 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = call i32 @drm_modeset_unlock_all(%struct.TYPE_5__* %55)
  store i32 0, i32* %7, align 4
  br label %94

57:                                               ; preds = %48
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %57
  store i32 1, i32* %13, align 4
  store %struct.drm_clip_rect* %15, %struct.drm_clip_rect** %12, align 8
  %61 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %15, i32 0, i32 2
  store i64 0, i64* %61, align 8
  %62 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %15, i32 0, i32 3
  store i64 0, i64* %62, align 8
  %63 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %64 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %15, i32 0, i32 1
  store i32 %65, i32* %66, align 4
  %67 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %68 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %15, i32 0, i32 0
  store i32 %69, i32* %70, align 8
  br label %80

71:                                               ; preds = %57
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @DRM_MODE_FB_DIRTY_ANNOTATE_COPY, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* %13, align 4
  %78 = udiv i32 %77, 2
  store i32 %78, i32* %13, align 4
  store i32 2, i32* %18, align 4
  br label %79

79:                                               ; preds = %76, %71
  br label %80

80:                                               ; preds = %79, %60
  %81 = load %struct.qxl_device*, %struct.qxl_device** %14, align 8
  %82 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %83 = load %struct.qxl_bo*, %struct.qxl_bo** %16, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %12, align 8
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %18, align 4
  %89 = call i32 @qxl_draw_dirty_fb(%struct.qxl_device* %81, %struct.drm_framebuffer* %82, %struct.qxl_bo* %83, i32 %84, i32 %85, %struct.drm_clip_rect* %86, i32 %87, i32 %88, i32 0)
  %90 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %91 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %90, i32 0, i32 0
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = call i32 @drm_modeset_unlock_all(%struct.TYPE_5__* %92)
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %80, %52
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local i32 @drm_modeset_lock_all(%struct.TYPE_5__*) #1

declare dso_local %struct.qxl_bo* @gem_to_qxl_bo(i32) #1

declare dso_local i32 @drm_modeset_unlock_all(%struct.TYPE_5__*) #1

declare dso_local i32 @qxl_draw_dirty_fb(%struct.qxl_device*, %struct.drm_framebuffer*, %struct.qxl_bo*, i32, i32, %struct.drm_clip_rect*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
