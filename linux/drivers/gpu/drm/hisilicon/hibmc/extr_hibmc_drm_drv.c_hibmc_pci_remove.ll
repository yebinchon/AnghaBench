; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_drm_drv.c_hibmc_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_drm_drv.c_hibmc_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.drm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @hibmc_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hibmc_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.drm_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.drm_device* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.drm_device* %5, %struct.drm_device** %3, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = call i32 @drm_dev_unregister(%struct.drm_device* %6)
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = call i32 @hibmc_unload(%struct.drm_device* %8)
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = call i32 @drm_dev_put(%struct.drm_device* %10)
  ret void
}

declare dso_local %struct.drm_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @drm_dev_unregister(%struct.drm_device*) #1

declare dso_local i32 @hibmc_unload(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
