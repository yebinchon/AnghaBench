; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gvt.h_intel_vgpu_write_pci_bar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gvt.h_intel_vgpu_write_pci_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_vgpu*, i32, i32, i32)* @intel_vgpu_write_pci_bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_vgpu_write_pci_bar(%struct.intel_vgpu* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.intel_vgpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @rounddown(i32 %10, i32 4)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %13 = call i32 @vgpu_cfg_space(%struct.intel_vgpu* %12)
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %13, %14
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %9, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @GENMASK(i32 31, i32 4)
  %23 = and i32 %21, %22
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @GENMASK(i32 3, i32 0)
  %27 = and i32 %25, %26
  %28 = or i32 %23, %27
  %29 = load i32*, i32** %9, align 8
  store i32 %28, i32* %29, align 4
  br label %33

30:                                               ; preds = %4
  %31 = load i32, i32* %7, align 4
  %32 = load i32*, i32** %9, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %20
  ret void
}

declare dso_local i32 @rounddown(i32, i32) #1

declare dso_local i32 @vgpu_cfg_space(%struct.intel_vgpu*) #1

declare dso_local i32 @GENMASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
