; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_drv.c_malidp_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_drv.c_malidp_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.drm_device = type { i32, %struct.malidp_drm* }
%struct.malidp_drm = type { %struct.TYPE_2__, %struct.malidp_hw_device* }
%struct.TYPE_2__ = type { i32* }
%struct.malidp_hw_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @malidp_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @malidp_unbind(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.malidp_drm*, align 8
  %5 = alloca %struct.malidp_hw_device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.drm_device* @dev_get_drvdata(%struct.device* %6)
  store %struct.drm_device* %7, %struct.drm_device** %3, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 1
  %10 = load %struct.malidp_drm*, %struct.malidp_drm** %9, align 8
  store %struct.malidp_drm* %10, %struct.malidp_drm** %4, align 8
  %11 = load %struct.malidp_drm*, %struct.malidp_drm** %4, align 8
  %12 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %11, i32 0, i32 1
  %13 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %12, align 8
  store %struct.malidp_hw_device* %13, %struct.malidp_hw_device** %5, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %15 = call i32 @drm_dev_unregister(%struct.drm_device* %14)
  %16 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %17 = call i32 @drm_kms_helper_poll_fini(%struct.drm_device* %16)
  %18 = load %struct.device*, %struct.device** %2, align 8
  %19 = call i32 @pm_runtime_get_sync(%struct.device* %18)
  %20 = load %struct.malidp_drm*, %struct.malidp_drm** %4, align 8
  %21 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %20, i32 0, i32 0
  %22 = call i32 @drm_crtc_vblank_off(%struct.TYPE_2__* %21)
  %23 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %5, align 8
  %24 = call i32 @malidp_se_irq_fini(%struct.malidp_hw_device* %23)
  %25 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %5, align 8
  %26 = call i32 @malidp_de_irq_fini(%struct.malidp_hw_device* %25)
  %27 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %28 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %30 = call i32 @drm_atomic_helper_shutdown(%struct.drm_device* %29)
  %31 = load %struct.device*, %struct.device** %2, align 8
  %32 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %33 = call i32 @component_unbind_all(%struct.device* %31, %struct.drm_device* %32)
  %34 = load %struct.malidp_drm*, %struct.malidp_drm** %4, align 8
  %35 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @of_node_put(i32* %37)
  %39 = load %struct.malidp_drm*, %struct.malidp_drm** %4, align 8
  %40 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  %42 = load %struct.device*, %struct.device** %2, align 8
  %43 = call i32 @malidp_fini_sysfs(%struct.device* %42)
  %44 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %45 = call i32 @malidp_fini(%struct.drm_device* %44)
  %46 = load %struct.device*, %struct.device** %2, align 8
  %47 = call i32 @pm_runtime_put(%struct.device* %46)
  %48 = load %struct.device*, %struct.device** %2, align 8
  %49 = call i64 @pm_runtime_enabled(%struct.device* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %1
  %52 = load %struct.device*, %struct.device** %2, align 8
  %53 = call i32 @pm_runtime_disable(%struct.device* %52)
  br label %57

54:                                               ; preds = %1
  %55 = load %struct.device*, %struct.device** %2, align 8
  %56 = call i32 @malidp_runtime_pm_suspend(%struct.device* %55)
  br label %57

57:                                               ; preds = %54, %51
  %58 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %59 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %58, i32 0, i32 1
  store %struct.malidp_drm* null, %struct.malidp_drm** %59, align 8
  %60 = load %struct.device*, %struct.device** %2, align 8
  %61 = call i32 @dev_set_drvdata(%struct.device* %60, i32* null)
  %62 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %63 = call i32 @drm_dev_put(%struct.drm_device* %62)
  %64 = load %struct.device*, %struct.device** %2, align 8
  %65 = call i32 @of_reserved_mem_device_release(%struct.device* %64)
  ret void
}

declare dso_local %struct.drm_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @drm_dev_unregister(%struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_poll_fini(%struct.drm_device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @drm_crtc_vblank_off(%struct.TYPE_2__*) #1

declare dso_local i32 @malidp_se_irq_fini(%struct.malidp_hw_device*) #1

declare dso_local i32 @malidp_de_irq_fini(%struct.malidp_hw_device*) #1

declare dso_local i32 @drm_atomic_helper_shutdown(%struct.drm_device*) #1

declare dso_local i32 @component_unbind_all(%struct.device*, %struct.drm_device*) #1

declare dso_local i32 @of_node_put(i32*) #1

declare dso_local i32 @malidp_fini_sysfs(%struct.device*) #1

declare dso_local i32 @malidp_fini(%struct.drm_device*) #1

declare dso_local i32 @pm_runtime_put(%struct.device*) #1

declare dso_local i64 @pm_runtime_enabled(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @malidp_runtime_pm_suspend(%struct.device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, i32*) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

declare dso_local i32 @of_reserved_mem_device_release(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
