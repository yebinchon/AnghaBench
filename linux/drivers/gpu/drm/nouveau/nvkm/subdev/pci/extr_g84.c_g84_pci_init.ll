; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pci/extr_g84.c_g84_pci_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pci/extr_g84.c_g84_pci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_pci = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g84_pci_init(%struct.nvkm_pci* %0) #0 {
  %2 = alloca %struct.nvkm_pci*, align 8
  store %struct.nvkm_pci* %0, %struct.nvkm_pci** %2, align 8
  %3 = load %struct.nvkm_pci*, %struct.nvkm_pci** %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @pci_is_pcie(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %20

9:                                                ; preds = %1
  %10 = load %struct.nvkm_pci*, %struct.nvkm_pci** %2, align 8
  %11 = call i32 @nvkm_pci_rd32(%struct.nvkm_pci* %10, i32 124)
  %12 = and i32 %11, 32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load %struct.nvkm_pci*, %struct.nvkm_pci** %2, align 8
  %16 = call i32 @nvkm_pci_mask(%struct.nvkm_pci* %15, i32 128, i32 256, i32 256)
  br label %20

17:                                               ; preds = %9
  %18 = load %struct.nvkm_pci*, %struct.nvkm_pci** %2, align 8
  %19 = call i32 @nvkm_pci_mask(%struct.nvkm_pci* %18, i32 1052, i32 96, i32 0)
  br label %20

20:                                               ; preds = %8, %17, %14
  ret void
}

declare dso_local i32 @pci_is_pcie(i32) #1

declare dso_local i32 @nvkm_pci_rd32(%struct.nvkm_pci*, i32) #1

declare dso_local i32 @nvkm_pci_mask(%struct.nvkm_pci*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
