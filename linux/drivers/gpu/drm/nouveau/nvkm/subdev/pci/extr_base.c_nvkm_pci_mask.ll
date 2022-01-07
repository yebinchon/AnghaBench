; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pci/extr_base.c_nvkm_pci_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pci/extr_base.c_nvkm_pci_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_pci = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nvkm_pci*, i32)*, i32 (%struct.nvkm_pci*, i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_pci_mask(%struct.nvkm_pci* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nvkm_pci*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nvkm_pci* %0, %struct.nvkm_pci** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.nvkm_pci*, %struct.nvkm_pci** %5, align 8
  %11 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.nvkm_pci*, i32)*, i32 (%struct.nvkm_pci*, i32)** %13, align 8
  %15 = load %struct.nvkm_pci*, %struct.nvkm_pci** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 %14(%struct.nvkm_pci* %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.nvkm_pci*, %struct.nvkm_pci** %5, align 8
  %19 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32 (%struct.nvkm_pci*, i32, i32)*, i32 (%struct.nvkm_pci*, i32, i32)** %21, align 8
  %23 = load %struct.nvkm_pci*, %struct.nvkm_pci** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %28, %29
  %31 = call i32 %22(%struct.nvkm_pci* %23, i32 %24, i32 %30)
  %32 = load i32, i32* %9, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
