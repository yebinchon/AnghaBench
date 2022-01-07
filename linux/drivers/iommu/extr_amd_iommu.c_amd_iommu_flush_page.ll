; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_amd_iommu_flush_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_amd_iommu_flush_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.protection_domain = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amd_iommu_flush_page(%struct.iommu_domain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.iommu_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.protection_domain*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.iommu_domain* %0, %struct.iommu_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %11 = call %struct.protection_domain* @to_pdomain(%struct.iommu_domain* %10)
  store %struct.protection_domain* %11, %struct.protection_domain** %7, align 8
  %12 = load %struct.protection_domain*, %struct.protection_domain** %7, align 8
  %13 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %12, i32 0, i32 0
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.protection_domain*, %struct.protection_domain** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @__amd_iommu_flush_page(%struct.protection_domain* %16, i32 %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.protection_domain*, %struct.protection_domain** %7, align 8
  %21 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %20, i32 0, i32 0
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load i32, i32* %9, align 4
  ret i32 %24
}

declare dso_local %struct.protection_domain* @to_pdomain(%struct.iommu_domain*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__amd_iommu_flush_page(%struct.protection_domain*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
