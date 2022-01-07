; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_plane_helper.c_drm_primary_helper_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_plane_helper.c_drm_primary_helper_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.drm_plane*, %struct.drm_modeset_acquire_ctx*)* }
%struct.drm_crtc = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.drm_mode_set*, %struct.drm_modeset_acquire_ctx*)* }
%struct.drm_mode_set = type { i32, i32, i32, %struct.drm_connector**, i32*, %struct.drm_framebuffer*, %struct.drm_crtc* }
%struct.drm_connector = type { i32 }
%struct.drm_framebuffer = type { i32 }
%struct.drm_modeset_acquire_ctx = type { i32 }
%struct.drm_rect = type { i32, i32, i32, i32 }

@DRM_MODE_ROTATE_0 = common dso_local global i32 0, align 4
@DRM_PLANE_HELPER_NO_SCALING = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_modeset_acquire_ctx*)* @drm_primary_helper_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_primary_helper_update(%struct.drm_plane* %0, %struct.drm_crtc* %1, %struct.drm_framebuffer* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, %struct.drm_modeset_acquire_ctx* %11) #0 {
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
  %26 = alloca %struct.drm_mode_set, align 8
  %27 = alloca %struct.drm_rect, align 4
  %28 = alloca %struct.drm_rect, align 4
  %29 = alloca %struct.drm_connector**, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
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
  %33 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %26, i32 0, i32 0
  %34 = load i32, i32* %21, align 4
  %35 = ashr i32 %34, 16
  store i32 %35, i32* %33, align 8
  %36 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %26, i32 0, i32 1
  %37 = load i32, i32* %22, align 4
  %38 = ashr i32 %37, 16
  store i32 %38, i32* %36, align 4
  %39 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %26, i32 0, i32 2
  store i32 0, i32* %39, align 8
  %40 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %26, i32 0, i32 3
  store %struct.drm_connector** null, %struct.drm_connector*** %40, align 8
  %41 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %26, i32 0, i32 4
  %42 = load %struct.drm_crtc*, %struct.drm_crtc** %15, align 8
  %43 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %42, i32 0, i32 1
  store i32* %43, i32** %41, align 8
  %44 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %26, i32 0, i32 5
  %45 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  store %struct.drm_framebuffer* %45, %struct.drm_framebuffer** %44, align 8
  %46 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %26, i32 0, i32 6
  %47 = load %struct.drm_crtc*, %struct.drm_crtc** %15, align 8
  store %struct.drm_crtc* %47, %struct.drm_crtc** %46, align 8
  %48 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %27, i32 0, i32 0
  %49 = load i32, i32* %21, align 4
  store i32 %49, i32* %48, align 4
  %50 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %27, i32 0, i32 1
  %51 = load i32, i32* %22, align 4
  store i32 %51, i32* %50, align 4
  %52 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %27, i32 0, i32 2
  %53 = load i32, i32* %21, align 4
  %54 = load i32, i32* %23, align 4
  %55 = add nsw i32 %53, %54
  store i32 %55, i32* %52, align 4
  %56 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %27, i32 0, i32 3
  %57 = load i32, i32* %22, align 4
  %58 = load i32, i32* %24, align 4
  %59 = add nsw i32 %57, %58
  store i32 %59, i32* %56, align 4
  %60 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %28, i32 0, i32 0
  %61 = load i32, i32* %17, align 4
  store i32 %61, i32* %60, align 4
  %62 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %28, i32 0, i32 1
  %63 = load i32, i32* %18, align 4
  store i32 %63, i32* %62, align 4
  %64 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %28, i32 0, i32 2
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* %19, align 4
  %67 = add i32 %65, %66
  store i32 %67, i32* %64, align 4
  %68 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %28, i32 0, i32 3
  %69 = load i32, i32* %18, align 4
  %70 = load i32, i32* %20, align 4
  %71 = add i32 %69, %70
  store i32 %71, i32* %68, align 4
  %72 = load %struct.drm_plane*, %struct.drm_plane** %14, align 8
  %73 = load %struct.drm_crtc*, %struct.drm_crtc** %15, align 8
  %74 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  %75 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %76 = load i32, i32* @DRM_PLANE_HELPER_NO_SCALING, align 4
  %77 = load i32, i32* @DRM_PLANE_HELPER_NO_SCALING, align 4
  %78 = call i32 @drm_plane_helper_check_update(%struct.drm_plane* %72, %struct.drm_crtc* %73, %struct.drm_framebuffer* %74, %struct.drm_rect* %27, %struct.drm_rect* %28, i32 %75, i32 %76, i32 %77, i32 0, i32 0, i32* %32)
  store i32 %78, i32* %31, align 4
  %79 = load i32, i32* %31, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %12
  %82 = load i32, i32* %31, align 4
  store i32 %82, i32* %13, align 4
  br label %129

