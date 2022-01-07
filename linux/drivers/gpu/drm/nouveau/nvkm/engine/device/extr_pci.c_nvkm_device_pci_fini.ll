; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/device/extr_pci.c_nvkm_device_pci_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/device/extr_pci.c_nvkm_device_pci_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { i32 }
%struct.nvkm_device_pci = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_device*, i32)* @nvkm_device_pci_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvkm_device_pci_fini(%struct.nvkm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_device_pci*, align 8
  store %struct.nvkm_device* %0, %struct.nvkm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %7 = call %struct.nvkm_device_pci* @nvkm_device_pci(%struct.nvkm_device* %6)
  store %struct.nvkm_device_pci* %7, %struct.nvkm_device_pci** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.nvkm_device_pci*, %struct.nvkm_device_pci** %5, align 8
  %12 = getelementptr inbounds %struct.nvkm_device_pci, %struct.nvkm_device_pci* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @pci_disable_device(i32 %13)
  %15 = load %struct.nvkm_device_pci*, %struct.nvkm_device_pci** %5, align 8
  %16 = getelementptr inbounds %struct.nvkm_device_pci, %struct.nvkm_device_pci* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  br label %17

17:                                               ; preds = %10, %2
  ret void
}

declare dso_local %struct.nvkm_device_pci* @nvkm_device_pci(%struct.nvkm_device*) #1

declare dso_local i32 @pci_disable_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
