; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cfg_space.c_emulate_pci_command_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cfg_space.c_emulate_pci_command_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32 }

@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*, i32, i8*, i32)* @emulate_pci_command_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulate_pci_command_write(%struct.intel_vgpu* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_vgpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %15 = call i32* @vgpu_cfg_space(%struct.intel_vgpu* %14)
  %16 = load i32, i32* %7, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = xor i32 %23, %24
  store i32 %25, i32* %12, align 4
  %26 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @vgpu_pci_cfg_mem_write(%struct.intel_vgpu* %26, i32 %27, i8* %28, i32 %29)
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %72

36:                                               ; preds = %4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %36
  %42 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %43 = call i32 @trap_gttmmio(%struct.intel_vgpu* %42, i32 0)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %13, align 4
  store i32 %47, i32* %5, align 4
  br label %72

48:                                               ; preds = %41
  %49 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %50 = call i32 @map_aperture(%struct.intel_vgpu* %49, i32 0)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %5, align 4
  br label %72

55:                                               ; preds = %48
  br label %71

56:                                               ; preds = %36
  %57 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %58 = call i32 @trap_gttmmio(%struct.intel_vgpu* %57, i32 1)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %5, align 4
  br label %72

63:                                               ; preds = %56
  %64 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %65 = call i32 @map_aperture(%struct.intel_vgpu* %64, i32 1)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %5, align 4
  br label %72

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %55
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %71, %68, %61, %53, %46, %35
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32* @vgpu_cfg_space(%struct.intel_vgpu*) #1

declare dso_local i32 @vgpu_pci_cfg_mem_write(%struct.intel_vgpu*, i32, i8*, i32) #1

declare dso_local i32 @trap_gttmmio(%struct.intel_vgpu*, i32) #1

declare dso_local i32 @map_aperture(%struct.intel_vgpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
