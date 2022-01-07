; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_msm_iommu.c_msm_iommu_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_msm_iommu.c_msm_iommu_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.iommu_iotlb_gather = type { i32 }
%struct.msm_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.TYPE_2__*, i64, i64, %struct.iommu_iotlb_gather*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iommu_domain*, i64, i64, %struct.iommu_iotlb_gather*)* @msm_iommu_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @msm_iommu_unmap(%struct.iommu_domain* %0, i64 %1, i64 %2, %struct.iommu_iotlb_gather* %3) #0 {
  %5 = alloca %struct.iommu_domain*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.iommu_iotlb_gather*, align 8
  %9 = alloca %struct.msm_priv*, align 8
  %10 = alloca i64, align 8
  store %struct.iommu_domain* %0, %struct.iommu_domain** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.iommu_iotlb_gather* %3, %struct.iommu_iotlb_gather** %8, align 8
  %11 = load %struct.iommu_domain*, %struct.iommu_domain** %5, align 8
  %12 = call %struct.msm_priv* @to_msm_priv(%struct.iommu_domain* %11)
  store %struct.msm_priv* %12, %struct.msm_priv** %9, align 8
  %13 = load %struct.msm_priv*, %struct.msm_priv** %9, align 8
  %14 = getelementptr inbounds %struct.msm_priv, %struct.msm_priv* %13, i32 0, i32 0
  %15 = load i64, i64* %10, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.msm_priv*, %struct.msm_priv** %9, align 8
  %18 = getelementptr inbounds %struct.msm_priv, %struct.msm_priv* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64 (%struct.TYPE_2__*, i64, i64, %struct.iommu_iotlb_gather*)*, i64 (%struct.TYPE_2__*, i64, i64, %struct.iommu_iotlb_gather*)** %20, align 8
  %22 = load %struct.msm_priv*, %struct.msm_priv** %9, align 8
  %23 = getelementptr inbounds %struct.msm_priv, %struct.msm_priv* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.iommu_iotlb_gather*, %struct.iommu_iotlb_gather** %8, align 8
  %28 = call i64 %21(%struct.TYPE_2__* %24, i64 %25, i64 %26, %struct.iommu_iotlb_gather* %27)
  store i64 %28, i64* %7, align 8
  %29 = load %struct.msm_priv*, %struct.msm_priv** %9, align 8
  %30 = getelementptr inbounds %struct.msm_priv, %struct.msm_priv* %29, i32 0, i32 0
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load i64, i64* %7, align 8
  ret i64 %33
}

declare dso_local %struct.msm_priv* @to_msm_priv(%struct.iommu_domain*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
