; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-pasid.c_devtlb_invalidation_with_pasid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-pasid.c_devtlb_invalidation_with_pasid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { i32 }
%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_domain_info* }
%struct.device_domain_info = type { i32, i32, i32, i32, i32 }

@VTD_PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_iommu*, %struct.device*, i32)* @devtlb_invalidation_with_pasid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @devtlb_invalidation_with_pasid(%struct.intel_iommu* %0, %struct.device* %1, i32 %2) #0 {
  %4 = alloca %struct.intel_iommu*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device_domain_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_iommu* %0, %struct.intel_iommu** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.device_domain_info*, %struct.device_domain_info** %13, align 8
  store %struct.device_domain_info* %14, %struct.device_domain_info** %7, align 8
  %15 = load %struct.device_domain_info*, %struct.device_domain_info** %7, align 8
  %16 = icmp ne %struct.device_domain_info* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.device_domain_info*, %struct.device_domain_info** %7, align 8
  %19 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %3
  br label %45

23:                                               ; preds = %17
  %24 = load %struct.device_domain_info*, %struct.device_domain_info** %7, align 8
  %25 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 8
  %28 = load %struct.device_domain_info*, %struct.device_domain_info** %7, align 8
  %29 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %27, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.device_domain_info*, %struct.device_domain_info** %7, align 8
  %33 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  %35 = load %struct.device_domain_info*, %struct.device_domain_info** %7, align 8
  %36 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %10, align 4
  %38 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i64, i64* @VTD_PAGE_SHIFT, align 8
  %43 = sub nsw i64 64, %42
  %44 = call i32 @qi_flush_dev_iotlb(%struct.intel_iommu* %38, i32 %39, i32 %40, i32 %41, i32 0, i64 %43)
  br label %45

45:                                               ; preds = %23, %22
  ret void
}

declare dso_local i32 @qi_flush_dev_iotlb(%struct.intel_iommu*, i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
