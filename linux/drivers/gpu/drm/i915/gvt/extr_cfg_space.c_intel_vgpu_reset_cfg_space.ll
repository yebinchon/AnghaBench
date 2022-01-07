; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cfg_space.c_intel_vgpu_reset_cfg_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cfg_space.c_intel_vgpu_reset_cfg_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32 }

@PCI_COMMAND = common dso_local global i64 0, align 8
@PCI_CLASS_DEVICE = common dso_local global i64 0, align 8
@INTEL_GVT_PCI_CLASS_VGA_OTHER = common dso_local global i64 0, align 8
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_vgpu_reset_cfg_space(%struct.intel_vgpu* %0) #0 {
  %2 = alloca %struct.intel_vgpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %2, align 8
  %5 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %6 = call i64* @vgpu_cfg_space(%struct.intel_vgpu* %5)
  %7 = load i64, i64* @PCI_COMMAND, align 8
  %8 = getelementptr inbounds i64, i64* %6, i64 %7
  %9 = load i64, i64* %8, align 8
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %3, align 4
  %11 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %12 = call i64* @vgpu_cfg_space(%struct.intel_vgpu* %11)
  %13 = load i64, i64* @PCI_CLASS_DEVICE, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @INTEL_GVT_PCI_CLASS_VGA_OTHER, align 8
  %17 = icmp ne i64 %15, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %25 = call i32 @trap_gttmmio(%struct.intel_vgpu* %24, i32 0)
  %26 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %27 = call i32 @map_aperture(%struct.intel_vgpu* %26, i32 0)
  br label %28

28:                                               ; preds = %23, %1
  %29 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @intel_vgpu_init_cfg_space(%struct.intel_vgpu* %29, i32 %30)
  ret void
}

declare dso_local i64* @vgpu_cfg_space(%struct.intel_vgpu*) #1

declare dso_local i32 @trap_gttmmio(%struct.intel_vgpu*, i32) #1

declare dso_local i32 @map_aperture(%struct.intel_vgpu*, i32) #1

declare dso_local i32 @intel_vgpu_init_cfg_space(%struct.intel_vgpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
