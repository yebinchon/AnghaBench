; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-pasid.c_iotlb_invalidation_with_pasid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-pasid.c_iotlb_invalidation_with_pasid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { i32 }
%struct.qi_desc = type { i32, i64, i64, i64 }

@QI_GRAN_NONG_PASID = common dso_local global i32 0, align 4
@QI_EIOTLB_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_iommu*, i32, i32)* @iotlb_invalidation_with_pasid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iotlb_invalidation_with_pasid(%struct.intel_iommu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.intel_iommu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qi_desc, align 8
  store %struct.intel_iommu* %0, %struct.intel_iommu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @QI_EIOTLB_PASID(i32 %8)
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @QI_EIOTLB_DID(i32 %10)
  %12 = or i32 %9, %11
  %13 = load i32, i32* @QI_GRAN_NONG_PASID, align 4
  %14 = call i32 @QI_EIOTLB_GRAN(i32 %13)
  %15 = or i32 %12, %14
  %16 = load i32, i32* @QI_EIOTLB_TYPE, align 4
  %17 = or i32 %15, %16
  %18 = getelementptr inbounds %struct.qi_desc, %struct.qi_desc* %7, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.qi_desc, %struct.qi_desc* %7, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.qi_desc, %struct.qi_desc* %7, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.qi_desc, %struct.qi_desc* %7, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %23 = call i32 @qi_submit_sync(%struct.qi_desc* %7, %struct.intel_iommu* %22)
  ret void
}

declare dso_local i32 @QI_EIOTLB_PASID(i32) #1

declare dso_local i32 @QI_EIOTLB_DID(i32) #1

declare dso_local i32 @QI_EIOTLB_GRAN(i32) #1

declare dso_local i32 @qi_submit_sync(%struct.qi_desc*, %struct.intel_iommu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
