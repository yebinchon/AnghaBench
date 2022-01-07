; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_drv.c_omapdrm_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_drv.c_omapdrm_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_drm_private = type { i32, %struct.drm_device* }
%struct.drm_device = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_drm_private*)* @omapdrm_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omapdrm_cleanup(%struct.omap_drm_private* %0) #0 {
  %2 = alloca %struct.omap_drm_private*, align 8
  %3 = alloca %struct.drm_device*, align 8
  store %struct.omap_drm_private* %0, %struct.omap_drm_private** %2, align 8
  %4 = load %struct.omap_drm_private*, %struct.omap_drm_private** %2, align 8
  %5 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %4, i32 0, i32 1
  %6 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  store %struct.drm_device* %6, %struct.drm_device** %3, align 8
  %7 = call i32 @DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = call i32 @drm_dev_unregister(%struct.drm_device* %8)
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = call i32 @omap_modeset_disable_external_hpd(%struct.drm_device* %10)
  %12 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %13 = call i32 @drm_kms_helper_poll_fini(%struct.drm_device* %12)
  %14 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %15 = call i32 @omap_fbdev_fini(%struct.drm_device* %14)
  %16 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %17 = call i32 @drm_atomic_helper_shutdown(%struct.drm_device* %16)
  %18 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %19 = call i32 @drm_mode_config_cleanup(%struct.drm_device* %18)
  %20 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %21 = call i32 @omap_drm_irq_uninstall(%struct.drm_device* %20)
  %22 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %23 = call i32 @omap_gem_deinit(%struct.drm_device* %22)
  %24 = load %struct.omap_drm_private*, %struct.omap_drm_private** %2, align 8
  %25 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @destroy_workqueue(i32 %26)
  %28 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %29 = call i32 @omap_disconnect_pipelines(%struct.drm_device* %28)
  %30 = load %struct.omap_drm_private*, %struct.omap_drm_private** %2, align 8
  %31 = call i32 @omap_crtc_pre_uninit(%struct.omap_drm_private* %30)
  %32 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %33 = call i32 @drm_dev_put(%struct.drm_device* %32)
  ret void
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @drm_dev_unregister(%struct.drm_device*) #1

declare dso_local i32 @omap_modeset_disable_external_hpd(%struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_poll_fini(%struct.drm_device*) #1

declare dso_local i32 @omap_fbdev_fini(%struct.drm_device*) #1

declare dso_local i32 @drm_atomic_helper_shutdown(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_config_cleanup(%struct.drm_device*) #1

declare dso_local i32 @omap_drm_irq_uninstall(%struct.drm_device*) #1

declare dso_local i32 @omap_gem_deinit(%struct.drm_device*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @omap_disconnect_pipelines(%struct.drm_device*) #1

declare dso_local i32 @omap_crtc_pre_uninit(%struct.omap_drm_private*) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
