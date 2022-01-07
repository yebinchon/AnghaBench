; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_hdlcd_drv.c_hdlcd_drm_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_hdlcd_drv.c_hdlcd_drm_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.drm_device = type { %struct.hdlcd_drm_private* }
%struct.hdlcd_drm_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @hdlcd_drm_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdlcd_drm_unbind(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.hdlcd_drm_private*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.drm_device* @dev_get_drvdata(%struct.device* %5)
  store %struct.drm_device* %6, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %8, align 8
  store %struct.hdlcd_drm_private* %9, %struct.hdlcd_drm_private** %4, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = call i32 @drm_dev_unregister(%struct.drm_device* %10)
  %12 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %13 = call i32 @drm_kms_helper_poll_fini(%struct.drm_device* %12)
  %14 = load %struct.device*, %struct.device** %2, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %16 = call i32 @component_unbind_all(%struct.device* %14, %struct.drm_device* %15)
  %17 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %4, align 8
  %18 = getelementptr inbounds %struct.hdlcd_drm_private, %struct.hdlcd_drm_private* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @of_node_put(i32* %20)
  %22 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %4, align 8
  %23 = getelementptr inbounds %struct.hdlcd_drm_private, %struct.hdlcd_drm_private* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  %25 = load %struct.device*, %struct.device** %2, align 8
  %26 = call i32 @pm_runtime_get_sync(%struct.device* %25)
  %27 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %4, align 8
  %28 = getelementptr inbounds %struct.hdlcd_drm_private, %struct.hdlcd_drm_private* %27, i32 0, i32 0
  %29 = call i32 @drm_crtc_vblank_off(%struct.TYPE_2__* %28)
  %30 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %31 = call i32 @drm_irq_uninstall(%struct.drm_device* %30)
  %32 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %33 = call i32 @drm_atomic_helper_shutdown(%struct.drm_device* %32)
  %34 = load %struct.device*, %struct.device** %2, align 8
  %35 = call i32 @pm_runtime_put(%struct.device* %34)
  %36 = load %struct.device*, %struct.device** %2, align 8
  %37 = call i64 @pm_runtime_enabled(%struct.device* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %1
  %40 = load %struct.device*, %struct.device** %2, align 8
  %41 = call i32 @pm_runtime_disable(%struct.device* %40)
  br label %42

42:                                               ; preds = %39, %1
  %43 = load %struct.device*, %struct.device** %2, align 8
  %44 = call i32 @of_reserved_mem_device_release(%struct.device* %43)
  %45 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %46 = call i32 @drm_mode_config_cleanup(%struct.drm_device* %45)
  %47 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %48 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %47, i32 0, i32 0
  store %struct.hdlcd_drm_private* null, %struct.hdlcd_drm_private** %48, align 8
  %49 = load %struct.device*, %struct.device** %2, align 8
  %50 = call i32 @dev_set_drvdata(%struct.device* %49, i32* null)
  %51 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %52 = call i32 @drm_dev_put(%struct.drm_device* %51)
  ret void
}

declare dso_local %struct.drm_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @drm_dev_unregister(%struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_poll_fini(%struct.drm_device*) #1

declare dso_local i32 @component_unbind_all(%struct.device*, %struct.drm_device*) #1

declare dso_local i32 @of_node_put(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @drm_crtc_vblank_off(%struct.TYPE_2__*) #1

declare dso_local i32 @drm_irq_uninstall(%struct.drm_device*) #1

declare dso_local i32 @drm_atomic_helper_shutdown(%struct.drm_device*) #1

declare dso_local i32 @pm_runtime_put(%struct.device*) #1

declare dso_local i64 @pm_runtime_enabled(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @of_reserved_mem_device_release(%struct.device*) #1

declare dso_local i32 @drm_mode_config_cleanup(%struct.drm_device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, i32*) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
