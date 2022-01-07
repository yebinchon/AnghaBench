; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_power.c_gma_power_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_power.c_gma_power_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pci_dev = type { i32 }
%struct.drm_device = type { i32 }

@power_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gma_power_resume(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.drm_device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.pci_dev* @to_pci_dev(%struct.device* %5)
  store %struct.pci_dev* %6, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = call %struct.drm_device* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.drm_device* %8, %struct.drm_device** %4, align 8
  %9 = call i32 @mutex_lock(i32* @power_mutex)
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = call i32 @gma_resume_pci(%struct.pci_dev* %10)
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = call i32 @gma_resume_display(%struct.pci_dev* %12)
  %14 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %15 = call i32 @psb_irq_preinstall(%struct.drm_device* %14)
  %16 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %17 = call i32 @psb_irq_postinstall(%struct.drm_device* %16)
  %18 = call i32 @mutex_unlock(i32* @power_mutex)
  ret i32 0
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local %struct.drm_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gma_resume_pci(%struct.pci_dev*) #1

declare dso_local i32 @gma_resume_display(%struct.pci_dev*) #1

declare dso_local i32 @psb_irq_preinstall(%struct.drm_device*) #1

declare dso_local i32 @psb_irq_postinstall(%struct.drm_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
