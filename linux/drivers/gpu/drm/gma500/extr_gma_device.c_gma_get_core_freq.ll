; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_gma_device.c_gma_get_core_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_gma_device.c_gma_get_core_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_psb_private*, %struct.TYPE_2__* }
%struct.drm_psb_private = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gma_get_core_freq(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.drm_psb_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @pci_domain_nr(i32 %10)
  %12 = call %struct.pci_dev* @pci_get_domain_bus_and_slot(i32 %11, i32 0, i32 0)
  store %struct.pci_dev* %12, %struct.pci_dev** %4, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.drm_psb_private*, %struct.drm_psb_private** %14, align 8
  store %struct.drm_psb_private* %15, %struct.drm_psb_private** %5, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = call i32 @pci_write_config_dword(%struct.pci_dev* %16, i32 208, i32 -804977920)
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = call i32 @pci_read_config_dword(%struct.pci_dev* %18, i32 212, i32* %3)
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = call i32 @pci_dev_put(%struct.pci_dev* %20)
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, 7
  switch i32 %23, label %42 [
    i32 0, label %24
    i32 1, label %27
    i32 2, label %30
    i32 3, label %33
    i32 4, label %36
    i32 5, label %39
    i32 6, label %39
    i32 7, label %39
  ]

24:                                               ; preds = %1
  %25 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %26 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %25, i32 0, i32 0
  store i32 100, i32* %26, align 4
  br label %45

27:                                               ; preds = %1
  %28 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %29 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %28, i32 0, i32 0
  store i32 133, i32* %29, align 4
  br label %45

30:                                               ; preds = %1
  %31 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %32 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %31, i32 0, i32 0
  store i32 150, i32* %32, align 4
  br label %45

33:                                               ; preds = %1
  %34 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %35 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %34, i32 0, i32 0
  store i32 178, i32* %35, align 4
  br label %45

36:                                               ; preds = %1
  %37 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %38 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %37, i32 0, i32 0
  store i32 200, i32* %38, align 4
  br label %45

39:                                               ; preds = %1, %1, %1
  %40 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %41 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %40, i32 0, i32 0
  store i32 266, i32* %41, align 4
  br label %45

42:                                               ; preds = %1
  %43 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  %44 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %43, i32 0, i32 0
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %39, %36, %33, %30, %27, %24
  ret void
}

declare dso_local %struct.pci_dev* @pci_get_domain_bus_and_slot(i32, i32, i32) #1

declare dso_local i32 @pci_domain_nr(i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
