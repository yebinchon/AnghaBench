; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_qcom_iommu.c_to_iommu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_qcom_iommu.c_to_iommu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_iommu_dev = type { i32 }
%struct.iommu_fwspec = type { %struct.qcom_iommu_dev*, i32* }

@qcom_iommu_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qcom_iommu_dev* (%struct.iommu_fwspec*)* @to_iommu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qcom_iommu_dev* @to_iommu(%struct.iommu_fwspec* %0) #0 {
  %2 = alloca %struct.qcom_iommu_dev*, align 8
  %3 = alloca %struct.iommu_fwspec*, align 8
  store %struct.iommu_fwspec* %0, %struct.iommu_fwspec** %3, align 8
  %4 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %3, align 8
  %5 = icmp ne %struct.iommu_fwspec* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %3, align 8
  %8 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, @qcom_iommu_ops
  br i1 %10, label %11, label %12

11:                                               ; preds = %6, %1
  store %struct.qcom_iommu_dev* null, %struct.qcom_iommu_dev** %2, align 8
  br label %16

12:                                               ; preds = %6
  %13 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %3, align 8
  %14 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %13, i32 0, i32 0
  %15 = load %struct.qcom_iommu_dev*, %struct.qcom_iommu_dev** %14, align 8
  store %struct.qcom_iommu_dev* %15, %struct.qcom_iommu_dev** %2, align 8
  br label %16

16:                                               ; preds = %12, %11
  %17 = load %struct.qcom_iommu_dev*, %struct.qcom_iommu_dev** %2, align 8
  ret %struct.qcom_iommu_dev* %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
