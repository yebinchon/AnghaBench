; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_pmops_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_pmops_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pci_dev = type { i32 }
%struct.drm_device = type { i64 }

@DRM_SWITCH_POWER_OFF = common dso_local global i64 0, align 8
@DRM_SWITCH_POWER_DYNAMIC_OFF = common dso_local global i64 0, align 8
@PCI_D3hot = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_pmops_suspend(%struct.device* %0) #0 {
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
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DRM_SWITCH_POWER_OFF, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DRM_SWITCH_POWER_DYNAMIC_OFF, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %1
  store i32 0, i32* %2, align 4
  br label %39

23:                                               ; preds = %16
  %24 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %25 = call i32 @nouveau_do_suspend(%struct.drm_device* %24, i32 0)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %39

30:                                               ; preds = %23
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = call i32 @pci_save_state(%struct.pci_dev* %31)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = call i32 @pci_disable_device(%struct.pci_dev* %33)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = load i32, i32* @PCI_D3hot, align 4
  %37 = call i32 @pci_set_power_state(%struct.pci_dev* %35, i32 %36)
  %38 = call i32 @udelay(i32 200)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %30, %28, %22
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local %struct.drm_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @nouveau_do_suspend(%struct.drm_device*, i32) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
