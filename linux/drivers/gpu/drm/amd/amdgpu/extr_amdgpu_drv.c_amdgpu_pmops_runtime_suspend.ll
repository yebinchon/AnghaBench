; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_drv.c_amdgpu_pmops_runtime_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_drv.c_amdgpu_pmops_runtime_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pci_dev = type { i32 }
%struct.drm_device = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@DRM_SWITCH_POWER_CHANGING = common dso_local global i32 0, align 4
@PCI_D3cold = common dso_local global i32 0, align 4
@PCI_D3hot = common dso_local global i32 0, align 4
@DRM_SWITCH_POWER_DYNAMIC_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @amdgpu_pmops_runtime_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_pmops_runtime_suspend(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.pci_dev* @to_pci_dev(%struct.device* %7)
  store %struct.pci_dev* %8, %struct.pci_dev** %4, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call %struct.drm_device* @pci_get_drvdata(%struct.pci_dev* %9)
  store %struct.drm_device* %10, %struct.drm_device** %5, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = call i32 @amdgpu_device_is_px(%struct.drm_device* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = call i32 @pm_runtime_forbid(%struct.device* %15)
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %51

19:                                               ; preds = %1
  %20 = load i32, i32* @DRM_SWITCH_POWER_CHANGING, align 4
  %21 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %24 = call i32 @drm_kms_helper_poll_disable(%struct.drm_device* %23)
  %25 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %26 = call i32 @amdgpu_device_suspend(%struct.drm_device* %25, i32 0, i32 0)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = call i32 @pci_save_state(%struct.pci_dev* %27)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = call i32 @pci_disable_device(%struct.pci_dev* %29)
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = call i32 @pci_ignore_hotplug(%struct.pci_dev* %31)
  %33 = call i64 (...) @amdgpu_is_atpx_hybrid()
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %19
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = load i32, i32* @PCI_D3cold, align 4
  %38 = call i32 @pci_set_power_state(%struct.pci_dev* %36, i32 %37)
  br label %47

39:                                               ; preds = %19
  %40 = call i32 (...) @amdgpu_has_atpx_dgpu_power_cntl()
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = load i32, i32* @PCI_D3hot, align 4
  %45 = call i32 @pci_set_power_state(%struct.pci_dev* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %39
  br label %47

47:                                               ; preds = %46, %35
  %48 = load i32, i32* @DRM_SWITCH_POWER_DYNAMIC_OFF, align 4
  %49 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %50 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %47, %14
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local %struct.drm_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @amdgpu_device_is_px(%struct.drm_device*) #1

declare dso_local i32 @pm_runtime_forbid(%struct.device*) #1

declare dso_local i32 @drm_kms_helper_poll_disable(%struct.drm_device*) #1

declare dso_local i32 @amdgpu_device_suspend(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_ignore_hotplug(%struct.pci_dev*) #1

declare dso_local i64 @amdgpu_is_atpx_hybrid(...) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @amdgpu_has_atpx_dgpu_power_cntl(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
