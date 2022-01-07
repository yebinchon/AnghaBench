; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_pmops_runtime_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_pmops_runtime_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pci_dev = type { i32 }
%struct.drm_device = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@PCI_D3cold = common dso_local global i32 0, align 4
@DRM_SWITCH_POWER_DYNAMIC_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @nouveau_pmops_runtime_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_pmops_runtime_suspend(%struct.device* %0) #0 {
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
  %11 = call i32 (...) @nouveau_pmops_runtime()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = call i32 @pm_runtime_forbid(%struct.device* %14)
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %35

18:                                               ; preds = %1
  %19 = call i32 (...) @nouveau_switcheroo_optimus_dsm()
  %20 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %21 = call i32 @nouveau_do_suspend(%struct.drm_device* %20, i32 1)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = call i32 @pci_save_state(%struct.pci_dev* %22)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = call i32 @pci_disable_device(%struct.pci_dev* %24)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = call i32 @pci_ignore_hotplug(%struct.pci_dev* %26)
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = load i32, i32* @PCI_D3cold, align 4
  %30 = call i32 @pci_set_power_state(%struct.pci_dev* %28, i32 %29)
  %31 = load i32, i32* @DRM_SWITCH_POWER_DYNAMIC_OFF, align 4
  %32 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %33 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %18, %13
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local %struct.drm_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @nouveau_pmops_runtime(...) #1

declare dso_local i32 @pm_runtime_forbid(%struct.device*) #1

declare dso_local i32 @nouveau_switcheroo_optimus_dsm(...) #1

declare dso_local i32 @nouveau_do_suspend(%struct.drm_device*, i32) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_ignore_hotplug(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
