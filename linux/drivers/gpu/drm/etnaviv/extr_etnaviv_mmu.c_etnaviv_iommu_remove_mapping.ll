; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_mmu.c_etnaviv_iommu_remove_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_mmu.c_etnaviv_iommu_remove_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_iommu_context = type { i32 }
%struct.etnaviv_vram_mapping = type { %struct.TYPE_4__, %struct.etnaviv_gem_object* }
%struct.TYPE_4__ = type { i32 }
%struct.etnaviv_gem_object = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etnaviv_iommu_context*, %struct.etnaviv_vram_mapping*)* @etnaviv_iommu_remove_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etnaviv_iommu_remove_mapping(%struct.etnaviv_iommu_context* %0, %struct.etnaviv_vram_mapping* %1) #0 {
  %3 = alloca %struct.etnaviv_iommu_context*, align 8
  %4 = alloca %struct.etnaviv_vram_mapping*, align 8
  %5 = alloca %struct.etnaviv_gem_object*, align 8
  store %struct.etnaviv_iommu_context* %0, %struct.etnaviv_iommu_context** %3, align 8
  store %struct.etnaviv_vram_mapping* %1, %struct.etnaviv_vram_mapping** %4, align 8
  %6 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %4, align 8
  %7 = getelementptr inbounds %struct.etnaviv_vram_mapping, %struct.etnaviv_vram_mapping* %6, i32 0, i32 1
  %8 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %7, align 8
  store %struct.etnaviv_gem_object* %8, %struct.etnaviv_gem_object** %5, align 8
  %9 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %3, align 8
  %10 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %4, align 8
  %11 = getelementptr inbounds %struct.etnaviv_vram_mapping, %struct.etnaviv_vram_mapping* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %5, align 8
  %15 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %5, align 8
  %18 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @etnaviv_iommu_unmap(%struct.etnaviv_iommu_context* %9, i32 %13, i32 %16, i32 %20)
  %22 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %4, align 8
  %23 = getelementptr inbounds %struct.etnaviv_vram_mapping, %struct.etnaviv_vram_mapping* %22, i32 0, i32 0
  %24 = call i32 @drm_mm_remove_node(%struct.TYPE_4__* %23)
  ret void
}

declare dso_local i32 @etnaviv_iommu_unmap(%struct.etnaviv_iommu_context*, i32, i32, i32) #1

declare dso_local i32 @drm_mm_remove_node(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
