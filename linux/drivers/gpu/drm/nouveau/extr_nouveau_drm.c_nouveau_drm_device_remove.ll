; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_drm_device_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_drm_device_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nvkm_client = type { i32 }
%struct.nvkm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_drm_device_remove(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.nouveau_drm*, align 8
  %5 = alloca %struct.nvkm_client*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %3, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %11 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %10)
  store %struct.nouveau_drm* %11, %struct.nouveau_drm** %4, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %13 = call i32 @drm_dev_unregister(%struct.drm_device* %12)
  %14 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %17 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call %struct.nvkm_client* @nvxx_client(i32* %18)
  store %struct.nvkm_client* %19, %struct.nvkm_client** %5, align 8
  %20 = load %struct.nvkm_client*, %struct.nvkm_client** %5, align 8
  %21 = getelementptr inbounds %struct.nvkm_client, %struct.nvkm_client* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.nvkm_device* @nvkm_device_find(i32 %22)
  store %struct.nvkm_device* %23, %struct.nvkm_device** %6, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %25 = call i32 @nouveau_drm_device_fini(%struct.drm_device* %24)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %27 = call i32 @pci_disable_device(%struct.pci_dev* %26)
  %28 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %29 = call i32 @drm_dev_put(%struct.drm_device* %28)
  %30 = call i32 @nvkm_device_del(%struct.nvkm_device** %6)
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_unregister(%struct.drm_device*) #1

declare dso_local %struct.nvkm_client* @nvxx_client(i32*) #1

declare dso_local %struct.nvkm_device* @nvkm_device_find(i32) #1

declare dso_local i32 @nouveau_drm_device_fini(%struct.drm_device*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

declare dso_local i32 @nvkm_device_del(%struct.nvkm_device**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
