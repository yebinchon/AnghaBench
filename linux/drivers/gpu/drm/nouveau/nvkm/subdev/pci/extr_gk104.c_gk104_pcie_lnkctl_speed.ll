; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pci/extr_gk104.c_gk104_pcie_lnkctl_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pci/extr_gk104.c_gk104_pcie_lnkctl_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_pci = type { i32 }

@NVKM_PCIE_SPEED_2_5 = common dso_local global i32 0, align 4
@NVKM_PCIE_SPEED_5_0 = common dso_local global i32 0, align 4
@NVKM_PCIE_SPEED_8_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_pci*)* @gk104_pcie_lnkctl_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gk104_pcie_lnkctl_speed(%struct.nvkm_pci* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_pci*, align 8
  %4 = alloca i32, align 4
  store %struct.nvkm_pci* %0, %struct.nvkm_pci** %3, align 8
  %5 = load %struct.nvkm_pci*, %struct.nvkm_pci** %3, align 8
  %6 = call i32 @nvkm_pci_rd32(%struct.nvkm_pci* %5, i32 168)
  %7 = and i32 %6, 3
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %15 [
    i32 0, label %9
    i32 1, label %9
    i32 2, label %11
    i32 3, label %13
  ]

9:                                                ; preds = %1, %1
  %10 = load i32, i32* @NVKM_PCIE_SPEED_2_5, align 4
  store i32 %10, i32* %2, align 4
  br label %16

11:                                               ; preds = %1
  %12 = load i32, i32* @NVKM_PCIE_SPEED_5_0, align 4
  store i32 %12, i32* %2, align 4
  br label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @NVKM_PCIE_SPEED_8_0, align 4
  store i32 %14, i32* %2, align 4
  br label %16

15:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %16

16:                                               ; preds = %15, %13, %11, %9
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i32 @nvkm_pci_rd32(%struct.nvkm_pci*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
