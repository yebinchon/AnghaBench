; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cfg_space.c_emulate_pci_bar_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cfg_space.c_emulate_pci_bar_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.intel_vgpu_pci_bar* }
%struct.intel_vgpu_pci_bar = type { i32 }

@PCI_COMMAND = common dso_local global i64 0, align 8
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@INTEL_GVT_PCI_BAR_GTTMMIO = common dso_local global i64 0, align 8
@INTEL_GVT_PCI_BAR_APERTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*, i32, i8*, i32)* @emulate_pci_bar_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulate_pci_bar_write(%struct.intel_vgpu* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.intel_vgpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.intel_vgpu_pci_bar*, align 8
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @IS_ALIGNED(i32 %18, i32 8)
  store i32 %19, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %20 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %21 = call i32* @vgpu_cfg_space(%struct.intel_vgpu* %20)
  %22 = load i64, i64* @PCI_COMMAND, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %13, align 4
  %27 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %28 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.intel_vgpu_pci_bar*, %struct.intel_vgpu_pci_bar** %29, align 8
  store %struct.intel_vgpu_pci_bar* %30, %struct.intel_vgpu_pci_bar** %14, align 8
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %80

33:                                               ; preds = %4
  %34 = load i32, i32* %6, align 4
  switch i32 %34, label %75 [
    i32 131, label %35
    i32 130, label %35
    i32 129, label %55
    i32 128, label %55
  ]

35:                                               ; preds = %33, %33
  %36 = load %struct.intel_vgpu_pci_bar*, %struct.intel_vgpu_pci_bar** %14, align 8
  %37 = load i64, i64* @INTEL_GVT_PCI_BAR_GTTMMIO, align 8
  %38 = getelementptr inbounds %struct.intel_vgpu_pci_bar, %struct.intel_vgpu_pci_bar* %36, i64 %37
  %39 = getelementptr inbounds %struct.intel_vgpu_pci_bar, %struct.intel_vgpu_pci_bar* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 1
  %42 = xor i32 %41, -1
  store i32 %42, i32* %11, align 4
  %43 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 0, i32 32
  %50 = ashr i32 %45, %49
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @intel_vgpu_write_pci_bar(%struct.intel_vgpu* %43, i32 %44, i32 %50, i32 %51)
  %53 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %54 = call i32 @trap_gttmmio(%struct.intel_vgpu* %53, i32 0)
  store i32 %54, i32* %12, align 4
  br label %79

55:                                               ; preds = %33, %33
  %56 = load %struct.intel_vgpu_pci_bar*, %struct.intel_vgpu_pci_bar** %14, align 8
  %57 = load i64, i64* @INTEL_GVT_PCI_BAR_APERTURE, align 8
  %58 = getelementptr inbounds %struct.intel_vgpu_pci_bar, %struct.intel_vgpu_pci_bar* %56, i64 %57
  %59 = getelementptr inbounds %struct.intel_vgpu_pci_bar, %struct.intel_vgpu_pci_bar* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %60, 1
  %62 = xor i32 %61, -1
  store i32 %62, i32* %11, align 4
  %63 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 0, i32 32
  %70 = ashr i32 %65, %69
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @intel_vgpu_write_pci_bar(%struct.intel_vgpu* %63, i32 %64, i32 %70, i32 %71)
  %73 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %74 = call i32 @map_aperture(%struct.intel_vgpu* %73, i32 0)
  store i32 %74, i32* %12, align 4
  br label %79

75:                                               ; preds = %33
  %76 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @intel_vgpu_write_pci_bar(%struct.intel_vgpu* %76, i32 %77, i32 0, i32 0)
  br label %79

79:                                               ; preds = %75, %55, %35
  br label %111

80:                                               ; preds = %4
  %81 = load i32, i32* %6, align 4
  switch i32 %81, label %104 [
    i32 131, label %82
    i32 130, label %82
    i32 129, label %93
    i32 128, label %93
  ]

82:                                               ; preds = %80, %80
  %83 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %84 = call i32 @trap_gttmmio(%struct.intel_vgpu* %83, i32 0)
  %85 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @intel_vgpu_write_pci_bar(%struct.intel_vgpu* %85, i32 %86, i32 %87, i32 %88)
  %90 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @trap_gttmmio(%struct.intel_vgpu* %90, i32 %91)
  store i32 %92, i32* %12, align 4
  br label %110

93:                                               ; preds = %80, %80
  %94 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %95 = call i32 @map_aperture(%struct.intel_vgpu* %94, i32 0)
  %96 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @intel_vgpu_write_pci_bar(%struct.intel_vgpu* %96, i32 %97, i32 %98, i32 %99)
  %101 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @map_aperture(%struct.intel_vgpu* %101, i32 %102)
  store i32 %103, i32* %12, align 4
  br label %110

104:                                              ; preds = %80
  %105 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @intel_vgpu_write_pci_bar(%struct.intel_vgpu* %105, i32 %106, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %104, %93, %82
  br label %111

111:                                              ; preds = %110, %79
  %112 = load i32, i32* %12, align 4
  ret i32 %112
}

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32* @vgpu_cfg_space(%struct.intel_vgpu*) #1

declare dso_local i32 @intel_vgpu_write_pci_bar(%struct.intel_vgpu*, i32, i32, i32) #1

declare dso_local i32 @trap_gttmmio(%struct.intel_vgpu*, i32) #1

declare dso_local i32 @map_aperture(%struct.intel_vgpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
