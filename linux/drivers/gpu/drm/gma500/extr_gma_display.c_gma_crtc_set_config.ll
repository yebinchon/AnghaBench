; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_gma_display.c_gma_crtc_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_gma_display.c_gma_crtc_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mode_set = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_4__*, %struct.drm_psb_private* }
%struct.TYPE_4__ = type { i32 }
%struct.drm_psb_private = type { i32 }
%struct.drm_modeset_acquire_ctx = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gma_crtc_set_config(%struct.drm_mode_set* %0, %struct.drm_modeset_acquire_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_mode_set*, align 8
  %5 = alloca %struct.drm_modeset_acquire_ctx*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_psb_private*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_mode_set* %0, %struct.drm_mode_set** %4, align 8
  store %struct.drm_modeset_acquire_ctx* %1, %struct.drm_modeset_acquire_ctx** %5, align 8
  %9 = load %struct.drm_mode_set*, %struct.drm_mode_set** %4, align 8
  %10 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %6, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 1
  %16 = load %struct.drm_psb_private*, %struct.drm_psb_private** %15, align 8
  store %struct.drm_psb_private* %16, %struct.drm_psb_private** %7, align 8
  %17 = load %struct.drm_psb_private*, %struct.drm_psb_private** %7, align 8
  %18 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load %struct.drm_mode_set*, %struct.drm_mode_set** %4, align 8
  %23 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %5, align 8
  %24 = call i32 @drm_crtc_helper_set_config(%struct.drm_mode_set* %22, %struct.drm_modeset_acquire_ctx* %23)
  store i32 %24, i32* %3, align 4
  br label %40

25:                                               ; preds = %2
  %26 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = call i32 @pm_runtime_forbid(i32* %29)
  %31 = load %struct.drm_mode_set*, %struct.drm_mode_set** %4, align 8
  %32 = load %struct.drm_modeset_acquire_ctx*, %struct.drm_modeset_acquire_ctx** %5, align 8
  %33 = call i32 @drm_crtc_helper_set_config(%struct.drm_mode_set* %31, %struct.drm_modeset_acquire_ctx* %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %35 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i32 @pm_runtime_allow(i32* %37)
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %25, %21
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @drm_crtc_helper_set_config(%struct.drm_mode_set*, %struct.drm_modeset_acquire_ctx*) #1

declare dso_local i32 @pm_runtime_forbid(i32*) #1

declare dso_local i32 @pm_runtime_allow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
