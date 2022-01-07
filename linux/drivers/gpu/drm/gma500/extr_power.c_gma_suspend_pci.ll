; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_power.c_gma_suspend_pci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_power.c_gma_suspend_pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@PSB_PCIx_MSI_ADDR_LOC = common dso_local global i32 0, align 4
@PSB_PCIx_MSI_DATA_LOC = common dso_local global i32 0, align 4
@PCI_D3hot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @gma_suspend_pci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gma_suspend_pci(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_psb_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = call %struct.drm_device* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.drm_device* %8, %struct.drm_device** %3, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.drm_psb_private*, %struct.drm_psb_private** %10, align 8
  store %struct.drm_psb_private* %11, %struct.drm_psb_private** %4, align 8
  %12 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %13 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %49

17:                                               ; preds = %1
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = call i32 @pci_save_state(%struct.pci_dev* %18)
  %20 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %21 = call i32 @pci_read_config_dword(%struct.pci_dev* %20, i32 92, i32* %5)
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %24 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %27 = call i32 @pci_read_config_dword(%struct.pci_dev* %26, i32 252, i32* %6)
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %30 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %33 = load i32, i32* @PSB_PCIx_MSI_ADDR_LOC, align 4
  %34 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %35 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %34, i32 0, i32 1
  %36 = call i32 @pci_read_config_dword(%struct.pci_dev* %32, i32 %33, i32* %35)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %38 = load i32, i32* @PSB_PCIx_MSI_DATA_LOC, align 4
  %39 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %40 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %39, i32 0, i32 2
  %41 = call i32 @pci_read_config_dword(%struct.pci_dev* %37, i32 %38, i32* %40)
  %42 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %43 = call i32 @pci_disable_device(%struct.pci_dev* %42)
  %44 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %45 = load i32, i32* @PCI_D3hot, align 4
  %46 = call i32 @pci_set_power_state(%struct.pci_dev* %44, i32 %45)
  %47 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %48 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %17, %16
  ret void
}

declare dso_local %struct.drm_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
