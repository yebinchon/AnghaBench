; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_drv.c_vbox_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_drv.c_vbox_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.vbox_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @vbox_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vbox_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.vbox_private*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.vbox_private* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.vbox_private* %5, %struct.vbox_private** %3, align 8
  %6 = load %struct.vbox_private*, %struct.vbox_private** %3, align 8
  %7 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %6, i32 0, i32 0
  %8 = call i32 @drm_dev_unregister(i32* %7)
  %9 = load %struct.vbox_private*, %struct.vbox_private** %3, align 8
  %10 = call i32 @vbox_fbdev_fini(%struct.vbox_private* %9)
  %11 = load %struct.vbox_private*, %struct.vbox_private** %3, align 8
  %12 = call i32 @vbox_irq_fini(%struct.vbox_private* %11)
  %13 = load %struct.vbox_private*, %struct.vbox_private** %3, align 8
  %14 = call i32 @vbox_mode_fini(%struct.vbox_private* %13)
  %15 = load %struct.vbox_private*, %struct.vbox_private** %3, align 8
  %16 = call i32 @vbox_mm_fini(%struct.vbox_private* %15)
  %17 = load %struct.vbox_private*, %struct.vbox_private** %3, align 8
  %18 = call i32 @vbox_hw_fini(%struct.vbox_private* %17)
  %19 = load %struct.vbox_private*, %struct.vbox_private** %3, align 8
  %20 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %19, i32 0, i32 0
  %21 = call i32 @drm_dev_put(i32* %20)
  ret void
}

declare dso_local %struct.vbox_private* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @drm_dev_unregister(i32*) #1

declare dso_local i32 @vbox_fbdev_fini(%struct.vbox_private*) #1

declare dso_local i32 @vbox_irq_fini(%struct.vbox_private*) #1

declare dso_local i32 @vbox_mode_fini(%struct.vbox_private*) #1

declare dso_local i32 @vbox_mm_fini(%struct.vbox_private*) #1

declare dso_local i32 @vbox_hw_fini(%struct.vbox_private*) #1

declare dso_local i32 @drm_dev_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
