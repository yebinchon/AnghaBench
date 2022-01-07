; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_iommu_v2.c_etnaviv_iommuv2_get_pta_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_iommu_v2.c_etnaviv_iommuv2_get_pta_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_iommu_context = type { i32 }
%struct.etnaviv_iommuv2_context = type { i16 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @etnaviv_iommuv2_get_pta_id(%struct.etnaviv_iommu_context* %0) #0 {
  %2 = alloca %struct.etnaviv_iommu_context*, align 8
  %3 = alloca %struct.etnaviv_iommuv2_context*, align 8
  store %struct.etnaviv_iommu_context* %0, %struct.etnaviv_iommu_context** %2, align 8
  %4 = load %struct.etnaviv_iommu_context*, %struct.etnaviv_iommu_context** %2, align 8
  %5 = call %struct.etnaviv_iommuv2_context* @to_v2_context(%struct.etnaviv_iommu_context* %4)
  store %struct.etnaviv_iommuv2_context* %5, %struct.etnaviv_iommuv2_context** %3, align 8
  %6 = load %struct.etnaviv_iommuv2_context*, %struct.etnaviv_iommuv2_context** %3, align 8
  %7 = getelementptr inbounds %struct.etnaviv_iommuv2_context, %struct.etnaviv_iommuv2_context* %6, i32 0, i32 0
  %8 = load i16, i16* %7, align 2
  ret i16 %8
}

declare dso_local %struct.etnaviv_iommuv2_context* @to_v2_context(%struct.etnaviv_iommu_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
