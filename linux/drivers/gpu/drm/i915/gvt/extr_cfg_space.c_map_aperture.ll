; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cfg_space.c_map_aperture.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cfg_space.c_map_aperture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@INTEL_GVT_PCI_BAR_APERTURE = common dso_local global i64 0, align 8
@PCI_BASE_ADDRESS_2 = common dso_local global i64 0, align 8
@PCI_BASE_ADDRESS_MEM_TYPE_64 = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*, i32)* @map_aperture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_aperture(%struct.intel_vgpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_vgpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %12 = call i32 @vgpu_aperture_pa_base(%struct.intel_vgpu* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %14 = call i64 @vgpu_aperture_sz(%struct.intel_vgpu* %13)
  store i64 %14, i64* %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %17 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = load i64, i64* @INTEL_GVT_PCI_BAR_APERTURE, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %15, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %79

26:                                               ; preds = %2
  %27 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %28 = call i32* @vgpu_cfg_space(%struct.intel_vgpu* %27)
  %29 = load i64, i64* @PCI_BASE_ADDRESS_2, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @PCI_BASE_ADDRESS_MEM_TYPE_64, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %26
  %37 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %38 = call i32* @vgpu_cfg_space(%struct.intel_vgpu* %37)
  %39 = load i64, i64* @PCI_BASE_ADDRESS_2, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %9, align 4
  br label %48

42:                                               ; preds = %26
  %43 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %44 = call i32* @vgpu_cfg_space(%struct.intel_vgpu* %43)
  %45 = load i64, i64* @PCI_BASE_ADDRESS_2, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %42, %36
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %51 = call i32 @vgpu_aperture_offset(%struct.intel_vgpu* %50)
  %52 = add nsw i32 %49, %51
  %53 = load i32, i32* @PAGE_SHIFT, align 4
  %54 = ashr i32 %52, %53
  store i32 %54, i32* %8, align 4
  %55 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @PAGE_SHIFT, align 4
  %59 = ashr i32 %57, %58
  %60 = load i64, i64* %7, align 8
  %61 = load i32, i32* @PAGE_SHIFT, align 4
  %62 = zext i32 %61 to i64
  %63 = lshr i64 %60, %62
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @intel_gvt_hypervisor_map_gfn_to_mfn(%struct.intel_vgpu* %55, i32 %56, i32 %59, i64 %63, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %48
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %3, align 4
  br label %79

70:                                               ; preds = %48
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %73 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load i64, i64* @INTEL_GVT_PCI_BAR_APERTURE, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i32 %71, i32* %78, align 4
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %70, %68, %25
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @vgpu_aperture_pa_base(%struct.intel_vgpu*) #1

declare dso_local i64 @vgpu_aperture_sz(%struct.intel_vgpu*) #1

declare dso_local i32* @vgpu_cfg_space(%struct.intel_vgpu*) #1

declare dso_local i32 @vgpu_aperture_offset(%struct.intel_vgpu*) #1

declare dso_local i32 @intel_gvt_hypervisor_map_gfn_to_mfn(%struct.intel_vgpu*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
