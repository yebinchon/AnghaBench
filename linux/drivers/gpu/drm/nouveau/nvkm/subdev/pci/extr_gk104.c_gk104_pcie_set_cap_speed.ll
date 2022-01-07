; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pci/extr_gk104.c_gk104_pcie_set_cap_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pci/extr_gk104.c_gk104_pcie_set_cap_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_pci = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_pci*, i32)* @gk104_pcie_set_cap_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gk104_pcie_set_cap_speed(%struct.nvkm_pci* %0, i32 %1) #0 {
  %3 = alloca %struct.nvkm_pci*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_device*, align 8
  store %struct.nvkm_pci* %0, %struct.nvkm_pci** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nvkm_pci*, %struct.nvkm_pci** %3, align 8
  %7 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  store %struct.nvkm_device* %9, %struct.nvkm_device** %5, align 8
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %26 [
    i32 130, label %11
    i32 129, label %16
    i32 128, label %21
  ]

11:                                               ; preds = %2
  %12 = load %struct.nvkm_pci*, %struct.nvkm_pci** %3, align 8
  %13 = call i32 @gf100_pcie_set_cap_speed(%struct.nvkm_pci* %12, i32 0)
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %15 = call i32 @nvkm_mask(%struct.nvkm_device* %14, i32 573888, i32 196608, i32 65536)
  br label %26

16:                                               ; preds = %2
  %17 = load %struct.nvkm_pci*, %struct.nvkm_pci** %3, align 8
  %18 = call i32 @gf100_pcie_set_cap_speed(%struct.nvkm_pci* %17, i32 1)
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %20 = call i32 @nvkm_mask(%struct.nvkm_device* %19, i32 573888, i32 196608, i32 131072)
  br label %26

21:                                               ; preds = %2
  %22 = load %struct.nvkm_pci*, %struct.nvkm_pci** %3, align 8
  %23 = call i32 @gf100_pcie_set_cap_speed(%struct.nvkm_pci* %22, i32 1)
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %25 = call i32 @nvkm_mask(%struct.nvkm_device* %24, i32 573888, i32 196608, i32 196608)
  br label %26

26:                                               ; preds = %2, %21, %16, %11
  ret void
}

declare dso_local i32 @gf100_pcie_set_cap_speed(%struct.nvkm_pci*, i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
