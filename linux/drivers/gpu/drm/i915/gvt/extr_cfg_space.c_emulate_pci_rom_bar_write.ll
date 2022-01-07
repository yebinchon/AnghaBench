; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cfg_space.c_emulate_pci_rom_bar_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cfg_space.c_emulate_pci_rom_bar_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32 }

@PCI_ROM_ADDRESS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*, i32, i8*, i32)* @emulate_pci_rom_bar_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulate_pci_rom_bar_write(%struct.intel_vgpu* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.intel_vgpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %12 = call i64 @vgpu_cfg_space(%struct.intel_vgpu* %11)
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %9, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to i32*
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @PCI_ROM_ADDRESS_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @PCI_ROM_ADDRESS_MASK, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32*, i32** %9, align 8
  store i32 0, i32* %26, align 4
  br label %33

27:                                               ; preds = %4
  %28 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @vgpu_pci_cfg_mem_write(%struct.intel_vgpu* %28, i32 %29, i8* %30, i32 %31)
  br label %33

33:                                               ; preds = %27, %25
  ret i32 0
}

declare dso_local i64 @vgpu_cfg_space(%struct.intel_vgpu*) #1

declare dso_local i32 @vgpu_pci_cfg_mem_write(%struct.intel_vgpu*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
