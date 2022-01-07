; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fb.c_vmwgfx_set_config_internal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fb.c_vmwgfx_set_config_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mode_set = type { %struct.drm_crtc* }
%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.drm_mode_set*, %struct.drm_modeset_acquire_ctx*)* }
%struct.drm_modeset_acquire_ctx = type { i32 }

@EDEADLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_mode_set*)* @vmwgfx_set_config_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmwgfx_set_config_internal(%struct.drm_mode_set* %0) #0 {
  %2 = alloca %struct.drm_mode_set*, align 8
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_modeset_acquire_ctx, align 4
  %5 = alloca i32, align 4
  store %struct.drm_mode_set* %0, %struct.drm_mode_set** %2, align 8
  %6 = load %struct.drm_mode_set*, %struct.drm_mode_set** %2, align 8
  %7 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %6, i32 0, i32 0
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  store %struct.drm_crtc* %8, %struct.drm_crtc** %3, align 8
  %9 = call i32 @drm_modeset_acquire_init(%struct.drm_modeset_acquire_ctx* %4, i32 0)
  br label %10

10:                                               ; preds = %22, %1
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %12 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.drm_mode_set*, %struct.drm_modeset_acquire_ctx*)*, i32 (%struct.drm_mode_set*, %struct.drm_modeset_acquire_ctx*)** %14, align 8
  %16 = load %struct.drm_mode_set*, %struct.drm_mode_set** %2, align 8
  %17 = call i32 %15(%struct.drm_mode_set* %16, %struct.drm_modeset_acquire_ctx* %4)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @EDEADLK, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %10
  %23 = call i32 @drm_modeset_backoff(%struct.drm_modeset_acquire_ctx* %4)
  br label %10

24:                                               ; preds = %10
  %25 = call i32 @drm_modeset_drop_locks(%struct.drm_modeset_acquire_ctx* %4)
  %26 = call i32 @drm_modeset_acquire_fini(%struct.drm_modeset_acquire_ctx* %4)
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @drm_modeset_acquire_init(%struct.drm_modeset_acquire_ctx*, i32) #1

declare dso_local i32 @drm_modeset_backoff(%struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @drm_modeset_drop_locks(%struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @drm_modeset_acquire_fini(%struct.drm_modeset_acquire_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
