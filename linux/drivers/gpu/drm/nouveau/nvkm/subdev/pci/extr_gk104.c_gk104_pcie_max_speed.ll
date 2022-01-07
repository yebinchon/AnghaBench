; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pci/extr_gk104.c_gk104_pcie_max_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pci/extr_gk104.c_gk104_pcie_max_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_pci = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NVKM_PCIE_SPEED_8_0 = common dso_local global i32 0, align 4
@NVKM_PCIE_SPEED_5_0 = common dso_local global i32 0, align 4
@NVKM_PCIE_SPEED_2_5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_pci*)* @gk104_pcie_max_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gk104_pcie_max_speed(%struct.nvkm_pci* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_pci*, align 8
  %4 = alloca i32, align 4
  store %struct.nvkm_pci* %0, %struct.nvkm_pci** %3, align 8
  %5 = load %struct.nvkm_pci*, %struct.nvkm_pci** %3, align 8
  %6 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @nvkm_rd32(i32 %8, i32 573888)
  %10 = and i32 %9, 3145728
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %18 [
    i32 0, label %12
    i32 1048576, label %14
    i32 2097152, label %16
  ]

12:                                               ; preds = %1
  %13 = load i32, i32* @NVKM_PCIE_SPEED_8_0, align 4
  store i32 %13, i32* %2, align 4
  br label %20

14:                                               ; preds = %1
  %15 = load i32, i32* @NVKM_PCIE_SPEED_5_0, align 4
  store i32 %15, i32* %2, align 4
  br label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @NVKM_PCIE_SPEED_2_5, align 4
  store i32 %17, i32* %2, align 4
  br label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @NVKM_PCIE_SPEED_2_5, align 4
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %18, %16, %14, %12
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @nvkm_rd32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
