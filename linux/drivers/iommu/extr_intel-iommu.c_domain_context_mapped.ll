; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_domain_context_mapped.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_domain_context_mapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.intel_iommu = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@domain_context_mapped_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @domain_context_mapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @domain_context_mapped(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.intel_iommu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.intel_iommu* @device_to_iommu(%struct.device* %7, i32* %5, i32* %6)
  store %struct.intel_iommu* %8, %struct.intel_iommu** %4, align 8
  %9 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %10 = icmp ne %struct.intel_iommu* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %32

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = call i32 @dev_is_pci(%struct.device* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @device_context_mapped(%struct.intel_iommu* %19, i32 %20, i32 %21)
  store i32 %22, i32* %2, align 4
  br label %32

23:                                               ; preds = %14
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = call i32 @to_pci_dev(%struct.device* %24)
  %26 = load i32, i32* @domain_context_mapped_cb, align 4
  %27 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %28 = call i32 @pci_for_each_dma_alias(i32 %25, i32 %26, %struct.intel_iommu* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %23, %18, %11
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.intel_iommu* @device_to_iommu(%struct.device*, i32*, i32*) #1

declare dso_local i32 @dev_is_pci(%struct.device*) #1

declare dso_local i32 @device_context_mapped(%struct.intel_iommu*, i32, i32) #1

declare dso_local i32 @pci_for_each_dma_alias(i32, i32, %struct.intel_iommu*) #1

declare dso_local i32 @to_pci_dev(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
