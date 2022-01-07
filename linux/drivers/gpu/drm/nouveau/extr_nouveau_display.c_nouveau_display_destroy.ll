; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_display.c_nouveau_display_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_display.c_nouveau_display_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_display = type { i32, i32 (%struct.drm_device.0*)* }
%struct.drm_device.0 = type opaque
%struct.TYPE_2__ = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_display_destroy(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.nouveau_display*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %5 = call %struct.nouveau_display* @nouveau_display(%struct.drm_device* %4)
  store %struct.nouveau_display* %5, %struct.nouveau_display** %3, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %7 = call i32 @nouveau_display_vblank_fini(%struct.drm_device* %6)
  %8 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %9 = call i32 @drm_kms_helper_poll_fini(%struct.drm_device* %8)
  %10 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %11 = call i32 @drm_mode_config_cleanup(%struct.drm_device* %10)
  %12 = load %struct.nouveau_display*, %struct.nouveau_display** %3, align 8
  %13 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %12, i32 0, i32 1
  %14 = load i32 (%struct.drm_device.0*)*, i32 (%struct.drm_device.0*)** %13, align 8
  %15 = icmp ne i32 (%struct.drm_device.0*)* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.nouveau_display*, %struct.nouveau_display** %3, align 8
  %18 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %17, i32 0, i32 1
  %19 = load i32 (%struct.drm_device.0*)*, i32 (%struct.drm_device.0*)** %18, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %21 = bitcast %struct.drm_device* %20 to %struct.drm_device.0*
  %22 = call i32 %19(%struct.drm_device.0* %21)
  br label %23

23:                                               ; preds = %16, %1
  %24 = load %struct.nouveau_display*, %struct.nouveau_display** %3, align 8
  %25 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %24, i32 0, i32 0
  %26 = call i32 @nvif_disp_dtor(i32* %25)
  %27 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %28 = call %struct.TYPE_2__* @nouveau_drm(%struct.drm_device* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  %30 = load %struct.nouveau_display*, %struct.nouveau_display** %3, align 8
  %31 = call i32 @kfree(%struct.nouveau_display* %30)
  ret void
}

declare dso_local %struct.nouveau_display* @nouveau_display(%struct.drm_device*) #1

declare dso_local i32 @nouveau_display_vblank_fini(%struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_poll_fini(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_config_cleanup(%struct.drm_device*) #1

declare dso_local i32 @nvif_disp_dtor(i32*) #1

declare dso_local %struct.TYPE_2__* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @kfree(%struct.nouveau_display*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
