; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_mmu.c_etnaviv_iommu_unmap_gem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_mmu.c_etnaviv_iommu_unmap_gem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_iommu_context = type { i32, i32, i32 }
%struct.etnaviv_vram_mapping = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @etnaviv_iommu_unmap_gem(%struct.etnaviv_iommu_context* %0, %struct.etnaviv_vram_mapping* %1) #0 {
  %3 = alloca %struct.etnaviv_iommu_context*, align 8
  %4 = alloca %struct.etnaviv_vram_mapping*, align 8
  store %struct.etnaviv_iommu_context* %0, %struct.etnaviv_iommu_context** %3, align 8
  store %struct.etnaviv_vram_mapping* %1, %struct.etnaviv_vram_mapping** %4, align 8
  %5 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %4, align 8
  %6 = getelementptr inbounds %struct.etnaviv_vram_mapping, %struct.etnaviv_vram_mapping* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @WARN_ON(i32 %7)
  %9 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %3, align 8
  %10 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %4, align 8
  %13 = getelementptr inbounds %struct.etnaviv_vram_mapping, %struct.etnaviv_vram_mapping* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %3, align 8
  %17 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %16, i32 0, i32 2
  %18 = icmp eq i32* %15, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %3, align 8
  %21 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %4, align 8
  %22 = call i32 @etnaviv_iommu_remove_mapping(%struct.etnaviv_iommu_context* %20, %struct.etnaviv_vram_mapping* %21)
  br label %23

23:                                               ; preds = %19, %2
  %24 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %4, align 8
  %25 = getelementptr inbounds %struct.etnaviv_vram_mapping, %struct.etnaviv_vram_mapping* %24, i32 0, i32 0
  %26 = call i32 @list_del(i32* %25)
  %27 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %3, align 8
  %28 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %3, align 8
  %32 = getelementptr inbounds %struct.etnaviv_iommu_context, %struct.etnaviv_iommu_context* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @etnaviv_iommu_remove_mapping(%struct.etnaviv_iommu_context*, %struct.etnaviv_vram_mapping*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
