; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_modeset_lock.c_drm_modeset_acquire_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_modeset_lock.c_drm_modeset_acquire_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_modeset_acquire_ctx = type { i32, i32, i32 }

@crtc_ww_class = common dso_local global i32 0, align 4
@DRM_MODESET_ACQUIRE_INTERRUPTIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_modeset_acquire_init(%struct.drm_modeset_acquire_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_modeset_acquire_ctx*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_modeset_acquire_ctx* %0, %struct.drm_modeset_acquire_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %3, align 8
  %6 = call i32 @memset(%struct.drm_modeset_acquire_ctx* %5, i32 0, i32 12)
  %7 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.drm_modeset_acquire_ctx, %struct.drm_modeset_acquire_ctx* %7, i32 0, i32 2
  %9 = call i32 @ww_acquire_init(i32* %8, i32* @crtc_ww_class)
  %10 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.drm_modeset_acquire_ctx, %struct.drm_modeset_acquire_ctx* %10, i32 0, i32 1
  %12 = call i32 @INIT_LIST_HEAD(i32* %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @DRM_MODESET_ACQUIRE_INTERRUPTIBLE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.drm_modeset_acquire_ctx, %struct.drm_modeset_acquire_ctx* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  br label %20

20:                                               ; preds = %17, %2
  ret void
}

declare dso_local i32 @memset(%struct.drm_modeset_acquire_ctx*, i32, i32) #1

declare dso_local i32 @ww_acquire_init(i32*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