83:                                               ; preds = %12
  %84 = load i32, i32* %32, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %83
  %87 = load %struct.drm_plane*, %struct.drm_plane** %14, align 8
  %88 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %87, i32 0, i32 0
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32 (%struct.drm_plane*, %struct.drm_modeset_acquire_ctx*)*, i32 (%struct.drm_plane*, %struct.drm_modeset_acquire_ctx*)** %90, align 8
  %92 = load %struct.drm_plane*, %struct.drm_plane** %14, align 8
  %93 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %25, align 8
  %94 = call i32 %91(%struct.drm_plane* %92, %struct.drm_modeset_acquire_ctx* %93)
  store i32 %94, i32* %13, align 4
  br label %129

95:                                               ; preds = %83
  %96 = load %struct.drm_crtc*, %struct.drm_crtc** %15, align 8
  %97 = call i32 @get_connectors_for_crtc(%struct.drm_crtc* %96, %struct.drm_connector** null, i32 0)
  store i32 %97, i32* %30, align 4
  %98 = load i32, i32* %30, align 4
  %99 = icmp eq i32 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i32 @BUG_ON(i32 %100)
  %102 = load i32, i32* %30, align 4
  %103 = load i32, i32* @GFP_KERNEL, align 4
  %104 = call %struct.drm_connector** @kcalloc(i32 %102, i32 8, i32 %103)
  store %struct.drm_connector** %104, %struct.drm_connector*** %29, align 8
  %105 = load %struct.drm_connector**, %struct.drm_connector*** %29, align 8
  %106 = icmp ne %struct.drm_connector** %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %95
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %13, align 4
  br label %129

110:                                              ; preds = %95
  %111 = load %struct.drm_crtc*, %struct.drm_crtc** %15, align 8
  %112 = load %struct.drm_connector**, %struct.drm_connector*** %29, align 8
  %113 = load i32, i32* %30, align 4
  %114 = call i32 @get_connectors_for_crtc(%struct.drm_crtc* %111, %struct.drm_connector** %112, i32 %113)
  %115 = load %struct.drm_connector**, %struct.drm_connector*** %29, align 8
  %116 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %26, i32 0, i32 3
  store %struct.drm_connector** %115, %struct.drm_connector*** %116, align 8
  %117 = load i32, i32* %30, align 4
  %118 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %26, i32 0, i32 2
  store i32 %117, i32* %118, align 8
  %119 = load %struct.drm_crtc*, %struct.drm_crtc** %15, align 8
  %120 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %119, i32 0, i32 0
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32 (%struct.drm_mode_set*, %struct.drm_modeset_acquire_ctx*)*, i32 (%struct.drm_mode_set*, %struct.drm_modeset_acquire_ctx*)** %122, align 8
  %124 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %25, align 8
  %125 = call i32 %123(%struct.drm_mode_set* %26, %struct.drm_modeset_acquire_ctx* %124)
  store i32 %125, i32* %31, align 4
  %126 = load %struct.drm_connector**, %struct.drm_connector*** %29, align 8
  %127 = call i32 @kfree(%struct.drm_connector** %126)
  %128 = load i32, i32* %31, align 4
  store i32 %128, i32* %13, align 4
  br label %129

129:                                              ; preds = %110, %107, %86, %81
  %130 = load i32, i32* %13, align 4
  ret i32 %130
}

declare dso_local i32 @drm_plane_helper_check_update(%struct.drm_plane*, %struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_rect*, %struct.drm_rect*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @get_connectors_for_crtc(%struct.drm_crtc*, %struct.drm_connector**, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.drm_connector** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.drm_connector**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
