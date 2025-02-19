; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/device/extr_pci.c_nvkm_device_pci_preinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/device/extr_pci.c_nvkm_device_pci_preinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { i32 }
%struct.nvkm_device_pci = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_device*)* @nvkm_device_pci_preinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_device_pci_preinit(%struct.nvkm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca %struct.nvkm_device_pci*, align 8
  %5 = alloca i32, align 4
  store %struct.nvkm_device* %0, %struct.nvkm_device** %3, align 8
  %6 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %7 = call %struct.nvkm_device_pci* @nvkm_device_pci(%struct.nvkm_device* %6)
  store %struct.nvkm_device_pci* %7, %struct.nvkm_device_pci** %4, align 8
  %8 = load %struct.nvkm_device_pci*, %struct.nvkm_device_pci** %4, align 8
  %9 = getelementptr inbounds %struct.nvkm_device_pci, %struct.nvkm_device_pci* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = load %struct.nvkm_device_pci*, %struct.nvkm_device_pci** %4, align 8
  %14 = getelementptr inbounds %struct.nvkm_device_pci, %struct.nvkm_device_pci* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pci_enable_device(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %29

21:                                               ; preds = %12
  %22 = load %struct.nvkm_device_pci*, %struct.nvkm_device_pci** %4, align 8
  %23 = getelementptr inbounds %struct.nvkm_device_pci, %struct.nvkm_device_pci* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pci_set_master(i32 %24)
  %26 = load %struct.nvkm_device_pci*, %struct.nvkm_device_pci** %4, align 8
  %27 = getelementptr inbounds %struct.nvkm_device_pci, %struct.nvkm_device_pci* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %21, %1
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %19
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.nvkm_device_pci* @nvkm_device_pci(%struct.nvkm_device*) #1

declare dso_local i32 @pci_enable_device(i32) #1

declare dso_local i32 @pci_set_master(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
