; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cfg_space.c_intel_vgpu_init_cfg_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cfg_space.c_intel_vgpu_init_cfg_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { %struct.TYPE_8__, %struct.intel_gvt* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }
%struct.intel_gvt = type { %struct.TYPE_10__*, %struct.TYPE_6__, %struct.intel_gvt_device_info }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.intel_gvt_device_info = type { i32 }

@INTEL_GVT_PCI_CLASS_VGA_OTHER = common dso_local global i32 0, align 4
@PCI_CLASS_DEVICE = common dso_local global i64 0, align 8
@PCI_CLASS_PROG = common dso_local global i64 0, align 8
@INTEL_GVT_PCI_GMCH_CONTROL = common dso_local global i32 0, align 4
@BDW_GMCH_GMS_MASK = common dso_local global i32 0, align 4
@BDW_GMCH_GMS_SHIFT = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_2 = common dso_local global i32 0, align 4
@PCI_COMMAND_IO = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@PCI_COMMAND_MASTER = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i64 0, align 8
@PCI_BASE_ADDRESS_1 = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_3 = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_4 = common dso_local global i32 0, align 4
@INTEL_GVT_PCI_OPREGION = common dso_local global i32 0, align 4
@INTEL_GVT_PCI_BAR_GTTMMIO = common dso_local global i64 0, align 8
@INTEL_GVT_PCI_BAR_APERTURE = common dso_local global i64 0, align 8
@PCI_ROM_ADDRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_vgpu_init_cfg_space(%struct.intel_vgpu* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_vgpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_gvt*, align 8
  %6 = alloca %struct.intel_gvt_device_info*, align 8
  %7 = alloca i32*, align 8
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %9 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %8, i32 0, i32 1
  %10 = load %struct.intel_gvt*, %struct.intel_gvt** %9, align 8
  store %struct.intel_gvt* %10, %struct.intel_gvt** %5, align 8
  %11 = load %struct.intel_gvt*, %struct.intel_gvt** %5, align 8
  %12 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %11, i32 0, i32 2
  store %struct.intel_gvt_device_info* %12, %struct.intel_gvt_device_info** %6, align 8
  %13 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %14 = call i32* @vgpu_cfg_space(%struct.intel_vgpu* %13)
  %15 = load %struct.intel_gvt*, %struct.intel_gvt** %5, align 8
  %16 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.intel_gvt_device_info*, %struct.intel_gvt_device_info** %6, align 8
  %20 = getelementptr inbounds %struct.intel_gvt_device_info, %struct.intel_gvt_device_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @memcpy(i32* %14, i32 %18, i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @INTEL_GVT_PCI_CLASS_VGA_OTHER, align 4
  %27 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %28 = call i32* @vgpu_cfg_space(%struct.intel_vgpu* %27)
  %29 = load i64, i64* @PCI_CLASS_DEVICE, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 %26, i32* %30, align 4
  %31 = load i32, i32* @INTEL_GVT_PCI_CLASS_VGA_OTHER, align 4
  %32 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %33 = call i32* @vgpu_cfg_space(%struct.intel_vgpu* %32)
  %34 = load i64, i64* @PCI_CLASS_PROG, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32 %31, i32* %35, align 4
  br label %36

36:                                               ; preds = %25, %2
  %37 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %38 = call i32* @vgpu_cfg_space(%struct.intel_vgpu* %37)
  %39 = load i32, i32* @INTEL_GVT_PCI_GMCH_CONTROL, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32* %41, i32** %7, align 8
  %42 = load i32, i32* @BDW_GMCH_GMS_MASK, align 4
  %43 = load i32, i32* @BDW_GMCH_GMS_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = xor i32 %44, -1
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %45
  store i32 %48, i32* %46, align 4
  %49 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %50 = load i32, i32* @PCI_BASE_ADDRESS_2, align 4
  %51 = load %struct.intel_gvt*, %struct.intel_gvt** %5, align 8
  %52 = call i32 @gvt_aperture_pa_base(%struct.intel_gvt* %51)
  %53 = call i32 @intel_vgpu_write_pci_bar(%struct.intel_vgpu* %49, i32 %50, i32 %52, i32 1)
  %54 = load i32, i32* @PCI_COMMAND_IO, align 4
  %55 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @PCI_COMMAND_MASTER, align 4
  %58 = or i32 %56, %57
  %59 = xor i32 %58, -1
  %60 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %61 = call i32* @vgpu_cfg_space(%struct.intel_vgpu* %60)
  %62 = load i64, i64* @PCI_COMMAND, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, %59
  store i32 %65, i32* %63, align 4
  %66 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %67 = call i32* @vgpu_cfg_space(%struct.intel_vgpu* %66)
  %68 = load i32, i32* @PCI_BASE_ADDRESS_1, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = call i32 @memset(i32* %70, i32 0, i32 4)
  %72 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %73 = call i32* @vgpu_cfg_space(%struct.intel_vgpu* %72)
  %74 = load i32, i32* @PCI_BASE_ADDRESS_3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = call i32 @memset(i32* %76, i32 0, i32 4)
  %78 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %79 = call i32* @vgpu_cfg_space(%struct.intel_vgpu* %78)
  %80 = load i32, i32* @PCI_BASE_ADDRESS_4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = call i32 @memset(i32* %82, i32 0, i32 8)
  %84 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %85 = call i32* @vgpu_cfg_space(%struct.intel_vgpu* %84)
  %86 = load i32, i32* @INTEL_GVT_PCI_OPREGION, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = call i32 @memset(i32* %88, i32 0, i32 4)
  %90 = load %struct.intel_gvt*, %struct.intel_gvt** %5, align 8
  %91 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %90, i32 0, i32 0
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @pci_resource_len(i32 %95, i32 0)
  %97 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %98 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = load i64, i64* @INTEL_GVT_PCI_BAR_GTTMMIO, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  store i8* %96, i8** %103, align 8
  %104 = load %struct.intel_gvt*, %struct.intel_gvt** %5, align 8
  %105 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %104, i32 0, i32 0
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i8* @pci_resource_len(i32 %109, i32 2)
  %111 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %112 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = load i64, i64* @INTEL_GVT_PCI_BAR_APERTURE, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  store i8* %110, i8** %117, align 8
  %118 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %119 = call i32* @vgpu_cfg_space(%struct.intel_vgpu* %118)
  %120 = load i32, i32* @PCI_ROM_ADDRESS, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = call i32 @memset(i32* %122, i32 0, i32 4)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32* @vgpu_cfg_space(%struct.intel_vgpu*) #1

declare dso_local i32 @intel_vgpu_write_pci_bar(%struct.intel_vgpu*, i32, i32, i32) #1

declare dso_local i32 @gvt_aperture_pa_base(%struct.intel_gvt*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i8* @pci_resource_len(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
