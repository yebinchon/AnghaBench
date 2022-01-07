; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c___mapping_notify_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c___mapping_notify_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { i32 }
%struct.dmar_domain = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_iommu*, %struct.dmar_domain*, i64, i32)* @__mapping_notify_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mapping_notify_one(%struct.intel_iommu* %0, %struct.dmar_domain* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.intel_iommu*, align 8
  %6 = alloca %struct.dmar_domain*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.intel_iommu* %0, %struct.intel_iommu** %5, align 8
  store %struct.dmar_domain* %1, %struct.dmar_domain** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %10 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @cap_caching_mode(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %4
  %15 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %16 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @iommu_flush_iotlb_psi(%struct.intel_iommu* %15, %struct.dmar_domain* %16, i64 %17, i32 %18, i32 0, i32 1)
  br label %23

20:                                               ; preds = %4
  %21 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %22 = call i32 @iommu_flush_write_buffer(%struct.intel_iommu* %21)
  br label %23

23:                                               ; preds = %20, %14
  ret void
}

declare dso_local i64 @cap_caching_mode(i32) #1

declare dso_local i32 @iommu_flush_iotlb_psi(%struct.intel_iommu*, %struct.dmar_domain*, i64, i32, i32, i32) #1

declare dso_local i32 @iommu_flush_write_buffer(%struct.intel_iommu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
