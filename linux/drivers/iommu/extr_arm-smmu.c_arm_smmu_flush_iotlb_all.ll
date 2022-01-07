; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_flush_iotlb_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_flush_iotlb_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.arm_smmu_domain = type { %struct.TYPE_4__*, %struct.arm_smmu_device* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.arm_smmu_domain*)* }
%struct.arm_smmu_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iommu_domain*)* @arm_smmu_flush_iotlb_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_smmu_flush_iotlb_all(%struct.iommu_domain* %0) #0 {
  %2 = alloca %struct.iommu_domain*, align 8
  %3 = alloca %struct.arm_smmu_domain*, align 8
  %4 = alloca %struct.arm_smmu_device*, align 8
  store %struct.iommu_domain* %0, %struct.iommu_domain** %2, align 8
  %5 = load %struct.iommu_domain*, %struct.iommu_domain** %2, align 8
  %6 = call %struct.arm_smmu_domain* @to_smmu_domain(%struct.iommu_domain* %5)
  store %struct.arm_smmu_domain* %6, %struct.arm_smmu_domain** %3, align 8
  %7 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %3, align 8
  %8 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %7, i32 0, i32 1
  %9 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %8, align 8
  store %struct.arm_smmu_device* %9, %struct.arm_smmu_device** %4, align 8
  %10 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %3, align 8
  %11 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  %15 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %16 = call i32 @arm_smmu_rpm_get(%struct.arm_smmu_device* %15)
  %17 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %3, align 8
  %18 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32 (%struct.arm_smmu_domain*)*, i32 (%struct.arm_smmu_domain*)** %21, align 8
  %23 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %3, align 8
  %24 = call i32 %22(%struct.arm_smmu_domain* %23)
  %25 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %4, align 8
  %26 = call i32 @arm_smmu_rpm_put(%struct.arm_smmu_device* %25)
  br label %27

27:                                               ; preds = %14, %1
  ret void
}

declare dso_local %struct.arm_smmu_domain* @to_smmu_domain(%struct.iommu_domain*) #1

declare dso_local i32 @arm_smmu_rpm_get(%struct.arm_smmu_device*) #1

declare dso_local i32 @arm_smmu_rpm_put(%struct.arm_smmu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
