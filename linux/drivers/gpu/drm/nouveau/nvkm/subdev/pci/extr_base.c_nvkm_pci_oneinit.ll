; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pci/extr_base.c_nvkm_pci_oneinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pci/extr_base.c_nvkm_pci_oneinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_subdev = type { i32 }
%struct.nvkm_pci = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@nvkm_pci_intr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"nvkm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_subdev*)* @nvkm_pci_oneinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_pci_oneinit(%struct.nvkm_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_pci*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.nvkm_subdev* %0, %struct.nvkm_subdev** %3, align 8
  %7 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %8 = call %struct.nvkm_pci* @nvkm_pci(%struct.nvkm_subdev* %7)
  store %struct.nvkm_pci* %8, %struct.nvkm_pci** %4, align 8
  %9 = load %struct.nvkm_pci*, %struct.nvkm_pci** %4, align 8
  %10 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %9, i32 0, i32 1
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %5, align 8
  %12 = load %struct.nvkm_pci*, %struct.nvkm_pci** %4, align 8
  %13 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %12, i32 0, i32 1
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %15 = call i64 @pci_is_pcie(%struct.pci_dev* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.nvkm_pci*, %struct.nvkm_pci** %4, align 8
  %19 = call i32 @nvkm_pcie_oneinit(%struct.nvkm_pci* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %43

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @nvkm_pci_intr, align 4
  %30 = load i32, i32* @IRQF_SHARED, align 4
  %31 = load %struct.nvkm_pci*, %struct.nvkm_pci** %4, align 8
  %32 = call i32 @request_irq(i32 %28, i32 %29, i32 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.nvkm_pci* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %43

37:                                               ; preds = %25
  %38 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.nvkm_pci*, %struct.nvkm_pci** %4, align 8
  %42 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %37, %35, %22
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.nvkm_pci* @nvkm_pci(%struct.nvkm_subdev*) #1

declare dso_local i64 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i32 @nvkm_pcie_oneinit(%struct.nvkm_pci*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.nvkm_pci*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
