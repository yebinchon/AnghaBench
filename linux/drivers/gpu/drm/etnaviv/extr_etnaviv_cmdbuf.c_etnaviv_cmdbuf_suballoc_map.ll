; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_cmdbuf.c_etnaviv_cmdbuf_suballoc_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_cmdbuf.c_etnaviv_cmdbuf_suballoc_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_cmdbuf_suballoc = type { i32 }
%struct.etnaviv_iommu_context = type { i32 }
%struct.etnaviv_vram_mapping = type { i32 }

@SUBALLOC_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @etnaviv_cmdbuf_suballoc_map(%struct.etnaviv_cmdbuf_suballoc* %0, %struct.etnaviv_iommu_context* %1, %struct.etnaviv_vram_mapping* %2, i32 %3) #0 {
  %5 = alloca %struct.etnaviv_cmdbuf_suballoc*, align 8
  %6 = alloca %struct.etnaviv_iommu_context*, align 8
  %7 = alloca %struct.etnaviv_vram_mapping*, align 8
  %8 = alloca i32, align 4
  store %struct.etnaviv_cmdbuf_suballoc* %0, %struct.etnaviv_cmdbuf_suballoc** %5, align 8
  store %struct.etnaviv_iommu_context* %1, %struct.etnaviv_iommu_context** %6, align 8
  store %struct.etnaviv_vram_mapping* %2, %struct.etnaviv_vram_mapping** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %6, align 8
  %10 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %7, align 8
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.etnaviv_cmdbuf_suballoc*, %struct.etnaviv_cmdbuf_suballoc** %5, align 8
  %13 = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, %struct.etnaviv_cmdbuf_suballoc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SUBALLOC_SIZE, align 4
  %16 = call i32 @etnaviv_iommu_get_suballoc_va(%struct.etnaviv_iommu_context* %9, %struct.etnaviv_vram_mapping* %10, i32 %11, i32 %14, i32 %15)
  ret i32 %16
}

declare dso_local i32 @etnaviv_iommu_get_suballoc_va(%struct.etnaviv_iommu_context*, %struct.etnaviv_vram_mapping*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
