; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/cirrus/extr_cirrus.c_cirrus_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/cirrus/extr_cirrus.c_cirrus_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.drm_device = type { %struct.cirrus_device* }
%struct.cirrus_device = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @cirrus_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cirrus_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.cirrus_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.drm_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.drm_device* %6, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = load %struct.cirrus_device*, %struct.cirrus_device** %8, align 8
  store %struct.cirrus_device* %9, %struct.cirrus_device** %4, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = call i32 @drm_dev_unregister(%struct.drm_device* %10)
  %12 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %13 = call i32 @drm_mode_config_cleanup(%struct.drm_device* %12)
  %14 = load %struct.cirrus_device*, %struct.cirrus_device** %4, align 8
  %15 = getelementptr inbounds %struct.cirrus_device, %struct.cirrus_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @iounmap(i32 %16)
  %18 = load %struct.cirrus_device*, %struct.cirrus_device** %4, align 8
  %19 = getelementptr inbounds %struct.cirrus_device, %struct.cirrus_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @iounmap(i32 %20)
  %22 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %23 = call i32 @drm_dev_put(%struct.drm_device* %22)
  %24 = load %struct.cirrus_device*, %struct.cirrus_device** %4, align 8
  %25 = call i32 @kfree(%struct.cirrus_device* %24)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %27 = call i32 @pci_release_regions(%struct.pci_dev* %26)
  ret void
}

declare dso_local %struct.drm_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @drm_dev_unregister(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_config_cleanup(%struct.drm_device*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

declare dso_local i32 @kfree(%struct.cirrus_device*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
