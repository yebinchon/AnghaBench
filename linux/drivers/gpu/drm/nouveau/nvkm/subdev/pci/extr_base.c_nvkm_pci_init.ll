; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pci/extr_base.c_nvkm_pci_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pci/extr_base.c_nvkm_pci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_subdev = type { i32 }
%struct.nvkm_pci = type { %struct.TYPE_4__*, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.nvkm_pci*)*, i32 (%struct.nvkm_pci*)* }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_subdev*)* @nvkm_pci_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_pci_init(%struct.nvkm_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_pci*, align 8
  %5 = alloca i32, align 4
  store %struct.nvkm_subdev* %0, %struct.nvkm_subdev** %3, align 8
  %6 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %7 = call %struct.nvkm_pci* @nvkm_pci(%struct.nvkm_subdev* %6)
  store %struct.nvkm_pci* %7, %struct.nvkm_pci** %4, align 8
  %8 = load %struct.nvkm_pci*, %struct.nvkm_pci** %4, align 8
  %9 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.nvkm_pci*, %struct.nvkm_pci** %4, align 8
  %15 = call i32 @nvkm_agp_init(%struct.nvkm_pci* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %60

20:                                               ; preds = %13
  br label %31

21:                                               ; preds = %1
  %22 = load %struct.nvkm_pci*, %struct.nvkm_pci** %4, align 8
  %23 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @pci_is_pcie(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.nvkm_pci*, %struct.nvkm_pci** %4, align 8
  %29 = call i32 @nvkm_pcie_init(%struct.nvkm_pci* %28)
  br label %30

30:                                               ; preds = %27, %21
  br label %31

31:                                               ; preds = %30, %20
  %32 = load %struct.nvkm_pci*, %struct.nvkm_pci** %4, align 8
  %33 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32 (%struct.nvkm_pci*)*, i32 (%struct.nvkm_pci*)** %35, align 8
  %37 = icmp ne i32 (%struct.nvkm_pci*)* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load %struct.nvkm_pci*, %struct.nvkm_pci** %4, align 8
  %40 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32 (%struct.nvkm_pci*)*, i32 (%struct.nvkm_pci*)** %42, align 8
  %44 = load %struct.nvkm_pci*, %struct.nvkm_pci** %4, align 8
  %45 = call i32 %43(%struct.nvkm_pci* %44)
  br label %46

46:                                               ; preds = %38, %31
  %47 = load %struct.nvkm_pci*, %struct.nvkm_pci** %4, align 8
  %48 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load %struct.nvkm_pci*, %struct.nvkm_pci** %4, align 8
  %53 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32 (%struct.nvkm_pci*)*, i32 (%struct.nvkm_pci*)** %55, align 8
  %57 = load %struct.nvkm_pci*, %struct.nvkm_pci** %4, align 8
  %58 = call i32 %56(%struct.nvkm_pci* %57)
  br label %59

59:                                               ; preds = %51, %46
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %18
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.nvkm_pci* @nvkm_pci(%struct.nvkm_subdev*) #1

declare dso_local i32 @nvkm_agp_init(%struct.nvkm_pci*) #1

declare dso_local i64 @pci_is_pcie(i32) #1

declare dso_local i32 @nvkm_pcie_init(%struct.nvkm_pci*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
