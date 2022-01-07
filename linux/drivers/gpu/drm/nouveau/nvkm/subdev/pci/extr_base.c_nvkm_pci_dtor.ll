; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pci/extr_base.c_nvkm_pci_dtor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pci/extr_base.c_nvkm_pci_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_subdev = type { i32 }
%struct.nvkm_pci = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.nvkm_subdev*)* @nvkm_pci_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nvkm_pci_dtor(%struct.nvkm_subdev* %0) #0 {
  %2 = alloca %struct.nvkm_subdev*, align 8
  %3 = alloca %struct.nvkm_pci*, align 8
  %4 = alloca i32, align 4
  store %struct.nvkm_subdev* %0, %struct.nvkm_subdev** %2, align 8
  %5 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %2, align 8
  %6 = call i8* @nvkm_pci(%struct.nvkm_subdev* %5)
  %7 = bitcast i8* %6 to %struct.nvkm_pci*
  store %struct.nvkm_pci* %7, %struct.nvkm_pci** %3, align 8
  %8 = load %struct.nvkm_pci*, %struct.nvkm_pci** %3, align 8
  %9 = call i32 @nvkm_agp_dtor(%struct.nvkm_pci* %8)
  %10 = load %struct.nvkm_pci*, %struct.nvkm_pci** %3, align 8
  %11 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.nvkm_pci*, %struct.nvkm_pci** %3, align 8
  %16 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %4, align 4
  %18 = load %struct.nvkm_pci*, %struct.nvkm_pci** %3, align 8
  %19 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %18, i32 0, i32 0
  store i32 -1, i32* %19, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.nvkm_pci*, %struct.nvkm_pci** %3, align 8
  %22 = call i32 @free_irq(i32 %20, %struct.nvkm_pci* %21)
  br label %23

23:                                               ; preds = %14, %1
  %24 = load %struct.nvkm_pci*, %struct.nvkm_pci** %3, align 8
  %25 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.nvkm_pci*, %struct.nvkm_pci** %3, align 8
  %30 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pci_disable_msi(i32 %31)
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %2, align 8
  %35 = call i8* @nvkm_pci(%struct.nvkm_subdev* %34)
  ret i8* %35
}

declare dso_local i8* @nvkm_pci(%struct.nvkm_subdev*) #1

declare dso_local i32 @nvkm_agp_dtor(%struct.nvkm_pci*) #1

declare dso_local i32 @free_irq(i32, %struct.nvkm_pci*) #1

declare dso_local i32 @pci_disable_msi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
